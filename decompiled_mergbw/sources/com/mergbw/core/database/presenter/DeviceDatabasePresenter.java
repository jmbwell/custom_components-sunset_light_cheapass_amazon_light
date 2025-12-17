package com.mergbw.core.database.presenter;

import com.mergbw.core.database.AppDatabase;
import com.mergbw.core.database.bean.DeviceInfoBean;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.List;
/* loaded from: classes4.dex */
public class DeviceDatabasePresenter extends BaseDatabasePresenter {
    private final IDeviceDatabaseListener mListener;

    public DeviceDatabasePresenter(IDeviceDatabaseListener listener) {
        this.mListener = listener;
    }

    public void addDevice(DeviceInfoBean device) {
        addDisposable(AppDatabase.getInstance().deviceInfoDao().insertDevice(device), new Action() { // from class: com.mergbw.core.database.presenter.DeviceDatabasePresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Action
            public final void run() {
                DeviceDatabasePresenter.this.m945xbbff970d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$addDevice$0$com-mergbw-core-database-presenter-DeviceDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m945xbbff970d() throws Exception {
        IDeviceDatabaseListener iDeviceDatabaseListener = this.mListener;
        if (iDeviceDatabaseListener != null) {
            iDeviceDatabaseListener.onAddSuccess();
        }
    }

    public void getDeviceList() {
        addDisposable(AppDatabase.getInstance().deviceInfoDao().queryDeviceListFlowable(), new Consumer() { // from class: com.mergbw.core.database.presenter.DeviceDatabasePresenter$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDatabasePresenter.this.m948x7383ef19((List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getDeviceList$1$com-mergbw-core-database-presenter-DeviceDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m948x7383ef19(List list) throws Exception {
        IDeviceDatabaseListener iDeviceDatabaseListener = this.mListener;
        if (iDeviceDatabaseListener != null) {
            iDeviceDatabaseListener.onGetDeviceList(list);
        }
    }

    public void getDeviceList2() {
        addDisposable(AppDatabase.getInstance().deviceInfoDao().queryDeviceListMaybe(), new Consumer() { // from class: com.mergbw.core.database.presenter.DeviceDatabasePresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDatabasePresenter.this.m949x93e68b80((List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getDeviceList2$2$com-mergbw-core-database-presenter-DeviceDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m949x93e68b80(List list) throws Exception {
        IDeviceDatabaseListener iDeviceDatabaseListener = this.mListener;
        if (iDeviceDatabaseListener != null) {
            iDeviceDatabaseListener.onGetDeviceList(list);
        }
    }

    public void getDeviceInfo(String mac) {
        addDisposable(AppDatabase.getInstance().deviceInfoDao().queryDeviceInfo(mac), new Consumer() { // from class: com.mergbw.core.database.presenter.DeviceDatabasePresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                DeviceDatabasePresenter.this.m947xcab04bc7((DeviceInfoBean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getDeviceInfo$3$com-mergbw-core-database-presenter-DeviceDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m947xcab04bc7(DeviceInfoBean deviceInfoBean) throws Exception {
        IDeviceDatabaseListener iDeviceDatabaseListener = this.mListener;
        if (iDeviceDatabaseListener != null) {
            iDeviceDatabaseListener.onGetDeviceInfo(deviceInfoBean);
        }
    }

    public void deleteDevice(DeviceInfoBean device) {
        addDisposable(AppDatabase.getInstance().deviceInfoDao().deleteDevice(device), new Action() { // from class: com.mergbw.core.database.presenter.DeviceDatabasePresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                DeviceDatabasePresenter.this.m946x3ff72f25();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$deleteDevice$4$com-mergbw-core-database-presenter-DeviceDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m946x3ff72f25() throws Exception {
        IDeviceDatabaseListener iDeviceDatabaseListener = this.mListener;
        if (iDeviceDatabaseListener != null) {
            iDeviceDatabaseListener.onDeleteSuccess();
        }
    }

    public void updateDevice(DeviceInfoBean device) {
        addDisposable(AppDatabase.getInstance().deviceInfoDao().updateDevice(device), new Action() { // from class: com.mergbw.core.database.presenter.DeviceDatabasePresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                DeviceDatabasePresenter.this.m950x1a1bfaa6();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateDevice$5$com-mergbw-core-database-presenter-DeviceDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m950x1a1bfaa6() throws Exception {
        IDeviceDatabaseListener iDeviceDatabaseListener = this.mListener;
        if (iDeviceDatabaseListener != null) {
            iDeviceDatabaseListener.onUpdateSuccess();
        }
    }
}
