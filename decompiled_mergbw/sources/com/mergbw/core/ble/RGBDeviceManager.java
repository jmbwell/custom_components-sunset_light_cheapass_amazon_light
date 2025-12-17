package com.mergbw.core.ble;

import android.bluetooth.BluetoothGatt;
import com.clj.fastble.BleManager;
import com.clj.fastble.callback.BleGattCallback;
import com.clj.fastble.callback.BleMtuChangedCallback;
import com.clj.fastble.callback.BleNotifyCallback;
import com.clj.fastble.callback.BleWriteCallback;
import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
import com.mergbw.core.Constants;
import com.mergbw.core.database.bean.DeviceInfoBean;
import com.mergbw.core.utils.AppUtils;
import com.mergbw.core.utils.MeRGBWLog;
import com.mergbw.core.utils.StringUtils;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public class RGBDeviceManager {
    private static final int DEFAULT_MTU = 20;
    private BleManager mBleManager;
    private final ConcurrentHashMap<String, BleCallback> mListeners = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<String, SendCommandQueue> mDataQueue = new ConcurrentHashMap<>();
    private boolean isUpgrade = false;

    public static RGBDeviceManager getInstance() {
        return BleManagerHolder.sBleManager;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class BleManagerHolder {
        private static final RGBDeviceManager sBleManager = new RGBDeviceManager();

        private BleManagerHolder() {
        }
    }

    public void init() {
        BleManager bleManager = BleManager.getInstance();
        this.mBleManager = bleManager;
        bleManager.init(AppUtils.getApp());
    }

    /* loaded from: classes4.dex */
    private class sendThread extends Thread {
        private sendThread() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            super.run();
            while (true) {
                CommandData take = TotalCommandDataQueue.getInstance().take();
                if (take != null) {
                    RGBDeviceManager.this.sendData(take.getBleDevice(), take.getData());
                }
            }
        }
    }

    public void setCallback(String tag, BleCallback callBack) {
        this.mListeners.put(tag, callBack);
    }

    public void removeCallback(String tag) {
        this.mListeners.remove(tag);
    }

    public void connectDevice(DeviceInfoBean deviceInfo) {
        MeRGBWLog.i("connectDevice: " + deviceInfo.getDeviceName() + " " + deviceInfo.getDeviceMac());
        connectDevice(new BleDevice(this.mBleManager.getBluetoothAdapter().getRemoteDevice(deviceInfo.getDeviceMac())));
    }

    public void connectDevice(String deviceMac) {
        MeRGBWLog.i("connectDevice: " + deviceMac);
        connectDevice(new BleDevice(this.mBleManager.getBluetoothAdapter().getRemoteDevice(deviceMac)));
    }

    public void connectDevice(BleDevice bleDevice) {
        if (this.mBleManager.isConnected(bleDevice)) {
            MeRGBWLog.i("connectDevice: " + bleDevice.getMac() + " Already Connected!");
            for (BleCallback bleCallback : this.mListeners.values()) {
                bleCallback.onAlreadyConnected(bleDevice);
            }
            return;
        }
        this.mBleManager.connect(bleDevice, new BleGattCallback() { // from class: com.mergbw.core.ble.RGBDeviceManager.1
            @Override // com.clj.fastble.callback.BleGattCallback
            public void onStartConnect() {
            }

            @Override // com.clj.fastble.callback.BleGattCallback
            public void onConnectFail(BleDevice device, BleException exception) {
                MeRGBWLog.i("connectDevice: " + device.getMac() + " onConnectFail: " + exception.toString());
                for (BleCallback bleCallback2 : RGBDeviceManager.this.mListeners.values()) {
                    bleCallback2.onConnectedFailed(device);
                }
            }

            @Override // com.clj.fastble.callback.BleGattCallback
            public void onConnectSuccess(BleDevice device, BluetoothGatt gatt, int status) {
                MeRGBWLog.i("connectDevice: " + device.getMac() + " onConnectSuccess");
                for (BleCallback bleCallback2 : RGBDeviceManager.this.mListeners.values()) {
                    bleCallback2.onConnected(device);
                }
                RGBDeviceManager.this.setMtu(device);
                if (!RGBDeviceManager.this.mDataQueue.containsKey(device.getMac())) {
                    RGBDeviceManager.this.mDataQueue.put(device.getMac(), new SendCommandQueue());
                }
                MeRGBWLog.i("onConnectSuccess mDataQueue size: " + RGBDeviceManager.this.mDataQueue.size());
            }

            @Override // com.clj.fastble.callback.BleGattCallback
            public void onDisConnected(boolean isActiveDisConnected, BleDevice device, BluetoothGatt gatt, int status) {
                MeRGBWLog.i("onDisConnected: " + device.getMac() + " onDisConnected");
                for (BleCallback bleCallback2 : RGBDeviceManager.this.mListeners.values()) {
                    bleCallback2.onDisconnected(device);
                }
                SendCommandQueue sendCommandQueue = (SendCommandQueue) RGBDeviceManager.this.mDataQueue.get(device.getMac());
                if (sendCommandQueue != null) {
                    sendCommandQueue.stop();
                    RGBDeviceManager.this.mDataQueue.remove(device.getMac());
                }
                MeRGBWLog.i("onConnectSuccess mDataQueue size: " + RGBDeviceManager.this.mDataQueue.size());
            }
        });
    }

    public boolean isConnected(String mac) {
        return this.mBleManager.isConnected(new BleDevice(this.mBleManager.getBluetoothAdapter().getRemoteDevice(mac)));
    }

    public void disconnectDevice(DeviceInfoBean deviceInfo) {
        this.mBleManager.disconnect(new BleDevice(this.mBleManager.getBluetoothAdapter().getRemoteDevice(deviceInfo.getDeviceMac())));
    }

    public void disconnectDevice(BleDevice bleDevice) {
        this.mBleManager.disconnect(bleDevice);
    }

    public void disconnectAll() {
        this.mBleManager.disconnectAllDevice();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setNotify(BleDevice bleDevice) {
        this.mBleManager.notify(bleDevice, Constants.GATT_SERVICE_PRIMARY, Constants.CHARACTERISTIC_NOTIFY, new BleNotifyCallback() { // from class: com.mergbw.core.ble.RGBDeviceManager.2
            @Override // com.clj.fastble.callback.BleNotifyCallback
            public void onNotifySuccess(BleDevice bleDevice2) {
                MeRGBWLog.i("setNotify onNotifySuccess");
                for (BleCallback bleCallback : RGBDeviceManager.this.mListeners.values()) {
                    bleCallback.onNotifySuccess(bleDevice2);
                }
            }

            @Override // com.clj.fastble.callback.BleNotifyCallback
            public void onNotifyFailure(BleException exception) {
                MeRGBWLog.e("setNotify onNotifyFailure: " + exception.getDescription());
            }

            @Override // com.clj.fastble.callback.BleNotifyCallback
            public void onCharacteristicChanged(BleDevice bleDevice2, byte[] data) {
                MeRGBWLog.i(bleDevice2.getMac() + " setNotify onCharacteristicChanged: " + StringUtils.byte2HexStr(data));
                for (BleCallback bleCallback : RGBDeviceManager.this.mListeners.values()) {
                    bleCallback.onNotifyData(bleDevice2, data[1], data);
                }
            }
        });
    }

    public void sendCommandData(String deviceMac, byte[] data) {
        if (isConnected(deviceMac)) {
            sendCommandData(new BleDevice(this.mBleManager.getBluetoothAdapter().getRemoteDevice(deviceMac)), data);
        }
    }

    public void sendCommandData(DeviceInfoBean deviceInfo, byte[] data) {
        if (deviceInfo == null || !isConnected(deviceInfo.getDeviceMac())) {
            return;
        }
        sendCommandData(new BleDevice(this.mBleManager.getBluetoothAdapter().getRemoteDevice(deviceInfo.getDeviceMac())), data);
    }

    public void sendCommandData(BleDevice bleDevice, byte[] data) {
        SendCommandQueue sendCommandQueue = this.mDataQueue.get(bleDevice.getMac());
        if (sendCommandQueue == null) {
            sendCommandQueue = new SendCommandQueue();
            this.mDataQueue.put(bleDevice.getMac(), sendCommandQueue);
        }
        sendCommandQueue.put(new CommandData(bleDevice, data));
    }

    public void sendAudioColor(DeviceInfoBean deviceInfo, byte[] data) {
        if (isConnected(deviceInfo.getDeviceMac())) {
            BleDevice bleDevice = new BleDevice(this.mBleManager.getBluetoothAdapter().getRemoteDevice(deviceInfo.getDeviceMac()));
            SendCommandQueue sendCommandQueue = this.mDataQueue.get(bleDevice.getMac());
            if (sendCommandQueue == null) {
                sendCommandQueue = new SendCommandQueue();
                this.mDataQueue.put(bleDevice.getMac(), sendCommandQueue);
            }
            sendCommandQueue.sendAudioData(bleDevice, data);
        }
    }

    public void sendData(final BleDevice bleDevice, byte[] data) {
        MeRGBWLog.i(bleDevice.getMac() + " sendData: " + StringUtils.byte2HexStr(data));
        this.mBleManager.write(bleDevice, Constants.GATT_SERVICE_PRIMARY, Constants.CHARACTERISTIC_WRITEABLE, data, false, new BleWriteCallback() { // from class: com.mergbw.core.ble.RGBDeviceManager.3
            @Override // com.clj.fastble.callback.BleWriteCallback
            public void onWriteFailure(BleException exception) {
            }

            @Override // com.clj.fastble.callback.BleWriteCallback
            public void onWriteSuccess(int current, int total, byte[] justWrite) {
                MeRGBWLog.i(bleDevice.getMac() + " sendData onWriteSuccess: " + StringUtils.byte2HexStr(justWrite));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setMtu(final BleDevice bleDevice) {
        this.mBleManager.setMtu(bleDevice, 247, new BleMtuChangedCallback() { // from class: com.mergbw.core.ble.RGBDeviceManager.4
            @Override // com.clj.fastble.callback.BleMtuChangedCallback
            public void onSetMTUFailure(BleException exception) {
                MeRGBWLog.i("setMtu onSetMTUFailure: " + exception.getDescription());
                RGBDeviceManager.this.setNotify(bleDevice);
                for (BleCallback bleCallback : RGBDeviceManager.this.mListeners.values()) {
                    bleCallback.onMtuChanged(bleDevice, false, 20);
                }
                SendCommandQueue sendCommandQueue = (SendCommandQueue) RGBDeviceManager.this.mDataQueue.get(bleDevice.getMac());
                if (sendCommandQueue != null) {
                    sendCommandQueue.setMtu(20);
                }
            }

            @Override // com.clj.fastble.callback.BleMtuChangedCallback
            public void onMtuChanged(int mtu) {
                MeRGBWLog.i("setMtu onMtuChanged: " + mtu);
                RGBDeviceManager.this.setNotify(bleDevice);
                for (BleCallback bleCallback : RGBDeviceManager.this.mListeners.values()) {
                    bleCallback.onMtuChanged(bleDevice, true, mtu);
                }
                SendCommandQueue sendCommandQueue = (SendCommandQueue) RGBDeviceManager.this.mDataQueue.get(bleDevice.getMac());
                if (sendCommandQueue != null) {
                    sendCommandQueue.setMtu(mtu);
                }
            }
        });
    }

    public int getMtu(DeviceInfoBean deviceInfo) {
        SendCommandQueue sendCommandQueue = this.mDataQueue.get(deviceInfo.getDeviceMac());
        if (sendCommandQueue != null) {
            return sendCommandQueue.getMtu();
        }
        return 20;
    }

    public boolean isUpgrade() {
        return this.isUpgrade;
    }

    public synchronized void setUpgrade(boolean upgrade) {
        this.isUpgrade = upgrade;
    }
}
