package androidx.collection;

import java.lang.reflect.Array;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
class ArraySetJvmUtil {
    private ArraySetJvmUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> T[] resizeForToArray(T[] tArr, int i) {
        if (tArr.length < i) {
            return (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i));
        }
        if (tArr.length > i) {
            tArr[i] = null;
        }
        return tArr;
    }
}
