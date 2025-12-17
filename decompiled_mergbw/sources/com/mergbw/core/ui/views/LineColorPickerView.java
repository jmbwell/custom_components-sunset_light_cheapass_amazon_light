package com.mergbw.core.ui.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.ViewCompat;
import com.mergbw.core.R;
import java.io.ByteArrayOutputStream;
/* loaded from: classes4.dex */
public class LineColorPickerView extends View {
    private static final int defaultSizeLong = 420;
    private static final int defaultSizeShort = 70;
    private Bitmap bitmapForColor;
    private Bitmap bitmapForIndicator;
    private OnColorPickerChangeListener colorPickerChangeListener;
    private int[] colors;
    private int curX;
    private int curY;
    private int currentColor;
    private LinearGradient linearGradient;
    private int mBottom;
    private int mIndicatorColor;
    private boolean mIndicatorEnable;
    private int mLeft;
    private int mRadius;
    private int mRight;
    private int mTop;
    private boolean needReDrawColorTable;
    private boolean needReDrawIndicator;
    private Orientation orientation;
    private final Paint paint;
    private final Paint paintForIndicator;
    private final Rect rect;
    private final Rect rectForIndicator;

    /* loaded from: classes4.dex */
    public interface OnColorPickerChangeListener {
        void onColorChanged(LineColorPickerView picker, int color);

        void onStartTrackingTouch(LineColorPickerView picker);

        void onStopTrackingTouch(LineColorPickerView picker);
    }

    /* loaded from: classes4.dex */
    public enum Orientation {
        HORIZONTAL,
        VERTICAL
    }

    public LineColorPickerView(Context context) {
        super(context);
        this.rect = new Rect();
        this.rectForIndicator = new Rect();
        this.needReDrawColorTable = true;
        this.needReDrawIndicator = true;
        this.colors = null;
        this.bitmapForColor = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        this.bitmapForIndicator = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        setLayerType(1, null);
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.paintForIndicator = paint2;
        paint2.setAntiAlias(true);
        this.curY = Integer.MAX_VALUE;
        this.curX = Integer.MAX_VALUE;
    }

