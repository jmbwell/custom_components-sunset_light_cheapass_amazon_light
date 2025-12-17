package org.apache.commons.math3.distribution;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public class ZipfDistribution extends AbstractIntegerDistribution {
    private static final long serialVersionUID = -140627372283420404L;
    private final double exponent;
    private final int numberOfElements;
    private double numericalMean;
    private boolean numericalMeanIsCalculated;
    private double numericalVariance;
    private boolean numericalVarianceIsCalculated;

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportLowerBound() {
        return 1;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public boolean isSupportConnected() {
        return true;
    }

    public ZipfDistribution(int i, double d) {
        this(new Well19937c(), i, d);
    }

    public ZipfDistribution(RandomGenerator randomGenerator, int i, double d) throws NotStrictlyPositiveException {
        super(randomGenerator);
        this.numericalMean = Double.NaN;
        this.numericalMeanIsCalculated = false;
        this.numericalVariance = Double.NaN;
        this.numericalVarianceIsCalculated = false;
        if (i <= 0) {
            throw new NotStrictlyPositiveException(LocalizedFormats.DIMENSION, Integer.valueOf(i));
        }
        if (d <= 0.0d) {
            throw new NotStrictlyPositiveException(LocalizedFormats.EXPONENT, Double.valueOf(d));
        }
        this.numberOfElements = i;
        this.exponent = d;
    }

    public int getNumberOfElements() {
        return this.numberOfElements;
    }

    public double getExponent() {
        return this.exponent;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double probability(int i) {
        if (i <= 0 || i > this.numberOfElements) {
            return 0.0d;
        }
        return (1.0d / FastMath.pow(i, this.exponent)) / generalizedHarmonic(this.numberOfElements, this.exponent);
    }

    @Override // org.apache.commons.math3.distribution.AbstractIntegerDistribution
    public double logProbability(int i) {
        if (i <= 0 || i > this.numberOfElements) {
            return Double.NEGATIVE_INFINITY;
        }
        double d = this.exponent;
        return ((-FastMath.log(i)) * d) - FastMath.log(generalizedHarmonic(this.numberOfElements, d));
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double cumulativeProbability(int i) {
        if (i <= 0) {
            return 0.0d;
        }
        if (i >= this.numberOfElements) {
            return 1.0d;
        }
        return generalizedHarmonic(i, this.exponent) / generalizedHarmonic(this.numberOfElements, this.exponent);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalMean() {
        if (!this.numericalMeanIsCalculated) {
            this.numericalMean = calculateNumericalMean();
            this.numericalMeanIsCalculated = true;
        }
        return this.numericalMean;
    }

    protected double calculateNumericalMean() {
        int numberOfElements = getNumberOfElements();
        double exponent = getExponent();
        return generalizedHarmonic(numberOfElements, exponent - 1.0d) / generalizedHarmonic(numberOfElements, exponent);
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public double getNumericalVariance() {
        if (!this.numericalVarianceIsCalculated) {
            this.numericalVariance = calculateNumericalVariance();
            this.numericalVarianceIsCalculated = true;
        }
        return this.numericalVariance;
    }

    protected double calculateNumericalVariance() {
        int numberOfElements = getNumberOfElements();
        double exponent = getExponent();
        double generalizedHarmonic = generalizedHarmonic(numberOfElements, exponent - 2.0d);
        double generalizedHarmonic2 = generalizedHarmonic(numberOfElements, exponent - 1.0d);
        double generalizedHarmonic3 = generalizedHarmonic(numberOfElements, exponent);
        return (generalizedHarmonic / generalizedHarmonic3) - ((generalizedHarmonic2 * generalizedHarmonic2) / (generalizedHarmonic3 * generalizedHarmonic3));
    }

    private double generalizedHarmonic(int i, double d) {
        double d2 = 0.0d;
        while (i > 0) {
            d2 += 1.0d / FastMath.pow(i, d);
            i--;
        }
        return d2;
    }

    @Override // org.apache.commons.math3.distribution.IntegerDistribution
    public int getSupportUpperBound() {
        return getNumberOfElements();
    }
}
