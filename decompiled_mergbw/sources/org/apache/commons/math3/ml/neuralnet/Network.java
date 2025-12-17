package org.apache.commons.math3.ml.neuralnet;

import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.commons.math3.exception.DimensionMismatchException;
import org.apache.commons.math3.exception.MathIllegalStateException;
/* loaded from: classes5.dex */
public class Network implements Iterable<Neuron>, Serializable {
    private static final long serialVersionUID = 20130207;
    private final int featureSize;
    private final AtomicLong nextId;
    private final ConcurrentHashMap<Long, Neuron> neuronMap = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<Long, Set<Long>> linkMap = new ConcurrentHashMap<>();

    /* loaded from: classes5.dex */
    public static class NeuronIdentifierComparator implements Comparator<Neuron>, Serializable {
        private static final long serialVersionUID = 20130207;

        @Override // java.util.Comparator
        public int compare(Neuron neuron, Neuron neuron2) {
            int i = (neuron.getIdentifier() > neuron2.getIdentifier() ? 1 : (neuron.getIdentifier() == neuron2.getIdentifier() ? 0 : -1));
            if (i < 0) {
                return -1;
            }
            return i > 0 ? 1 : 0;
        }
    }

    Network(long j, int i, Neuron[] neuronArr, long[][] jArr) {
        long[] jArr2;
        int length = neuronArr.length;
        if (length != jArr.length) {
            throw new MathIllegalStateException();
        }
        for (Neuron neuron : neuronArr) {
            long identifier = neuron.getIdentifier();
            if (identifier >= j) {
                throw new MathIllegalStateException();
            }
            this.neuronMap.put(Long.valueOf(identifier), neuron);
            this.linkMap.put(Long.valueOf(identifier), new HashSet());
        }
        for (int i2 = 0; i2 < length; i2++) {
            Set<Long> set = this.linkMap.get(Long.valueOf(neuronArr[i2].getIdentifier()));
            for (long j2 : jArr[i2]) {
                Long valueOf = Long.valueOf(j2);
                if (this.neuronMap.get(valueOf) == null) {
                    throw new MathIllegalStateException();
                }
                valueOf.getClass();
                addLinkToLinkSet(set, j2);
            }
        }
        this.nextId = new AtomicLong(j);
        this.featureSize = i;
    }

    public Network(long j, int i) {
        this.nextId = new AtomicLong(j);
        this.featureSize = i;
    }

    @Override // java.lang.Iterable
    public Iterator<Neuron> iterator() {
        return this.neuronMap.values().iterator();
    }

