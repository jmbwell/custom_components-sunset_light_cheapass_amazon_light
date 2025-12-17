package com.alibaba.fastjson.support.geo;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.alibaba.fastjson.annotation.JSONType;
import java.util.ArrayList;
import java.util.List;
@JSONType(orders = {ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "bbox", "geometries"}, typeName = "GeometryCollection")
/* loaded from: classes.dex */
public class GeometryCollection extends Geometry {
    private List<Geometry> geometries;

    public GeometryCollection() {
        super("GeometryCollection");
        this.geometries = new ArrayList();
    }

    public List<Geometry> getGeometries() {
        return this.geometries;
    }
}
