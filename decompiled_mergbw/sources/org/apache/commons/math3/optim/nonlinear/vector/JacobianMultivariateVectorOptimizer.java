package org.apache.commons.math3.optim.nonlinear.vector;

import org.apache.commons.math3.analysis.MultivariateMatrixFunction;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.TooManyEvaluationsException;
import org.apache.commons.math3.optim.ConvergenceChecker;
import org.apache.commons.math3.optim.OptimizationData;
import org.apache.commons.math3.optim.PointVectorValuePair;
@Deprecated
/* loaded from: classes5.dex */
public abstract class JacobianMultivariateVectorOptimizer extends MultivariateVectorOptimizer {
    private MultivariateMatrixFunction jacobian;

    /* JADX INFO: Access modifiers changed from: protected */
    public JacobianMultivariateVectorOptimizer(ConvergenceChecker<PointVectorValuePair> convergenceChecker) {
        super(convergenceChecker);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public double[][] computeJacobian(double[] dArr) {
        return this.jacobian.value(dArr);
    }

    @Override // org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public PointVectorValuePair optimize(OptimizationData... optimizationDataArr) throws TooManyEvaluationsException, DimensionMismatchException {
        return super.optimize(optimizationDataArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.commons.math3.optim.nonlinear.vector.MultivariateVectorOptimizer, org.apache.commons.math3.optim.BaseMultivariateOptimizer, org.apache.commons.math3.optim.BaseOptimizer
    public void parseOptimizationData(OptimizationData... optimizationDataArr) {
        super.parseOptimizationData(optimizationDataArr);
        for (OptimizationData optimizationData : optimizationDataArr) {
            if (optimizationData instanceof ModelFunctionJacobian) {
                this.jacobian = ((ModelFunctionJacobian) optimizationData).getModelFunctionJacobian();
                return;
            }
        }
    }
}
