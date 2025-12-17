package com.mergbw.android.task;

import com.mergbw.core.database.bean.DeviceInfoBean;
import com.mergbw.core.database.presenter.DeviceDatabasePresenter;
import com.mergbw.core.database.presenter.IDeviceDatabaseListener;
import java.util.List;
/* loaded from: classes4.dex */
public class SortDeviceDataTask implements Runnable {
    private DeviceDatabasePresenter mDeviceDataPresenter;

    @Override // java.lang.Runnable
    public void run() {
        DeviceDatabasePresenter deviceDatabasePresenter = new DeviceDatabasePresenter(new IDeviceDatabaseListener() { // from class: com.mergbw.android.task.SortDeviceDataTask.1
            @Override // com.mergbw.core.database.presenter.IBaseDatabaseListener
            public void onAddSuccess() {
            }

            @Override // com.mergbw.core.database.presenter.IBaseDatabaseListener
            public void onDeleteSuccess() {
            }

            @Override // com.mergbw.core.database.presenter.IDeviceDatabaseListener
            public void onGetDeviceInfo(DeviceInfoBean deviceInfoBean) {
            }

            @Override // com.mergbw.core.database.presenter.IBaseDatabaseListener
            public void onUpdateSuccess() {
            }

            @Override // com.mergbw.core.database.presenter.IDeviceDatabaseListener
            public void onGetDeviceList(List<DeviceInfoBean> list) {
                if (list == null || list.isEmpty()) {
                    return;
                }
                SortDeviceDataTask.this.sortDeviceData(list);
            }
        });
        this.mDeviceDataPresenter = deviceDatabasePresenter;
        deviceDatabasePresenter.getDeviceList2();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00de, code lost:
        if (r2.equals("LT-06A") == false) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00f7, code lost:
        if (r1.getDeviceType() == 6) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0110, code lost:
        if (r1.getDeviceType() == 6) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void sortDeviceData(java.util.List<com.mergbw.core.database.bean.DeviceInfoBean> r17) {
        /*
            Method dump skipped, instructions count: 452
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mergbw.android.task.SortDeviceDataTask.sortDeviceData(java.util.List):void");
    }
}
