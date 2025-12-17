package org.apache.commons.math3.linear;

import java.lang.reflect.Array;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public class RectangularCholeskyDecomposition {
    private int rank;
    private final RealMatrix root;

    public RectangularCholeskyDecomposition(RealMatrix realMatrix) throws NonPositiveDefiniteMatrixException {
        this(realMatrix, 0.0d);
    }

    public RectangularCholeskyDecomposition(RealMatrix realMatrix, double d) throws NonPositiveDefiniteMatrixException {
        int rowDimension = realMatrix.getRowDimension();
        double[][] data = realMatrix.getData();
        boolean z = false;
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, rowDimension, rowDimension);
        int[] iArr = new int[rowDimension];
        for (int i = 0; i < rowDimension; i++) {
            iArr[i] = i;
        }
        boolean z2 = true;
        int i2 = 0;
        while (z2) {
            int i3 = i2 + 1;
            int i4 = i2;
            for (int i5 = i3; i5 < rowDimension; i5++) {
                int i6 = iArr[i5];
                int i7 = iArr[i4];
                if (data[i6][i6] > data[i7][i7]) {
                    i4 = i5;
                }
            }
            if (i4 != i2) {
                int i8 = iArr[i2];
                iArr[i2] = iArr[i4];
                iArr[i4] = i8;
                double[] dArr2 = dArr[i2];
                dArr[i2] = dArr[i4];
                dArr[i4] = dArr2;
            }
            int i9 = iArr[i2];
            double d2 = data[i9][i9];
            if (d2 > d) {
                double sqrt = FastMath.sqrt(d2);
                dArr[i2][i2] = sqrt;
                double d3 = 1.0d / sqrt;
                double d4 = 1.0d / data[i9][i9];
                for (int i10 = i3; i10 < rowDimension; i10++) {
                    int i11 = iArr[i10];
                    double[] dArr3 = data[i11];
                    double d5 = dArr3[i9] * d3;
                    dArr[i10][i2] = d5;
                    double d6 = dArr3[i11];
                    double d7 = dArr3[i9];
                    dArr3[i11] = d6 - ((d7 * d7) * d4);
                    for (int i12 = i3; i12 < i10; i12++) {
                        int i13 = iArr[i12];
                        double[] dArr4 = data[i11];
                        double d8 = dArr4[i13] - (dArr[i12][i2] * d5);
                        dArr4[i13] = d8;
                        data[i13][i11] = d8;
                    }
                }
                i2 = i3;
                z2 = i3 < rowDimension;
            } else if (i2 == 0) {
                throw new NonPositiveDefiniteMatrixException(data[i9][i9], i9, d);
            } else {
                for (int i14 = i2; i14 < rowDimension; i14++) {
                    int i15 = iArr[i14];
                    if (data[i15][i15] < (-d)) {
                        int i16 = iArr[i14];
                        throw new NonPositiveDefiniteMatrixException(data[i16][i16], i14, d);
                    }
                }
                z2 = z;
            }
            z = false;
        }
        this.rank = i2;
        this.root = MatrixUtils.createRealMatrix(rowDimension, i2);
        for (int i17 = 0; i17 < rowDimension; i17++) {
            for (int i18 = 0; i18 < i2; i18++) {
                this.root.setEntry(iArr[i17], i18, dArr[i17][i18]);
            }
        }
    }

    public RealMatrix getRootMatrix() {
        return this.root;
    }

    public int getRank() {
        return this.rank;
    }
}
