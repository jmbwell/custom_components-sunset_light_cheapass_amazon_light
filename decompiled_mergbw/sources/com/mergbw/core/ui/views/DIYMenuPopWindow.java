package com.mergbw.core.ui.views;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import com.mergbw.core.R;
import com.mergbw.core.databinding.PopDiyMenuBinding;
/* loaded from: classes4.dex */
public class DIYMenuPopWindow extends PopupWindow {
    public static final int DELETE_CODE = 3;
    public static final int EDIT_CODE = 2;
    public static final int RENAME_CODE = 1;
    private final OnMenuClickListener mListener;

    /* loaded from: classes4.dex */
    public interface OnMenuClickListener {
        void OnMenuClick(int menu);
    }

    public DIYMenuPopWindow(Context context, OnMenuClickListener listener) {
        this.mListener = listener;
        PopDiyMenuBinding inflate = PopDiyMenuBinding.inflate(LayoutInflater.from(context));
        setContentView(inflate.getRoot());
        setWidth(-1);
        setHeight(-1);
        setFocusable(true);
        setOutsideTouchable(true);
        setAnimationStyle(R.style.pop_anim);
        inflate.getRoot().setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.DIYMenuPopWindow$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DIYMenuPopWindow.this.m1006lambda$new$0$commergbwcoreuiviewsDIYMenuPopWindow(view);
            }
        });
        inflate.menuItem4.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.DIYMenuPopWindow$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DIYMenuPopWindow.this.m1007lambda$new$1$commergbwcoreuiviewsDIYMenuPopWindow(view);
            }
        });
        inflate.menuItem1.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.DIYMenuPopWindow$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DIYMenuPopWindow.this.m1008lambda$new$2$commergbwcoreuiviewsDIYMenuPopWindow(view);
            }
        });
        inflate.menuItem2.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.DIYMenuPopWindow$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DIYMenuPopWindow.this.m1009lambda$new$3$commergbwcoreuiviewsDIYMenuPopWindow(view);
            }
        });
        inflate.menuItem3.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.DIYMenuPopWindow$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DIYMenuPopWindow.this.m1010lambda$new$4$commergbwcoreuiviewsDIYMenuPopWindow(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-mergbw-core-ui-views-DIYMenuPopWindow  reason: not valid java name */
    public /* synthetic */ void m1006lambda$new$0$commergbwcoreuiviewsDIYMenuPopWindow(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$com-mergbw-core-ui-views-DIYMenuPopWindow  reason: not valid java name */
    public /* synthetic */ void m1007lambda$new$1$commergbwcoreuiviewsDIYMenuPopWindow(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$2$com-mergbw-core-ui-views-DIYMenuPopWindow  reason: not valid java name */
    public /* synthetic */ void m1008lambda$new$2$commergbwcoreuiviewsDIYMenuPopWindow(View view) {
        OnMenuClickListener onMenuClickListener = this.mListener;
        if (onMenuClickListener != null) {
            onMenuClickListener.OnMenuClick(1);
        }
        if (isShowing()) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$3$com-mergbw-core-ui-views-DIYMenuPopWindow  reason: not valid java name */
    public /* synthetic */ void m1009lambda$new$3$commergbwcoreuiviewsDIYMenuPopWindow(View view) {
        OnMenuClickListener onMenuClickListener = this.mListener;
        if (onMenuClickListener != null) {
            onMenuClickListener.OnMenuClick(2);
        }
        if (isShowing()) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$4$com-mergbw-core-ui-views-DIYMenuPopWindow  reason: not valid java name */
    public /* synthetic */ void m1010lambda$new$4$commergbwcoreuiviewsDIYMenuPopWindow(View view) {
        OnMenuClickListener onMenuClickListener = this.mListener;
        if (onMenuClickListener != null) {
            onMenuClickListener.OnMenuClick(3);
        }
        if (isShowing()) {
            dismiss();
        }
    }
}
