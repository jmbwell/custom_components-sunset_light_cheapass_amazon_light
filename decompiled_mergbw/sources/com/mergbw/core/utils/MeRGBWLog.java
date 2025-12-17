package com.mergbw.core.utils;

import android.util.Log;
/* loaded from: classes4.dex */
public class MeRGBWLog {
    private static boolean DEBUG = true;
    private static final String TAG = "mytest";
    public static boolean TEST_ENABLE = false;

    public static void i(String log) {
        if (DEBUG) {
            Log.i(TAG, log);
        }
    }

    public static void e(String log) {
        if (DEBUG) {
            Log.e(TAG, log);
        }
    }
}
