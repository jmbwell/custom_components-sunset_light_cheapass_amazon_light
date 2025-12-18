package com.alibaba.fastjson.serializer;

import com.google.android.gms.common.util.zzb$;
import java.io.IOException;
import java.lang.reflect.Type;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class AdderSerializer implements ObjectSerializer {
    public static final AdderSerializer instance = new AdderSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (zzb$.ExternalSyntheticApiModelOutline0.m$2(obj)) {
            serializeWriter.writeFieldValue('{', "value", zzb$.ExternalSyntheticApiModelOutline0.m(zzb$.ExternalSyntheticApiModelOutline0.m(obj)));
            serializeWriter.write(125);
        } else if (zzb$.ExternalSyntheticApiModelOutline0.m$3(obj)) {
            serializeWriter.writeFieldValue('{', "value", zzb$.ExternalSyntheticApiModelOutline0.m(zzb$.ExternalSyntheticApiModelOutline0.m(obj)));
            serializeWriter.write(125);
        }
    }
}
