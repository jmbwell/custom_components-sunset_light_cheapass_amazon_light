package com.mergbw.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.core.R;
/* loaded from: classes4.dex */
public final class PopEditBinding implements ViewBinding {
    public final ConstraintLayout content;
    public final EditText etEditText;
    private final FrameLayout rootView;
    public final TextView tvDone;
    public final TextView tvSkip;
    public final TextView tvTitle;

    private PopEditBinding(FrameLayout rootView, ConstraintLayout content, EditText etEditText, TextView tvDone, TextView tvSkip, TextView tvTitle) {
        this.rootView = rootView;
        this.content = content;
        this.etEditText = etEditText;
        this.tvDone = tvDone;
        this.tvSkip = tvSkip;
        this.tvTitle = tvTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static PopEditBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static PopEditBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View inflate = inflater.inflate(R.layout.pop_edit, parent, false);
        if (attachToParent) {
            parent.addView(inflate);
        }
        return bind(inflate);
    }

    public static PopEditBinding bind(View rootView) {
        int i = R.id.content;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
        if (constraintLayout != null) {
            i = R.id.et_edit_text;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
            if (editText != null) {
                i = R.id.tv_done;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView != null) {
                    i = R.id.tv_skip;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView2 != null) {
                        i = R.id.tv_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView3 != null) {
                            return new PopEditBinding((FrameLayout) rootView, constraintLayout, editText, textView, textView2, textView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
