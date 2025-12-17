package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Enumeration;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* loaded from: classes.dex */
public class EnumerationSerializer implements ObjectSerializer {
    public static EnumerationSerializer instance = new EnumerationSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int i2 = 0;
        Type type2 = (serializeWriter.isEnabled(SerializerFeature.WriteClassName) && (type instanceof ParameterizedType)) ? ((ParameterizedType) type).getActualTypeArguments()[0] : null;
        Enumeration enumeration = (Enumeration) obj;
        SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            serializeWriter.append(AbstractJsonLexerKt.BEGIN_LIST);
            while (enumeration.hasMoreElements()) {
                Object nextElement = enumeration.nextElement();
                int i3 = i2 + 1;
                if (i2 != 0) {
                    serializeWriter.append(AbstractJsonLexerKt.COMMA);
                }
                if (nextElement == null) {
                    serializeWriter.writeNull();
                } else {
                    jSONSerializer.getObjectWriter(nextElement.getClass()).write(jSONSerializer, nextElement, Integer.valueOf(i2), type2, 0);
                }
                i2 = i3;
            }
            serializeWriter.append(AbstractJsonLexerKt.END_LIST);
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
