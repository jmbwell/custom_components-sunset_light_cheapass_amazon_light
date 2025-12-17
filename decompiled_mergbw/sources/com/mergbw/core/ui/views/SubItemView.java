package com.mergbw.core.ui.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.mergbw.core.R;
/* loaded from: classes4.dex */
public class SubItemView extends View {
    public static final int DEFAULT_RECT = 0;
    public static final int LEFT_BOTTOM_ARC = 5;
    public static final int LEFT_STRAIGHT = 1;
    public static final int LEFT_TOP_ARC = 4;
    public static final int RIGHT_BOTTOM_ARC = 3;
    public static final int RIGHT_TOP_ARC = 2;
    private int color;
    private final Paint mPaint;
    private int mType;

    public SubItemView(Context context) {
        super(context);
        this.color = ViewCompat.MEASURED_STATE_MASK;
        this.mType = 0;
        this.mPaint = new Paint(1);
    }

    public SubItemView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.color = ViewCompat.MEASURED_STATE_MASK;
        this.mType = 0;
        this.mPaint = new Paint(1);
    }

    public SubItemView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.color = ViewCompat.MEASURED_STATE_MASK;
        this.mType = 0;
        this.mPaint = new Paint(1);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, R.styleable.SubItemView, defStyleAttr, 0);
        this.mType = obtainStyledAttributes.getInteger(R.styleable.SubItemView_type, 0);
        obtainStyledAttributes.recycle();
    }

    public void setColor(int color) {
        this.color = color;
        invalidate();
    }

    public void setType(int type) {
        this.mType = type;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        this.mPaint.setStyle(Paint.Style.FILL);
        this.mPaint.setColor(this.color);
        int i = this.mType;
        if (i == 0) {
            drawDefault(canvas);
        } else if (i == 1) {
            drawLeftStraight(canvas);
        } else if (i == 2) {
            drawRightTopArc(canvas);
        } else if (i == 3) {
            drawRightBottomArc(canvas);
        } else if (i == 4) {
            drawLeftTopArc(canvas);
        } else if (i != 5) {
        } else {
            drawLeftBottomArc(canvas);
        }
    }

    private void drawDefault(Canvas canvas) {
        int width = getWidth();
        canvas.drawRect(0.0f, width / 4, width, (width * 3) / 4, this.mPaint);
    }

    private void drawLeftStraight(Canvas canvas) {
        int height;
        float height2 = getHeight() / 4;
        canvas.drawArc(new RectF(0.0f, height2, height * 2, (getHeight() * 3) / 4), 90.0f, 180.0f, false, this.mPaint);
        canvas.drawRect(height2, height2, getWidth(), (getHeight() * 3) / 4, this.mPaint);
    }

    private void drawRightTopArc(Canvas canvas) {
        int i;
        int height = getHeight();
        float f = height / 4;
        canvas.drawRect(0.0f, f, f, (height * 3) / 4, this.mPaint);
        int i2 = height / 2;
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(i2);
        int i3 = i2 / 2;
        canvas.drawArc(new RectF(0 - i3, (height - i) - i3, i + i + i3, height + i + i3), 270.0f, 90.0f, false, this.mPaint);
    }

    private void drawRightBottomArc(Canvas canvas) {
        int i;
        int height = getHeight();
        float f = height / 4;
        canvas.drawRect(0.0f, f, f, (height * 3) / 4, this.mPaint);
        int i2 = height / 2;
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(i2);
        int i3 = i2 / 2;
        canvas.drawArc(new RectF(0 - i3, (0 - i) - i3, i + i + i3, i + i3), 0.0f, 90.0f, false, this.mPaint);
    }

    private void drawLeftTopArc(Canvas canvas) {
        int i;
        int i2;
        int height = getHeight();
        float f = (height * 3) / 4;
        canvas.drawRect(f, height / 4, height, f, this.mPaint);
        int i3 = height / 2;
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(i3);
        int i4 = i3 / 2;
        canvas.drawArc(new RectF((i - i2) - i4, (height - i2) - i4, i + i2 + i4, height + i2 + i4), 180.0f, 90.0f, false, this.mPaint);
    }

    private void drawLeftBottomArc(Canvas canvas) {
        int i;
        int i2;
        int height = getHeight();
        float f = (height * 3) / 4;
        canvas.drawRect(f, height / 4, height, f, this.mPaint);
        int i3 = height / 2;
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeWidth(i3);
        int i4 = i3 / 2;
        canvas.drawArc(new RectF((i - i2) - i4, (0 - i2) - i4, i + i2 + i4, i2 + i4), 90.0f, 90.0f, false, this.mPaint);
    }
}
