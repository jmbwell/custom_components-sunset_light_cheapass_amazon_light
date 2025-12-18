package com.alibaba.fastjson.parser.deserializer;

import androidx.work.Constraints$Builder$$ExternalSyntheticApiModelOutline0;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.util.TypeUtils;
import com.google.android.gms.common.util.zzb$;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Optional;
import java.util.OptionalDouble;
import java.util.OptionalInt;
import java.util.OptionalLong;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class OptionalCodec implements ObjectSerializer, ObjectDeserializer {
    public static OptionalCodec instance = new OptionalCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        Optional of;
        Optional empty;
        OptionalLong empty2;
        OptionalInt of2;
        OptionalInt empty3;
        if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$10()) {
            Integer castToInt = TypeUtils.castToInt(defaultJSONParser.parseObject((Class<Object>) Integer.class));
            if (castToInt == null) {
                empty3 = OptionalInt.empty();
                return (T) empty3;
            }
            of2 = OptionalInt.of(castToInt.intValue());
            return (T) of2;
        } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$11()) {
            Long castToLong = TypeUtils.castToLong(defaultJSONParser.parseObject((Class<Object>) Long.class));
            if (castToLong == null) {
                empty2 = OptionalLong.empty();
                return (T) empty2;
            }
            return (T) zzb$.ExternalSyntheticApiModelOutline0.m(castToLong.longValue());
        } else if (type == zzb$.ExternalSyntheticApiModelOutline0.m()) {
            Double castToDouble = TypeUtils.castToDouble(defaultJSONParser.parseObject((Class<Object>) Double.class));
            if (castToDouble == null) {
                return (T) zzb$.ExternalSyntheticApiModelOutline0.m();
            }
            return (T) zzb$.ExternalSyntheticApiModelOutline0.m(castToDouble.doubleValue());
        } else {
            Object parseObject = defaultJSONParser.parseObject(TypeUtils.unwrapOptional(type));
            if (parseObject == null) {
                empty = Optional.empty();
                return (T) empty;
            }
            of = Optional.of(parseObject);
            return (T) of;
        }
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        boolean isPresent;
        double asDouble;
        boolean isPresent2;
        if (obj == null) {
            jSONSerializer.writeNull();
        } else if (zzb$.ExternalSyntheticApiModelOutline0.m(obj)) {
            Optional m = zzb$.ExternalSyntheticApiModelOutline0.m(obj);
            isPresent2 = m.isPresent();
            jSONSerializer.write(isPresent2 ? m.get() : null);
        } else if (Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$2(obj)) {
            OptionalDouble m499m = Constraints$Builder$$ExternalSyntheticApiModelOutline0.m499m(obj);
            isPresent = m499m.isPresent();
            if (isPresent) {
                asDouble = m499m.getAsDouble();
                jSONSerializer.write(Double.valueOf(asDouble));
                return;
            }
            jSONSerializer.writeNull();
        } else if (Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$3(obj)) {
            OptionalInt m501m = Constraints$Builder$$ExternalSyntheticApiModelOutline0.m501m(obj);
            if (zzb$.ExternalSyntheticApiModelOutline0.m(m501m)) {
                jSONSerializer.out.writeInt(zzb$.ExternalSyntheticApiModelOutline0.m(m501m));
            } else {
                jSONSerializer.writeNull();
            }
        } else if (zzb$.ExternalSyntheticApiModelOutline0.m$1(obj)) {
            OptionalLong m2 = zzb$.ExternalSyntheticApiModelOutline0.m(obj);
            if (zzb$.ExternalSyntheticApiModelOutline0.m(m2)) {
                jSONSerializer.out.writeLong(zzb$.ExternalSyntheticApiModelOutline0.m(m2));
            } else {
                jSONSerializer.writeNull();
            }
        } else {
            throw new JSONException("not support optional : " + obj.getClass());
        }
    }
}
