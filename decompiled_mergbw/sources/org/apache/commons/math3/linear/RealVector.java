package org.apache.commons.math3.linear;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.apache.commons.math3.analysis.FunctionUtils;
import org.apache.commons.math3.analysis.UnivariateFunction;
import org.apache.commons.math3.analysis.function.Add;
import org.apache.commons.math3.analysis.function.Divide;
import org.apache.commons.math3.analysis.function.Multiply;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathArithmeticException;
import org.apache.commons.math3.exception.MathUnsupportedOperationException;
import org.apache.commons.math3.exception.NotPositiveException;
import org.apache.commons.math3.exception.NumberIsTooSmallException;
import org.apache.commons.math3.exception.OutOfRangeException;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public abstract class RealVector {
    public abstract RealVector append(double d);

    public abstract RealVector append(RealVector realVector);

    public abstract RealVector copy();

    public abstract RealVector ebeDivide(RealVector realVector) throws DimensionMismatchException;

    public abstract RealVector ebeMultiply(RealVector realVector) throws DimensionMismatchException;

    public abstract int getDimension();

    public abstract double getEntry(int i) throws OutOfRangeException;

    public abstract RealVector getSubVector(int i, int i2) throws NotPositiveException, OutOfRangeException;

    public abstract boolean isInfinite();

    public abstract boolean isNaN();

    public abstract void setEntry(int i, double d) throws OutOfRangeException;

    public abstract void setSubVector(int i, RealVector realVector) throws OutOfRangeException;

    public void addToEntry(int i, double d) throws OutOfRangeException {
        setEntry(i, getEntry(i) + d);
    }

    protected void checkVectorDimensions(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector.getDimension());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkVectorDimensions(int i) throws DimensionMismatchException {
        int dimension = getDimension();
        if (dimension != i) {
            throw new DimensionMismatchException(dimension, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkIndex(int i) throws OutOfRangeException {
        if (i < 0 || i >= getDimension()) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i), 0, Integer.valueOf(getDimension() - 1));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void checkIndices(int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        int dimension = getDimension();
        if (i < 0 || i >= dimension) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i), 0, Integer.valueOf(dimension - 1));
        }
        if (i2 < 0 || i2 >= dimension) {
            throw new OutOfRangeException(LocalizedFormats.INDEX, Integer.valueOf(i2), 0, Integer.valueOf(dimension - 1));
        }
        if (i2 < i) {
            throw new NumberIsTooSmallException(LocalizedFormats.INITIAL_ROW_AFTER_FINAL_ROW, Integer.valueOf(i2), Integer.valueOf(i), false);
        }
    }

    public RealVector add(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        RealVector copy = realVector.copy();
        Iterator<Entry> it = iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            int index = next.getIndex();
            copy.setEntry(index, next.getValue() + copy.getEntry(index));
        }
        return copy;
    }

    public RealVector subtract(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        RealVector mapMultiply = realVector.mapMultiply(-1.0d);
        Iterator<Entry> it = iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            int index = next.getIndex();
            mapMultiply.setEntry(index, next.getValue() + mapMultiply.getEntry(index));
        }
        return mapMultiply;
    }

    public RealVector mapAdd(double d) {
        return copy().mapAddToSelf(d);
    }

    public RealVector mapAddToSelf(double d) {
        return d != 0.0d ? mapToSelf(FunctionUtils.fix2ndArgument(new Add(), d)) : this;
    }

    public double dotProduct(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        int dimension = getDimension();
        double d = 0.0d;
        for (int i = 0; i < dimension; i++) {
            d += getEntry(i) * realVector.getEntry(i);
        }
        return d;
    }

    public double cosine(RealVector realVector) throws DimensionMismatchException, MathArithmeticException {
        double norm = getNorm();
        double norm2 = realVector.getNorm();
        if (norm == 0.0d || norm2 == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        return dotProduct(realVector) / (norm * norm2);
    }

    public double getDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        Iterator<Entry> it = iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            Entry next = it.next();
            double value = next.getValue() - realVector.getEntry(next.getIndex());
            d += value * value;
        }
        return FastMath.sqrt(d);
    }

    public double getNorm() {
        Iterator<Entry> it = iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            double value = it.next().getValue();
            d += value * value;
        }
        return FastMath.sqrt(d);
    }

    public double getL1Norm() {
        Iterator<Entry> it = iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            d += FastMath.abs(it.next().getValue());
        }
        return d;
    }

    public double getLInfNorm() {
        Iterator<Entry> it = iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            d = FastMath.max(d, FastMath.abs(it.next().getValue()));
        }
        return d;
    }

    public double getL1Distance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        Iterator<Entry> it = iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            Entry next = it.next();
            d += FastMath.abs(next.getValue() - realVector.getEntry(next.getIndex()));
        }
        return d;
    }

    public double getLInfDistance(RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        Iterator<Entry> it = iterator();
        double d = 0.0d;
        while (it.hasNext()) {
            Entry next = it.next();
            d = FastMath.max(FastMath.abs(next.getValue() - realVector.getEntry(next.getIndex())), d);
        }
        return d;
    }

    public int getMinIndex() {
        Iterator<Entry> it = iterator();
        int i = -1;
        double d = Double.POSITIVE_INFINITY;
        while (it.hasNext()) {
            Entry next = it.next();
            if (next.getValue() <= d) {
                i = next.getIndex();
                d = next.getValue();
            }
        }
        return i;
    }

    public double getMinValue() {
        int minIndex = getMinIndex();
        if (minIndex < 0) {
            return Double.NaN;
        }
        return getEntry(minIndex);
    }

    public int getMaxIndex() {
        Iterator<Entry> it = iterator();
        int i = -1;
        double d = Double.NEGATIVE_INFINITY;
        while (it.hasNext()) {
            Entry next = it.next();
            if (next.getValue() >= d) {
                i = next.getIndex();
                d = next.getValue();
            }
        }
        return i;
    }

    public double getMaxValue() {
        int maxIndex = getMaxIndex();
        if (maxIndex < 0) {
            return Double.NaN;
        }
        return getEntry(maxIndex);
    }

    public RealVector mapMultiply(double d) {
        return copy().mapMultiplyToSelf(d);
    }

    public RealVector mapMultiplyToSelf(double d) {
        return mapToSelf(FunctionUtils.fix2ndArgument(new Multiply(), d));
    }

    public RealVector mapSubtract(double d) {
        return copy().mapSubtractToSelf(d);
    }

    public RealVector mapSubtractToSelf(double d) {
        return mapAddToSelf(-d);
    }

    public RealVector mapDivide(double d) {
        return copy().mapDivideToSelf(d);
    }

    public RealVector mapDivideToSelf(double d) {
        return mapToSelf(FunctionUtils.fix2ndArgument(new Divide(), d));
    }

    public RealMatrix outerProduct(RealVector realVector) {
        RealMatrix openMapRealMatrix;
        int dimension = getDimension();
        int dimension2 = realVector.getDimension();
        if ((realVector instanceof SparseRealVector) || (this instanceof SparseRealVector)) {
            openMapRealMatrix = new OpenMapRealMatrix(dimension, dimension2);
        } else {
            openMapRealMatrix = new Array2DRowRealMatrix(dimension, dimension2);
        }
        for (int i = 0; i < dimension; i++) {
            for (int i2 = 0; i2 < dimension2; i2++) {
                openMapRealMatrix.setEntry(i, i2, getEntry(i) * realVector.getEntry(i2));
            }
        }
        return openMapRealMatrix;
    }

    public RealVector projection(RealVector realVector) throws DimensionMismatchException, MathArithmeticException {
        if (realVector.dotProduct(realVector) == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        return realVector.mapMultiply(dotProduct(realVector) / realVector.dotProduct(realVector));
    }

    public void set(double d) {
        Iterator<Entry> it = iterator();
        while (it.hasNext()) {
            it.next().setValue(d);
        }
    }

    public double[] toArray() {
        int dimension = getDimension();
        double[] dArr = new double[dimension];
        for (int i = 0; i < dimension; i++) {
            dArr[i] = getEntry(i);
        }
        return dArr;
    }

    public RealVector unitVector() throws MathArithmeticException {
        double norm = getNorm();
        if (norm == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        return mapDivide(norm);
    }

    public void unitize() throws MathArithmeticException {
        if (getNorm() == 0.0d) {
            throw new MathArithmeticException(LocalizedFormats.ZERO_NORM, new Object[0]);
        }
        mapDivideToSelf(getNorm());
    }

    public Iterator<Entry> sparseIterator() {
        return new SparseEntryIterator();
    }

    public Iterator<Entry> iterator() {
        final int dimension = getDimension();
        return new Iterator<Entry>() { // from class: org.apache.commons.math3.linear.RealVector.1
            private Entry e;
            private int i = 0;

            {
                this.e = new Entry();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.i < dimension;
            }

            @Override // java.util.Iterator
            public Entry next() {
                int i = this.i;
                if (i < dimension) {
                    Entry entry = this.e;
                    this.i = i + 1;
                    entry.setIndex(i);
                    return this.e;
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }
        };
    }

    public RealVector map(UnivariateFunction univariateFunction) {
        return copy().mapToSelf(univariateFunction);
    }

    public RealVector mapToSelf(UnivariateFunction univariateFunction) {
        Iterator<Entry> it = iterator();
        while (it.hasNext()) {
            Entry next = it.next();
            next.setValue(univariateFunction.value(next.getValue()));
        }
        return this;
    }

    public RealVector combine(double d, double d2, RealVector realVector) throws DimensionMismatchException {
        return copy().combineToSelf(d, d2, realVector);
    }

    public RealVector combineToSelf(double d, double d2, RealVector realVector) throws DimensionMismatchException {
        checkVectorDimensions(realVector);
        for (int i = 0; i < getDimension(); i++) {
            setEntry(i, (getEntry(i) * d) + (realVector.getEntry(i) * d2));
        }
        return this;
    }

    public double walkInDefaultOrder(RealVectorPreservingVisitor realVectorPreservingVisitor) {
        int dimension = getDimension();
        realVectorPreservingVisitor.start(dimension, 0, dimension - 1);
        for (int i = 0; i < dimension; i++) {
            realVectorPreservingVisitor.visit(i, getEntry(i));
        }
        return realVectorPreservingVisitor.end();
    }

    public double walkInDefaultOrder(RealVectorPreservingVisitor realVectorPreservingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i, i2);
        realVectorPreservingVisitor.start(getDimension(), i, i2);
        while (i <= i2) {
            realVectorPreservingVisitor.visit(i, getEntry(i));
            i++;
        }
        return realVectorPreservingVisitor.end();
    }

    public double walkInOptimizedOrder(RealVectorPreservingVisitor realVectorPreservingVisitor) {
        return walkInDefaultOrder(realVectorPreservingVisitor);
    }

    public double walkInOptimizedOrder(RealVectorPreservingVisitor realVectorPreservingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(realVectorPreservingVisitor, i, i2);
    }

    public double walkInDefaultOrder(RealVectorChangingVisitor realVectorChangingVisitor) {
        int dimension = getDimension();
        realVectorChangingVisitor.start(dimension, 0, dimension - 1);
        for (int i = 0; i < dimension; i++) {
            setEntry(i, realVectorChangingVisitor.visit(i, getEntry(i)));
        }
        return realVectorChangingVisitor.end();
    }

    public double walkInDefaultOrder(RealVectorChangingVisitor realVectorChangingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        checkIndices(i, i2);
        realVectorChangingVisitor.start(getDimension(), i, i2);
        while (i <= i2) {
            setEntry(i, realVectorChangingVisitor.visit(i, getEntry(i)));
            i++;
        }
        return realVectorChangingVisitor.end();
    }

    public double walkInOptimizedOrder(RealVectorChangingVisitor realVectorChangingVisitor) {
        return walkInDefaultOrder(realVectorChangingVisitor);
    }

    public double walkInOptimizedOrder(RealVectorChangingVisitor realVectorChangingVisitor, int i, int i2) throws NumberIsTooSmallException, OutOfRangeException {
        return walkInDefaultOrder(realVectorChangingVisitor, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public class Entry {
        private int index;

        public Entry() {
            setIndex(0);
        }

        public double getValue() {
            return RealVector.this.getEntry(getIndex());
        }

        public void setValue(double d) {
            RealVector.this.setEntry(getIndex(), d);
        }

        public int getIndex() {
            return this.index;
        }

        public void setIndex(int i) {
            this.index = i;
        }
    }

    public boolean equals(Object obj) throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    public int hashCode() throws MathUnsupportedOperationException {
        throw new MathUnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes5.dex */
    public class SparseEntryIterator implements Iterator<Entry> {
        private Entry current;
        private final int dim;
        private Entry next;

        protected SparseEntryIterator() {
            this.dim = RealVector.this.getDimension();
            this.current = new Entry();
            Entry entry = new Entry();
            this.next = entry;
            if (entry.getValue() == 0.0d) {
                advance(this.next);
            }
        }

        protected void advance(Entry entry) {
            if (entry == null) {
                return;
            }
            do {
                entry.setIndex(entry.getIndex() + 1);
                if (entry.getIndex() >= this.dim) {
                    break;
                }
            } while (entry.getValue() == 0.0d);
            if (entry.getIndex() >= this.dim) {
                entry.setIndex(-1);
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.next.getIndex() >= 0;
        }

        @Override // java.util.Iterator
        public Entry next() {
            int index = this.next.getIndex();
            if (index < 0) {
                throw new NoSuchElementException();
            }
            this.current.setIndex(index);
            advance(this.next);
            return this.current;
        }

        @Override // java.util.Iterator
        public void remove() throws MathUnsupportedOperationException {
            throw new MathUnsupportedOperationException();
        }
    }

    public static RealVector unmodifiableRealVector(RealVector realVector) {
        return new RealVector() { // from class: org.apache.commons.math3.linear.RealVector.2
            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapToSelf(UnivariateFunction univariateFunction) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector map(UnivariateFunction univariateFunction) {
                return RealVector.this.map(univariateFunction);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public Iterator<Entry> iterator() {
                final Iterator<Entry> it = RealVector.this.iterator();
                return new Iterator<Entry>() { // from class: org.apache.commons.math3.linear.RealVector.2.1
                    private final UnmodifiableEntry e;

                    {
                        this.e = new UnmodifiableEntry();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return it.hasNext();
                    }

                    @Override // java.util.Iterator
                    public Entry next() {
                        this.e.setIndex(((Entry) it.next()).getIndex());
                        return this.e;
                    }

                    @Override // java.util.Iterator
                    public void remove() throws MathUnsupportedOperationException {
                        throw new MathUnsupportedOperationException();
                    }
                };
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public Iterator<Entry> sparseIterator() {
                final Iterator<Entry> sparseIterator = RealVector.this.sparseIterator();
                return new Iterator<Entry>() { // from class: org.apache.commons.math3.linear.RealVector.2.2
                    private final UnmodifiableEntry e;

                    {
                        this.e = new UnmodifiableEntry();
                    }

                    @Override // java.util.Iterator
                    public boolean hasNext() {
                        return sparseIterator.hasNext();
                    }

                    @Override // java.util.Iterator
                    public Entry next() {
                        this.e.setIndex(((Entry) sparseIterator.next()).getIndex());
                        return this.e;
                    }

                    @Override // java.util.Iterator
                    public void remove() throws MathUnsupportedOperationException {
                        throw new MathUnsupportedOperationException();
                    }
                };
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector copy() {
                return RealVector.this.copy();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector add(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.add(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector subtract(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.subtract(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapAdd(double d) {
                return RealVector.this.mapAdd(d);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapAddToSelf(double d) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapSubtract(double d) {
                return RealVector.this.mapSubtract(d);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapSubtractToSelf(double d) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapMultiply(double d) {
                return RealVector.this.mapMultiply(d);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapMultiplyToSelf(double d) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapDivide(double d) {
                return RealVector.this.mapDivide(d);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector mapDivideToSelf(double d) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector ebeMultiply(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.ebeMultiply(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector ebeDivide(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.ebeDivide(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double dotProduct(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.dotProduct(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double cosine(RealVector realVector2) throws DimensionMismatchException, MathArithmeticException {
                return RealVector.this.cosine(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getNorm() {
                return RealVector.this.getNorm();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getL1Norm() {
                return RealVector.this.getL1Norm();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getLInfNorm() {
                return RealVector.this.getLInfNorm();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getDistance(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.getDistance(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getL1Distance(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.getL1Distance(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getLInfDistance(RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.getLInfDistance(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector unitVector() throws MathArithmeticException {
                return RealVector.this.unitVector();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public void unitize() throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealMatrix outerProduct(RealVector realVector2) {
                return RealVector.this.outerProduct(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double getEntry(int i) throws OutOfRangeException {
                return RealVector.this.getEntry(i);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public void setEntry(int i, double d) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public void addToEntry(int i, double d) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public int getDimension() {
                return RealVector.this.getDimension();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector append(RealVector realVector2) {
                return RealVector.this.append(realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector append(double d) {
                return RealVector.this.append(d);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector getSubVector(int i, int i2) throws OutOfRangeException, NotPositiveException {
                return RealVector.this.getSubVector(i, i2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public void setSubVector(int i, RealVector realVector2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public void set(double d) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public double[] toArray() {
                return RealVector.this.toArray();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public boolean isNaN() {
                return RealVector.this.isNaN();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public boolean isInfinite() {
                return RealVector.this.isInfinite();
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector combine(double d, double d2, RealVector realVector2) throws DimensionMismatchException {
                return RealVector.this.combine(d, d2, realVector2);
            }

            @Override // org.apache.commons.math3.linear.RealVector
            public RealVector combineToSelf(double d, double d2, RealVector realVector2) throws MathUnsupportedOperationException {
                throw new MathUnsupportedOperationException();
            }

            /* JADX INFO: Access modifiers changed from: package-private */
            /* renamed from: org.apache.commons.math3.linear.RealVector$2$UnmodifiableEntry */
            /* loaded from: classes5.dex */
            public class UnmodifiableEntry extends Entry {
                UnmodifiableEntry() {
                    super();
                }

                @Override // org.apache.commons.math3.linear.RealVector.Entry
                public double getValue() {
                    return RealVector.this.getEntry(getIndex());
                }

                @Override // org.apache.commons.math3.linear.RealVector.Entry
                public void setValue(double d) throws MathUnsupportedOperationException {
                    throw new MathUnsupportedOperationException();
                }
            }
        };
    }
}
