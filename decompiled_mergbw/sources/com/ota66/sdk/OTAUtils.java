package com.ota66.sdk;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.core.view.PointerIconCompat;
import c.d;
import com.ota66.sdk.ble.OTACallBack;
/* loaded from: classes4.dex */
public class OTAUtils {
    public static int MTU_SIZE = 23;
    private OTACallBack callBack;
    private boolean isConnected;
    private boolean isQuick;
    private b.a mBleCallBack;
    private b.b mBleScanner;
    private BluetoothGatt mBluetoothGatt;
    private Context mContext;
    private String otaKey = "";
    private boolean otaKeyCmd0x74 = true;
    private static final char[] HEX_DIGITS_UPPER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final char[] HEX_DIGITS_LOWER = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4.dex */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            if (OTAUtils.this.isConnected) {
                boolean z = true;
                if (c.b.a(OTAUtils.this.mBluetoothGatt)) {
                    OTAUtils.this.callBack.onOTA(true);
                    return;
                }
                if (!OTAUtils.this.isQuick) {
                    str = "0102";
                    z = false;
                } else {
                    str = "010201";
                }
                OTAUtils oTAUtils = OTAUtils.this;
                if (oTAUtils.sendCommand(oTAUtils.mBluetoothGatt, str, z)) {
                    OTAUtils.this.callBack.onOTA(false);
                    return;
                }
                return;
            }
            OTAUtils.this.callBack.onError(1007);
        }
    }

    /* loaded from: classes4.dex */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            if (OTAUtils.this.isConnected) {
                boolean z = true;
                if (c.b.a(OTAUtils.this.mBluetoothGatt)) {
                    OTAUtils.this.callBack.onResource(true);
                    return;
                }
                if (!OTAUtils.this.isQuick) {
                    str = "0103";
                    z = false;
                } else {
                    str = "010301";
                }
                OTAUtils oTAUtils = OTAUtils.this;
                if (oTAUtils.sendCommand(oTAUtils.mBluetoothGatt, str, z)) {
                    OTAUtils.this.callBack.onResource(false);
                    return;
                }
                return;
            }
            OTAUtils.this.callBack.onError(1007);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public class c implements b.c {
        private c() {
        }

        @Override // b.c
        public void a(boolean z) {
            OTAUtils.this.isConnected = z;
            OTAUtils.this.callBack.onConnected(z);
        }

        @Override // b.c
        public void onDeviceSearch(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            OTAUtils.this.callBack.onDeviceSearch(bluetoothDevice, i, bArr);
        }

        @Override // b.c
        public void onError(int i) {
            Log.e("TAG", "onError: =========" + i);
            OTAUtils.this.callBack.onError(i);
        }

        @Override // b.c
        public void onOTAFinish() {
            OTAUtils.this.callBack.onOTAFinish();
        }

        @Override // b.c
        public void onProcess(float f) {
            OTAUtils.this.callBack.onProcess(f);
        }

        @Override // b.c
        public void onResourceFinish() {
            OTAUtils.this.callBack.onResourceFinish();
        }

        @Override // b.c
        public void onStartSecurityData() {
            OTAUtils.this.callBack.onStartSecurityData();
        }

        /* synthetic */ c(OTAUtils oTAUtils, a aVar) {
            this();
        }

        @Override // b.c
        public void a() {
            OTAUtils.this.callBack.onRebootSuccess();
        }

        @Override // b.c
        public void a(BluetoothGatt bluetoothGatt, int i, int i2, int i3) {
            OTAUtils.this.callBack.onPhyUpdate();
        }
    }

    public OTAUtils(Context context, OTACallBack oTACallBack) {
        this.mContext = context;
        this.callBack = oTACallBack;
        init();
    }

    public static String bytes2HexString(byte[] bArr) {
        return bytes2HexString(bArr, true);
    }

    private void init() {
        c cVar = new c(this, null);
        this.mBleScanner = new b.b(this.mContext, cVar);
        b.a aVar = new b.a();
        this.mBleCallBack = aVar;
        aVar.a(cVar);
        this.mBleCallBack.v = this.mContext.getSharedPreferences("data", 0).getString("AESKey", "123");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean sendCommand(BluetoothGatt bluetoothGatt, String str, boolean z) {
        boolean a2 = c.b.a(bluetoothGatt, str, z);
        if (!a2) {
            this.callBack.onError(1003);
        }
        return a2;
    }

    private void sendOtaKey() {
        String str;
        String str2 = this.otaKey;
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        byte[] bytes = str2.getBytes();
        if (!this.otaKeyCmd0x74) {
            str = "05";
        } else {
            str = "74";
        }
        String str3 = str + bytes2HexString(bytes);
        Log.d("OTAKEY", "sendOtaKey: " + str3);
        sendCommand(this.mBluetoothGatt, str3, false);
    }

    public void cancleOTA() {
        if (checkOTA()) {
            this.mBleCallBack.b();
            BluetoothGatt bluetoothGatt = this.mBluetoothGatt;
            if (bluetoothGatt != null) {
                bluetoothGatt.disconnect();
                return;
            }
            return;
        }
        this.mBleCallBack.b();
        BluetoothGatt bluetoothGatt2 = this.mBluetoothGatt;
        if (bluetoothGatt2 != null) {
            bluetoothGatt2.disconnect();
        }
    }

    public boolean checkOTA() {
        if (this.isConnected) {
            return c.b.a(this.mBluetoothGatt);
        }
        return false;
    }

    public void close() {
        BluetoothGatt bluetoothGatt = this.mBluetoothGatt;
        if (bluetoothGatt != null) {
            bluetoothGatt.close();
        }
    }

    public void connectDevice(String str) {
        if (this.isConnected) {
            Log.e("TAG", "connectDevice: 已经连上");
            this.callBack.onConnected(this.isConnected);
            return;
        }
        this.mBluetoothGatt = ((BluetoothManager) this.mContext.getApplicationContext().getSystemService("bluetooth")).getAdapter().getRemoteDevice(str).connectGatt(this.mContext.getApplicationContext(), false, this.mBleCallBack);
    }

    public void disConnectDevice() {
        BluetoothGatt bluetoothGatt;
        if (!this.isConnected || (bluetoothGatt = this.mBluetoothGatt) == null) {
            return;
        }
        bluetoothGatt.disconnect();
    }

    public void reBoot() {
        String str;
        boolean z;
        if (this.isConnected) {
            if (c.b.a(this.mBluetoothGatt)) {
                if (!this.isQuick) {
                    str = "04";
                    z = false;
                } else {
                    str = "0401";
                    z = true;
                }
                if (sendCommand(this.mBluetoothGatt, str, z)) {
                    this.callBack.onReboot();
                    return;
                }
                return;
            }
            this.callBack.onError(PointerIconCompat.TYPE_TEXT);
            return;
        }
        this.callBack.onError(1007);
    }

    public void setOtaKey(String str) {
        this.otaKey = str;
    }

    public void setOtaKeyCmd0x74(boolean z) {
        this.otaKeyCmd0x74 = z;
    }

    public boolean setPHY() {
        boolean isLe2MPhySupported;
        if (Build.VERSION.SDK_INT >= 26) {
            isLe2MPhySupported = BluetoothAdapter.getDefaultAdapter().isLe2MPhySupported();
            if (isLe2MPhySupported) {
                BluetoothGatt bluetoothGatt = this.mBluetoothGatt;
                if (bluetoothGatt != null) {
                    bluetoothGatt.setPreferredPhy(2, 2, 0);
                    return true;
                }
                return true;
            }
        }
        return false;
    }

    public void setRetryTimes(int i) {
        this.mBleCallBack.a(i);
    }

    public void starScan() {
        this.mBleScanner.a();
    }

    public void startOTA() {
        if (this.isConnected) {
            sendOtaKey();
        }
        new Handler(Looper.getMainLooper()).postDelayed(new a(), 800L);
    }

    public void startResource() {
        if (this.isConnected) {
            sendOtaKey();
        }
        new Handler(Looper.getMainLooper()).postDelayed(new b(), 800L);
    }

    public void startSecurity() {
        this.mBleCallBack.a(this.mBluetoothGatt);
    }

    public void stopScan() {
        this.mBleScanner.b();
    }

    public void updateFirmware(String str, boolean z, a.b bVar) {
        this.isQuick = z;
        if (this.isConnected) {
            if (c.b.a(this.mBluetoothGatt)) {
                a.a aVar = new a.a(str, z);
                if (aVar.a() != 200) {
                    this.callBack.onError(1000);
                    return;
                }
                this.mBleCallBack.a(aVar, bVar);
                sendCommand(this.mBluetoothGatt, ("01" + d.a(aVar.c().size())) + "00", true);
                return;
            }
            this.callBack.onError(PointerIconCompat.TYPE_TEXT);
            return;
        }
        this.callBack.onError(1007);
    }

    public void updateResource(String str, boolean z) {
        this.isQuick = z;
        if (this.isConnected) {
            if (c.b.a(this.mBluetoothGatt)) {
                a.a aVar = new a.a(str, z);
                if (aVar.a() != 200) {
                    this.callBack.onError(1000);
                    return;
                }
                this.mBleCallBack.a(aVar, a.b.RESOURCE);
                sendCommand(this.mBluetoothGatt, ("01" + d.a(aVar.c().size())) + "00", true);
                return;
            }
            this.callBack.onError(PointerIconCompat.TYPE_TEXT);
            return;
        }
        this.callBack.onError(1007);
    }

    public static String bytes2HexString(byte[] bArr, boolean z) {
        if (bArr == null) {
            return "";
        }
        char[] cArr = z ? HEX_DIGITS_UPPER : HEX_DIGITS_LOWER;
        int length = bArr.length;
        if (length <= 0) {
            return "";
        }
        char[] cArr2 = new char[length << 1];
        int i = 0;
        for (byte b2 : bArr) {
            int i2 = i + 1;
            cArr2[i] = cArr[(b2 >> 4) & 15];
            i += 2;
            cArr2[i2] = cArr[b2 & 15];
        }
        return new String(cArr2);
    }

    public void updateFirmware(String str, boolean z) {
        updateFirmware(str, z, a.b.OTA);
    }
}
