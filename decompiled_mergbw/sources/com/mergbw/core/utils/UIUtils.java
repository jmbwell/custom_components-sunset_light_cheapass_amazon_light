package com.mergbw.core.utils;

import android.app.Activity;
import android.app.Application;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.TypedValue;
/* loaded from: classes4.dex */
public class UIUtils {
    public static float dp2px(float dp) {
        return TypedValue.applyDimension(1, dp, Resources.getSystem().getDisplayMetrics());
    }

    public static float sp2px(float sp) {
        return TypedValue.applyDimension(2, sp, Resources.getSystem().getDisplayMetrics());
    }

    public static void setCustomDensity(Activity activity, Application application) {
        DisplayMetrics displayMetrics = application.getResources().getDisplayMetrics();
        float f = displayMetrics.widthPixels / 1920.0f;
        float f2 = (displayMetrics.scaledDensity / displayMetrics.density) * f;
        int i = (int) (160.0f * f);
        displayMetrics.density = f;
        displayMetrics.scaledDensity = f2;
        displayMetrics.densityDpi = i;
        DisplayMetrics displayMetrics2 = activity.getResources().getDisplayMetrics();
        displayMetrics2.density = f;
        displayMetrics2.scaledDensity = f2;
        displayMetrics2.densityDpi = i;
    }
}
