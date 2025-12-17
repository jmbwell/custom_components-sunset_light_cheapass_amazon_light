package com.mergbw.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.core.R;
import com.mergbw.core.ui.views.GradientView;
/* loaded from: classes4.dex */
public final class LayoutSubGroupItemBinding implements ViewBinding {
    public final CheckBox cbSelected;
    public final TextView groupName;
    private final ConstraintLayout rootView;
    public final GradientView viewSubGroup;

    private LayoutSubGroupItemBinding(ConstraintLayout rootView, CheckBox cbSelected, TextView groupName, GradientView viewSubGroup) {
        this.rootView = rootView;
        this.cbSelected = cbSelected;
        this.groupName = groupName;
        this.viewSubGroup = viewSubGroup;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static LayoutSubGroupItemBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LayoutSubGroupItemBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View inflate = inflater.inflate(R.layout.layout_sub_group_item, parent, false);
        if (attachToParent) {
            parent.addView(inflate);
        }
        return bind(inflate);
    }

    public static LayoutSubGroupItemBinding bind(View rootView) {
        int i = R.id.cb_selected;
        CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, i);
        if (checkBox != null) {
            i = R.id.group_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView != null) {
                i = R.id.view_sub_group;
                GradientView gradientView = (GradientView) ViewBindings.findChildViewById(rootView, i);
                if (gradientView != null) {
                    return new LayoutSubGroupItemBinding((ConstraintLayout) rootView, checkBox, textView, gradientView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
