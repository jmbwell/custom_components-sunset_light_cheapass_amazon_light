package com.mergbw.core.database.presenter;

import com.mergbw.core.database.bean.SubColorBean;
import java.util.List;
/* loaded from: classes4.dex */
public interface ISubColorDatabaseListener extends IBaseDatabaseListener {
    void onAddSubColor(Long Id);

    void onGetSubColor(SubColorBean subColor);

    void onGetSubColorList(List<SubColorBean> colorList);
}
