package org.apache.commons.math3.genetics;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
/* loaded from: classes5.dex */
public abstract class AbstractListChromosome<T> extends Chromosome {
    private final List<T> representation;

    protected abstract void checkValidity(List<T> list) throws InvalidRepresentationException;

    public abstract AbstractListChromosome<T> newFixedLengthChromosome(List<T> list);

    public AbstractListChromosome(List<T> list) throws InvalidRepresentationException {
        this(list, true);
    }

    public AbstractListChromosome(T[] tArr) throws InvalidRepresentationException {
        this(Arrays.asList(tArr));
    }

    public AbstractListChromosome(List<T> list, boolean z) {
        checkValidity(list);
        this.representation = Collections.unmodifiableList(z ? new ArrayList(list) : list);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<T> getRepresentation() {
        return this.representation;
    }

    public int getLength() {
        return getRepresentation().size();
    }

    public String toString() {
        return String.format("(f=%s %s)", Double.valueOf(getFitness()), getRepresentation());
    }
}
