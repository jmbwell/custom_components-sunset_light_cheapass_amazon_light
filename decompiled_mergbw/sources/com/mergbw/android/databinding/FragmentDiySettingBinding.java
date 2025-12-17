package com.mergbw.android.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import androidx.viewpager2.widget.ViewPager2;
import com.mergbw.android.R;
/* loaded from: classes4.dex */
public final class FragmentDiySettingBinding implements ViewBinding {
    public final ViewPager2 listPage;
    public final RadioButton rbDiy;
    public final RadioButton rbSub;
    public final RadioGroup rgDiyType;
    private final LinearLayout rootView;

    private FragmentDiySettingBinding(LinearLayout linearLayout, ViewPager2 viewPager2, RadioButton radioButton, RadioButton radioButton2, RadioGroup radioGroup) {
        this.rootView = linearLayout;
        this.listPage = viewPager2;
        this.rbDiy = radioButton;
        this.rbSub = radioButton2;
        this.rgDiyType = radioGroup;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static FragmentDiySettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentDiySettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View inflate = layoutInflater.inflate(R.layout.fragment_diy_setting, viewGroup, false);
        if (z) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public static FragmentDiySettingBinding bind(View view) {
        int i = R.id.list_page;
        ViewPager2 viewPager2 = (ViewPager2) ViewBindings.findChildViewById(view, i);
        if (viewPager2 != null) {
            i = R.id.rb_diy;
            RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(view, i);
            if (radioButton != null) {
                i = R.id.rb_sub;
                RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(view, i);
                if (radioButton2 != null) {
                    i = R.id.rg_diy_type;
                    RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(view, i);
                    if (radioGroup != null) {
                        return new FragmentDiySettingBinding((LinearLayout) view, viewPager2, radioButton, radioButton2, radioGroup);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
