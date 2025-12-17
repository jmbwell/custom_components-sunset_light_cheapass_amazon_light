package top.defaults.colorpicker;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5.dex */
public class WarmColorPickerView extends LinearLayout implements ColorObservable {
    private ColorObservable observableOnDuty;
    List<ColorObserver> observers;
    private boolean onlyUpdateOnTouchEventUp;
    private final WarmWheelView warmWheelView;

    public WarmColorPickerView(Context context) {
        this(context, null);
    }

    public WarmColorPickerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public WarmColorPickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.observers = new ArrayList();
        setOrientation(1);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ColorPickerView);
        this.onlyUpdateOnTouchEventUp = obtainStyledAttributes.getBoolean(R.styleable.ColorPickerView_onlyUpdateOnTouchEventUp, false);
        obtainStyledAttributes.recycle();
        WarmWheelView warmWheelView = new WarmWheelView(context);
        this.warmWheelView = warmWheelView;
        int i2 = (int) (getResources().getDisplayMetrics().density * 0.0f);
        addView(warmWheelView, new LinearLayout.LayoutParams(-2, -2));
        updateObservableOnDuty();
        setPadding(i2, i2, i2, i2);
    }

    public void setOnlyUpdateOnTouchEventUp(boolean z) {
        this.onlyUpdateOnTouchEventUp = z;
        updateObservableOnDuty();
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        int min = Math.min(View.MeasureSpec.getSize(i), (View.MeasureSpec.getSize(i2) - (getPaddingTop() + getPaddingBottom())) + getPaddingLeft() + getPaddingRight());
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(min, View.MeasureSpec.getMode(i)), View.MeasureSpec.makeMeasureSpec((min - (getPaddingLeft() + getPaddingRight())) + getPaddingTop() + getPaddingBottom(), View.MeasureSpec.getMode(i2)));
    }

    private void updateObservableOnDuty() {
        if (this.observableOnDuty != null) {
            for (ColorObserver colorObserver : this.observers) {
                this.observableOnDuty.unsubscribe(colorObserver);
            }
        }
        WarmWheelView warmWheelView = this.warmWheelView;
        this.observableOnDuty = warmWheelView;
        warmWheelView.setOnlyUpdateOnTouchEventUp(this.onlyUpdateOnTouchEventUp);
        List<ColorObserver> list = this.observers;
        if (list != null) {
            for (ColorObserver colorObserver2 : list) {
                this.observableOnDuty.subscribe(colorObserver2);
                colorObserver2.onColor(this.observableOnDuty.getColor(), false, true);
            }
        }
    }

    @Override // top.defaults.colorpicker.ColorObservable
    public void subscribe(ColorObserver colorObserver) {
        this.observableOnDuty.subscribe(colorObserver);
        this.observers.add(colorObserver);
    }

    @Override // top.defaults.colorpicker.ColorObservable
    public void unsubscribe(ColorObserver colorObserver) {
        this.observableOnDuty.unsubscribe(colorObserver);
        this.observers.remove(colorObserver);
    }

    @Override // top.defaults.colorpicker.ColorObservable
    public int getColor() {
        return this.observableOnDuty.getColor();
    }
}
