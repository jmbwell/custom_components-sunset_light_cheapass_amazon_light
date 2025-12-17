package com.mergbw.core.ble;

import com.clj.fastble.data.BleDevice;
/* loaded from: classes4.dex */
public class CommandData {
    private BleDevice bleDevice;
    private byte[] data;

    public CommandData(BleDevice bleDevice, byte[] data) {
        setBleDevice(bleDevice);
        setData(data);
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }

    public BleDevice getBleDevice() {
        return this.bleDevice;
    }

    public void setBleDevice(BleDevice bleDevice) {
        this.bleDevice = bleDevice;
    }
}
