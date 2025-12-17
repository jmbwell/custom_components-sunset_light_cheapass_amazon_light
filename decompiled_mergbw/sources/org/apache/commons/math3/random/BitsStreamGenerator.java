package org.apache.commons.math3.random;

import java.io.Serializable;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public abstract class BitsStreamGenerator implements RandomGenerator, Serializable {
    private static final long serialVersionUID = 20130104;
    private double nextGaussian = Double.NaN;

    protected abstract int next(int i);

    @Override // org.apache.commons.math3.random.RandomGenerator
    public abstract void setSeed(int i);

    @Override // org.apache.commons.math3.random.RandomGenerator
    public abstract void setSeed(long j);

    @Override // org.apache.commons.math3.random.RandomGenerator
    public abstract void setSeed(int[] iArr);

    @Override // org.apache.commons.math3.random.RandomGenerator
    public boolean nextBoolean() {
        return next(1) != 0;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public void nextBytes(byte[] bArr) {
        int length = bArr.length - 3;
        int i = 0;
        while (i < length) {
            int next = next(32);
            bArr[i] = (byte) (next & 255);
            bArr[i + 1] = (byte) ((next >> 8) & 255);
            bArr[i + 2] = (byte) ((next >> 16) & 255);
            bArr[i + 3] = (byte) ((next >> 24) & 255);
            i += 4;
        }
        int next2 = next(32);
        while (i < bArr.length) {
            bArr[i] = (byte) (next2 & 255);
            next2 >>= 8;
            i++;
        }
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public double nextDouble() {
        return ((next(26) << 26) | next(26)) * 2.220446049250313E-16d;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public float nextFloat() {
        return next(23) * 1.1920929E-7f;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public double nextGaussian() {
        if (Double.isNaN(this.nextGaussian)) {
            double nextDouble = nextDouble() * 6.283185307179586d;
            double sqrt = FastMath.sqrt(FastMath.log(nextDouble()) * (-2.0d));
            double cos = FastMath.cos(nextDouble) * sqrt;
            this.nextGaussian = sqrt * FastMath.sin(nextDouble);
            return cos;
        }
        double d = this.nextGaussian;
        this.nextGaussian = Double.NaN;
        return d;
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public int nextInt() {
        return next(32);
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public int nextInt(int i) throws IllegalArgumentException {
        int next;
        int i2;
        if (i > 0) {
            if (((-i) & i) == i) {
                return (int) ((i * next(31)) >> 31);
            }
            do {
                next = next(31);
                i2 = next % i;
            } while ((next - i2) + (i - 1) < 0);
            return i2;
        }
        throw new NotStrictlyPositiveException(Integer.valueOf(i));
    }

    @Override // org.apache.commons.math3.random.RandomGenerator
    public long nextLong() {
        return (next(32) << 32) | (next(32) & 4294967295L);
    }

    public long nextLong(long j) throws IllegalArgumentException {
        long next;
        long j2;
        if (j > 0) {
            do {
                next = (next(31) << 32) | (next(32) & 4294967295L);
                j2 = next % j;
            } while ((next - j2) + (j - 1) < 0);
            return j2;
        }
        throw new NotStrictlyPositiveException(Long.valueOf(j));
    }

    public void clear() {
        this.nextGaussian = Double.NaN;
    }
}
