package com.mergbw.android.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.android.R;
/* loaded from: classes4.dex */
public final class ActivityResetPasswordBinding implements ViewBinding {
    public final Button btnNext;
    public final Button btnSubmit;
    public final EditText etEmail;
    public final EditText etPassword;
    public final EditText etPasswordAgain;
    public final EditText etVerify;
    public final ImageView ivBack;
    public final LinearLayout layoutEmail;
    public final RelativeLayout layoutHead;
    public final LinearLayout layoutVerify;
    private final ConstraintLayout rootView;
    public final TextView tvEmialError;
    public final TextView tvPasswordAgainError;
    public final TextView tvPasswordError;
    public final TextView tvVerifyError;
    public final View viewEmailDivider;
    public final View viewPasswordAgainDivider;
    public final View viewPasswordDivider;
    public final View viewVerifyDvider;

    private ActivityResetPasswordBinding(ConstraintLayout constraintLayout, Button button, Button button2, EditText editText, EditText editText2, EditText editText3, EditText editText4, ImageView imageView, LinearLayout linearLayout, RelativeLayout relativeLayout, LinearLayout linearLayout2, TextView textView, TextView textView2, TextView textView3, TextView textView4, View view, View view2, View view3, View view4) {
        this.rootView = constraintLayout;
        this.btnNext = button;
        this.btnSubmit = button2;
        this.etEmail = editText;
        this.etPassword = editText2;
        this.etPasswordAgain = editText3;
        this.etVerify = editText4;
        this.ivBack = imageView;
        this.layoutEmail = linearLayout;
        this.layoutHead = relativeLayout;
        this.layoutVerify = linearLayout2;
        this.tvEmialError = textView;
        this.tvPasswordAgainError = textView2;
        this.tvPasswordError = textView3;
        this.tvVerifyError = textView4;
        this.viewEmailDivider = view;
        this.viewPasswordAgainDivider = view2;
        this.viewPasswordDivider = view3;
        this.viewVerifyDvider = view4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityResetPasswordBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityResetPasswordBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.activity_reset_password, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ActivityResetPasswordBinding bind(View view) {
        View findChildViewById;
        View findChildViewById2;
        View findChildViewById3;
        View findChildViewById4;
        int i = R.id.btn_next;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.btn_submit;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R.id.et_email;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                if (editText != null) {
                    i = R.id.et_password;
                    EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText2 != null) {
                        i = R.id.et_password_again;
                        EditText editText3 = (EditText) ViewBindings.findChildViewById(view, i);
                        if (editText3 != null) {
                            i = R.id.et_verify;
                            EditText editText4 = (EditText) ViewBindings.findChildViewById(view, i);
                            if (editText4 != null) {
                                i = R.id.iv_back;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView != null) {
                                    i = R.id.layout_email;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout != null) {
                                        i = R.id.layout_head;
                                        RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                                        if (relativeLayout != null) {
                                            i = R.id.layout_verify;
                                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                            if (linearLayout2 != null) {
                                                i = R.id.tv_emial_error;
                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                if (textView != null) {
                                                    i = R.id.tv_password_again_error;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                    if (textView2 != null) {
                                                        i = R.id.tv_password_error;
                                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                        if (textView3 != null) {
                                                            i = R.id.tv_verify_error;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                                            if (textView4 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_email_divider))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.view_password_again_divider))) != null && (findChildViewById3 = ViewBindings.findChildViewById(view, (i = R.id.view_password_divider))) != null && (findChildViewById4 = ViewBindings.findChildViewById(view, (i = R.id.view_verify_dvider))) != null) {
                                                                return new ActivityResetPasswordBinding((ConstraintLayout) view, button, button2, editText, editText2, editText3, editText4, imageView, linearLayout, relativeLayout, linearLayout2, textView, textView2, textView3, textView4, findChildViewById, findChildViewById2, findChildViewById3, findChildViewById4);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
