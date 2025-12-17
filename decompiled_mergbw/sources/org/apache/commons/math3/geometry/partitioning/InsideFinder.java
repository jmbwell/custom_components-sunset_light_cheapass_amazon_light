package org.apache.commons.math3.geometry.partitioning;

import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
/* loaded from: classes5.dex */
class InsideFinder<S extends Space> {
    private final Region<S> region;
    private boolean plusFound = false;
    private boolean minusFound = false;

    public InsideFinder(Region<S> region) {
        this.region = region;
    }

    public void recurseSides(BSPTree<S> bSPTree, SubHyperplane<S> subHyperplane) {
        if (bSPTree.getCut() == null) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                this.plusFound = true;
                this.minusFound = true;
                return;
            }
            return;
        }
        Hyperplane<S> hyperplane = bSPTree.getCut().getHyperplane();
        int i = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[subHyperplane.side(hyperplane).ordinal()];
        if (i == 1) {
            if (bSPTree.getCut().side(subHyperplane.getHyperplane()) == Side.PLUS) {
                if (!this.region.isEmpty(bSPTree.getMinus())) {
                    this.plusFound = true;
                }
            } else if (!this.region.isEmpty(bSPTree.getMinus())) {
                this.minusFound = true;
            }
            if (this.plusFound && this.minusFound) {
                return;
            }
            recurseSides(bSPTree.getPlus(), subHyperplane);
        } else if (i == 2) {
            if (bSPTree.getCut().side(subHyperplane.getHyperplane()) == Side.PLUS) {
                if (!this.region.isEmpty(bSPTree.getPlus())) {
                    this.plusFound = true;
                }
            } else if (!this.region.isEmpty(bSPTree.getPlus())) {
                this.minusFound = true;
            }
            if (this.plusFound && this.minusFound) {
                return;
            }
            recurseSides(bSPTree.getMinus(), subHyperplane);
        } else if (i == 3) {
            SubHyperplane.SplitSubHyperplane<S> split = subHyperplane.split(hyperplane);
            recurseSides(bSPTree.getPlus(), split.getPlus());
            if (this.plusFound && this.minusFound) {
                return;
            }
            recurseSides(bSPTree.getMinus(), split.getMinus());
        } else if (bSPTree.getCut().getHyperplane().sameOrientationAs(subHyperplane.getHyperplane())) {
            if (bSPTree.getPlus().getCut() != null || ((Boolean) bSPTree.getPlus().getAttribute()).booleanValue()) {
                this.plusFound = true;
            }
            if (bSPTree.getMinus().getCut() != null || ((Boolean) bSPTree.getMinus().getAttribute()).booleanValue()) {
                this.minusFound = true;
            }
        } else {
            if (bSPTree.getPlus().getCut() != null || ((Boolean) bSPTree.getPlus().getAttribute()).booleanValue()) {
                this.minusFound = true;
            }
            if (bSPTree.getMinus().getCut() != null || ((Boolean) bSPTree.getMinus().getAttribute()).booleanValue()) {
                this.plusFound = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.math3.geometry.partitioning.InsideFinder$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side;

        static {
            int[] iArr = new int[Side.values().length];
            $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side = iArr;
            try {
                iArr[Side.PLUS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[Side.MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[Side.BOTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public boolean plusFound() {
        return this.plusFound;
    }

    public boolean minusFound() {
        return this.minusFound;
    }
}
