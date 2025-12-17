package com.mergbw.core.ui.DIYSetting.adapter;

import com.mergbw.core.database.bean.SubColorBean;
/* loaded from: classes4.dex */
public interface IDIYSubItemClickListener {
    void clickDIYSubItem(SubColorBean diySubColor);

    void deleteSubItem(SubColorBean diySubColor, int position, int currentIndex);
}
