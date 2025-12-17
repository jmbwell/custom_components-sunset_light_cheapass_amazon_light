package org.apache.commons.math3.geometry.partitioning;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.math3.exception.MathIllegalStateException;
import org.apache.commons.math3.exception.MathInternalError;
import org.apache.commons.math3.exception.util.LocalizedFormats;
import org.apache.commons.math3.geometry.Point;
import org.apache.commons.math3.geometry.Space;
import org.apache.commons.math3.geometry.Vector;
import org.apache.commons.math3.geometry.partitioning.BSPTreeVisitor;
import org.apache.commons.math3.geometry.partitioning.SubHyperplane;
import org.apache.commons.math3.util.FastMath;
/* loaded from: classes5.dex */
public class BSPTree<S extends Space> {
    private Object attribute;
    private SubHyperplane<S> cut;
    private BSPTree<S> minus;
    private BSPTree<S> parent;
    private BSPTree<S> plus;

    /* loaded from: classes5.dex */
    public interface LeafMerger<S extends Space> {
        BSPTree<S> merge(BSPTree<S> bSPTree, BSPTree<S> bSPTree2, BSPTree<S> bSPTree3, boolean z, boolean z2);
    }

    /* loaded from: classes5.dex */
    public interface VanishingCutHandler<S extends Space> {
        BSPTree<S> fixNode(BSPTree<S> bSPTree);
    }

    public BSPTree() {
        this.cut = null;
        this.plus = null;
        this.minus = null;
        this.parent = null;
        this.attribute = null;
    }

    public BSPTree(Object obj) {
        this.cut = null;
        this.plus = null;
        this.minus = null;
        this.parent = null;
        this.attribute = obj;
    }

    public BSPTree(SubHyperplane<S> subHyperplane, BSPTree<S> bSPTree, BSPTree<S> bSPTree2, Object obj) {
        this.cut = subHyperplane;
        this.plus = bSPTree;
        this.minus = bSPTree2;
        this.parent = null;
        this.attribute = obj;
        bSPTree.parent = this;
        bSPTree2.parent = this;
    }

    public boolean insertCut(Hyperplane<S> hyperplane) {
        if (this.cut != null) {
            this.plus.parent = null;
            this.minus.parent = null;
        }
        SubHyperplane<S> fitToCell = fitToCell(hyperplane.wholeHyperplane());
        if (fitToCell == null || fitToCell.isEmpty()) {
            this.cut = null;
            this.plus = null;
            this.minus = null;
            return false;
        }
        this.cut = fitToCell;
        BSPTree<S> bSPTree = new BSPTree<>();
        this.plus = bSPTree;
        bSPTree.parent = this;
        BSPTree<S> bSPTree2 = new BSPTree<>();
        this.minus = bSPTree2;
        bSPTree2.parent = this;
        return true;
    }

    public BSPTree<S> copySelf() {
        SubHyperplane<S> subHyperplane = this.cut;
        if (subHyperplane == null) {
            return new BSPTree<>(this.attribute);
        }
        return new BSPTree<>(subHyperplane.copySelf(), this.plus.copySelf(), this.minus.copySelf(), this.attribute);
    }

    public SubHyperplane<S> getCut() {
        return this.cut;
    }

    public BSPTree<S> getPlus() {
        return this.plus;
    }

    public BSPTree<S> getMinus() {
        return this.minus;
    }

    public BSPTree<S> getParent() {
        return this.parent;
    }

    public void setAttribute(Object obj) {
        this.attribute = obj;
    }

    public Object getAttribute() {
        return this.attribute;
    }

    public void visit(BSPTreeVisitor<S> bSPTreeVisitor) {
        if (this.cut == null) {
            bSPTreeVisitor.visitLeafNode(this);
            return;
        }
        switch (AnonymousClass2.$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order[bSPTreeVisitor.visitOrder(this).ordinal()]) {
            case 1:
                this.plus.visit(bSPTreeVisitor);
                this.minus.visit(bSPTreeVisitor);
                bSPTreeVisitor.visitInternalNode(this);
                return;
            case 2:
                this.plus.visit(bSPTreeVisitor);
                bSPTreeVisitor.visitInternalNode(this);
                this.minus.visit(bSPTreeVisitor);
                return;
            case 3:
                this.minus.visit(bSPTreeVisitor);
                this.plus.visit(bSPTreeVisitor);
                bSPTreeVisitor.visitInternalNode(this);
                return;
            case 4:
                this.minus.visit(bSPTreeVisitor);
                bSPTreeVisitor.visitInternalNode(this);
                this.plus.visit(bSPTreeVisitor);
                return;
            case 5:
                bSPTreeVisitor.visitInternalNode(this);
                this.plus.visit(bSPTreeVisitor);
                this.minus.visit(bSPTreeVisitor);
                return;
            case 6:
                bSPTreeVisitor.visitInternalNode(this);
                this.minus.visit(bSPTreeVisitor);
                this.plus.visit(bSPTreeVisitor);
                return;
            default:
                throw new MathInternalError();
        }
    }

