package com.mergbw.core.database.presenter;

import com.mergbw.core.database.bean.DIYInfoBean;
import java.util.List;
/* loaded from: classes4.dex */
public interface IDIYColorDatabaseListener extends IBaseDatabaseListener {
    void onAddDiy(Long DIYId);

    void onGetDIYColor(DIYInfoBean DIYColor);

    void onGetDIYColorList(List<DIYInfoBean> DIYColorList);
}
