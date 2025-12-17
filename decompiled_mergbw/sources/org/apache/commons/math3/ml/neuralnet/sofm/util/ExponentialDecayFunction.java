package org.apache.commons.math3.ml.neuralnet.sofm.util;

import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.NumberIsTooLargeException;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public class ExponentialDecayFunction {

    /* renamed from: a  reason: collision with root package name */
    private final double f76a;
    private final double oneOverB;

    public ExponentialDecayFunction(double d, double d2, long j) {
        if (d <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d));
        }
        if (d2 <= 0.0d) {
            throw new NotStrictlyPositiveException(Double.valueOf(d2));
        }
        if (d2 >= d) {
            throw new NumberIsTooLargeException(Double.valueOf(d2), Double.valueOf(d), false);
        }
        if (j <= 0) {
            throw new NotStrictlyPositiveException(Long.valueOf(j));
        }
        this.f76a = d;
        this.oneOverB = (-FastMath.log(d2 / d)) / j;
    }

    public double value(long j) {
        return this.f76a * FastMath.exp((-j) * this.oneOverB);
    }
}
