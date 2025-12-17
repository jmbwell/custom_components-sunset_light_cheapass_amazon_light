package com.mergbw.core.ble;

import com.clj.fastble.data.BleDevice;
/* loaded from: classes4.dex */
public abstract class BleCallback {
    public void onAlreadyConnected(BleDevice bleDevice) {
    }

    public void onConnected(BleDevice bleDevice) {
    }

    public void onConnectedFailed(BleDevice bleDevice) {
    }

    public void onDisconnected(BleDevice bleDevice) {
    }

    public void onMtuChanged(BleDevice bleDevice, boolean success, int mtu) {
    }

    public void onNotifyData(BleDevice bleDevice, byte cmdCode, byte[] data) {
    }

    public void onNotifySuccess(BleDevice bleDevice) {
    }
}
