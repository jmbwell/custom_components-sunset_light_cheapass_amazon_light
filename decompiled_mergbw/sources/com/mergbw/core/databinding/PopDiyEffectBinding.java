package com.mergbw.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.core.R;
/* loaded from: classes4.dex */
public final class PopDiyEffectBinding implements ViewBinding {
    public final ListView listEffect;
    private final FrameLayout rootView;
    public final TextView tvCancel;
    public final TextView tvDone;
    public final TextView tvTitle;

    private PopDiyEffectBinding(FrameLayout rootView, ListView listEffect, TextView tvCancel, TextView tvDone, TextView tvTitle) {
        this.rootView = rootView;
        this.listEffect = listEffect;
        this.tvCancel = tvCancel;
        this.tvDone = tvDone;
        this.tvTitle = tvTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static PopDiyEffectBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static PopDiyEffectBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View inflate = inflater.inflate(R.layout.pop_diy_effect, parent, false);
        if (attachToParent) {
            parent.addView(inflate);
        }
        return bind(inflate);
    }

    public static PopDiyEffectBinding bind(View rootView) {
        int i = R.id.list_effect;
        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, i);
        if (listView != null) {
            i = R.id.tv_cancel;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView != null) {
                i = R.id.tv_done;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView2 != null) {
                    i = R.id.tv_title;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView3 != null) {
                        return new PopDiyEffectBinding((FrameLayout) rootView, listView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
