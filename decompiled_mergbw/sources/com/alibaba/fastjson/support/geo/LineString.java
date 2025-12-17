package com.alibaba.fastjson.support.geo;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.alibaba.fastjson.annotation.JSONType;
@JSONType(orders = {ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "bbox", "coordinates"}, typeName = "LineString")
/* loaded from: classes.dex */
public class LineString extends Geometry {
    private double[][] coordinates;

    public LineString() {
        super("LineString");
    }

    public double[][] getCoordinates() {
        return this.coordinates;
    }

    public void setCoordinates(double[][] dArr) {
        this.coordinates = dArr;
    }
}
