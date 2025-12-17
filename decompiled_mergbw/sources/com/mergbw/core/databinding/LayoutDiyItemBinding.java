package com.mergbw.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.core.R;
import com.mergbw.core.ui.views.SubItemListView;
/* loaded from: classes4.dex */
public final class LayoutDiyItemBinding implements ViewBinding {
    public final ImageView ivAdd;
    private final ConstraintLayout rootView;
    public final TextView tvItemName;
    public final SubItemListView viewSubList;

    private LayoutDiyItemBinding(ConstraintLayout rootView, ImageView ivAdd, TextView tvItemName, SubItemListView viewSubList) {
        this.rootView = rootView;
        this.ivAdd = ivAdd;
        this.tvItemName = tvItemName;
        this.viewSubList = viewSubList;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutDiyItemBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LayoutDiyItemBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View inflate = inflater.inflate(R.layout.layout_diy_item, parent, false);
        if (attachToParent) {
            parent.addView(inflate);
        }
        return bind(inflate);
    }

    public static LayoutDiyItemBinding bind(View rootView) {
        int i = R.id.iv_add;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            i = R.id.tv_item_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView != null) {
                i = R.id.view_sub_list;
                SubItemListView subItemListView = (SubItemListView) ViewBindings.findChildViewById(rootView, i);
                if (subItemListView != null) {
                    return new LayoutDiyItemBinding((ConstraintLayout) rootView, imageView, textView, subItemListView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
