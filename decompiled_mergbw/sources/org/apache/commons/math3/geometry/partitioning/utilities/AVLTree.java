package org.apache.commons.math3.geometry.partitioning.utilities;

import java.lang.Comparable;
@Deprecated
/* loaded from: classes5.dex */
public class AVLTree<T extends Comparable<T>> {

    /* renamed from: top  reason: collision with root package name */
    private AVLTree<T>.Node f72top = null;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes5.dex */
    public enum Skew {
        LEFT_HIGH,
        RIGHT_HIGH,
        BALANCED
    }

    public void insert(T t) {
        if (t != null) {
            AVLTree<T>.Node node = this.f72top;
            if (node == null) {
                this.f72top = new Node(t, null);
            } else {
                node.insert(t);
            }
        }
    }

    public boolean delete(T t) {
        if (t != null) {
            for (AVLTree<T>.Node notSmaller = getNotSmaller(t); notSmaller != null; notSmaller = notSmaller.getNext()) {
                if (((Node) notSmaller).element == t) {
                    notSmaller.delete();
                    return true;
                } else if (((Node) notSmaller).element.compareTo(t) > 0) {
                    return false;
                }
            }
        }
        return false;
    }

    public boolean isEmpty() {
        return this.f72top == null;
    }

    public int size() {
        AVLTree<T>.Node node = this.f72top;
        if (node == null) {
            return 0;
        }
        return node.size();
    }

    public AVLTree<T>.Node getSmallest() {
        AVLTree<T>.Node node = this.f72top;
        if (node == null) {
            return null;
        }
        return node.getSmallest();
    }

    public AVLTree<T>.Node getLargest() {
        AVLTree<T>.Node node = this.f72top;
        if (node == null) {
            return null;
        }
        return node.getLargest();
    }

    public AVLTree<T>.Node getNotSmaller(T t) {
        AVLTree<T>.Node node = this.f72top;
        AVLTree<T>.Node node2 = null;
        while (node != null) {
            if (((Node) node).element.compareTo(t) < 0) {
                if (((Node) node).right == null) {
                    return node2;
                }
                node = ((Node) node).right;
            } else if (((Node) node).left == null) {
                return node;
            } else {
                node2 = node;
                node = ((Node) node).left;
            }
        }
        return null;
    }

    public AVLTree<T>.Node getNotLarger(T t) {
        AVLTree<T>.Node node = this.f72top;
        AVLTree<T>.Node node2 = null;
        while (node != null) {
            if (((Node) node).element.compareTo(t) > 0) {
                if (((Node) node).left == null) {
                    return node2;
                }
                node = ((Node) node).left;
            } else if (((Node) node).right == null) {
                return node;
            } else {
                node2 = node;
                node = ((Node) node).right;
            }
        }
        return null;
    }

    /* loaded from: classes5.dex */
    public class Node {
        private T element;
        private AVLTree<T>.Node parent;
        private AVLTree<T>.Node left = null;
        private AVLTree<T>.Node right = null;
        private Skew skew = Skew.BALANCED;

        Node(T t, AVLTree<T>.Node node) {
            this.element = t;
            this.parent = node;
        }

        public T getElement() {
            return this.element;
        }

        int size() {
            AVLTree<T>.Node node = this.left;
            int size = (node == null ? 0 : node.size()) + 1;
            AVLTree<T>.Node node2 = this.right;
            return size + (node2 != null ? node2.size() : 0);
        }

        AVLTree<T>.Node getSmallest() {
            AVLTree<T>.Node node = this;
            while (true) {
                AVLTree<T>.Node node2 = node.left;
                if (node2 == null) {
                    return node;
                }
                node = node2;
            }
        }

        AVLTree<T>.Node getLargest() {
            AVLTree<T>.Node node = this;
            while (true) {
                AVLTree<T>.Node node2 = node.right;
                if (node2 == null) {
                    return node;
                }
                node = node2;
            }
        }

        public AVLTree<T>.Node getPrevious() {
            AVLTree<T>.Node largest;
            AVLTree<T>.Node node = this.left;
            if (node != null && (largest = node.getLargest()) != null) {
                return largest;
            }
            AVLTree<T>.Node node2 = this;
            while (true) {
                AVLTree<T>.Node node3 = node2.parent;
                if (node3 == null) {
                    return null;
                }
                if (node2 != node3.left) {
                    return node3;
                }
                node2 = node3;
            }
        }

