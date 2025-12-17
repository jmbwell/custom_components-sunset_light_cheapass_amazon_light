package com.mergbw.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.core.R;
import top.defaults.colorpicker.ColorPickerView;
/* loaded from: classes4.dex */
public final class PopColorPieBinding implements ViewBinding {
    public final ImageView ivClose;
    private final FrameLayout rootView;
    public final ColorPickerView viewColorPie;

    private PopColorPieBinding(FrameLayout rootView, ImageView ivClose, ColorPickerView viewColorPie) {
        this.rootView = rootView;
        this.ivClose = ivClose;
        this.viewColorPie = viewColorPie;
    }

    @Override // androidx.viewbinding.ViewBinding
    public FrameLayout getRoot() {
        return this.rootView;
    }

    public static PopColorPieBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static PopColorPieBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View inflate = inflater.inflate(R.layout.pop_color_pie, parent, false);
        if (attachToParent) {
            parent.addView(inflate);
        }
        return bind(inflate);
    }

    public static PopColorPieBinding bind(View rootView) {
        int i = R.id.iv_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            i = R.id.view_color_pie;
            ColorPickerView colorPickerView = (ColorPickerView) ViewBindings.findChildViewById(rootView, i);
            if (colorPickerView != null) {
                return new PopColorPieBinding((FrameLayout) rootView, imageView, colorPickerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
