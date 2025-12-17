package org.apache.commons.math3.geometry.partitioning;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
/* loaded from: classes5.dex */
class Characterization<S extends Space> {
    private SubHyperplane<S> outsideTouching = null;
    private SubHyperplane<S> insideTouching = null;
    private final NodesSet<S> outsideSplitters = new NodesSet<>();
    private final NodesSet<S> insideSplitters = new NodesSet<>();

    public Characterization(BSPTree<S> bSPTree, SubHyperplane<S> subHyperplane) {
        characterize(bSPTree, subHyperplane, new ArrayList());
    }

    private void characterize(BSPTree<S> bSPTree, SubHyperplane<S> subHyperplane, List<BSPTree<S>> list) {
        if (bSPTree.getCut() == null) {
            if (((Boolean) bSPTree.getAttribute()).booleanValue()) {
                addInsideTouching(subHyperplane, list);
                return;
            } else {
                addOutsideTouching(subHyperplane, list);
                return;
            }
        }
        Hyperplane<S> hyperplane = bSPTree.getCut().getHyperplane();
        int i = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[subHyperplane.side(hyperplane).ordinal()];
        if (i == 1) {
            characterize(bSPTree.getPlus(), subHyperplane, list);
        } else if (i == 2) {
            characterize(bSPTree.getMinus(), subHyperplane, list);
        } else if (i == 3) {
            SubHyperplane.SplitSubHyperplane<S> split = subHyperplane.split(hyperplane);
            list.add(bSPTree);
            characterize(bSPTree.getPlus(), split.getPlus(), list);
            characterize(bSPTree.getMinus(), split.getMinus(), list);
            list.remove(list.size() - 1);
        } else {
            throw new MathInternalError();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.math3.geometry.partitioning.Characterization$1  reason: invalid class name */
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

    private void addOutsideTouching(SubHyperplane<S> subHyperplane, List<BSPTree<S>> list) {
        SubHyperplane<S> subHyperplane2 = this.outsideTouching;
        if (subHyperplane2 == null) {
            this.outsideTouching = subHyperplane;
        } else {
            this.outsideTouching = subHyperplane2.reunite(subHyperplane);
        }
        this.outsideSplitters.addAll(list);
    }

    private void addInsideTouching(SubHyperplane<S> subHyperplane, List<BSPTree<S>> list) {
        SubHyperplane<S> subHyperplane2 = this.insideTouching;
        if (subHyperplane2 == null) {
            this.insideTouching = subHyperplane;
        } else {
            this.insideTouching = subHyperplane2.reunite(subHyperplane);
        }
        this.insideSplitters.addAll(list);
    }

    public boolean touchOutside() {
        SubHyperplane<S> subHyperplane = this.outsideTouching;
        return (subHyperplane == null || subHyperplane.isEmpty()) ? false : true;
    }

    public SubHyperplane<S> outsideTouching() {
        return this.outsideTouching;
    }

    public NodesSet<S> getOutsideSplitters() {
        return this.outsideSplitters;
    }

    public boolean touchInside() {
        SubHyperplane<S> subHyperplane = this.insideTouching;
        return (subHyperplane == null || subHyperplane.isEmpty()) ? false : true;
    }

    public SubHyperplane<S> insideTouching() {
        return this.insideTouching;
    }

    public NodesSet<S> getInsideSplitters() {
        return this.insideSplitters;
    }
}
