package com.alibaba.fastjson.parser.deserializer;

import java.lang.reflect.Type;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public interface FieldTypeResolver extends ParseProcess {
    Type resolve(Object obj, String str);
}
