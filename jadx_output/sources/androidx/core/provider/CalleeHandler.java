package androidx.core.provider;

import android.os.Handler;
import android.os.Looper;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
class CalleeHandler {
    private CalleeHandler() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Handler create() {
        if (Looper.myLooper() == null) {
            return new Handler(Looper.getMainLooper());
        }
        return new Handler();
    }
}
