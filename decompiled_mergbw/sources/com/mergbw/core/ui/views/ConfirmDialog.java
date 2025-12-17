package com.mergbw.core.ui.views;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import com.mergbw.core.databinding.DialogConfirmBinding;
import java.util.Objects;
/* loaded from: classes4.dex */
public class ConfirmDialog extends Dialog {
    private final String content;
    private final String lBtnText;
    private DialogConfirmBinding mBinding;
    private final OnChooseListener mListener;
    private final String rBtnText;
    private final String title;

    /* loaded from: classes4.dex */
    public interface OnChooseListener {
        void OnConfirmResult(boolean yes);
    }

    public ConfirmDialog(Context context, String title, String content, String lBtnText, String rBtnText, OnChooseListener listener) {
        super(context);
        this.title = title;
        this.content = content;
        this.lBtnText = lBtnText;
        this.rBtnText = rBtnText;
        this.mListener = listener;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ((Window) Objects.requireNonNull(getWindow())).setBackgroundDrawableResource(17170445);
        DialogConfirmBinding inflate = DialogConfirmBinding.inflate(getLayoutInflater());
        this.mBinding = inflate;
        setContentView(inflate.getRoot());
        setCancelable(false);
        this.mBinding.tvTitle.setText(this.title);
        this.mBinding.tvContent.setText(this.content);
        this.mBinding.tvCancel.setText(this.lBtnText);
        this.mBinding.tvOk.setText(this.rBtnText);
        this.mBinding.tvOk.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.ConfirmDialog$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfirmDialog.this.m1001lambda$onCreate$0$commergbwcoreuiviewsConfirmDialog(view);
            }
        });
        this.mBinding.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.ConfirmDialog$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ConfirmDialog.this.m1002lambda$onCreate$1$commergbwcoreuiviewsConfirmDialog(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$0$com-mergbw-core-ui-views-ConfirmDialog  reason: not valid java name */
    public /* synthetic */ void m1001lambda$onCreate$0$commergbwcoreuiviewsConfirmDialog(View view) {
        OnChooseListener onChooseListener = this.mListener;
        if (onChooseListener != null) {
            onChooseListener.OnConfirmResult(true);
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$onCreate$1$com-mergbw-core-ui-views-ConfirmDialog  reason: not valid java name */
    public /* synthetic */ void m1002lambda$onCreate$1$commergbwcoreuiviewsConfirmDialog(View view) {
        OnChooseListener onChooseListener = this.mListener;
        if (onChooseListener != null) {
            onChooseListener.OnConfirmResult(false);
        }
        dismiss();
    }
}
