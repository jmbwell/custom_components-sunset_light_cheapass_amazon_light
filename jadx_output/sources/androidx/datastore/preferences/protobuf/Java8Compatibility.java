package androidx.datastore.preferences.protobuf;

import java.nio.Buffer;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
final class Java8Compatibility {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void clear(Buffer b2) {
        b2.clear();
    }

    static void flip(Buffer b2) {
        b2.flip();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void limit(Buffer b2, int limit) {
        b2.limit(limit);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void mark(Buffer b2) {
        b2.mark();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void position(Buffer b2, int position) {
        b2.position(position);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void reset(Buffer b2) {
        b2.reset();
    }

    private Java8Compatibility() {
    }
}
