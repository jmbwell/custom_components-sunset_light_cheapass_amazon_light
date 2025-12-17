package com.mergbw.android.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.android.R;
/* loaded from: classes4.dex */
public final class ActivityLoginBinding implements ViewBinding {
    public final Button btnLogin;
    public final Button btnRegister;
    public final EditText etPassword;
    public final EditText etUsername;
    public final ImageView ivBack;
    public final RelativeLayout layoutHead;
    private final ConstraintLayout rootView;
    public final TextView tvEmailError;
    public final TextView tvForgetPassword;
    public final TextView tvPasswordError;
    public final TextView tvWelcome;
    public final View viewEmailDivider;
    public final View viewPasswordDivider;

    private ActivityLoginBinding(ConstraintLayout constraintLayout, Button button, Button button2, EditText editText, EditText editText2, ImageView imageView, RelativeLayout relativeLayout, TextView textView, TextView textView2, TextView textView3, TextView textView4, View view, View view2) {
        this.rootView = constraintLayout;
        this.btnLogin = button;
        this.btnRegister = button2;
        this.etPassword = editText;
        this.etUsername = editText2;
        this.ivBack = imageView;
        this.layoutHead = relativeLayout;
        this.tvEmailError = textView;
        this.tvForgetPassword = textView2;
        this.tvPasswordError = textView3;
        this.tvWelcome = textView4;
        this.viewEmailDivider = view;
        this.viewPasswordDivider = view2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.activity_login, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static ActivityLoginBinding bind(View view) {
        View findChildViewById;
        View findChildViewById2;
        int i = R.id.btn_login;
        Button button = (Button) ViewBindings.findChildViewById(view, i);
        if (button != null) {
            i = R.id.btn_register;
            Button button2 = (Button) ViewBindings.findChildViewById(view, i);
            if (button2 != null) {
                i = R.id.et_password;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, i);
                if (editText != null) {
                    i = R.id.et_username;
                    EditText editText2 = (EditText) ViewBindings.findChildViewById(view, i);
                    if (editText2 != null) {
                        i = R.id.iv_back;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
                        if (imageView != null) {
                            i = R.id.layout_head;
                            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i);
                            if (relativeLayout != null) {
                                i = R.id.tv_email_error;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                if (textView != null) {
                                    i = R.id.tv_forget_password;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                    if (textView2 != null) {
                                        i = R.id.tv_password_error;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                        if (textView3 != null) {
                                            i = R.id.tv_welcome;
                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                                            if (textView4 != null && (findChildViewById = ViewBindings.findChildViewById(view, (i = R.id.view_email_divider))) != null && (findChildViewById2 = ViewBindings.findChildViewById(view, (i = R.id.view_password_divider))) != null) {
                                                return new ActivityLoginBinding((ConstraintLayout) view, button, button2, editText, editText2, imageView, relativeLayout, textView, textView2, textView3, textView4, findChildViewById, findChildViewById2);
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
