package com.mergbw.core.network.app.download;

import java.io.File;
/* loaded from: classes4.dex */
public interface DownloadCallback {
    void onError(String msg);

    void onFinish(File file);

    void onProgress(long totalByte, long currentByte, int progress);
}