    public LineColorPickerView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LineColorPickerView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.rect = new Rect();
        this.rectForIndicator = new Rect();
        this.needReDrawColorTable = true;
        this.needReDrawIndicator = true;
        this.colors = null;
        this.bitmapForColor = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        this.bitmapForIndicator = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
        setLayerType(1, null);
        Paint paint = new Paint();
        this.paint = paint;
        paint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.paintForIndicator = paint2;
        paint2.setAntiAlias(true);
        this.curY = Integer.MAX_VALUE;
        this.curX = Integer.MAX_VALUE;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attrs, R.styleable.ColorPickerView, defStyleAttr, 0);
        this.mIndicatorColor = obtainStyledAttributes.getColor(R.styleable.ColorPickerView_indicatorColor, -1);
        this.orientation = obtainStyledAttributes.getInteger(R.styleable.ColorPickerView_orientation, 0) == 0 ? Orientation.HORIZONTAL : Orientation.VERTICAL;
        this.mIndicatorEnable = obtainStyledAttributes.getBoolean(R.styleable.ColorPickerView_indicatorEnable, true);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int mode = View.MeasureSpec.getMode(widthMeasureSpec);
        int size = View.MeasureSpec.getSize(widthMeasureSpec);
        int mode2 = View.MeasureSpec.getMode(heightMeasureSpec);
        int size2 = View.MeasureSpec.getSize(heightMeasureSpec);
        if (mode != 1073741824) {
            size = getSuggestedMinimumWidth() + getPaddingLeft() + getPaddingRight();
        }
        if (mode2 != 1073741824) {
            size2 = getSuggestedMinimumHeight() + getPaddingTop() + getPaddingBottom();
        }
        setMeasuredDimension(Math.max(size, this.orientation == Orientation.HORIZONTAL ? 420 : 70), Math.max(size2, this.orientation == Orientation.HORIZONTAL ? 70 : 420));
    }

    @Override // android.view.View
    protected void onLayout(boolean changed, int left, int top2, int right, int bottom) {
        super.onLayout(changed, left, top2, right, bottom);
        this.mTop = getPaddingTop();
        this.mLeft = getPaddingLeft();
        this.mBottom = getMeasuredHeight() - getPaddingBottom();
        this.mRight = getMeasuredWidth() - getPaddingRight();
        int i = this.curX;
        int i2 = this.curY;
        if (i == i2 || i2 == Integer.MAX_VALUE) {
            this.curX = getWidth() / 2;
            this.curY = getHeight() / 2;
        }
        calculBounds();
        int[] iArr = this.colors;
        if (iArr == null) {
            setColors(createDefaultColorTable());
        } else {
            setColors(iArr);
        }
        createBitmap();
        if (this.mIndicatorEnable) {
            this.needReDrawIndicator = true;
        }
    }

    private void createBitmap() {
        int height = this.rect.height();
        int width = this.rect.width();
        int i = this.mRadius * 2;
        Bitmap bitmap = this.bitmapForColor;
        if (bitmap != null && !bitmap.isRecycled()) {
            this.bitmapForColor.recycle();
            this.bitmapForColor = null;
        }
        Bitmap bitmap2 = this.bitmapForIndicator;
        if (bitmap2 != null && !bitmap2.isRecycled()) {
            this.bitmapForIndicator.recycle();
            this.bitmapForIndicator = null;
        }
        this.bitmapForColor = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        this.bitmapForIndicator = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
    }

    private void calculBounds() {
        int i;
        int width;
        int i2;
        int i3;
        int i4 = this.mBottom - this.mTop;
        int i5 = this.mRight - this.mLeft;
        int min = Math.min(i5, i4);
        if (this.orientation == Orientation.HORIZONTAL) {
            if (i5 <= i4) {
                min = i5 / 6;
            }
        } else if (i5 >= i4) {
            min = i4 / 6;
        }
        int i6 = min / 9;
        this.mRadius = (i6 * 7) / 2;
        int i7 = (i6 * 3) / 2;
        if (this.orientation == Orientation.HORIZONTAL) {
            int i8 = this.mLeft;
            int i9 = this.mRadius;
            i3 = i8 + i9;
            width = this.mRight - i9;
            i2 = (getHeight() / 2) - i7;
            i = (getHeight() / 2) + i7;
        } else {
            int i10 = this.mTop;
            int i11 = this.mRadius;
            int i12 = i10 + i11;
            i = this.mBottom - i11;
            int width2 = (getWidth() / 2) - i7;
            width = (getWidth() / 2) + i7;
            i2 = i12;
            i3 = width2;
        }
        this.rect.set(i3, i2, width, i);
    }

    public void setColors(int... colors) {
        this.linearGradient = null;
        this.colors = colors;
        if (this.orientation == Orientation.HORIZONTAL) {
            this.linearGradient = new LinearGradient(this.rect.left, this.rect.top, this.rect.right, this.rect.top, colors, (float[]) null, Shader.TileMode.CLAMP);
        } else {
            this.linearGradient = new LinearGradient(this.rect.left, this.rect.top, this.rect.left, this.rect.bottom, colors, (float[]) null, Shader.TileMode.CLAMP);
        }
        this.needReDrawColorTable = true;
        invalidate();
    }

    public int[] createDefaultColorTable() {
        return new int[]{Color.rgb(255, 0, 0), Color.rgb(255, 255, 0), Color.rgb(0, 255, 0), Color.rgb(0, 255, 255), Color.rgb(0, 0, 255), Color.rgb(255, 0, 255), Color.rgb(255, 0, 0)};
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.needReDrawColorTable) {
            createColorTableBitmap();
        }
        canvas.drawBitmap(this.bitmapForColor, (Rect) null, this.rect, this.paint);
        if (this.mIndicatorEnable) {
            if (this.needReDrawIndicator) {
                createIndicatorBitmap();
            }
            Rect rect = this.rectForIndicator;
            int i = this.curX;
            int i2 = this.mRadius;
            int i3 = this.curY;
            rect.set(i - i2, i3 - i2, i + i2, i3 + i2);
            canvas.drawBitmap(this.bitmapForIndicator, (Rect) null, this.rectForIndicator, this.paint);
        }
    }

    private void createIndicatorBitmap() {
        this.paintForIndicator.setColor(this.mIndicatorColor);
        this.paintForIndicator.setShadowLayer(3, 0.0f, 0.0f, -7829368);
        Canvas canvas = new Canvas(this.bitmapForIndicator);
        int i = this.mRadius;
        canvas.drawCircle(i, i, i - 3, this.paintForIndicator);
        this.needReDrawIndicator = false;
    }

    private void createColorTableBitmap() {
        int width;
        Canvas canvas = new Canvas(this.bitmapForColor);
        RectF rectF = new RectF(0.0f, 0.0f, this.bitmapForColor.getWidth(), this.bitmapForColor.getHeight());
        if (this.orientation == Orientation.HORIZONTAL) {
            width = this.bitmapForColor.getHeight() / 2;
        } else {
            width = this.bitmapForColor.getWidth() / 2;
        }
        this.paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        float f = width;
        canvas.drawRoundRect(rectF, f, f, this.paint);
        this.paint.setShader(this.linearGradient);
        canvas.drawRoundRect(rectF, f, f, this.paint);
        this.paint.setShader(null);
        this.needReDrawColorTable = false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        int x = (int) event.getX();
        int y = (int) event.getY();
        if (!inBoundOfColorTable(x, y)) {
            OnColorPickerChangeListener onColorPickerChangeListener = this.colorPickerChangeListener;
            if (onColorPickerChangeListener != null) {
                onColorPickerChangeListener.onStopTrackingTouch(this);
                calcuColor();
                this.colorPickerChangeListener.onColorChanged(this, this.currentColor);
            }
            return true;
        }
        if (this.orientation == Orientation.HORIZONTAL) {
            this.curX = x;
            this.curY = getHeight() / 2;
        } else {
            this.curX = getWidth() / 2;
            this.curY = y;
        }
        if (event.getActionMasked() == 0) {
            OnColorPickerChangeListener onColorPickerChangeListener2 = this.colorPickerChangeListener;
            if (onColorPickerChangeListener2 != null) {
                onColorPickerChangeListener2.onStartTrackingTouch(this);
            }
            calcuColor();
            invalidate();
            return true;
        } else if (event.getActionMasked() == 1) {
            OnColorPickerChangeListener onColorPickerChangeListener3 = this.colorPickerChangeListener;
            if (onColorPickerChangeListener3 != null) {
                onColorPickerChangeListener3.onStopTrackingTouch(this);
                calcuColor();
                this.colorPickerChangeListener.onColorChanged(this, this.currentColor);
            }
            invalidate();
            return true;
        } else if (event.getActionMasked() == 2) {
            calcuColor();
            invalidate();
            return true;
        } else {
            return super.onTouchEvent(event);
        }
    }

    public int getColor() {
        return calcuColor();
    }

    private boolean inBoundOfColorTable(int ex, int ey) {
        if (this.orientation == Orientation.HORIZONTAL) {
            int i = this.mLeft;
            int i2 = this.mRadius;
            return ex > i + i2 && ex < this.mRight - i2;
        }
        int i3 = this.mTop;
        int i4 = this.mRadius;
        return ey > i3 + i4 && ey < this.mBottom - i4;
    }

    private int calcuColor() {
        int i;
        int i2 = 1;
        if (this.orientation == Orientation.HORIZONTAL) {
            i = (this.rect.bottom - this.rect.top) / 2;
            if (this.curX >= this.rect.left) {
                if (this.curX > this.rect.right) {
                    i2 = this.bitmapForColor.getWidth() - 1;
                } else {
                    i2 = this.curX - this.rect.left;
                }
            }
        } else {
            int i3 = (this.rect.right - this.rect.left) / 2;
            if (this.curY >= this.rect.top) {
                if (this.curY > this.rect.bottom) {
                    i2 = this.bitmapForColor.getHeight() - 1;
                } else {
                    i2 = this.curY - this.rect.top;
                }
            }
            int i4 = i2;
            i2 = i3;
            i = i4;
        }
        int pixelToColor = pixelToColor(this.bitmapForColor.getPixel(i2, i));
        this.currentColor = pixelToColor;
        return pixelToColor;
    }

    private int pixelToColor(int pixel) {
        return Color.argb(Color.alpha(pixel), Color.red(pixel), Color.green(pixel), Color.blue(pixel));
    }

    public void setOnColorPickerChangeListener(OnColorPickerChangeListener l) {
        this.colorPickerChangeListener = l;
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.selX = this.curX;
        savedState.selY = this.curY;
        savedState.colorBytes = bitmapToByteArray(this.bitmapForColor);
        if (this.mIndicatorEnable) {
            savedState.indicatorBytes = bitmapToByteArray(this.bitmapForIndicator);
        }
        return savedState;
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable state) {
        if (!(state instanceof SavedState)) {
            super.onRestoreInstanceState(state);
            return;
        }
        SavedState savedState = (SavedState) state;
        super.onRestoreInstanceState(savedState.getSuperState());
        this.curX = savedState.selX;
        this.curY = savedState.selY;
        this.colors = savedState.colors;
        this.bitmapForColor = byteArrayToBitmap(savedState.colorBytes);
        if (this.mIndicatorEnable) {
            this.bitmapForIndicator = byteArrayToBitmap(savedState.indicatorBytes);
            this.needReDrawIndicator = true;
        }
        this.needReDrawColorTable = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.mergbw.core.ui.views.LineColorPickerView.SavedState.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
        byte[] colorBytes;
        int[] colors;
        byte[] indicatorBytes;
        int selX;
        int selY;

        SavedState(Parcelable source) {
            super(source);
        }

        SavedState(Parcel in) {
            super(in);
            this.selX = in.readInt();
            this.selY = in.readInt();
            this.colors = in.createIntArray();
            this.colorBytes = in.createByteArray();
            this.indicatorBytes = in.createByteArray();
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel out, int flags) {
            super.writeToParcel(out, flags);
            out.writeInt(this.selX);
            out.writeInt(this.selY);
            out.writeIntArray(this.colors);
            out.writeByteArray(this.colorBytes);
            out.writeByteArray(this.indicatorBytes);
        }
    }

    private byte[] bitmapToByteArray(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    private Bitmap byteArrayToBitmap(byte[] byteArray) {
        if (byteArray != null) {
            return BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length);
        }
        return null;
    }

    public void setPosition(int x, int y) {
        if (inBoundOfColorTable(x, y)) {
            this.curX = x;
            this.curY = y;
            if (this.mIndicatorEnable) {
                this.needReDrawIndicator = true;
            }
            invalidate();
        }
    }

    public void showDefaultColorTable() {
        setColors(createDefaultColorTable());
    }

    public int getIndicatorColor() {
        return this.mIndicatorColor;
    }

    public void setIndicatorColor(int color) {
        this.mIndicatorColor = color;
        this.needReDrawIndicator = true;
        invalidate();
    }

    public void setOrientation(Orientation orientation) {
        this.orientation = orientation;
        this.needReDrawIndicator = true;
        this.needReDrawColorTable = true;
        requestLayout();
    }
}
