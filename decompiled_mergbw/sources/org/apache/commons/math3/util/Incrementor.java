package org.apache.commons.math3.util;

import org.apache.commons.math3.exception.MaxCountExceededException;
import org.apache.commons.math3.exception.NullArgumentException;
/* loaded from: classes5.dex */
public class Incrementor {
    private int count;
    private final MaxCountExceededCallback maxCountCallback;
    private int maximalCount;

    /* loaded from: classes5.dex */
    public interface MaxCountExceededCallback {
        void trigger(int i) throws MaxCountExceededException;
    }

    public Incrementor() {
        this(0);
    }

    public Incrementor(int i) {
        this(i, new MaxCountExceededCallback() { // from class: org.apache.commons.math3.util.Incrementor.1
            @Override // org.apache.commons.math3.util.Incrementor.MaxCountExceededCallback
            public void trigger(int i2) throws MaxCountExceededException {
                throw new MaxCountExceededException(Integer.valueOf(i2));
            }
        });
    }

    public Incrementor(int i, MaxCountExceededCallback maxCountExceededCallback) throws NullArgumentException {
        this.count = 0;
        if (maxCountExceededCallback == null) {
            throw new NullArgumentException();
        }
        this.maximalCount = i;
        this.maxCountCallback = maxCountExceededCallback;
    }

    public void setMaximalCount(int i) {
        this.maximalCount = i;
    }

    public int getMaximalCount() {
        return this.maximalCount;
    }

    public int getCount() {
        return this.count;
    }

    public boolean canIncrement() {
        return this.count < this.maximalCount;
    }

    public void incrementCount(int i) throws MaxCountExceededException {
        for (int i2 = 0; i2 < i; i2++) {
            incrementCount();
        }
    }

    public void incrementCount() throws MaxCountExceededException {
        int i = this.count + 1;
        this.count = i;
        int i2 = this.maximalCount;
        if (i > i2) {
            this.maxCountCallback.trigger(i2);
        }
    }

    public void resetCount() {
        this.count = 0;
    }
}