    private SubHyperplane<S> fitToCell(SubHyperplane<S> subHyperplane) {
        BSPTree<S> bSPTree = this;
        while (true) {
            BSPTree<S> bSPTree2 = bSPTree.parent;
            if (bSPTree2 == null || subHyperplane == null) {
                break;
            }
            if (bSPTree == bSPTree2.plus) {
                subHyperplane = subHyperplane.split(bSPTree2.cut.getHyperplane()).getPlus();
            } else {
                subHyperplane = subHyperplane.split(bSPTree2.cut.getHyperplane()).getMinus();
            }
            bSPTree = bSPTree.parent;
        }
        return subHyperplane;
    }

    @Deprecated
    public BSPTree<S> getCell(Vector<S> vector) {
        return getCell(vector, 1.0E-10d);
    }

    public BSPTree<S> getCell(Point<S> point, double d) {
        SubHyperplane<S> subHyperplane = this.cut;
        if (subHyperplane == null) {
            return this;
        }
        double offset = subHyperplane.getHyperplane().getOffset(point);
        if (FastMath.abs(offset) < d) {
            return this;
        }
        if (offset <= 0.0d) {
            return this.minus.getCell(point, d);
        }
        return this.plus.getCell(point, d);
    }

    public List<BSPTree<S>> getCloseCuts(Point<S> point, double d) {
        ArrayList arrayList = new ArrayList();
        recurseCloseCuts(point, d, arrayList);
        return arrayList;
    }

    private void recurseCloseCuts(Point<S> point, double d, List<BSPTree<S>> list) {
        SubHyperplane<S> subHyperplane = this.cut;
        if (subHyperplane != null) {
            double offset = subHyperplane.getHyperplane().getOffset(point);
            if (offset < (-d)) {
                this.minus.recurseCloseCuts(point, d, list);
            } else if (offset > d) {
                this.plus.recurseCloseCuts(point, d, list);
            } else {
                list.add(this);
                this.minus.recurseCloseCuts(point, d, list);
                this.plus.recurseCloseCuts(point, d, list);
            }
        }
    }

    private void condense() {
        if (this.cut != null) {
            BSPTree<S> bSPTree = this.plus;
            if (bSPTree.cut == null) {
                BSPTree<S> bSPTree2 = this.minus;
                if (bSPTree2.cut == null) {
                    Object obj = bSPTree.attribute;
                    if (!(obj == null && bSPTree2.attribute == null) && (obj == null || !obj.equals(bSPTree2.attribute))) {
                        return;
                    }
                    Object obj2 = this.plus.attribute;
                    if (obj2 == null) {
                        obj2 = this.minus.attribute;
                    }
                    this.attribute = obj2;
                    this.cut = null;
                    this.plus = null;
                    this.minus = null;
                }
            }
        }
    }

    public BSPTree<S> merge(BSPTree<S> bSPTree, LeafMerger<S> leafMerger) {
        return merge(bSPTree, leafMerger, null, false);
    }

    private BSPTree<S> merge(BSPTree<S> bSPTree, LeafMerger<S> leafMerger, BSPTree<S> bSPTree2, boolean z) {
        SubHyperplane<S> subHyperplane = this.cut;
        if (subHyperplane == null) {
            return leafMerger.merge(this, bSPTree, bSPTree2, z, true);
        }
        if (bSPTree.cut == null) {
            return leafMerger.merge(bSPTree, this, bSPTree2, z, false);
        }
        BSPTree<S> split = bSPTree.split(subHyperplane);
        if (bSPTree2 != null) {
            split.parent = bSPTree2;
            if (z) {
                bSPTree2.plus = split;
            } else {
                bSPTree2.minus = split;
            }
        }
        this.plus.merge(split.plus, leafMerger, split, true);
        this.minus.merge(split.minus, leafMerger, split, false);
        split.condense();
        SubHyperplane<S> subHyperplane2 = split.cut;
        if (subHyperplane2 != null) {
            split.cut = split.fitToCell(subHyperplane2.getHyperplane().wholeHyperplane());
        }
        return split;
    }

