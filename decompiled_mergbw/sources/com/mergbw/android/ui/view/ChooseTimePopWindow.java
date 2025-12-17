package com.mergbw.android.ui.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.PopupWindow;
import cn.carbswang.android.numberpickerview.library.NumberPickerView;
import com.mergbw.android.databinding.PopChooseTimeBinding;
import com.mergbw.core.R;
/* loaded from: classes4.dex */
public class ChooseTimePopWindow extends PopupWindow {
    private int mChooseHour;
    private int mChooseMinute;
    private final OnTimeChooseListener mListener;

    /* loaded from: classes4.dex */
    public interface OnTimeChooseListener {
        void OnTime(int i, int i2);
    }

    public ChooseTimePopWindow(Context context, int i, int i2, OnTimeChooseListener onTimeChooseListener) {
        this.mListener = onTimeChooseListener;
        if (i > 23) {
            this.mChooseHour = 23;
        } else {
            this.mChooseHour = Math.max(i, 0);
        }
        if (i2 > 59) {
            this.mChooseMinute = 59;
        } else {
            this.mChooseMinute = Math.max(i2, 0);
        }
        PopChooseTimeBinding inflate = PopChooseTimeBinding.inflate(LayoutInflater.from(context));
        setContentView(inflate.getRoot());
        setWidth(-1);
        setHeight(-1);
        setFocusable(true);
        setOutsideTouchable(true);
        setAnimationStyle(R.style.pop_anim);
        inflate.tvCancel.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.android.ui.view.ChooseTimePopWindow$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseTimePopWindow.this.m909lambda$new$0$commergbwandroiduiviewChooseTimePopWindow(view);
            }
        });
        inflate.tvDone.setOnClickListener(new View.OnClickListener() { // from class: com.mergbw.android.ui.view.ChooseTimePopWindow$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ChooseTimePopWindow.this.m910lambda$new$1$commergbwandroiduiviewChooseTimePopWindow(view);
            }
        });
        String[] strArr = new String[24];
        for (int i3 = 0; i3 < 24; i3++) {
            if (i3 < 10) {
                strArr[i3] = "0" + i3;
            } else {
                strArr[i3] = String.valueOf(i3);
            }
        }
        inflate.hourPicker.setDisplayedValuesAndPickedIndex(strArr, this.mChooseHour, false);
        inflate.hourPicker.setOnValueChangedListener(new NumberPickerView.OnValueChangeListener() { // from class: com.mergbw.android.ui.view.ChooseTimePopWindow$$ExternalSyntheticLambda2
            @Override // cn.carbswang.android.numberpickerview.library.NumberPickerView.OnValueChangeListener
            public final void onValueChange(NumberPickerView numberPickerView, int i4, int i5) {
                ChooseTimePopWindow.this.m911lambda$new$2$commergbwandroiduiviewChooseTimePopWindow(numberPickerView, i4, i5);
            }
        });
        String[] strArr2 = new String[60];
        for (int i4 = 0; i4 < 60; i4++) {
            if (i4 < 10) {
                strArr2[i4] = "0" + i4;
            } else {
                strArr2[i4] = String.valueOf(i4);
            }
        }
        inflate.minutePicker.setDisplayedValuesAndPickedIndex(strArr2, this.mChooseMinute, false);
        inflate.minutePicker.setOnValueChangedListener(new NumberPickerView.OnValueChangeListener() { // from class: com.mergbw.android.ui.view.ChooseTimePopWindow$$ExternalSyntheticLambda3
            @Override // cn.carbswang.android.numberpickerview.library.NumberPickerView.OnValueChangeListener
            public final void onValueChange(NumberPickerView numberPickerView, int i5, int i6) {
                ChooseTimePopWindow.this.m912lambda$new$3$commergbwandroiduiviewChooseTimePopWindow(numberPickerView, i5, i6);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$0$com-mergbw-android-ui-view-ChooseTimePopWindow  reason: not valid java name */
    public /* synthetic */ void m909lambda$new$0$commergbwandroiduiviewChooseTimePopWindow(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$1$com-mergbw-android-ui-view-ChooseTimePopWindow  reason: not valid java name */
    public /* synthetic */ void m910lambda$new$1$commergbwandroiduiviewChooseTimePopWindow(View view) {
        OnTimeChooseListener onTimeChooseListener = this.mListener;
        if (onTimeChooseListener != null) {
            onTimeChooseListener.OnTime(this.mChooseHour, this.mChooseMinute);
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$2$com-mergbw-android-ui-view-ChooseTimePopWindow  reason: not valid java name */
    public /* synthetic */ void m911lambda$new$2$commergbwandroiduiviewChooseTimePopWindow(NumberPickerView numberPickerView, int i, int i2) {
        this.mChooseHour = i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: lambda$new$3$com-mergbw-android-ui-view-ChooseTimePopWindow  reason: not valid java name */
    public /* synthetic */ void m912lambda$new$3$commergbwandroiduiviewChooseTimePopWindow(NumberPickerView numberPickerView, int i, int i2) {
        this.mChooseMinute = i2;
    }
}
