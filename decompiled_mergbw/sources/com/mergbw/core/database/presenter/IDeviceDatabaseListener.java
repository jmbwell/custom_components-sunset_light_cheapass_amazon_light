package com.mergbw.core.database.presenter;

import com.mergbw.core.database.bean.DeviceInfoBean;
import java.util.List;
/* loaded from: classes4.dex */
public interface IDeviceDatabaseListener extends IBaseDatabaseListener {
    void onGetDeviceInfo(DeviceInfoBean deviceInfo);

    void onGetDeviceList(List<DeviceInfoBean> deviceList);
}
