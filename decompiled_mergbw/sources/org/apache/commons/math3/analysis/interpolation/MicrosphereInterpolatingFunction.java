package org.apache.commons.math3.analysis.interpolation;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.NoDataException;
import org.apache.commons.math3.exception.NullArgumentException;
import org.apache.commons.math3.linear.ArrayRealVector;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.random.UnitSphereRandomVectorGenerator;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public class MicrosphereInterpolatingFunction implements MultivariateFunction {
    private final double brightnessExponent;
    private final int dimension;
    private final List<MicrosphereSurfaceElement> microsphere;
    private final Map<RealVector, Double> samples;

    /* loaded from: classes5.dex */
    private static class MicrosphereSurfaceElement {
        private double brightestIllumination;
        private Map.Entry<RealVector, Double> brightestSample;
        private final RealVector normal;

        MicrosphereSurfaceElement(double[] dArr) {
            this.normal = new ArrayRealVector(dArr);
        }

        RealVector normal() {
            return this.normal;
        }

        void reset() {
            this.brightestIllumination = 0.0d;
            this.brightestSample = null;
        }

        void store(double d, Map.Entry<RealVector, Double> entry) {
            if (d > this.brightestIllumination) {
                this.brightestIllumination = d;
                this.brightestSample = entry;
            }
        }

        double illumination() {
            return this.brightestIllumination;
        }

        Map.Entry<RealVector, Double> sample() {
            return this.brightestSample;
        }
    }

    public MicrosphereInterpolatingFunction(double[][] dArr, double[] dArr2, int i, int i2, UnitSphereRandomVectorGenerator unitSphereRandomVectorGenerator) throws DimensionMismatchException, NoDataException, NullArgumentException {
        if (dArr == null || dArr2 == null) {
            throw new NullArgumentException();
        }
        if (dArr.length == 0) {
            throw new NoDataException();
        }
        if (dArr.length != dArr2.length) {
            throw new DimensionMismatchException(dArr.length, dArr2.length);
        }
        double[] dArr3 = dArr[0];
        if (dArr3 == null) {
            throw new NullArgumentException();
        }
        this.dimension = dArr3.length;
        this.brightnessExponent = i;
        this.samples = new HashMap(dArr2.length);
        for (int i3 = 0; i3 < dArr.length; i3++) {
            double[] dArr4 = dArr[i3];
            if (dArr4 == null) {
                throw new NullArgumentException();
            }
            if (dArr4.length != this.dimension) {
                throw new DimensionMismatchException(dArr4.length, this.dimension);
            }
            this.samples.put(new ArrayRealVector(dArr4), Double.valueOf(dArr2[i3]));
        }
        this.microsphere = new ArrayList(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            this.microsphere.add(new MicrosphereSurfaceElement(unitSphereRandomVectorGenerator.nextVector()));
        }
    }

    @Override // org.apache.commons.math3.analysis.MultivariateFunction
    public double value(double[] dArr) throws DimensionMismatchException {
        ArrayRealVector arrayRealVector = new ArrayRealVector(dArr);
        for (MicrosphereSurfaceElement microsphereSurfaceElement : this.microsphere) {
            microsphereSurfaceElement.reset();
        }
        for (Map.Entry<RealVector, Double> entry : this.samples.entrySet()) {
            RealVector subtract = entry.getKey().subtract(arrayRealVector);
            double norm = subtract.getNorm();
            if (FastMath.abs(norm) < FastMath.ulp(1.0d)) {
                return entry.getValue().doubleValue();
            }
            for (MicrosphereSurfaceElement microsphereSurfaceElement2 : this.microsphere) {
                microsphereSurfaceElement2.store(cosAngle(subtract, microsphereSurfaceElement2.normal()) * FastMath.pow(norm, -this.brightnessExponent), entry);
            }
        }
        double d = 0.0d;
        double d2 = 0.0d;
        for (MicrosphereSurfaceElement microsphereSurfaceElement3 : this.microsphere) {
            double illumination = microsphereSurfaceElement3.illumination();
            Map.Entry<RealVector, Double> sample = microsphereSurfaceElement3.sample();
            if (sample != null) {
                d += sample.getValue().doubleValue() * illumination;
                d2 += illumination;
            }
        }
        return d / d2;
    }

    private double cosAngle(RealVector realVector, RealVector realVector2) {
        return realVector.dotProduct(realVector2) / (realVector.getNorm() * realVector2.getNorm());
    }
}
