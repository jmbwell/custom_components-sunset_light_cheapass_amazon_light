package com.mergbw.core.ui.views;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.mergbw.core.databinding.DialogUpgradeBinding;
/* loaded from: classes4.dex */
public class UpgradeDialog extends Dialog {
    private DialogUpgradeBinding mBinding;

    public UpgradeDialog(Context context) {
        super(context);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        getWindow().setBackgroundDrawableResource(17170445);
        DialogUpgradeBinding inflate = DialogUpgradeBinding.inflate(getLayoutInflater());
        this.mBinding = inflate;
        setContentView(inflate.getRoot());
        setCancelable(false);
    }

    public void showProgress(float progress) {
        DialogUpgradeBinding dialogUpgradeBinding = this.mBinding;
        if (dialogUpgradeBinding != null) {
            int i = (int) progress;
            dialogUpgradeBinding.pbUpgrade.setProgress(i);
            TextView textView = this.mBinding.tvPbValue;
            textView.setText(i + "%");
        }
    }
}
