package org.apache.commons.math3.random;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.NoSuchElementException;
import java.util.StringTokenizer;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.MathParseException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NotStrictlyPositiveException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public class SobolSequenceGenerator implements RandomVectorGenerator {
    private static final int BITS = 52;
    private static final String FILE_CHARSET = "US-ASCII";
    private static final int MAX_DIMENSION = 1000;
    private static final String RESOURCE_NAME = "/assets/org/apache/commons/math3/random/new-joe-kuo-6.1000";
    private static final double SCALE = FastMath.pow(2.0d, 52);
    private int count = 0;
    private final int dimension;
    private final long[][] direction;
    private final long[] x;

    public SobolSequenceGenerator(int i) throws OutOfRangeException {
        if (i < 1 || i > 1000) {
            throw new OutOfRangeException(Integer.valueOf(i), 1, 1000);
        }
        InputStream resourceAsStream = getClass().getResourceAsStream(RESOURCE_NAME);
        if (resourceAsStream == null) {
            throw new MathInternalError();
        }
        this.dimension = i;
        this.direction = (long[][]) Array.newInstance(Long.TYPE, i, 53);
        this.x = new long[i];
        try {
            try {
                initFromStream(resourceAsStream);
                try {
                    resourceAsStream.close();
                } catch (IOException unused) {
                }
            } catch (IOException unused2) {
                throw new MathInternalError();
            } catch (MathParseException unused3) {
                throw new MathInternalError();
            }
        } catch (Throwable th) {
            try {
                resourceAsStream.close();
            } catch (IOException unused4) {
            }
            throw th;
        }
    }

    public SobolSequenceGenerator(int i, InputStream inputStream) throws NotStrictlyPositiveException, MathParseException, IOException {
        if (i < 1) {
            throw new NotStrictlyPositiveException(Integer.valueOf(i));
        }
        this.dimension = i;
        this.direction = (long[][]) Array.newInstance(Long.TYPE, i, 53);
        this.x = new long[i];
        int initFromStream = initFromStream(inputStream);
        if (initFromStream < i) {
            throw new OutOfRangeException(Integer.valueOf(i), 1, Integer.valueOf(initFromStream));
        }
    }

    private int initFromStream(InputStream inputStream) throws MathParseException, IOException {
        for (int i = 1; i <= 52; i++) {
            this.direction[0][i] = 1 << (52 - i);
        }
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream, Charset.forName(FILE_CHARSET)));
        try {
            bufferedReader.readLine();
            int i2 = -1;
            int i3 = 2;
            int i4 = 1;
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return i2;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(readLine, " ");
                try {
                    int parseInt = Integer.parseInt(stringTokenizer.nextToken());
                    if (parseInt >= 2 && parseInt <= this.dimension) {
                        int parseInt2 = Integer.parseInt(stringTokenizer.nextToken());
                        int parseInt3 = Integer.parseInt(stringTokenizer.nextToken());
                        int[] iArr = new int[parseInt2 + 1];
                        for (int i5 = 1; i5 <= parseInt2; i5++) {
                            iArr[i5] = Integer.parseInt(stringTokenizer.nextToken());
                        }
                        initDirectionVector(i4, parseInt3, iArr);
                        i4++;
                    }
                    if (parseInt > this.dimension) {
                        return parseInt;
                    }
                    i3++;
                    i2 = parseInt;
                } catch (NumberFormatException unused) {
                    throw new MathParseException(readLine, i3);
                } catch (NoSuchElementException unused2) {
                    throw new MathParseException(readLine, i3);
                }
            }
        } finally {
            bufferedReader.close();
        }
    }

    private void initDirectionVector(int i, int i2, int[] iArr) {
        int i3;
        int length = iArr.length;
        int i4 = length - 1;
        for (int i5 = 1; i5 <= i4; i5++) {
            this.direction[i][i5] = iArr[i5] << (52 - i5);
        }
        for (int i6 = length; i6 <= 52; i6++) {
            long[] jArr = this.direction[i];
            long j = jArr[i6 - i4];
            jArr[i6] = j ^ (j >> i4);
            int i7 = 1;
            while (true) {
                if (i7 <= length - 2) {
                    long[] jArr2 = this.direction[i];
                    jArr2[i6] = jArr2[i6] ^ (((i2 >> (i3 - i7)) & 1) * jArr2[i6 - i7]);
                    i7++;
                }
            }
        }
    }

    @Override // org.apache.commons.math3.random.RandomVectorGenerator
    public double[] nextVector() {
        double[] dArr = new double[this.dimension];
        int i = this.count;
        if (i == 0) {
            this.count = i + 1;
            return dArr;
        }
        int i2 = i - 1;
        int i3 = 1;
        while ((i2 & 1) == 1) {
            i2 >>= 1;
            i3++;
        }
        for (int i4 = 0; i4 < this.dimension; i4++) {
            long[] jArr = this.x;
            long j = jArr[i4] ^ this.direction[i4][i3];
            jArr[i4] = j;
            dArr[i4] = j / SCALE;
        }
        this.count++;
        return dArr;
    }

    public double[] skipTo(int i) throws NotPositiveException {
        if (i == 0) {
            Arrays.fill(this.x, 0L);
        } else {
            int i2 = i - 1;
            long j = i2 ^ (i2 >> 1);
            for (int i3 = 0; i3 < this.dimension; i3++) {
                long j2 = 0;
                for (int i4 = 1; i4 <= 52; i4++) {
                    long j3 = j >> (i4 - 1);
                    if (j3 == 0) {
                        break;
                    }
                    j2 ^= (j3 & 1) * this.direction[i3][i4];
                }
                this.x[i3] = j2;
            }
        }
        this.count = i;
        return nextVector();
    }

    public int getNextIndex() {
        return this.count;
    }
}
