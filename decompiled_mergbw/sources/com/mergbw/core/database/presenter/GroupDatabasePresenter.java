package com.mergbw.core.database.presenter;

import com.mergbw.core.database.AppDatabase;
import com.mergbw.core.database.bean.GroupItemBean;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.List;
/* loaded from: classes4.dex */
public class GroupDatabasePresenter extends BaseDatabasePresenter {
    private final IGroupDatabaseListener mListener;

    public GroupDatabasePresenter(IGroupDatabaseListener listener) {
        this.mListener = listener;
    }

    public void addGroup(GroupItemBean group) {
        addDisposable(AppDatabase.getInstance().groupInfoDao().insertGroup(group), new Action() { // from class: com.mergbw.core.database.presenter.GroupDatabasePresenter$$ExternalSyntheticLambda0
            @Override // io.reactivex.functions.Action
            public final void run() {
                GroupDatabasePresenter.this.m951x107889f9();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$addGroup$0$com-mergbw-core-database-presenter-GroupDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m951x107889f9() throws Exception {
        IGroupDatabaseListener iGroupDatabaseListener = this.mListener;
        if (iGroupDatabaseListener != null) {
            iGroupDatabaseListener.onAddSuccess();
        }
    }

    public void getGroupListWithFlowable() {
        addDisposable(AppDatabase.getInstance().groupInfoDao().queryGroupListWithFlowable(), new Consumer() { // from class: com.mergbw.core.database.presenter.GroupDatabasePresenter$$ExternalSyntheticLambda4
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupDatabasePresenter.this.m955x67dda2f1((List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getGroupListWithFlowable$1$com-mergbw-core-database-presenter-GroupDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m955x67dda2f1(List list) throws Exception {
        IGroupDatabaseListener iGroupDatabaseListener = this.mListener;
        if (iGroupDatabaseListener != null) {
            iGroupDatabaseListener.onGetGroupList(list);
        }
    }

    public void getGroupList() {
        addDisposable(AppDatabase.getInstance().groupInfoDao().queryGroupList(), new Consumer() { // from class: com.mergbw.core.database.presenter.GroupDatabasePresenter$$ExternalSyntheticLambda2
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupDatabasePresenter.this.m954x3a0ddc24((List) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getGroupList$2$com-mergbw-core-database-presenter-GroupDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m954x3a0ddc24(List list) throws Exception {
        IGroupDatabaseListener iGroupDatabaseListener = this.mListener;
        if (iGroupDatabaseListener != null) {
            iGroupDatabaseListener.onGetGroupList(list);
        }
    }

    public void getGroupInfo(int groupId) {
        addDisposable(AppDatabase.getInstance().groupInfoDao().queryGroupInfo(groupId), new Consumer() { // from class: com.mergbw.core.database.presenter.GroupDatabasePresenter$$ExternalSyntheticLambda3
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                GroupDatabasePresenter.this.m953x65f664f5((GroupItemBean) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$getGroupInfo$3$com-mergbw-core-database-presenter-GroupDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m953x65f664f5(GroupItemBean groupItemBean) throws Exception {
        IGroupDatabaseListener iGroupDatabaseListener = this.mListener;
        if (iGroupDatabaseListener != null) {
            iGroupDatabaseListener.onGetGroupInfo(groupItemBean);
        }
    }

    public void updateGroup(GroupItemBean group) {
        addDisposable(AppDatabase.getInstance().groupInfoDao().updateGroup(group), new Action() { // from class: com.mergbw.core.database.presenter.GroupDatabasePresenter$$ExternalSyntheticLambda1
            @Override // io.reactivex.functions.Action
            public final void run() {
                GroupDatabasePresenter.this.m956x9f90bf3b();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$updateGroup$4$com-mergbw-core-database-presenter-GroupDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m956x9f90bf3b() throws Exception {
        IGroupDatabaseListener iGroupDatabaseListener = this.mListener;
        if (iGroupDatabaseListener != null) {
            iGroupDatabaseListener.onUpdateSuccess();
        }
    }

    public void deleteGroup(GroupItemBean group) {
        addDisposable(AppDatabase.getInstance().groupInfoDao().deleteGroup(group), new Action() { // from class: com.mergbw.core.database.presenter.GroupDatabasePresenter$$ExternalSyntheticLambda5
            @Override // io.reactivex.functions.Action
            public final void run() {
                GroupDatabasePresenter.this.m952x24ffeb5a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$deleteGroup$5$com-mergbw-core-database-presenter-GroupDatabasePresenter  reason: not valid java name */
    public /* synthetic */ void m952x24ffeb5a() throws Exception {
        IGroupDatabaseListener iGroupDatabaseListener = this.mListener;
        if (iGroupDatabaseListener != null) {
            iGroupDatabaseListener.onDeleteSuccess();
        }
    }
}
