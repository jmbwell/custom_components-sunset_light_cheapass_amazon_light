package com.mergbw.core.network.factory;

import com.mergbw.core.network.factory.bean.FactoryActivityInfoBean;
import com.mergbw.core.network.factory.bean.FactoryInfoBean;
import com.mergbw.core.network.factory.bean.FactoryLoginInfoBean;
import com.mergbw.core.network.factory.bean.FactoryProductInfoBean;
import java.util.List;
/* loaded from: classes4.dex */
public abstract class FactoryDataCallback {
    public void onFactoryActivityResult(boolean success, String msg, List<FactoryActivityInfoBean> activityList) {
    }

    public void onFactoryInfoResult(boolean success, String msg, FactoryInfoBean factoryInfo) {
    }

    public void onFactoryLoginResult(boolean success, String msg, FactoryLoginInfoBean factoryLoginInfoBean) {
    }

    public void onFactoryProductResult(boolean success, String msg, List<FactoryProductInfoBean.GoodsInfo> goodsList) {
    }
}
