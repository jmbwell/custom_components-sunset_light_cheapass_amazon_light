package com.mergbw.android.ui.home.adapter;

import com.mergbw.core.database.bean.DeviceInfoBean;
/* loaded from: classes4.dex */
public interface IDeviceListClickListener {
    void clickDeviceItem(DeviceInfoBean deviceInfoBean);

    void clickPower(DeviceInfoBean deviceInfoBean, boolean z);
}
