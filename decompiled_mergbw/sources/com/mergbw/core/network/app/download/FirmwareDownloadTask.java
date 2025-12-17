package com.mergbw.core.network.app.download;

import android.content.Context;
import com.mergbw.core.utils.MeRGBWLog;
import java.io.File;
/* loaded from: classes4.dex */
public class FirmwareDownloadTask implements Runnable {
    private final DownloadCallback mCallBack;
    private final Context mContext;
    private final int mDeviceModel;
    private final int mFileId;

    public FirmwareDownloadTask(Context context, int fileId, int deviceModel, DownloadCallback callBack) {
        this.mContext = context;
        this.mFileId = fileId;
        this.mCallBack = callBack;
        this.mDeviceModel = deviceModel;
    }

    @Override // java.lang.Runnable
    public void run() {
        String str = "/file/download/" + this.mFileId;
        String absolutePath = new File(this.mContext.getExternalCacheDir(), "Firmware_File.bin").getAbsolutePath();
        MeRGBWLog.e("AppUpdateTask, download url: " + str);
        DownloadUtil.downloadFile(str, absolutePath, new DownloadCallback() { // from class: com.mergbw.core.network.app.download.FirmwareDownloadTask.1
            @Override // com.mergbw.core.network.app.download.DownloadCallback
            public void onProgress(long totalByte, long currentByte, int progress) {
                if (FirmwareDownloadTask.this.mCallBack != null) {
                    FirmwareDownloadTask.this.mCallBack.onProgress(totalByte, currentByte, progress);
                }
            }

            @Override // com.mergbw.core.network.app.download.DownloadCallback
            public void onFinish(File file) {
                if (FirmwareDownloadTask.this.mCallBack != null) {
                    FirmwareDownloadTask.this.mCallBack.onFinish(file);
                }
            }

            @Override // com.mergbw.core.network.app.download.DownloadCallback
            public void onError(String msg) {
                if (FirmwareDownloadTask.this.mCallBack != null) {
                    FirmwareDownloadTask.this.mCallBack.onError(msg);
                }
            }
        });
    }
}
