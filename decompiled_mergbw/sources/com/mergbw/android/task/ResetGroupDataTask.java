package com.mergbw.android.task;

import com.mergbw.core.database.bean.GroupItemBean;
import com.mergbw.core.database.presenter.GroupDatabasePresenter;
import com.mergbw.core.database.presenter.IGroupDatabaseListener;
import java.util.List;
/* loaded from: classes4.dex */
public class ResetGroupDataTask implements Runnable {
    private final String mDeleteMac;
    private GroupDatabasePresenter mGroupDatabasePresenter;

    public ResetGroupDataTask(String str) {
        this.mDeleteMac = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        GroupDatabasePresenter groupDatabasePresenter = new GroupDatabasePresenter(new IGroupDatabaseListener() { // from class: com.mergbw.android.task.ResetGroupDataTask.1
            @Override // com.mergbw.core.database.presenter.IBaseDatabaseListener
            public void onAddSuccess() {
            }

            @Override // com.mergbw.core.database.presenter.IBaseDatabaseListener
            public void onDeleteSuccess() {
            }

            @Override // com.mergbw.core.database.presenter.IGroupDatabaseListener
            public void onGetGroupInfo(GroupItemBean groupItemBean) {
            }

            @Override // com.mergbw.core.database.presenter.IBaseDatabaseListener
            public void onUpdateSuccess() {
            }

            @Override // com.mergbw.core.database.presenter.IGroupDatabaseListener
            public void onGetGroupList(List<GroupItemBean> list) {
                ResetGroupDataTask.this.resetGroupData(list);
            }
        });
        this.mGroupDatabasePresenter = groupDatabasePresenter;
        groupDatabasePresenter.getGroupList();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetGroupData(List<GroupItemBean> list) {
        for (GroupItemBean groupItemBean : list) {
            String[] split = groupItemBean.getDevices().split(";");
            int i = -1;
            for (int i2 = 0; i2 < split.length; i2++) {
                if (split[i2].equals(this.mDeleteMac)) {
                    i = i2;
                }
            }
            if (i != -1) {
                StringBuilder sb = new StringBuilder();
                for (int i3 = 0; i3 < split.length; i3++) {
                    if (i3 != i) {
                        if (i3 == 0) {
                            sb.append(split[i3]);
                        } else {
                            sb.append(";");
                            sb.append(split[i3]);
                        }
                    }
                }
                groupItemBean.setDevices(sb.toString());
                this.mGroupDatabasePresenter.updateGroup(groupItemBean);
            }
        }
    }
}
