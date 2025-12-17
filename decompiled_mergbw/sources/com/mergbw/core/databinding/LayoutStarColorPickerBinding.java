package com.mergbw.core.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.mergbw.core.R;
import com.mergbw.core.ui.views.VerticalRGBSekBar;
/* loaded from: classes4.dex */
public final class LayoutStarColorPickerBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView tvBPercent;
    public final TextView tvGPercent;
    public final TextView tvRPercent;
    public final VerticalRGBSekBar viewBPicker;
    public final VerticalRGBSekBar viewGPicker;
    public final VerticalRGBSekBar viewRPicker;

    private LayoutStarColorPickerBinding(LinearLayout rootView, TextView tvBPercent, TextView tvGPercent, TextView tvRPercent, VerticalRGBSekBar viewBPicker, VerticalRGBSekBar viewGPicker, VerticalRGBSekBar viewRPicker) {
        this.rootView = rootView;
        this.tvBPercent = tvBPercent;
        this.tvGPercent = tvGPercent;
        this.tvRPercent = tvRPercent;
        this.viewBPicker = viewBPicker;
        this.viewGPicker = viewGPicker;
        this.viewRPicker = viewRPicker;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static LayoutStarColorPickerBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LayoutStarColorPickerBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View inflate = inflater.inflate(R.layout.layout_star_color_picker, parent, false);
        if (attachToParent) {
            parent.addView(inflate);
        }
        return bind(inflate);
    }

    public static LayoutStarColorPickerBinding bind(View rootView) {
        int i = R.id.tv_b_percent;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
        if (textView != null) {
            i = R.id.tv_g_percent;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView2 != null) {
                i = R.id.tv_r_percent;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView3 != null) {
                    i = R.id.view_b_picker;
                    VerticalRGBSekBar verticalRGBSekBar = (VerticalRGBSekBar) ViewBindings.findChildViewById(rootView, i);
                    if (verticalRGBSekBar != null) {
                        i = R.id.view_g_picker;
                        VerticalRGBSekBar verticalRGBSekBar2 = (VerticalRGBSekBar) ViewBindings.findChildViewById(rootView, i);
                        if (verticalRGBSekBar2 != null) {
                            i = R.id.view_r_picker;
                            VerticalRGBSekBar verticalRGBSekBar3 = (VerticalRGBSekBar) ViewBindings.findChildViewById(rootView, i);
                            if (verticalRGBSekBar3 != null) {
                                return new LayoutStarColorPickerBinding((LinearLayout) rootView, textView, textView2, textView3, verticalRGBSekBar, verticalRGBSekBar2, verticalRGBSekBar3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
