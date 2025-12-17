package com.alibaba.fastjson.support.geo;

import androidx.savedstate.serialization.ClassDiscriminatorModeKt;
import com.alibaba.fastjson.annotation.JSONType;
import java.util.ArrayList;
import java.util.List;
@JSONType(orders = {ClassDiscriminatorModeKt.CLASS_DISCRIMINATOR_KEY, "bbox", "coordinates"}, typeName = "FeatureCollection")
/* loaded from: classes.dex */
public class FeatureCollection extends Geometry {
    private List<Feature> features;

    public FeatureCollection() {
        super("FeatureCollection");
        this.features = new ArrayList();
    }

    public List<Feature> getFeatures() {
        return this.features;
    }
}
