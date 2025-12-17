package org.apache.commons.math3.ode;

import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes5.dex */
public abstract class AbstractParameterizable implements Parameterizable {
    private final Collection<String> parametersNames;

    protected AbstractParameterizable(String... strArr) {
        this.parametersNames = new ArrayList();
        for (String str : strArr) {
            this.parametersNames.add(str);
        }
    }

    protected AbstractParameterizable(Collection<String> collection) {
        ArrayList arrayList = new ArrayList();
        this.parametersNames = arrayList;
        arrayList.addAll(collection);
    }

    @Override // org.apache.commons.math3.ode.Parameterizable
    public Collection<String> getParametersNames() {
        return this.parametersNames;
    }

    @Override // org.apache.commons.math3.ode.Parameterizable
    public boolean isSupported(String str) {
        for (String str2 : this.parametersNames) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public void complainIfNotSupported(String str) throws UnknownParameterException {
        if (!isSupported(str)) {
            throw new UnknownParameterException(str);
        }
    }
}
