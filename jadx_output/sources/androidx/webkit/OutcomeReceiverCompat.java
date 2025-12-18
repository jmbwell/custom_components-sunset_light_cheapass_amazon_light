package androidx.webkit;

import java.lang.Throwable;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public interface OutcomeReceiverCompat<T, E extends Throwable> {

    /* renamed from: androidx.webkit.OutcomeReceiverCompat$-CC  reason: invalid class name */
    /* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
    public final /* synthetic */ class CC {
        public static void $default$onError(OutcomeReceiverCompat _this, Throwable th) {
        }
    }

    void onError(E e);

    void onResult(T t);
}
