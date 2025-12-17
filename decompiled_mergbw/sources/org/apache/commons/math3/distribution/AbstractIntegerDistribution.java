package org.apache.commons.math3.distribution;

import java.io.Serializable;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomDataImpl;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public abstract class AbstractIntegerDistribution implements IntegerDistribution, Serializable {
    private static final long serialVersionUID = -1146319659338487221L;
    protected final RandomGenerator random;
    @Deprecated
    protected final RandomDataImpl randomData;

    @Deprecated
    protected AbstractIntegerDistribution() {
        this.randomData = new RandomDataImpl();
        this.random = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractIntegerDistribution(RandomGenerator randomGenerator) {
        this.randomData = new RandomDataImpl();
        this.random = randomGenerator;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double cumulativeProbability(int i, int i2) throws NumberIsTooLargeException {
        if (i2 < i) {
            throw new NumberIsTooLargeException(LocalizedFormats.LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT, Integer.valueOf(i), Integer.valueOf(i2), true);
        }
        return cumulativeProbability(i2) - cumulativeProbability(i);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int inverseCumulativeProbability(double d) throws OutOfRangeException {
        int i;
        if (d < 0.0d || d > 1.0d) {
            throw new OutOfRangeException(Double.valueOf(d), 0, 1);
        }
        int supportLowerBound = getSupportLowerBound();
        if (d == 0.0d) {
            return supportLowerBound;
        }
        if (supportLowerBound != Integer.MIN_VALUE) {
            supportLowerBound--;
        } else if (checkedCumulativeProbability(supportLowerBound) >= d) {
            return supportLowerBound;
        }
        int supportUpperBound = getSupportUpperBound();
        if (i == 0) {
            return supportUpperBound;
        }
        double numericalMean = getNumericalMean();
        double sqrt = FastMath.sqrt(getNumericalVariance());
        if (!Double.isInfinite(numericalMean) && !Double.isNaN(numericalMean) && !Double.isInfinite(sqrt) && !Double.isNaN(sqrt) && sqrt != 0.0d) {
            double sqrt2 = FastMath.sqrt((1.0d - d) / d);
            double d2 = numericalMean - (sqrt2 * sqrt);
            if (d2 > supportLowerBound) {
                supportLowerBound = ((int) FastMath.ceil(d2)) - 1;
            }
            double d3 = numericalMean + ((1.0d / sqrt2) * sqrt);
            if (d3 < supportUpperBound) {
                supportUpperBound = ((int) FastMath.ceil(d3)) - 1;
            }
        }
        return solveInverseCumulativeProbability(d, supportLowerBound, supportUpperBound);
    }

    protected int solveInverseCumulativeProbability(double d, int i, int i2) {
        while (i + 1 < i2) {
            int i3 = (i + i2) / 2;
            if (i3 < i || i3 > i2) {
                i3 = ((i2 - i) / 2) + i;
            }
            if (checkedCumulativeProbability(i3) >= d) {
                i2 = i3;
            } else {
                i = i3;
            }
        }
        return i2;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public void reseedRandomGenerator(long j) {
        this.random.setSeed(j);
        this.randomData.reSeed(j);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int sample() {
        return inverseCumulativeProbability(this.random.nextDouble());
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int[] sample(int i) {
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.NUMBER_OF_SAMPLES, Integer.valueOf(i));
        }
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = sample();
        }
        return iArr;
    }

    private double checkedCumulativeProbability(int i) throws MathInternalError {
        double cumulativeProbability = cumulativeProbability(i);
        if (Double.isNaN(cumulativeProbability)) {
            throw new MathInternalError(LocalizedFormats.DISCRETE_CUMULATIVE_PROBABILITY_RETURNED_NAN, Integer.valueOf(i));
        }
        return cumulativeProbability;
    }

    public double logProbability(int i) {
        return FastMath.log(probability(i));
    }
}
