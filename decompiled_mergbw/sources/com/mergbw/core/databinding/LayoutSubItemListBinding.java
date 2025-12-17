package com.mergbw.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.core.R;
import com.mergbw.core.ui.views.SubItemView;
/* loaded from: classes4.dex */
public final class LayoutSubItemListBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final SubItemView viewSub01;
    public final SubItemView viewSub02;
    public final SubItemView viewSub03;
    public final SubItemView viewSub04;
    public final SubItemView viewSub05;
    public final SubItemView viewSub06;
    public final SubItemView viewSub07;
    public final SubItemView viewSub08;
    public final SubItemView viewSub09;
    public final SubItemView viewSub10;
    public final SubItemView viewSub11;
    public final SubItemView viewSub12;
    public final SubItemView viewSub13;
    public final SubItemView viewSub14;
    public final SubItemView viewSub15;
    public final SubItemView viewSub16;
    public final SubItemView viewSub17;
    public final SubItemView viewSub18;
    public final SubItemView viewSub19;
    public final SubItemView viewSub20;

    private LayoutSubItemListBinding(LinearLayout rootView, SubItemView viewSub01, SubItemView viewSub02, SubItemView viewSub03, SubItemView viewSub04, SubItemView viewSub05, SubItemView viewSub06, SubItemView viewSub07, SubItemView viewSub08, SubItemView viewSub09, SubItemView viewSub10, SubItemView viewSub11, SubItemView viewSub12, SubItemView viewSub13, SubItemView viewSub14, SubItemView viewSub15, SubItemView viewSub16, SubItemView viewSub17, SubItemView viewSub18, SubItemView viewSub19, SubItemView viewSub20) {
        this.rootView = rootView;
        this.viewSub01 = viewSub01;
        this.viewSub02 = viewSub02;
        this.viewSub03 = viewSub03;
        this.viewSub04 = viewSub04;
        this.viewSub05 = viewSub05;
        this.viewSub06 = viewSub06;
        this.viewSub07 = viewSub07;
        this.viewSub08 = viewSub08;
        this.viewSub09 = viewSub09;
        this.viewSub10 = viewSub10;
        this.viewSub11 = viewSub11;
        this.viewSub12 = viewSub12;
        this.viewSub13 = viewSub13;
        this.viewSub14 = viewSub14;
        this.viewSub15 = viewSub15;
        this.viewSub16 = viewSub16;
        this.viewSub17 = viewSub17;
        this.viewSub18 = viewSub18;
        this.viewSub19 = viewSub19;
        this.viewSub20 = viewSub20;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static LayoutSubItemListBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LayoutSubItemListBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View inflate = inflater.inflate(R.layout.layout_sub_item_list, parent, false);
        if (attachToParent) {
            parent.addView(inflate);
        }
        return bind(inflate);
    }

    public static LayoutSubItemListBinding bind(View rootView) {
        int i = R.id.view_sub_01;
        SubItemView subItemView = (SubItemView) ViewBindings.findChildViewById(rootView, i);
        if (subItemView != null) {
            i = R.id.view_sub_02;
            SubItemView subItemView2 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
            if (subItemView2 != null) {
                i = R.id.view_sub_03;
                SubItemView subItemView3 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                if (subItemView3 != null) {
                    i = R.id.view_sub_04;
                    SubItemView subItemView4 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                    if (subItemView4 != null) {
                        i = R.id.view_sub_05;
                        SubItemView subItemView5 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                        if (subItemView5 != null) {
                            i = R.id.view_sub_06;
                            SubItemView subItemView6 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                            if (subItemView6 != null) {
                                i = R.id.view_sub_07;
                                SubItemView subItemView7 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                if (subItemView7 != null) {
                                    i = R.id.view_sub_08;
                                    SubItemView subItemView8 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                    if (subItemView8 != null) {
                                        i = R.id.view_sub_09;
                                        SubItemView subItemView9 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                        if (subItemView9 != null) {
                                            i = R.id.view_sub_10;
                                            SubItemView subItemView10 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                            if (subItemView10 != null) {
                                                i = R.id.view_sub_11;
                                                SubItemView subItemView11 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                                if (subItemView11 != null) {
                                                    i = R.id.view_sub_12;
                                                    SubItemView subItemView12 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                                    if (subItemView12 != null) {
                                                        i = R.id.view_sub_13;
                                                        SubItemView subItemView13 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                                        if (subItemView13 != null) {
                                                            i = R.id.view_sub_14;
                                                            SubItemView subItemView14 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                                            if (subItemView14 != null) {
                                                                i = R.id.view_sub_15;
                                                                SubItemView subItemView15 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                                                if (subItemView15 != null) {
                                                                    i = R.id.view_sub_16;
                                                                    SubItemView subItemView16 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                                                    if (subItemView16 != null) {
                                                                        i = R.id.view_sub_17;
                                                                        SubItemView subItemView17 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                                                        if (subItemView17 != null) {
                                                                            i = R.id.view_sub_18;
                                                                            SubItemView subItemView18 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                                                            if (subItemView18 != null) {
                                                                                i = R.id.view_sub_19;
                                                                                SubItemView subItemView19 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                                                                if (subItemView19 != null) {
                                                                                    i = R.id.view_sub_20;
                                                                                    SubItemView subItemView20 = (SubItemView) ViewBindings.findChildViewById(rootView, i);
                                                                                    if (subItemView20 != null) {
                                                                                        return new LayoutSubItemListBinding((LinearLayout) rootView, subItemView, subItemView2, subItemView3, subItemView4, subItemView5, subItemView6, subItemView7, subItemView8, subItemView9, subItemView10, subItemView11, subItemView12, subItemView13, subItemView14, subItemView15, subItemView16, subItemView17, subItemView18, subItemView19, subItemView20);
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
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