        public AVLTree<T>.Node getNext() {
            AVLTree<T>.Node smallest;
            AVLTree<T>.Node node = this.right;
            if (node != null && (smallest = node.getSmallest()) != null) {
                return smallest;
            }
            AVLTree<T>.Node node2 = this;
            while (true) {
                AVLTree<T>.Node node3 = node2.parent;
                if (node3 == null) {
                    return null;
                }
                if (node2 != node3.right) {
                    return node3;
                }
                node2 = node3;
            }
        }

        boolean insert(T t) {
            if (t.compareTo(this.element) < 0) {
                AVLTree<T>.Node node = this.left;
                if (node == null) {
                    this.left = new Node(t, this);
                    return rebalanceLeftGrown();
                } else if (node.insert(t)) {
                    return rebalanceLeftGrown();
                } else {
                    return false;
                }
            }
            AVLTree<T>.Node node2 = this.right;
            if (node2 == null) {
                this.right = new Node(t, this);
                return rebalanceRightGrown();
            } else if (node2.insert(t)) {
                return rebalanceRightGrown();
            } else {
                return false;
            }
        }

        public void delete() {
            boolean z;
            AVLTree<T>.Node node;
            AVLTree<T>.Node node2;
            AVLTree<T>.Node node3 = this.parent;
            if (node3 == null && this.left == null && this.right == null) {
                this.element = null;
                AVLTree.this.f72top = null;
                return;
            }
            AVLTree<T>.Node node4 = this.left;
            if (node4 == null && this.right == null) {
                this.element = null;
                node = null;
                z = this == node3.left;
                node2 = this;
            } else {
                AVLTree<T>.Node largest = node4 != null ? node4.getLargest() : this.right.getSmallest();
                this.element = (T) largest.element;
                z = largest == largest.parent.left;
                node = largest.left;
                node2 = largest;
                if (node == null) {
                    node = largest.right;
                    node2 = largest;
                }
            }
            AVLTree<T>.Node node5 = node2.parent;
            if (z) {
                node5.left = node;
            } else {
                node5.right = node;
            }
            if (node != null) {
                node.parent = node5;
            }
            while (true) {
                if (z) {
                    if (!node5.rebalanceLeftShrunk()) {
                        return;
                    }
                } else if (!node5.rebalanceRightShrunk()) {
                    return;
                }
                AVLTree<T>.Node node6 = node5.parent;
                if (node6 == null) {
                    return;
                }
                z = node5 == node6.left;
                node5 = node6;
            }
        }

        private boolean rebalanceLeftGrown() {
            int i = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew[this.skew.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    this.skew = Skew.BALANCED;
                    return false;
                }
                this.skew = Skew.LEFT_HIGH;
                return true;
            }
            if (this.left.skew == Skew.LEFT_HIGH) {
                rotateCW();
                this.skew = Skew.BALANCED;
                this.right.skew = Skew.BALANCED;
            } else {
                AVLTree<T>.Node node = this.left;
                Skew skew = node.right.skew;
                node.rotateCCW();
                rotateCW();
                int i2 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew[skew.ordinal()];
                if (i2 == 1) {
                    this.left.skew = Skew.BALANCED;
                    this.right.skew = Skew.RIGHT_HIGH;
                } else if (i2 == 2) {
                    this.left.skew = Skew.LEFT_HIGH;
                    this.right.skew = Skew.BALANCED;
                } else {
                    this.left.skew = Skew.BALANCED;
                    this.right.skew = Skew.BALANCED;
                }
                this.skew = Skew.BALANCED;
            }
            return false;
        }

        private boolean rebalanceRightGrown() {
            int i = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew[this.skew.ordinal()];
            if (i == 1) {
                this.skew = Skew.BALANCED;
                return false;
            } else if (i == 2) {
                if (this.right.skew == Skew.RIGHT_HIGH) {
                    rotateCCW();
                    this.skew = Skew.BALANCED;
                    this.left.skew = Skew.BALANCED;
                } else {
                    AVLTree<T>.Node node = this.right;
                    Skew skew = node.left.skew;
                    node.rotateCW();
                    rotateCCW();
                    int i2 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew[skew.ordinal()];
                    if (i2 == 1) {
                        this.left.skew = Skew.BALANCED;
                        this.right.skew = Skew.RIGHT_HIGH;
                    } else if (i2 == 2) {
                        this.left.skew = Skew.LEFT_HIGH;
                        this.right.skew = Skew.BALANCED;
                    } else {
                        this.left.skew = Skew.BALANCED;
                        this.right.skew = Skew.BALANCED;
                    }
                    this.skew = Skew.BALANCED;
                }
                return false;
            } else {
                this.skew = Skew.RIGHT_HIGH;
                return true;
            }
        }

