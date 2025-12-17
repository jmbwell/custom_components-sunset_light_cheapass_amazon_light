package org.apache.commons.math3.primes;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
class PollardRho {
    private PollardRho() {
    }

    public static List<Integer> primeFactors(int i) {
        ArrayList arrayList = new ArrayList();
        int smallTrialDivision = SmallPrimes.smallTrialDivision(i, arrayList);
        if (1 == smallTrialDivision) {
            return arrayList;
        }
        if (SmallPrimes.millerRabinPrimeTest(smallTrialDivision)) {
            arrayList.add(Integer.valueOf(smallTrialDivision));
            return arrayList;
        }
        int rhoBrent = rhoBrent(smallTrialDivision);
        arrayList.add(Integer.valueOf(rhoBrent));
        arrayList.add(Integer.valueOf(smallTrialDivision / rhoBrent));
        return arrayList;
    }

    static int rhoBrent(int i) {
        int i2 = SmallPrimes.PRIMES_LAST;
        int i3 = 2;
        int i4 = 1;
        while (true) {
            int i5 = 0;
            int i6 = i3;
            for (int i7 = 0; i7 < i4; i7++) {
                long j = i6;
                i6 = (int) (((j * j) + i2) % i);
            }
            do {
                int min = FastMath.min(25, i4 - i5);
                int i8 = -3;
                int i9 = 1;
                while (true) {
                    if (i8 >= min) {
                        break;
                    }
                    long j2 = i6;
                    long j3 = i;
                    i6 = (int) (((j2 * j2) + i2) % j3);
                    long abs = FastMath.abs(i3 - i6);
                    if (0 == abs) {
                        i2 += SmallPrimes.PRIMES_LAST;
                        i5 = -25;
                        i4 = 1;
                        i6 = 2;
                        break;
                    }
                    i9 = (int) ((i9 * abs) % j3);
                    if (i9 == 0) {
                        return gcdPositive(FastMath.abs((int) abs), i);
                    }
                    i8++;
                }
                int gcdPositive = gcdPositive(FastMath.abs(i9), i);
                if (1 != gcdPositive) {
                    return gcdPositive;
                }
                i5 += 25;
            } while (i5 < i4);
            i4 *= 2;
            i3 = i6;
        }
    }

    static int gcdPositive(int i, int i2) {
        if (i == 0) {
            return i2;
        }
        if (i2 == 0) {
            return i;
        }
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i);
        int i3 = i >> numberOfTrailingZeros;
        int numberOfTrailingZeros2 = Integer.numberOfTrailingZeros(i2);
        int i4 = i2 >> numberOfTrailingZeros2;
        int min = FastMath.min(numberOfTrailingZeros, numberOfTrailingZeros2);
        while (i3 != i4) {
            int i5 = i3 - i4;
            i4 = FastMath.min(i3, i4);
            int abs = FastMath.abs(i5);
            i3 = abs >> Integer.numberOfTrailingZeros(abs);
        }
        return i3 << min;
    }
}
