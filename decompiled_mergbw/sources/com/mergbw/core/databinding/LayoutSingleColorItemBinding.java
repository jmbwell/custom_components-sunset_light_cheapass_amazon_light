package com.mergbw.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.core.R;
import com.mergbw.core.ui.views.ColorCheckableView;
/* loaded from: classes4.dex */
public final class LayoutSingleColorItemBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final ColorCheckableView viewColorItem;

    private LayoutSingleColorItemBinding(LinearLayout rootView, ColorCheckableView viewColorItem) {
        this.rootView = rootView;
        this.viewColorItem = viewColorItem;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static LayoutSingleColorItemBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LayoutSingleColorItemBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View inflate = inflater.inflate(R.layout.layout_single_color_item, parent, false);
        if (attachToParent) {
            parent.addView(inflate);
        }
        return bind(inflate);
    }

    public static LayoutSingleColorItemBinding bind(View rootView) {
        int i = R.id.view_color_item;
        ColorCheckableView colorCheckableView = (ColorCheckableView) ViewBindings.findChildViewById(rootView, i);
        if (colorCheckableView != null) {
            return new LayoutSingleColorItemBinding((LinearLayout) rootView, colorCheckableView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
