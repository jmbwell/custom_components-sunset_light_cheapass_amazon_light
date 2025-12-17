package com.mergbw.core.database.presenter;

import com.mergbw.core.database.bean.GroupItemBean;
import java.util.List;
/* loaded from: classes4.dex */
public interface IGroupDatabaseListener extends IBaseDatabaseListener {
    void onGetGroupInfo(GroupItemBean group);

    void onGetGroupList(List<GroupItemBean> groupList);
}