    public Collection<Neuron> getNeurons(Comparator<Neuron> comparator) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.neuronMap.values());
        Collections.sort(arrayList, comparator);
        return arrayList;
    }

    public long createNeuron(double[] dArr) {
        if (dArr.length != this.featureSize) {
            throw new DimensionMismatchException(dArr.length, this.featureSize);
        }
        Long createNextId = createNextId();
        long longValue = createNextId.longValue();
        this.neuronMap.put(createNextId, new Neuron(longValue, dArr));
        this.linkMap.put(createNextId, new HashSet());
        return longValue;
    }

    public void deleteNeuron(Neuron neuron) {
        for (Neuron neuron2 : getNeighbours(neuron)) {
            deleteLink(neuron2, neuron);
        }
        this.neuronMap.remove(Long.valueOf(neuron.getIdentifier()));
    }

    public int getFeaturesSize() {
        return this.featureSize;
    }

    public void addLink(Neuron neuron, Neuron neuron2) {
        long identifier = neuron.getIdentifier();
        long identifier2 = neuron2.getIdentifier();
        if (neuron != getNeuron(identifier)) {
            throw new NoSuchElementException(Long.toString(identifier));
        }
        if (neuron2 != getNeuron(identifier2)) {
            throw new NoSuchElementException(Long.toString(identifier2));
        }
        addLinkToLinkSet(this.linkMap.get(Long.valueOf(identifier)), identifier2);
    }

    private void addLinkToLinkSet(Set<Long> set, long j) {
        set.add(Long.valueOf(j));
    }

    public void deleteLink(Neuron neuron, Neuron neuron2) {
        long identifier = neuron.getIdentifier();
        long identifier2 = neuron2.getIdentifier();
        if (neuron != getNeuron(identifier)) {
            throw new NoSuchElementException(Long.toString(identifier));
        }
        if (neuron2 != getNeuron(identifier2)) {
            throw new NoSuchElementException(Long.toString(identifier2));
        }
        deleteLinkFromLinkSet(this.linkMap.get(Long.valueOf(identifier)), identifier2);
    }

    private void deleteLinkFromLinkSet(Set<Long> set, long j) {
        set.remove(Long.valueOf(j));
    }

    public Neuron getNeuron(long j) {
        Neuron neuron = this.neuronMap.get(Long.valueOf(j));
        if (neuron != null) {
            return neuron;
        }
        throw new NoSuchElementException(Long.toString(j));
    }

    public Collection<Neuron> getNeighbours(Iterable<Neuron> iterable) {
        return getNeighbours(iterable, (Iterable<Neuron>) null);
    }

    public Collection<Neuron> getNeighbours(Iterable<Neuron> iterable, Iterable<Neuron> iterable2) {
        HashSet<Long> hashSet = new HashSet();
        for (Neuron neuron : iterable) {
            hashSet.addAll(this.linkMap.get(Long.valueOf(neuron.getIdentifier())));
        }
        if (iterable2 != null) {
            for (Neuron neuron2 : iterable2) {
                hashSet.remove(Long.valueOf(neuron2.getIdentifier()));
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Long l : hashSet) {
            arrayList.add(getNeuron(l.longValue()));
        }
        return arrayList;
    }

    public Collection<Neuron> getNeighbours(Neuron neuron) {
        return getNeighbours(neuron, (Iterable<Neuron>) null);
    }

    public Collection<Neuron> getNeighbours(Neuron neuron, Iterable<Neuron> iterable) {
        Set<Long> set = this.linkMap.get(Long.valueOf(neuron.getIdentifier()));
        if (iterable != null) {
            for (Neuron neuron2 : iterable) {
                set.remove(Long.valueOf(neuron2.getIdentifier()));
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Long l : set) {
            arrayList.add(getNeuron(l.longValue()));
        }
        return arrayList;
    }

    private Long createNextId() {
        return Long.valueOf(this.nextId.getAndIncrement());
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new IllegalStateException();
    }

    private Object writeReplace() {
        Neuron[] neuronArr = (Neuron[]) this.neuronMap.values().toArray(new Neuron[0]);
        long[][] jArr = new long[neuronArr.length];
        for (int i = 0; i < neuronArr.length; i++) {
            Collection<Neuron> neighbours = getNeighbours(neuronArr[i]);
            long[] jArr2 = new long[neighbours.size()];
            int i2 = 0;
            for (Neuron neuron : neighbours) {
                jArr2[i2] = neuron.getIdentifier();
                i2++;
            }
            jArr[i] = jArr2;
        }
        return new SerializationProxy(this.nextId.get(), this.featureSize, neuronArr, jArr);
    }

    /* loaded from: classes5.dex */
    private static class SerializationProxy implements Serializable {
        private static final long serialVersionUID = 20130207;
        private final int featureSize;
        private final long[][] neighbourIdList;
        private final Neuron[] neuronList;
        private final long nextId;

        SerializationProxy(long j, int i, Neuron[] neuronArr, long[][] jArr) {
            this.nextId = j;
            this.featureSize = i;
            this.neuronList = neuronArr;
            this.neighbourIdList = jArr;
        }

        private Object readResolve() {
            return new Network(this.nextId, this.featureSize, this.neuronList, this.neighbourIdList);
        }
    }
}
