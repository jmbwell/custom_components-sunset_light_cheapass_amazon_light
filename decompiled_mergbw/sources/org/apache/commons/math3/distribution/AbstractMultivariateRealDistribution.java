package org.apache.commons.math3.distribution;

import java.lang.reflect.Array;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
/* loaded from: classes5.dex */
public abstract class AbstractMultivariateRealDistribution implements MultivariateRealDistribution {
    private final int dimension;
    protected final RandomGenerator random;

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public abstract double[] sample();

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractMultivariateRealDistribution(RandomGenerator randomGenerator, int i) {
        this.random = randomGenerator;
        this.dimension = i;
    }

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public void reseedRandomGenerator(long j) {
        this.random.setSeed(j);
    }

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public int getDimension() {
        return this.dimension;
    }

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public double[][] sample(int i) {
        if (i > 0) {
            double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, i, this.dimension);
            for (int i2 = 0; i2 < i; i2++) {
                dArr[i2] = sample();
            }
            return dArr;
        }
        throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i));
    }
}
