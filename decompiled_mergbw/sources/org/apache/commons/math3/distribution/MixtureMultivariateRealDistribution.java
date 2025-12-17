package org.apache.commons.math3.distribution;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.distribution.MultivariateRealDistribution;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.random.RandomGenerator;
import org.apache.commons.math3.random.Well19937c;
import org.apache.commons.math3.util.Pair;
/* loaded from: classes5.dex */
public class MixtureMultivariateRealDistribution<T extends MultivariateRealDistribution> extends AbstractMultivariateRealDistribution {
    private final List<T> distribution;
    private final double[] weight;

    public MixtureMultivariateRealDistribution(List<Pair<Double, T>> list) {
        this(new Well19937c(), list);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MixtureMultivariateRealDistribution(RandomGenerator randomGenerator, List<Pair<Double, T>> list) {
        super(randomGenerator, list.get(0).getSecond().getDimension());
        int size = list.size();
        int dimension = getDimension();
        double d = 0.0d;
        for (int i = 0; i < size; i++) {
            Pair<Double, T> pair = list.get(i);
            if (pair.getSecond().getDimension() != dimension) {
                throw new DimensionMismatchException(pair.getSecond().getDimension(), dimension);
            }
            if (pair.getFirst().doubleValue() < 0.0d) {
                throw new NotPositiveException(pair.getFirst());
            }
            d += pair.getFirst().doubleValue();
        }
        if (Double.isInfinite(d)) {
            throw new MathArithmeticException(LocalizedFormats.OVERFLOW, new Object[0]);
        }
        this.distribution = new ArrayList();
        this.weight = new double[size];
        for (int i2 = 0; i2 < size; i2++) {
            Pair<Double, T> pair2 = list.get(i2);
            this.weight[i2] = pair2.getFirst().doubleValue() / d;
            this.distribution.add(pair2.getSecond());
        }
    }

    @Override // org.apache.commons.math3.distribution.MultivariateRealDistribution
    public double density(double[] dArr) {
        double d = 0.0d;
        int i = 0;
        while (true) {
            double[] dArr2 = this.weight;
            if (i >= dArr2.length) {
                return d;
            }
            d += dArr2[i] * this.distribution.get(i).density(dArr);
            i++;
        }
    }

    @Override // org.apache.commons.math3.distribution.AbstractMultivariateRealDistribution, org.apache.commons.math3.distribution.MultivariateRealDistribution
    public double[] sample() {
        double[] dArr;
        double nextDouble = this.random.nextDouble();
        double d = 0.0d;
        int i = 0;
        while (true) {
            double[] dArr2 = this.weight;
            if (i >= dArr2.length) {
                dArr = null;
                break;
            }
            d += dArr2[i];
            if (nextDouble <= d) {
                dArr = this.distribution.get(i).sample();
                break;
            }
            i++;
        }
        return dArr == null ? this.distribution.get(this.weight.length - 1).sample() : dArr;
    }

    @Override // org.apache.commons.math3.distribution.AbstractMultivariateRealDistribution, org.apache.commons.math3.distribution.MultivariateRealDistribution
    public void reseedRandomGenerator(long j) {
        super.reseedRandomGenerator(j);
        int i = 0;
        while (i < this.distribution.size()) {
            i++;
            this.distribution.get(i).reseedRandomGenerator(i + j);
        }
    }

    public List<Pair<Double, T>> getComponents() {
        ArrayList arrayList = new ArrayList(this.weight.length);
        int i = 0;
        while (true) {
            double[] dArr = this.weight;
            if (i >= dArr.length) {
                return arrayList;
            }
            arrayList.add(new Pair(Double.valueOf(dArr[i]), this.distribution.get(i)));
            i++;
        }
    }
}