    public BSPTree<S> split(SubHyperplane<S> subHyperplane) {
        SubHyperplane<S> subHyperplane2 = this.cut;
        if (subHyperplane2 == null) {
            return new BSPTree<>(subHyperplane, copySelf(), new BSPTree(this.attribute), null);
        }
        Hyperplane<S> hyperplane = subHyperplane2.getHyperplane();
        Hyperplane<S> hyperplane2 = subHyperplane.getHyperplane();
        int i = AnonymousClass2.$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side[subHyperplane.side(hyperplane).ordinal()];
        if (i == 1) {
            BSPTree<S> split = this.plus.split(subHyperplane);
            if (this.cut.side(hyperplane2) == Side.PLUS) {
                BSPTree<S> bSPTree = new BSPTree<>(this.cut.copySelf(), split.plus, this.minus.copySelf(), this.attribute);
                split.plus = bSPTree;
                bSPTree.condense();
                split.plus.parent = split;
            } else {
                BSPTree<S> bSPTree2 = new BSPTree<>(this.cut.copySelf(), split.minus, this.minus.copySelf(), this.attribute);
                split.minus = bSPTree2;
                bSPTree2.condense();
                split.minus.parent = split;
            }
            return split;
        } else if (i == 2) {
            BSPTree<S> split2 = this.minus.split(subHyperplane);
            if (this.cut.side(hyperplane2) == Side.PLUS) {
                BSPTree<S> bSPTree3 = new BSPTree<>(this.cut.copySelf(), this.plus.copySelf(), split2.plus, this.attribute);
                split2.plus = bSPTree3;
                bSPTree3.condense();
                split2.plus.parent = split2;
            } else {
                BSPTree<S> bSPTree4 = new BSPTree<>(this.cut.copySelf(), this.plus.copySelf(), split2.minus, this.attribute);
                split2.minus = bSPTree4;
                bSPTree4.condense();
                split2.minus.parent = split2;
            }
            return split2;
        } else if (i != 3) {
            return hyperplane.sameOrientationAs(hyperplane2) ? new BSPTree<>(subHyperplane, this.plus.copySelf(), this.minus.copySelf(), this.attribute) : new BSPTree<>(subHyperplane, this.minus.copySelf(), this.plus.copySelf(), this.attribute);
        } else {
            SubHyperplane.SplitSubHyperplane<S> split3 = this.cut.split(hyperplane2);
            SubHyperplane.SplitSubHyperplane<S> split4 = subHyperplane.split(hyperplane);
            BSPTree<S> bSPTree5 = new BSPTree<>(subHyperplane, this.plus.split(split4.getPlus()), this.minus.split(split4.getMinus()), null);
            bSPTree5.plus.cut = split3.getPlus();
            bSPTree5.minus.cut = split3.getMinus();
            BSPTree<S> bSPTree6 = bSPTree5.plus;
            BSPTree<S> bSPTree7 = bSPTree6.minus;
            BSPTree<S> bSPTree8 = bSPTree5.minus.plus;
            bSPTree6.minus = bSPTree8;
            bSPTree8.parent = bSPTree6;
            BSPTree<S> bSPTree9 = bSPTree5.minus;
            bSPTree9.plus = bSPTree7;
            bSPTree7.parent = bSPTree9;
            bSPTree5.plus.condense();
            bSPTree5.minus.condense();
            return bSPTree5;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.math3.geometry.partitioning.BSPTree$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass2 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order;
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
            int[] iArr2 = new int[BSPTreeVisitor.Order.values().length];
            $SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order = iArr2;
            try {
                iArr2[BSPTreeVisitor.Order.PLUS_MINUS_SUB.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order[BSPTreeVisitor.Order.PLUS_SUB_MINUS.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order[BSPTreeVisitor.Order.MINUS_PLUS_SUB.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order[BSPTreeVisitor.Order.MINUS_SUB_PLUS.ordinal()] = 4;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order[BSPTreeVisitor.Order.SUB_PLUS_MINUS.ordinal()] = 5;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order[BSPTreeVisitor.Order.SUB_MINUS_PLUS.ordinal()] = 6;
            } catch (NoSuchFieldError unused9) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public void insertInTree(BSPTree<S> bSPTree, boolean z) {
        insertInTree(bSPTree, z, new VanishingCutHandler<S>() { // from class: org.apache.commons.math3.geometry.partitioning.BSPTree.1
            @Override // org.apache.commons.math3.geometry.partitioning.BSPTree.VanishingCutHandler
            public BSPTree<S> fixNode(BSPTree<S> bSPTree2) {
                throw new MathIllegalStateException(LocalizedFormats.NULL_NOT_ALLOWED, new Object[0]);
            }
        });
    }

    public void insertInTree(BSPTree<S> bSPTree, boolean z, VanishingCutHandler<S> vanishingCutHandler) {
        this.parent = bSPTree;
        if (bSPTree != null) {
            if (z) {
                bSPTree.plus = this;
            } else {
                bSPTree.minus = this;
            }
        }
        if (this.cut != null) {
            BSPTree<S> bSPTree2 = this;
            while (true) {
                BSPTree<S> bSPTree3 = bSPTree2.parent;
                if (bSPTree3 == null) {
                    break;
                }
                Hyperplane<S> hyperplane = bSPTree3.cut.getHyperplane();
                if (bSPTree2 == bSPTree2.parent.plus) {
                    this.cut = this.cut.split(hyperplane).getPlus();
                    this.plus.chopOffMinus(hyperplane, vanishingCutHandler);
                    this.minus.chopOffMinus(hyperplane, vanishingCutHandler);
                } else {
                    this.cut = this.cut.split(hyperplane).getMinus();
                    this.plus.chopOffPlus(hyperplane, vanishingCutHandler);
                    this.minus.chopOffPlus(hyperplane, vanishingCutHandler);
                }
                if (this.cut == null) {
                    BSPTree<S> fixNode = vanishingCutHandler.fixNode(this);
                    SubHyperplane<S> subHyperplane = fixNode.cut;
                    this.cut = subHyperplane;
                    this.plus = fixNode.plus;
                    this.minus = fixNode.minus;
                    this.attribute = fixNode.attribute;
                    if (subHyperplane == null) {
                        break;
                    }
                }
                bSPTree2 = bSPTree2.parent;
            }
            condense();
        }
    }

    public BSPTree<S> pruneAroundConvexCell(Object obj, Object obj2, Object obj3) {
        BSPTree<S> bSPTree;
        BSPTree<S> bSPTree2 = new BSPTree<>(obj);
        BSPTree<S> bSPTree3 = this;
        while (true) {
            BSPTree<S> bSPTree4 = bSPTree3.parent;
            if (bSPTree4 == null) {
                return bSPTree2;
            }
            SubHyperplane<S> copySelf = bSPTree4.cut.copySelf();
            BSPTree bSPTree5 = new BSPTree(obj2);
            if (bSPTree3 == bSPTree3.parent.plus) {
                bSPTree = new BSPTree<>(copySelf, bSPTree2, bSPTree5, obj3);
            } else {
                bSPTree = new BSPTree<>(copySelf, bSPTree5, bSPTree2, obj3);
            }
            bSPTree2 = bSPTree;
            bSPTree3 = bSPTree3.parent;
        }
    }

    private void chopOffMinus(Hyperplane<S> hyperplane, VanishingCutHandler<S> vanishingCutHandler) {
        SubHyperplane<S> subHyperplane = this.cut;
        if (subHyperplane != null) {
            this.cut = subHyperplane.split(hyperplane).getPlus();
            this.plus.chopOffMinus(hyperplane, vanishingCutHandler);
            this.minus.chopOffMinus(hyperplane, vanishingCutHandler);
            if (this.cut == null) {
                BSPTree<S> fixNode = vanishingCutHandler.fixNode(this);
                this.cut = fixNode.cut;
                this.plus = fixNode.plus;
                this.minus = fixNode.minus;
                this.attribute = fixNode.attribute;
            }
        }
    }

    private void chopOffPlus(Hyperplane<S> hyperplane, VanishingCutHandler<S> vanishingCutHandler) {
        SubHyperplane<S> subHyperplane = this.cut;
        if (subHyperplane != null) {
            this.cut = subHyperplane.split(hyperplane).getMinus();
            this.plus.chopOffPlus(hyperplane, vanishingCutHandler);
            this.minus.chopOffPlus(hyperplane, vanishingCutHandler);
            if (this.cut == null) {
                BSPTree<S> fixNode = vanishingCutHandler.fixNode(this);
                this.cut = fixNode.cut;
                this.plus = fixNode.plus;
                this.minus = fixNode.minus;
                this.attribute = fixNode.attribute;
            }
        }
    }
}
