package org.apache.commons.math3.optim.linear;

import androidx.exifinterface.media.ExifInterface;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.TreeSet;
import org.apache.commons.math3.linear.Array2DRowRealMatrix;
import org.apache.commons.math3.linear.MatrixUtils;
import org.apache.commons.math3.linear.RealVector;
import org.apache.commons.math3.optim.PointValuePair;
import org.apache.commons.math3.optim.nonlinear.scalar.GoalType;
import org.apache.commons.math3.util.Precision;
/* loaded from: classes5.dex */
class SimplexTableau implements Serializable {
    private static final String NEGATIVE_VAR_COLUMN_LABEL = "x-";
    private static final long serialVersionUID = -1369660067587938365L;
    private int[] basicRows;
    private int[] basicVariables;
    private final List<String> columnLabels;
    private final List<LinearConstraint> constraints;
    private final double epsilon;
    private final LinearObjectiveFunction f;
    private final int maxUlps;
    private int numArtificialVariables;
    private final int numDecisionVariables;
    private final int numSlackVariables;
    private final boolean restrictToNonNegative;
    private transient Array2DRowRealMatrix tableau;

    SimplexTableau(LinearObjectiveFunction linearObjectiveFunction, Collection<LinearConstraint> collection, GoalType goalType, boolean z, double d) {
        this(linearObjectiveFunction, collection, goalType, z, d, 10);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimplexTableau(LinearObjectiveFunction linearObjectiveFunction, Collection<LinearConstraint> collection, GoalType goalType, boolean z, double d, int i) {
        this.columnLabels = new ArrayList();
        this.f = linearObjectiveFunction;
        this.constraints = normalizeConstraints(collection);
        this.restrictToNonNegative = z;
        this.epsilon = d;
        this.maxUlps = i;
        this.numDecisionVariables = linearObjectiveFunction.getCoefficients().getDimension() + (!z ? 1 : 0);
        this.numSlackVariables = getConstraintTypeCounts(Relationship.LEQ) + getConstraintTypeCounts(Relationship.GEQ);
        this.numArtificialVariables = getConstraintTypeCounts(Relationship.EQ) + getConstraintTypeCounts(Relationship.GEQ);
        this.tableau = createTableau(goalType == GoalType.MAXIMIZE);
        initializeBasicVariables(getSlackVariableOffset());
        initializeColumnLabels();
    }

    protected void initializeColumnLabels() {
        if (getNumObjectiveFunctions() == 2) {
            this.columnLabels.add(ExifInterface.LONGITUDE_WEST);
        }
        this.columnLabels.add("Z");
        for (int i = 0; i < getOriginalNumDecisionVariables(); i++) {
            this.columnLabels.add("x" + i);
        }
        if (!this.restrictToNonNegative) {
            this.columnLabels.add(NEGATIVE_VAR_COLUMN_LABEL);
        }
        for (int i2 = 0; i2 < getNumSlackVariables(); i2++) {
            this.columnLabels.add("s" + i2);
        }
        for (int i3 = 0; i3 < getNumArtificialVariables(); i3++) {
            this.columnLabels.add("a" + i3);
        }
        this.columnLabels.add("RHS");
    }

    protected Array2DRowRealMatrix createTableau(boolean z) {
        long j;
        int numObjectiveFunctions = this.numDecisionVariables + this.numSlackVariables + this.numArtificialVariables + getNumObjectiveFunctions();
        Array2DRowRealMatrix array2DRowRealMatrix = new Array2DRowRealMatrix(this.constraints.size() + getNumObjectiveFunctions(), numObjectiveFunctions + 1);
        if (getNumObjectiveFunctions() == 2) {
            array2DRowRealMatrix.setEntry(0, 0, -1.0d);
        }
        int i = getNumObjectiveFunctions() == 1 ? 0 : 1;
        array2DRowRealMatrix.setEntry(i, i, z ? 1.0d : -1.0d);
        RealVector coefficients = this.f.getCoefficients();
        if (z) {
            coefficients = coefficients.mapMultiply(-1.0d);
        }
        copyArray(coefficients.toArray(), array2DRowRealMatrix.getDataRef()[i]);
        double constantTerm = this.f.getConstantTerm();
        if (!z) {
            constantTerm *= -1.0d;
        }
        array2DRowRealMatrix.setEntry(i, numObjectiveFunctions, constantTerm);
        if (!this.restrictToNonNegative) {
            array2DRowRealMatrix.setEntry(i, getSlackVariableOffset() - 1, getInvertedCoefficientSum(coefficients));
        }
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < this.constraints.size(); i4++) {
            LinearConstraint linearConstraint = this.constraints.get(i4);
            int numObjectiveFunctions2 = getNumObjectiveFunctions() + i4;
            copyArray(linearConstraint.getCoefficients().toArray(), array2DRowRealMatrix.getDataRef()[numObjectiveFunctions2]);
            if (!this.restrictToNonNegative) {
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() - 1, getInvertedCoefficientSum(linearConstraint.getCoefficients()));
            }
            array2DRowRealMatrix.setEntry(numObjectiveFunctions2, numObjectiveFunctions, linearConstraint.getValue());
            if (linearConstraint.getRelationship() == Relationship.LEQ) {
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() + i2, 1.0d);
                i2++;
            } else if (linearConstraint.getRelationship() == Relationship.GEQ) {
                j = -4616189618054758400L;
                array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getSlackVariableOffset() + i2, -1.0d);
                i2++;
                if (linearConstraint.getRelationship() != Relationship.EQ || linearConstraint.getRelationship() == Relationship.GEQ) {
                    array2DRowRealMatrix.setEntry(0, getArtificialVariableOffset() + i3, 1.0d);
                    array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getArtificialVariableOffset() + i3, 1.0d);
                    array2DRowRealMatrix.setRowVector(0, array2DRowRealMatrix.getRowVector(0).subtract(array2DRowRealMatrix.getRowVector(numObjectiveFunctions2)));
                    i3++;
                }
            }
            j = -4616189618054758400L;
            if (linearConstraint.getRelationship() != Relationship.EQ) {
            }
            array2DRowRealMatrix.setEntry(0, getArtificialVariableOffset() + i3, 1.0d);
            array2DRowRealMatrix.setEntry(numObjectiveFunctions2, getArtificialVariableOffset() + i3, 1.0d);
            array2DRowRealMatrix.setRowVector(0, array2DRowRealMatrix.getRowVector(0).subtract(array2DRowRealMatrix.getRowVector(numObjectiveFunctions2)));
            i3++;
        }
        return array2DRowRealMatrix;
    }

    public List<LinearConstraint> normalizeConstraints(Collection<LinearConstraint> collection) {
        ArrayList arrayList = new ArrayList(collection.size());
        for (LinearConstraint linearConstraint : collection) {
            arrayList.add(normalize(linearConstraint));
        }
        return arrayList;
    }

    private LinearConstraint normalize(LinearConstraint linearConstraint) {
        if (linearConstraint.getValue() < 0.0d) {
            return new LinearConstraint(linearConstraint.getCoefficients().mapMultiply(-1.0d), linearConstraint.getRelationship().oppositeRelationship(), linearConstraint.getValue() * (-1.0d));
        }
        return new LinearConstraint(linearConstraint.getCoefficients(), linearConstraint.getRelationship(), linearConstraint.getValue());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getNumObjectiveFunctions() {
        return this.numArtificialVariables > 0 ? 2 : 1;
    }

    private int getConstraintTypeCounts(Relationship relationship) {
        int i = 0;
        for (LinearConstraint linearConstraint : this.constraints) {
            if (linearConstraint.getRelationship() == relationship) {
                i++;
            }
        }
        return i;
    }

    protected static double getInvertedCoefficientSum(RealVector realVector) {
        double d = 0.0d;
        for (double d2 : realVector.toArray()) {
            d -= d2;
        }
        return d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Integer getBasicRow(int i) {
        int i2 = this.basicVariables[i];
        if (i2 == -1) {
            return null;
        }
        return Integer.valueOf(i2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getBasicVariable(int i) {
        return this.basicRows[i];
    }

    private void initializeBasicVariables(int i) {
        this.basicVariables = new int[getWidth() - 1];
        this.basicRows = new int[getHeight()];
        Arrays.fill(this.basicVariables, -1);
        while (i < getWidth() - 1) {
            Integer findBasicRow = findBasicRow(i);
            if (findBasicRow != null) {
                this.basicVariables[i] = findBasicRow.intValue();
                this.basicRows[findBasicRow.intValue()] = i;
            }
            i++;
        }
    }

    private Integer findBasicRow(int i) {
        Integer num = null;
        for (int i2 = 0; i2 < getHeight(); i2++) {
            double entry = getEntry(i2, i);
            if (Precision.equals(entry, 1.0d, this.maxUlps) && num == null) {
                num = Integer.valueOf(i2);
            } else if (!Precision.equals(entry, 0.0d, this.maxUlps)) {
                return null;
            }
        }
        return num;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void dropPhase1Objective() {
        if (getNumObjectiveFunctions() == 1) {
            return;
        }
        TreeSet treeSet = new TreeSet();
        treeSet.add(0);
        for (int numObjectiveFunctions = getNumObjectiveFunctions(); numObjectiveFunctions < getArtificialVariableOffset(); numObjectiveFunctions++) {
            if (Precision.compareTo(getEntry(0, numObjectiveFunctions), 0.0d, this.epsilon) > 0) {
                treeSet.add(Integer.valueOf(numObjectiveFunctions));
            }
        }
        for (int i = 0; i < getNumArtificialVariables(); i++) {
            int artificialVariableOffset = getArtificialVariableOffset() + i;
            if (getBasicRow(artificialVariableOffset) == null) {
                treeSet.add(Integer.valueOf(artificialVariableOffset));
            }
        }
        double[][] dArr = (double[][]) Array.newInstance(Double.TYPE, getHeight() - 1, getWidth() - treeSet.size());
        for (int i2 = 1; i2 < getHeight(); i2++) {
            int i3 = 0;
            for (int i4 = 0; i4 < getWidth(); i4++) {
                if (!treeSet.contains(Integer.valueOf(i4))) {
                    dArr[i2 - 1][i3] = getEntry(i2, i4);
                    i3++;
                }
            }
        }
        Integer[] numArr = (Integer[]) treeSet.toArray(new Integer[treeSet.size()]);
        for (int length = numArr.length - 1; length >= 0; length--) {
            this.columnLabels.remove(numArr[length].intValue());
        }
        this.tableau = new Array2DRowRealMatrix(dArr);
        this.numArtificialVariables = 0;
        initializeBasicVariables(getNumObjectiveFunctions());
    }

    private void copyArray(double[] dArr, double[] dArr2) {
        System.arraycopy(dArr, 0, dArr2, getNumObjectiveFunctions(), dArr.length);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isOptimal() {
        double[] row = getRow(0);
        int rhsOffset = getRhsOffset();
        for (int numObjectiveFunctions = getNumObjectiveFunctions(); numObjectiveFunctions < rhsOffset; numObjectiveFunctions++) {
            if (Precision.compareTo(row[numObjectiveFunctions], 0.0d, this.epsilon) < 0) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public PointValuePair getSolution() {
        int indexOf = this.columnLabels.indexOf(NEGATIVE_VAR_COLUMN_LABEL);
        Integer basicRow = indexOf > 0 ? getBasicRow(indexOf) : null;
        double entry = basicRow == null ? 0.0d : getEntry(basicRow.intValue(), getRhsOffset());
        HashSet hashSet = new HashSet();
        int originalNumDecisionVariables = getOriginalNumDecisionVariables();
        double[] dArr = new double[originalNumDecisionVariables];
        for (int i = 0; i < originalNumDecisionVariables; i++) {
            List<String> list = this.columnLabels;
            int indexOf2 = list.indexOf("x" + i);
            if (indexOf2 < 0) {
                dArr[i] = 0.0d;
            } else {
                Integer basicRow2 = getBasicRow(indexOf2);
                if (basicRow2 != null && basicRow2.intValue() == 0) {
                    dArr[i] = 0.0d;
                } else if (hashSet.contains(basicRow2)) {
                    dArr[i] = 0.0d - (this.restrictToNonNegative ? 0.0d : entry);
                } else {
                    hashSet.add(basicRow2);
                    dArr[i] = (basicRow2 == null ? 0.0d : getEntry(basicRow2.intValue(), getRhsOffset())) - (this.restrictToNonNegative ? 0.0d : entry);
                }
            }
        }
        return new PointValuePair(dArr, this.f.value(dArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void performRowOperations(int i, int i2) {
        divideRow(i2, getEntry(i2, i));
        for (int i3 = 0; i3 < getHeight(); i3++) {
            if (i3 != i2) {
                double entry = getEntry(i3, i);
                if (entry != 0.0d) {
                    subtractRow(i3, i2, entry);
                }
            }
        }
        int basicVariable = getBasicVariable(i2);
        int[] iArr = this.basicVariables;
        iArr[basicVariable] = -1;
        iArr[i] = i2;
        this.basicRows[i2] = i;
    }

    protected void divideRow(int i, double d) {
        double[] row = getRow(i);
        for (int i2 = 0; i2 < getWidth(); i2++) {
            row[i2] = row[i2] / d;
        }
    }

    protected void subtractRow(int i, int i2, double d) {
        double[] row = getRow(i);
        double[] row2 = getRow(i2);
        for (int i3 = 0; i3 < getWidth(); i3++) {
            row[i3] = row[i3] - (row2[i3] * d);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getWidth() {
        return this.tableau.getColumnDimension();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getHeight() {
        return this.tableau.getRowDimension();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final double getEntry(int i, int i2) {
        return this.tableau.getEntry(i, i2);
    }

    protected final void setEntry(int i, int i2, double d) {
        this.tableau.setEntry(i, i2, d);
    }

    protected final int getSlackVariableOffset() {
        return getNumObjectiveFunctions() + this.numDecisionVariables;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getArtificialVariableOffset() {
        return getNumObjectiveFunctions() + this.numDecisionVariables + this.numSlackVariables;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getRhsOffset() {
        return getWidth() - 1;
    }

    protected final int getNumDecisionVariables() {
        return this.numDecisionVariables;
    }

    protected final int getOriginalNumDecisionVariables() {
        return this.f.getCoefficients().getDimension();
    }

    protected final int getNumSlackVariables() {
        return this.numSlackVariables;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getNumArtificialVariables() {
        return this.numArtificialVariables;
    }

    protected final double[] getRow(int i) {
        return this.tableau.getDataRef()[i];
    }

    protected final double[][] getData() {
        return this.tableau.getData();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SimplexTableau) {
            SimplexTableau simplexTableau = (SimplexTableau) obj;
            return this.restrictToNonNegative == simplexTableau.restrictToNonNegative && this.numDecisionVariables == simplexTableau.numDecisionVariables && this.numSlackVariables == simplexTableau.numSlackVariables && this.numArtificialVariables == simplexTableau.numArtificialVariables && this.epsilon == simplexTableau.epsilon && this.maxUlps == simplexTableau.maxUlps && this.f.equals(simplexTableau.f) && this.constraints.equals(simplexTableau.constraints) && this.tableau.equals(simplexTableau.tableau);
        }
        return false;
    }

    public int hashCode() {
        return (((((((Boolean.valueOf(this.restrictToNonNegative).hashCode() ^ this.numDecisionVariables) ^ this.numSlackVariables) ^ this.numArtificialVariables) ^ Double.valueOf(this.epsilon).hashCode()) ^ this.maxUlps) ^ this.f.hashCode()) ^ this.constraints.hashCode()) ^ this.tableau.hashCode();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        MatrixUtils.serializeRealMatrix(this.tableau, objectOutputStream);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        MatrixUtils.deserializeRealMatrix(this, "tableau", objectInputStream);
    }
}
