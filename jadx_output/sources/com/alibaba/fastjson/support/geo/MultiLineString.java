package com.alibaba.fastjson.support.geo;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.alibaba.fastjson.annotation.JSONType;
@JSONType(orders = {ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "bbox", "coordinates"}, typeName = "MultiLineString")
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class MultiLineString extends Geometry {
    private double[][][] coordinates;

    public MultiLineString() {
        super("MultiLineString");
    }

    public double[][][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][][] dArr) {
        this.coordinates = dArr;
    }
}
