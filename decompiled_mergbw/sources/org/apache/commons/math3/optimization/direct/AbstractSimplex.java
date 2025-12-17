package org.apache.commons.math3.optimization.direct;

import java.util.Arrays;
import java.util.Comparator;
import org.apache.commons.math3.analysis.MultivariateFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.optimization.OptimizationData;
import org.apache.commons.math3.optimization.PointValuePair;
@Deprecated
/* loaded from: classes5.dex */
public abstract class AbstractSimplex implements OptimizationData {
    private final int dimension;
    private PointValuePair[] simplex;
    private double[][] startConfiguration;

    public abstract void iterate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator);

    protected AbstractSimplex(int i) {
        this(i, 1.0d);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractSimplex(int i, double d) {
        this(createHypercubeSteps(i, d));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0044, code lost:
        r0 = r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractSimplex(double[] r9) {
        /*
            r8 = this;
            r8.<init>()
            if (r9 == 0) goto L4d
            int r0 = r9.length
            if (r0 == 0) goto L47
            int r0 = r9.length
            r8.dimension = r0
            r1 = 2
            int[] r1 = new int[r1]
            r2 = 1
            r1[r2] = r0
            r2 = 0
            r1[r2] = r0
            java.lang.Class r0 = java.lang.Double.TYPE
            java.lang.Object r0 = java.lang.reflect.Array.newInstance(r0, r1)
            double[][] r0 = (double[][]) r0
            r8.startConfiguration = r0
            r0 = r2
        L1f:
            int r1 = r8.dimension
            if (r0 >= r1) goto L46
            double[][] r1 = r8.startConfiguration
            r1 = r1[r0]
            r3 = r2
        L28:
            int r4 = r0 + 1
            if (r3 >= r4) goto L44
            r4 = r9[r3]
            r6 = 0
            int r4 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r4 == 0) goto L3a
            int r3 = r3 + 1
            java.lang.System.arraycopy(r9, r2, r1, r2, r3)
            goto L28
        L3a:
            org.apache.commons.math3.exception.ZeroException r9 = new org.apache.commons.math3.exception.ZeroException
            org.apache.commons.math3.exception.util.LocalizedFormats r0 = org.apache.commons.math3.exception.util.LocalizedFormats.EQUAL_VERTICES_IN_SIMPLEX
            java.lang.Object[] r1 = new java.lang.Object[r2]
            r9.<init>(r0, r1)
            throw r9
        L44:
            r0 = r4
            goto L1f
        L46:
            return
        L47:
            org.apache.commons.math3.exception.ZeroException r9 = new org.apache.commons.math3.exception.ZeroException
            r9.<init>()
            throw r9
        L4d:
            org.apache.commons.math3.exception.NullArgumentException r9 = new org.apache.commons.math3.exception.NullArgumentException
            r9.<init>()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optimization.direct.AbstractSimplex.<init>(double[]):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003c, code lost:
        r6 = r6 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AbstractSimplex(double[][] r14) {
        /*
            r13 = this;
            r13.<init>()
            int r0 = r14.length
            if (r0 <= 0) goto L7c
            int r0 = r14.length
            r1 = 1
            int r0 = r0 - r1
            r13.dimension = r0
            r2 = 2
            int[] r3 = new int[r2]
            r3[r1] = r0
            r4 = 0
            r3[r4] = r0
            java.lang.Class r0 = java.lang.Double.TYPE
            java.lang.Object r0 = java.lang.reflect.Array.newInstance(r0, r3)
            double[][] r0 = (double[][]) r0
            r13.startConfiguration = r0
            r0 = r14[r4]
            r3 = r4
        L20:
            int r5 = r14.length
            if (r3 >= r5) goto L7b
            r5 = r14[r3]
            int r6 = r5.length
            int r7 = r13.dimension
            if (r6 != r7) goto L72
            r6 = r4
        L2b:
            if (r6 >= r3) goto L58
            r7 = r14[r6]
            r8 = r4
        L30:
            int r9 = r13.dimension
            if (r8 >= r9) goto L42
            r9 = r5[r8]
            r11 = r7[r8]
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 == 0) goto L3f
            int r6 = r6 + 1
            goto L2b
        L3f:
            int r8 = r8 + 1
            goto L30
        L42:
            org.apache.commons.math3.exception.MathIllegalArgumentException r14 = new org.apache.commons.math3.exception.MathIllegalArgumentException
            org.apache.commons.math3.exception.util.LocalizedFormats r0 = org.apache.commons.math3.exception.util.LocalizedFormats.EQUAL_VERTICES_IN_SIMPLEX
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.Integer r5 = java.lang.Integer.valueOf(r6)
            java.lang.Object[] r2 = new java.lang.Object[r2]
            r2[r4] = r3
            r2[r1] = r5
            r14.<init>(r0, r2)
            throw r14
        L58:
            if (r3 <= 0) goto L6f
            double[][] r6 = r13.startConfiguration
            int r7 = r3 + (-1)
            r6 = r6[r7]
            r7 = r4
        L61:
            int r8 = r13.dimension
            if (r7 >= r8) goto L6f
            r8 = r5[r7]
            r10 = r0[r7]
            double r8 = r8 - r10
            r6[r7] = r8
            int r7 = r7 + 1
            goto L61
        L6f:
            int r3 = r3 + 1
            goto L20
        L72:
            org.apache.commons.math3.exception.DimensionMismatchException r14 = new org.apache.commons.math3.exception.DimensionMismatchException
            int r0 = r5.length
            int r1 = r13.dimension
            r14.<init>(r0, r1)
            throw r14
        L7b:
            return
        L7c:
            org.apache.commons.math3.exception.NotStrictlyPositiveException r0 = new org.apache.commons.math3.exception.NotStrictlyPositiveException
            org.apache.commons.math3.exception.util.LocalizedFormats r1 = org.apache.commons.math3.exception.util.LocalizedFormats.SIMPLEX_NEED_ONE_POINT
            int r14 = r14.length
            java.lang.Integer r14 = java.lang.Integer.valueOf(r14)
            r0.<init>(r1, r14)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.math3.optimization.direct.AbstractSimplex.<init>(double[][]):void");
    }

    public int getDimension() {
        return this.dimension;
    }

    public int getSize() {
        return this.simplex.length;
    }

    public void build(double[] dArr) {
        int i = this.dimension;
        if (i != dArr.length) {
            throw new DimensionMismatchException(this.dimension, dArr.length);
        }
        PointValuePair[] pointValuePairArr = new PointValuePair[i + 1];
        this.simplex = pointValuePairArr;
        pointValuePairArr[0] = new PointValuePair(dArr, Double.NaN);
        int i2 = 0;
        while (true) {
            int i3 = this.dimension;
            if (i2 >= i3) {
                return;
            }
            double[] dArr2 = this.startConfiguration[i2];
            double[] dArr3 = new double[i3];
            for (int i4 = 0; i4 < this.dimension; i4++) {
                dArr3[i4] = dArr[i4] + dArr2[i4];
            }
            i2++;
            this.simplex[i2] = new PointValuePair(dArr3, Double.NaN);
        }
    }

    public void evaluate(MultivariateFunction multivariateFunction, Comparator<PointValuePair> comparator) {
        int i = 0;
        while (true) {
            PointValuePair[] pointValuePairArr = this.simplex;
            if (i < pointValuePairArr.length) {
                PointValuePair pointValuePair = pointValuePairArr[i];
                double[] pointRef = pointValuePair.getPointRef();
                if (Double.isNaN(pointValuePair.getValue().doubleValue())) {
                    this.simplex[i] = new PointValuePair(pointRef, multivariateFunction.value(pointRef), false);
                }
                i++;
            } else {
                Arrays.sort(pointValuePairArr, comparator);
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void replaceWorstPoint(PointValuePair pointValuePair, Comparator<PointValuePair> comparator) {
        int i = 0;
        while (true) {
            int i2 = this.dimension;
            if (i < i2) {
                if (comparator.compare(this.simplex[i], pointValuePair) > 0) {
                    PointValuePair[] pointValuePairArr = this.simplex;
                    PointValuePair pointValuePair2 = pointValuePairArr[i];
                    pointValuePairArr[i] = pointValuePair;
                    pointValuePair = pointValuePair2;
                }
                i++;
            } else {
                this.simplex[i2] = pointValuePair;
                return;
            }
        }
    }

    public PointValuePair[] getPoints() {
        PointValuePair[] pointValuePairArr = this.simplex;
        PointValuePair[] pointValuePairArr2 = new PointValuePair[pointValuePairArr.length];
        System.arraycopy(pointValuePairArr, 0, pointValuePairArr2, 0, pointValuePairArr.length);
        return pointValuePairArr2;
    }

    public PointValuePair getPoint(int i) {
        if (i >= 0) {
            PointValuePair[] pointValuePairArr = this.simplex;
            if (i < pointValuePairArr.length) {
                return pointValuePairArr[i];
            }
        }
        throw new OutOfRangeException(Integer.valueOf(i), 0, Integer.valueOf(this.simplex.length - 1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPoint(int i, PointValuePair pointValuePair) {
        if (i >= 0) {
            PointValuePair[] pointValuePairArr = this.simplex;
            if (i < pointValuePairArr.length) {
                pointValuePairArr[i] = pointValuePair;
                return;
            }
        }
        throw new OutOfRangeException(Integer.valueOf(i), 0, Integer.valueOf(this.simplex.length - 1));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPoints(PointValuePair[] pointValuePairArr) {
        if (pointValuePairArr.length != this.simplex.length) {
            throw new DimensionMismatchException(pointValuePairArr.length, this.simplex.length);
        }
        this.simplex = pointValuePairArr;
    }

    private static double[] createHypercubeSteps(int i, double d) {
        double[] dArr = new double[i];
        for (int i2 = 0; i2 < i; i2++) {
            dArr[i2] = d;
        }
        return dArr;
    }
}
