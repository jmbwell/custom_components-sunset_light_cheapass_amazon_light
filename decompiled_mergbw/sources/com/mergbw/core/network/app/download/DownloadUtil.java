package com.mergbw.core.network.app.download;

import android.text.TextUtils;
import com.mergbw.core.utils.MeRGBWLog;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import java.io.File;
import okhttp3.ResponseBody;
/* loaded from: classes4.dex */
public class DownloadUtil {
    public static void downloadFile(final String url, final String filePath, final DownloadCallback callback) {
        if (TextUtils.isEmpty(url) || TextUtils.isEmpty(filePath)) {
            if (callback != null) {
                callback.onError("url or path empty");
            }
            MeRGBWLog.e("downloadFile url or path empty");
            return;
        }
        File file = new File(filePath);
        if (file.exists()) {
            file.delete();
        }
        DownloadHelper.downloadFile(url, new DownloadListener() { // from class: com.mergbw.core.network.app.download.DownloadUtil$$ExternalSyntheticLambda0
            @Override // com.mergbw.core.network.app.download.DownloadListener
            public final void onProgress(long j, long j2) {
                DownloadCallback.this.onProgress(j, j2, (int) ((j2 / j) * 100.0d));
            }
        }, new Observer<ResponseBody>() { // from class: com.mergbw.core.network.app.download.DownloadUtil.1
            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable d) {
                MeRGBWLog.e("onSubscribe");
            }

            @Override // io.reactivex.Observer
            public void onNext(final ResponseBody responseBody) {
                DownloadUtil.saveFile(filePath, responseBody, callback);
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable e) {
                e.printStackTrace();
                MeRGBWLog.e("onError " + e.getMessage());
                DownloadCallback downloadCallback = callback;
                if (downloadCallback != null) {
                    downloadCallback.onError(e.getMessage());
                }
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                MeRGBWLog.e("download onComplete ");
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:69:0x006f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0079 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0038 -> B:64:0x0068). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void saveFile(java.lang.String r4, okhttp3.ResponseBody r5, com.mergbw.core.network.app.download.DownloadCallback r6) {
        /*
            if (r4 != 0) goto L3
            return
        L3:
            r0 = 0
            java.io.File r1 = new java.io.File     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L53
            r1.<init>(r4)     // Catch: java.lang.Throwable -> L50 java.lang.Exception -> L53
            boolean r4 = r1.exists()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L50
            if (r4 != 0) goto L12
            r1.createNewFile()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L50
        L12:
            r4 = 4096(0x1000, float:5.74E-42)
            byte[] r4 = new byte[r4]     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L50
            java.io.InputStream r5 = r5.byteStream()     // Catch: java.lang.Exception -> L4d java.lang.Throwable -> L50
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L49
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L45 java.lang.Exception -> L49
        L1f:
            int r0 = r5.read(r4)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            r3 = -1
            if (r0 != r3) goto L3c
            r2.flush()     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            if (r5 == 0) goto L33
            r5.close()     // Catch: java.io.IOException -> L2f
            goto L33
        L2f:
            r4 = move-exception
            r4.printStackTrace()
        L33:
            r2.close()     // Catch: java.io.IOException -> L37
            goto L68
        L37:
            r4 = move-exception
            r4.printStackTrace()
            goto L68
        L3c:
            r3 = 0
            r2.write(r4, r3, r0)     // Catch: java.lang.Throwable -> L41 java.lang.Exception -> L43
            goto L1f
        L41:
            r4 = move-exception
            goto L47
        L43:
            r4 = move-exception
            goto L4b
        L45:
            r4 = move-exception
            r2 = r0
        L47:
            r0 = r5
            goto L6d
        L49:
            r4 = move-exception
            r2 = r0
        L4b:
            r0 = r5
            goto L56
        L4d:
            r4 = move-exception
            r2 = r0
            goto L56
        L50:
            r4 = move-exception
            r2 = r0
            goto L6d
        L53:
            r4 = move-exception
            r1 = r0
            r2 = r1
        L56:
            r4.printStackTrace()     // Catch: java.lang.Throwable -> L6c
            if (r0 == 0) goto L63
            r0.close()     // Catch: java.io.IOException -> L5f
            goto L63
        L5f:
            r4 = move-exception
            r4.printStackTrace()
        L63:
            if (r2 == 0) goto L68
            r2.close()     // Catch: java.io.IOException -> L37
        L68:
            r6.onFinish(r1)
            return
        L6c:
            r4 = move-exception
        L6d:
            if (r0 == 0) goto L77
            r0.close()     // Catch: java.io.IOException -> L73
            goto L77
        L73:
            r5 = move-exception
            r5.printStackTrace()
        L77:
            if (r2 == 0) goto L81
            r2.close()     // Catch: java.io.IOException -> L7d
            goto L81
        L7d:
            r5 = move-exception
            r5.printStackTrace()
        L81:
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mergbw.core.network.app.download.DownloadUtil.saveFile(java.lang.String, okhttp3.ResponseBody, com.mergbw.core.network.app.download.DownloadCallback):void");
    }
}
