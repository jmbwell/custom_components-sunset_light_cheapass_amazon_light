package com.mergbw.core.ui.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mergbw.core.database.bean.ColorBean;
import com.mergbw.core.databinding.LayoutCommonColorPickerBinding;
import com.mergbw.core.ui.adapter.ISingleColorListClickListener;
import com.mergbw.core.ui.adapter.SingleColorItemAdapter;
import com.mergbw.core.ui.views.LineColorPickerView;
import com.mergbw.core.utils.ColorUtils;
import java.util.List;
import top.defaults.colorpicker.ColorObserver;
/* loaded from: classes4.dex */
public class CommonColorPickerView extends LinearLayout {
    private static final int FROM_CLASSIC = 3;
    private static final int FROM_COMMON = 4;
    private static final int FROM_LINE = 2;
    private static final int FROM_PIE = 1;
    private int lastLineColor;
    private LayoutCommonColorPickerBinding mBinding;
    private SingleColorItemAdapter mClassicAdapter;
    private SingleColorItemAdapter mCommonColorAdapter;
    private OnColorPickListener mListener;

    /* loaded from: classes4.dex */
    public interface OnColorPickListener {
        void onColorPick(int color);
    }

    public CommonColorPickerView(Context context) {
        super(context);
        this.lastLineColor = 0;
    }

    public CommonColorPickerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.lastLineColor = 0;
        initViews(context);
    }

    private void initViews(Context context) {
        LayoutCommonColorPickerBinding inflate = LayoutCommonColorPickerBinding.inflate(LayoutInflater.from(context), this, true);
        this.mBinding = inflate;
        inflate.listClassicColor.setLayoutManager(new LinearLayoutManager(context, 0, false));
        SingleColorItemAdapter singleColorItemAdapter = new SingleColorItemAdapter();
        this.mClassicAdapter = singleColorItemAdapter;
        singleColorItemAdapter.setData(ColorUtils.getClassicColorList());
        this.mBinding.listClassicColor.setAdapter(this.mClassicAdapter);
        this.mClassicAdapter.setClickListener(new ISingleColorListClickListener() { // from class: com.mergbw.core.ui.views.CommonColorPickerView$$ExternalSyntheticLambda0
            @Override // com.mergbw.core.ui.adapter.ISingleColorListClickListener
            public final void clickColorItem(ColorBean colorBean) {
                CommonColorPickerView.this.m998x7e054d99(colorBean);
            }
        });
        this.mCommonColorAdapter = new SingleColorItemAdapter();
        this.mBinding.listCommonColor.setLayoutManager(new LinearLayoutManager(context, 0, false));
        this.mBinding.listCommonColor.setAdapter(this.mCommonColorAdapter);
        this.mCommonColorAdapter.setClickListener(new ISingleColorListClickListener() { // from class: com.mergbw.core.ui.views.CommonColorPickerView$$ExternalSyntheticLambda1
            @Override // com.mergbw.core.ui.adapter.ISingleColorListClickListener
            public final void clickColorItem(ColorBean colorBean) {
                CommonColorPickerView.this.m999xb7cfef78(colorBean);
            }
        });
        this.mBinding.viewColorPie.subscribe(new ColorObserver() { // from class: com.mergbw.core.ui.views.CommonColorPickerView$$ExternalSyntheticLambda2
            @Override // top.defaults.colorpicker.ColorObserver
            public final void onColor(int i, boolean z, boolean z2) {
                CommonColorPickerView.this.m1000xf19a9157(i, z, z2);
            }
        });
        this.mBinding.viewColorLine.setOnColorPickerChangeListener(new LineColorPickerView.OnColorPickerChangeListener() { // from class: com.mergbw.core.ui.views.CommonColorPickerView.1
            @Override // com.mergbw.core.ui.views.LineColorPickerView.OnColorPickerChangeListener
            public void onStartTrackingTouch(LineColorPickerView picker) {
            }

            @Override // com.mergbw.core.ui.views.LineColorPickerView.OnColorPickerChangeListener
            public void onStopTrackingTouch(LineColorPickerView picker) {
            }

            @Override // com.mergbw.core.ui.views.LineColorPickerView.OnColorPickerChangeListener
            public void onColorChanged(LineColorPickerView picker, int color) {
                if (color != CommonColorPickerView.this.lastLineColor) {
                    CommonColorPickerView.this.lastLineColor = color;
                    CommonColorPickerView.this.setPickColor(2, color);
                }
            }
        });
        requestDisallowInterceptTouchEvent(true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$0$com-mergbw-core-ui-views-CommonColorPickerView  reason: not valid java name */
    public /* synthetic */ void m998x7e054d99(ColorBean colorBean) {
        setPickColor(3, colorBean.getColorValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$1$com-mergbw-core-ui-views-CommonColorPickerView  reason: not valid java name */
    public /* synthetic */ void m999xb7cfef78(ColorBean colorBean) {
        setPickColor(4, colorBean.getColorValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$initViews$2$com-mergbw-core-ui-views-CommonColorPickerView  reason: not valid java name */
    public /* synthetic */ void m1000xf19a9157(int i, boolean z, boolean z2) {
        if (z) {
            setPickColor(1, i);
        }
    }

    public void setOnColorPickListener(OnColorPickListener listener) {
        this.mListener = listener;
    }

    public void setCommonColor(List<ColorBean> colorList) {
        LayoutCommonColorPickerBinding layoutCommonColorPickerBinding;
        if (colorList.isEmpty() || (layoutCommonColorPickerBinding = this.mBinding) == null) {
            return;
        }
        layoutCommonColorPickerBinding.layoutCommonColor.setVisibility(0);
        this.mCommonColorAdapter.setData(colorList);
        this.mCommonColorAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setPickColor(int from, int color) {
        OnColorPickListener onColorPickListener = this.mListener;
        if (onColorPickListener != null) {
            onColorPickListener.onColorPick(color);
        }
        if (from == 1) {
            this.mClassicAdapter.refreshSelected(color);
            this.mCommonColorAdapter.refreshSelected(color);
        } else if (from == 2) {
            this.mClassicAdapter.refreshSelected(color);
            this.mCommonColorAdapter.refreshSelected(color);
            this.mBinding.viewColorPie.setColor(color);
        } else if (from == 3) {
            this.mCommonColorAdapter.refreshSelected(color);
            this.mBinding.viewColorPie.setColor(color);
        } else if (from != 4) {
        } else {
            this.mClassicAdapter.refreshSelected(color);
            this.mBinding.viewColorPie.setColor(color);
        }
    }

    public void showColorPie(boolean show) {
        LayoutCommonColorPickerBinding layoutCommonColorPickerBinding = this.mBinding;
        if (layoutCommonColorPickerBinding != null) {
            layoutCommonColorPickerBinding.viewColorPie.setVisibility(show ? 0 : 8);
        }
    }
}
