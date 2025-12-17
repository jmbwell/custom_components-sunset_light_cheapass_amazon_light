package com.mergbw.core.ui.views;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes4.dex */
public class GradientView extends View {
    private int[] colors;
    private Paint mPaint;

    public GradientView(Context context) {
        super(context);
    }

    public GradientView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mPaint = new Paint(1);
    }

    public void setColors(int[] colors) {
        this.colors = colors;
        invalidate();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int[] iArr = this.colors;
        if (iArr == null || iArr.length < 1) {
            return;
        }
        float height = (float) (getHeight() * 0.11d);
        RectF rectF = new RectF(0.0f, 0.0f, getWidth(), getHeight());
        this.mPaint.setShader(new LinearGradient(0.0f, 0.0f, getWidth(), 0.0f, this.colors, (float[]) null, Shader.TileMode.MIRROR));
        canvas.drawRoundRect(rectF, height, height, this.mPaint);
    }
}
