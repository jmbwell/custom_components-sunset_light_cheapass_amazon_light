package com.mergbw.core.ui.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.internal.view.SupportMenu;
import androidx.core.view.ViewCompat;
import com.mergbw.core.R;
import com.mergbw.core.utils.UIUtils;
/* loaded from: classes4.dex */
public class VerticalRGBSekBar extends View {
    private ColorType colorType;
    private OnProgressChangeListener listener;
    private Paint paint;
    private int progress;
    private RectF rect;

    /* loaded from: classes4.dex */
    public enum ColorType {
        RED,
        GREEN,
        BLUE
    }

    /* loaded from: classes4.dex */
    public interface OnProgressChangeListener {
        void onProgressChanged(int progress);

        void onProgressEnd(int progress);
    }

    public void setOnProgressChangeListener(OnProgressChangeListener listener) {
        this.listener = listener;
    }

    public VerticalRGBSekBar(Context context) {
        super(context);
        this.colorType = ColorType.RED;
        this.progress = 100;
        init();
    }

    public VerticalRGBSekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.colorType = ColorType.RED;
        this.progress = 100;
        init();
        parseAttributes(context, attrs);
    }

    public VerticalRGBSekBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.colorType = ColorType.RED;
        this.progress = 100;
        init();
        parseAttributes(context, attrs);
    }

    private void parseAttributes(Context context, AttributeSet attrs) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.VerticalRGBSekBar);
        int i = obtainStyledAttributes.getInt(R.styleable.VerticalRGBSekBar_colorType, 0);
        if (i == 0) {
            this.colorType = ColorType.RED;
        } else if (i == 1) {
            this.colorType = ColorType.GREEN;
        } else if (i == 2) {
            this.colorType = ColorType.BLUE;
        }
        obtainStyledAttributes.recycle();
    }

    private void init() {
        this.paint = new Paint(1);
        this.rect = new RectF();
    }

    public void setColorType(ColorType type) {
        this.colorType = type;
        invalidate();
    }

    public void setProgress(int progress) {
        int max = Math.max(0, Math.min(100, progress));
        if (this.progress != max) {
            this.progress = max;
            invalidate();
            OnProgressChangeListener onProgressChangeListener = this.listener;
            if (onProgressChangeListener != null) {
                onProgressChangeListener.onProgressChanged(max);
            }
        }
    }

    public int getProgress() {
        return this.progress;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float width = getWidth();
        float height = getHeight();
        float dp2px = UIUtils.dp2px(26.0f);
        float dp2px2 = UIUtils.dp2px(2.0f);
        float f = width / 2.0f;
        this.paint.setShader(new LinearGradient(f, 0.0f, f, height, getMainColor(this.colorType), (int) ViewCompat.MEASURED_STATE_MASK, Shader.TileMode.CLAMP));
        this.paint.setStyle(Paint.Style.FILL);
        float f2 = dp2px / 2.0f;
        this.rect.set(0.1f * width, f2, 0.9f * width, height - f2);
        canvas.drawRoundRect(this.rect, UIUtils.dp2px(8.0f), UIUtils.dp2px(8.0f), this.paint);
        this.paint.setShader(null);
        float f3 = (height - dp2px) - dp2px2;
        float max = Math.max(0.0f, Math.min((1.0f - (this.progress / 100.0f)) * f3, f3));
        float f4 = dp2px2 / 2.0f;
        this.rect.set(f4, max, width - f4, dp2px + max);
        this.paint.setColor(-1);
        this.paint.setStyle(Paint.Style.STROKE);
        this.paint.setStrokeWidth(4.0f);
        canvas.drawRoundRect(this.rect, UIUtils.dp2px(8.0f), UIUtils.dp2px(8.0f), this.paint);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int max = Math.max(0, Math.min(100, (int) (100.0f - ((event.getY() / getHeight()) * 100.0f))));
        int action = event.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return super.onTouchEvent(event);
                    }
                }
            }
            this.progress = max;
            invalidate();
            OnProgressChangeListener onProgressChangeListener = this.listener;
            if (onProgressChangeListener != null) {
                onProgressChangeListener.onProgressEnd(max);
            }
            return true;
        }
        this.progress = max;
        invalidate();
        OnProgressChangeListener onProgressChangeListener2 = this.listener;
        if (onProgressChangeListener2 != null) {
            onProgressChangeListener2.onProgressChanged(max);
        }
        return true;
    }

    private int getMainColor(ColorType type) {
        int ordinal = type.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                return ordinal != 2 ? -1 : -16776961;
            }
            return -16711936;
        }
        return SupportMenu.CATEGORY_MASK;
    }
}
