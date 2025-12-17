package com.mergbw.core.ui.views;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import com.mergbw.core.R;
import com.mergbw.core.databinding.PopColorPieBinding;
import top.defaults.colorpicker.ColorObserver;
/* loaded from: classes4.dex */
public class ColorPiePopWindow extends PopupWindow {
    private final OnColorPickListener mListener;

    /* loaded from: classes4.dex */
    public interface OnColorPickListener {
        void onColorValue(int color);
    }

    public ColorPiePopWindow(Context context, OnColorPickListener listener) {
        this.mListener = listener;
        PopColorPieBinding inflate = PopColorPieBinding.inflate(LayoutInflater.from(context));
        setContentView(inflate.getRoot());
        setWidth(-1);
        setHeight(-1);
        setFocusable(true);
        setOutsideTouchable(true);
        setAnimationStyle(R.style.pop_anim);
        inflate.ivClose.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.core.ui.views.ColorPiePopWindow$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ColorPiePopWindow.this.m996lambda$new$0$commergbwcoreuiviewsColorPiePopWindow(view);
            }
        });
        inflate.viewColorPie.subscribe(new ColorObserver() { // from class: com.mergbw.core.ui.views.ColorPiePopWindow$$ExternalSyntheticLambda1
            @Override // top.defaults.colorpicker.ColorObserver
            public final void onColor(int i, boolean z, boolean z2) {
                ColorPiePopWindow.this.m997lambda$new$1$commergbwcoreuiviewsColorPiePopWindow(i, z, z2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-mergbw-core-ui-views-ColorPiePopWindow  reason: not valid java name */
    public /* synthetic */ void m996lambda$new$0$commergbwcoreuiviewsColorPiePopWindow(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$com-mergbw-core-ui-views-ColorPiePopWindow  reason: not valid java name */
    public /* synthetic */ void m997lambda$new$1$commergbwcoreuiviewsColorPiePopWindow(int i, boolean z, boolean z2) {
        OnColorPickListener onColorPickListener;
        if (!z || (onColorPickListener = this.mListener) == null) {
            return;
        }
        onColorPickListener.onColorValue(i);
    }
}
