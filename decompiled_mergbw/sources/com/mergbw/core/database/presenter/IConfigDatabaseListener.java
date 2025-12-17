package com.mergbw.core.database.presenter;

import com.mergbw.core.database.bean.ConfigInfoBean;
import java.util.List;
/* loaded from: classes4.dex */
public interface IConfigDatabaseListener extends IBaseDatabaseListener {
    void onGetConfigList(List<ConfigInfoBean> configList);
}
