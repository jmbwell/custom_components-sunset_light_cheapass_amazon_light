package com.clj.fastble.callback;

import com.clj.fastble.exception.BleException;
/* loaded from: classes3.dex */
public abstract class BleRssiCallback extends BleBaseCallback {
    public abstract void onRssiFailure(BleException bleException);

    public abstract void onRssiSuccess(int i);
}
