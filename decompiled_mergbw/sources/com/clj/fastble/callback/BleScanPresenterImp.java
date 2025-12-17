package com.clj.fastble.callback;

import com.clj.fastble.data.BleDevice;
/* loaded from: classes3.dex */
public interface BleScanPresenterImp {
    void onScanStarted(boolean z);

    void onScanning(BleDevice bleDevice);
}
