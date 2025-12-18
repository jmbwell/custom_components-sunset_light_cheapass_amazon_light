package com.alibaba.fastjson.support.geo;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.alibaba.fastjson.annotation.JSONType;
@JSONType(orders = {ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "bbox", "coordinates"}, typeName = "Polygon")
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class Polygon extends Geometry {
    private double[][][] coordinates;

    public Polygon() {
        super("Polygon");
    }

    public double[][][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][][] dArr) {
        this.coordinates = dArr;
    }
}
