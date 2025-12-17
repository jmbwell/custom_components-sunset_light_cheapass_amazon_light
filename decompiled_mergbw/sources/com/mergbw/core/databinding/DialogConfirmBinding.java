package com.mergbw.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.core.R;
/* loaded from: classes4.dex */
public final class DialogConfirmBinding implements ViewBinding {
    private final FrameLayout rootView;
    public final TextView tvCancel;
    public final TextView tvContent;
    public final TextView tvOk;
    public final TextView tvTitle;

    private DialogConfirmBinding(FrameLayout rootView, TextView tvCancel, TextView tvContent, TextView tvOk, TextView tvTitle) {
        this.rootView = rootView;
        this.tvCancel = tvCancel;
        this.tvContent = tvContent;
        this.tvOk = tvOk;
        this.tvTitle = tvTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static DialogConfirmBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DialogConfirmBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View inflate = inflater.inflate(R.layout.dialog_confirm, parent, false);
        if (attachToParent) {
            parent.addView(inflate);
        }
        return bind(inflate);
    }

    public static DialogConfirmBinding bind(View rootView) {
        int i = R.id.tv_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
        if (textView != null) {
            i = R.id.tv_content;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView2 != null) {
                i = R.id.tv_ok;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView3 != null) {
                    i = R.id.tv_title;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView4 != null) {
                        return new DialogConfirmBinding((FrameLayout) rootView, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
