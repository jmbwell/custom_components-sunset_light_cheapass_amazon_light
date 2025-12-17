package com.mergbw.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.core.R;
import com.mergbw.core.ui.views.SubItemListView;
/* loaded from: classes4.dex */
public final class LayoutDiySubItemBinding implements ViewBinding {
    public final ImageView ivAdd;
    public final ImageView ivDelete;
    private final FrameLayout rootView;
    public final SubItemListView viewSubList;

    private LayoutDiySubItemBinding(FrameLayout rootView, ImageView ivAdd, ImageView ivDelete, SubItemListView viewSubList) {
        this.rootView = rootView;
        this.ivAdd = ivAdd;
        this.ivDelete = ivDelete;
        this.viewSubList = viewSubList;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static LayoutDiySubItemBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LayoutDiySubItemBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View inflate = inflater.inflate(R.layout.layout_diy_sub_item, parent, false);
        if (attachToParent) {
            parent.addView(inflate);
        }
        return bind(inflate);
    }

    public static LayoutDiySubItemBinding bind(View rootView) {
        int i = R.id.iv_add;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            i = R.id.iv_delete;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView2 != null) {
                i = R.id.view_sub_list;
                SubItemListView subItemListView = (SubItemListView) ViewBindings.findChildViewById(rootView, i);
                if (subItemListView != null) {
                    return new LayoutDiySubItemBinding((FrameLayout) rootView, imageView, imageView2, subItemListView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
