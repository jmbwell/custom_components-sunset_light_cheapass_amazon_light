package kotlin;

import java.util.AbstractMap;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* compiled from: D8$$SyntheticClass */
/* loaded from: classes4.dex */
public final /* synthetic */ class UByte$$ExternalSyntheticBackport0 {
    public static /* synthetic */ int m(double d) {
        long doubleToLongBits = Double.doubleToLongBits(d);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    public static /* synthetic */ int m(int i, int i2) {
        return (int) ((i & 4294967295L) / (i2 & 4294967295L));
    }

    public static /* synthetic */ int m(long j) {
        return (int) (j ^ (j >>> 32));
    }

    public static /* synthetic */ int m(boolean z) {
        return z ? 1231 : 1237;
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ long m1108m(long j, long j2) {
        if (j2 < 0) {
            return (j ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE) ? j : j - j2;
        } else if (j >= 0) {
            return j % j2;
        } else {
            long j3 = j - ((((j >>> 1) / j2) << 1) * j2);
            if ((j3 ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE)) {
                j2 = 0;
            }
            return j3 - j2;
        }
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ String m1109m(int i, int i2) {
        return Long.toString(i & 4294967295L, i2);
    }

    public static /* synthetic */ String m(long j, int i) {
        int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i2 == 0) {
            return "0";
        }
        if (i2 > 0) {
            return Long.toString(j, i);
        }
        i = (i < 2 || i > 36) ? 10 : 10;
        int i3 = 64;
        char[] cArr = new char[64];
        int i4 = i - 1;
        if ((i & i4) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            do {
                i3--;
                cArr[i3] = Character.forDigit(((int) j) & i4, i);
                j >>>= numberOfTrailingZeros;
            } while (j != 0);
        } else {
            long m$1 = (i & 1) == 0 ? (j >>> 1) / (i >>> 1) : m$1(j, i);
            long j2 = i;
            cArr[63] = Character.forDigit((int) (j - (m$1 * j2)), i);
            i3 = 63;
            while (m$1 > 0) {
                i3--;
                cArr[i3] = Character.forDigit((int) (m$1 % j2), i);
                m$1 /= j2;
            }
        }
        return new String(cArr, i3, 64 - i3);
    }

    public static /* synthetic */ Map.Entry m(Object obj, Object obj2) {
        return new AbstractMap.SimpleImmutableEntry(Objects.requireNonNull(obj), Objects.requireNonNull(obj2));
    }

    public static /* synthetic */ Set m(Object[] objArr) {
        HashSet hashSet = new HashSet(objArr.length);
        for (Object obj : objArr) {
            if (!hashSet.add(Objects.requireNonNull(obj))) {
                throw new IllegalArgumentException("duplicate element: " + obj);
            }
        }
        return Collections.unmodifiableSet(hashSet);
    }

    /* renamed from: m  reason: collision with other method in class */
    public static /* synthetic */ boolean m1111m(Object obj) {
        return obj == null;
    }

    public static /* synthetic */ int m$1(int i, int i2) {
        return (int) ((i & 4294967295L) % (i2 & 4294967295L));
    }

    public static /* synthetic */ long m$1(long j, long j2) {
        if (j2 < 0) {
            return (j ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE) ? 0L : 1L;
        } else if (j >= 0) {
            return j / j2;
        } else {
            long j3 = ((j >>> 1) / j2) << 1;
            return j3 + (((j - (j3 * j2)) ^ Long.MIN_VALUE) < (j2 ^ Long.MIN_VALUE) ? 0 : 1);
        }
    }

    public static /* synthetic */ String m$1(long j, int i) {
        int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i2 == 0) {
            return "0";
        }
        if (i2 > 0) {
            return Long.toString(j, i);
        }
        i = (i < 2 || i > 36) ? 10 : 10;
        int i3 = 64;
        char[] cArr = new char[64];
        int i4 = i - 1;
        if ((i & i4) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            do {
                i3--;
                cArr[i3] = Character.forDigit(((int) j) & i4, i);
                j >>>= numberOfTrailingZeros;
            } while (j != 0);
        } else {
            long m$1 = (i & 1) == 0 ? (j >>> 1) / (i >>> 1) : m$1(j, i);
            long j2 = i;
            cArr[63] = Character.forDigit((int) (j - (m$1 * j2)), i);
            i3 = 63;
            while (m$1 > 0) {
                i3--;
                cArr[i3] = Character.forDigit((int) (m$1 % j2), i);
                m$1 /= j2;
            }
        }
        return new String(cArr, i3, 64 - i3);
    }

    public static /* synthetic */ String m$2(long j, int i) {
        int i2 = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i2 == 0) {
            return "0";
        }
        if (i2 > 0) {
            return Long.toString(j, i);
        }
        i = (i < 2 || i > 36) ? 10 : 10;
        int i3 = 64;
        char[] cArr = new char[64];
        int i4 = i - 1;
        if ((i & i4) == 0) {
            int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
            do {
                i3--;
                cArr[i3] = Character.forDigit(((int) j) & i4, i);
                j >>>= numberOfTrailingZeros;
            } while (j != 0);
        } else {
            long m$1 = (i & 1) == 0 ? (j >>> 1) / (i >>> 1) : m$1(j, i);
            long j2 = i;
            cArr[63] = Character.forDigit((int) (j - (m$1 * j2)), i);
            i3 = 63;
            while (m$1 > 0) {
                i3--;
                cArr[i3] = Character.forDigit((int) (m$1 % j2), i);
                m$1 /= j2;
            }
        }
        return new String(cArr, i3, 64 - i3);
    }
}