        private boolean rebalanceLeftShrunk() {
            int i = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew[this.skew.ordinal()];
            if (i == 1) {
                this.skew = Skew.BALANCED;
                return true;
            } else if (i == 2) {
                if (this.right.skew == Skew.RIGHT_HIGH) {
                    rotateCCW();
                    this.skew = Skew.BALANCED;
                    this.left.skew = Skew.BALANCED;
                    return true;
                } else if (this.right.skew == Skew.BALANCED) {
                    rotateCCW();
                    this.skew = Skew.LEFT_HIGH;
                    this.left.skew = Skew.RIGHT_HIGH;
                    return false;
                } else {
                    AVLTree<T>.Node node = this.right;
                    Skew skew = node.left.skew;
                    node.rotateCW();
                    rotateCCW();
                    int i2 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew[skew.ordinal()];
                    if (i2 == 1) {
                        this.left.skew = Skew.BALANCED;
                        this.right.skew = Skew.RIGHT_HIGH;
                    } else if (i2 == 2) {
                        this.left.skew = Skew.LEFT_HIGH;
                        this.right.skew = Skew.BALANCED;
                    } else {
                        this.left.skew = Skew.BALANCED;
                        this.right.skew = Skew.BALANCED;
                    }
                    this.skew = Skew.BALANCED;
                    return true;
                }
            } else {
                this.skew = Skew.RIGHT_HIGH;
                return false;
            }
        }

        private boolean rebalanceRightShrunk() {
            int i = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew[this.skew.ordinal()];
            if (i != 1) {
                if (i == 2) {
                    this.skew = Skew.BALANCED;
                    return true;
                }
                this.skew = Skew.LEFT_HIGH;
                return false;
            } else if (this.left.skew == Skew.LEFT_HIGH) {
                rotateCW();
                this.skew = Skew.BALANCED;
                this.right.skew = Skew.BALANCED;
                return true;
            } else if (this.left.skew == Skew.BALANCED) {
                rotateCW();
                this.skew = Skew.RIGHT_HIGH;
                this.right.skew = Skew.LEFT_HIGH;
                return false;
            } else {
                AVLTree<T>.Node node = this.left;
                Skew skew = node.right.skew;
                node.rotateCCW();
                rotateCW();
                int i2 = AnonymousClass1.$SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew[skew.ordinal()];
                if (i2 == 1) {
                    this.left.skew = Skew.BALANCED;
                    this.right.skew = Skew.RIGHT_HIGH;
                } else if (i2 == 2) {
                    this.left.skew = Skew.LEFT_HIGH;
                    this.right.skew = Skew.BALANCED;
                } else {
                    this.left.skew = Skew.BALANCED;
                    this.right.skew = Skew.BALANCED;
                }
                this.skew = Skew.BALANCED;
                return true;
            }
        }

        private void rotateCW() {
            T t = this.element;
            AVLTree<T>.Node node = this.left;
            this.element = (T) node.element;
            node.element = t;
            this.left = node.left;
            node.left = node.right;
            node.right = this.right;
            this.right = node;
            AVLTree<T>.Node node2 = this.left;
            if (node2 != null) {
                node2.parent = this;
            }
            AVLTree<T>.Node node3 = node.right;
            if (node3 != null) {
                node3.parent = node;
            }
        }

        private void rotateCCW() {
            T t = this.element;
            AVLTree<T>.Node node = this.right;
            this.element = (T) node.element;
            node.element = t;
            this.right = node.right;
            node.right = node.left;
            node.left = this.left;
            this.left = node;
            AVLTree<T>.Node node2 = this.right;
            if (node2 != null) {
                node2.parent = this;
            }
            AVLTree<T>.Node node3 = node.left;
            if (node3 != null) {
                node3.parent = node;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.math3.geometry.partitioning.utilities.AVLTree$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew;

        static {
            int[] iArr = new int[Skew.values().length];
            $SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew = iArr;
            try {
                iArr[Skew.LEFT_HIGH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$math3$geometry$partitioning$utilities$AVLTree$Skew[Skew.RIGHT_HIGH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }
}
