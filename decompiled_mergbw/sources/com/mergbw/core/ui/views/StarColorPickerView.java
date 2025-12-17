package com.mergbw.core.ui.views;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.mergbw.core.databinding.LayoutStarColorPickerBinding;
import com.mergbw.core.ui.views.VerticalRGBSekBar;
import com.mergbw.core.utils.MeRGBWLog;
/* loaded from: classes4.dex */
public class StarColorPickerView extends LinearLayout {
    private LayoutStarColorPickerBinding mBinding;
    private OnStarColorPickListener mListener;

    /* loaded from: classes4.dex */
    public interface OnStarColorPickListener {
        void onColorPick(int color);
    }

    public StarColorPickerView(Context context) {
        super(context);
    }

    public StarColorPickerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        initViews(context);
    }

    private void initViews(Context context) {
        LayoutStarColorPickerBinding inflate = LayoutStarColorPickerBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = inflate;
        inflate.viewRPicker.setOnProgressChangeListener(new VerticalRGBSekBar.OnProgressChangeListener() { // from class: com.mergbw.core.ui.views.StarColorPickerView.1
            @Override // com.mergbw.core.ui.views.VerticalRGBSekBar.OnProgressChangeListener
            public void onProgressChanged(int progress) {
                TextView textView = StarColorPickerView.this.mBinding.tvRPercent;
                textView.setText(progress + "%");
            }

            @Override // com.mergbw.core.ui.views.VerticalRGBSekBar.OnProgressChangeListener
            public void onProgressEnd(int progress) {
                StarColorPickerView.this.calColor();
            }
        });
        this.mBinding.viewGPicker.setOnProgressChangeListener(new VerticalRGBSekBar.OnProgressChangeListener() { // from class: com.mergbw.core.ui.views.StarColorPickerView.2
            @Override // com.mergbw.core.ui.views.VerticalRGBSekBar.OnProgressChangeListener
            public void onProgressChanged(int progress) {
                TextView textView = StarColorPickerView.this.mBinding.tvGPercent;
                textView.setText(progress + "%");
            }

            @Override // com.mergbw.core.ui.views.VerticalRGBSekBar.OnProgressChangeListener
            public void onProgressEnd(int progress) {
                StarColorPickerView.this.calColor();
            }
        });
        this.mBinding.viewBPicker.setOnProgressChangeListener(new VerticalRGBSekBar.OnProgressChangeListener() { // from class: com.mergbw.core.ui.views.StarColorPickerView.3
            @Override // com.mergbw.core.ui.views.VerticalRGBSekBar.OnProgressChangeListener
            public void onProgressChanged(int progress) {
                TextView textView = StarColorPickerView.this.mBinding.tvBPercent;
                textView.setText(progress + "%");
            }

            @Override // com.mergbw.core.ui.views.VerticalRGBSekBar.OnProgressChangeListener
            public void onProgressEnd(int progress) {
                StarColorPickerView.this.calColor();
            }
        });
    }

    public void setOnColorPickListener(OnStarColorPickListener listener) {
        this.mListener = listener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void calColor() {
        int progress = (int) ((this.mBinding.viewRPicker.getProgress() / 100.0f) * 255.0f);
        int progress2 = (int) ((this.mBinding.viewGPicker.getProgress() / 100.0f) * 255.0f);
        int progress3 = (int) ((this.mBinding.viewBPicker.getProgress() / 100.0f) * 255.0f);
        int rgb = Color.rgb(progress, progress2, progress3);
        MeRGBWLog.i("calColor r: " + progress + " g: " + progress2 + " b: " + progress3);
        OnStarColorPickListener onStarColorPickListener = this.mListener;
        if (onStarColorPickListener != null) {
            onStarColorPickListener.onColorPick(rgb);
        }
    }
}
