package com.alibaba.fastjson.serializer;

import com.google.android.gms.common.util.zzb$$ExternalSyntheticApiModelOutline0;
import java.io.IOException;
import java.lang.reflect.Type;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes.dex */
public class AdderSerializer implements ObjectSerializer {
    public static final AdderSerializer instance = new AdderSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        double doubleValue;
        long longValue;
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (zzb$$ExternalSyntheticApiModelOutline0.m$2(obj)) {
            longValue = zzb$$ExternalSyntheticApiModelOutline0.m525m(obj).longValue();
            serializeWriter.writeFieldValue(AbstractJsonLexerKt.BEGIN_OBJ, "value", longValue);
            serializeWriter.write(125);
        } else if (zzb$$ExternalSyntheticApiModelOutline0.m$3(obj)) {
            doubleValue = zzb$$ExternalSyntheticApiModelOutline0.m524m(obj).doubleValue();
            serializeWriter.writeFieldValue(AbstractJsonLexerKt.BEGIN_OBJ, "value", doubleValue);
            serializeWriter.write(125);
        }
    }
}
