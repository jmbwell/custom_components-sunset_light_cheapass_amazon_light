package com.clj.fastble.callback;

import com.clj.fastble.data.BleDevice;
import com.clj.fastble.exception.BleException;
/* loaded from: classes3.dex */
public abstract class BleNotifyCallback extends BleBaseCallback {
    public abstract void onCharacteristicChanged(BleDevice bleDevice, byte[] bArr);

    public abstract void onNotifyFailure(BleException bleException);

    public abstract void onNotifySuccess(BleDevice bleDevice);
}
