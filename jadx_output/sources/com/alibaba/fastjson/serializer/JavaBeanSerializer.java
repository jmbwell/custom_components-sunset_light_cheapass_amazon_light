package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class JavaBeanSerializer extends SerializeFilterable implements ObjectSerializer {
    protected SerializeBeanInfo beanInfo;
    protected final FieldSerializer[] getters;
    private volatile transient long[] hashArray;
    private volatile transient short[] hashArrayMapping;
    protected final FieldSerializer[] sortedGetters;

    public JavaBeanSerializer(Class<?> cls) {
        this(cls, (Map<String, String>) null);
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, createAliasMap(strArr));
    }

    static Map<String, String> createAliasMap(String... strArr) {
        HashMap hashMap = new HashMap();
        for (String str : strArr) {
            hashMap.put(str, str);
        }
        return hashMap;
    }

    public Class<?> getType() {
        return this.beanInfo.beanType;
    }

    public JavaBeanSerializer(Class<?> cls, Map<String, String> map) {
        this(TypeUtils.buildBeanInfo(cls, map, null));
    }

    public JavaBeanSerializer(SerializeBeanInfo serializeBeanInfo) {
        this.beanInfo = serializeBeanInfo;
        this.sortedGetters = new FieldSerializer[serializeBeanInfo.sortedFields.length];
        int i = 0;
        while (true) {
            FieldSerializer[] fieldSerializerArr = this.sortedGetters;
            if (i >= fieldSerializerArr.length) {
                break;
            }
            fieldSerializerArr[i] = new FieldSerializer(serializeBeanInfo.beanType, serializeBeanInfo.sortedFields[i]);
            i++;
        }
        if (serializeBeanInfo.fields == serializeBeanInfo.sortedFields) {
            this.getters = this.sortedGetters;
        } else {
            this.getters = new FieldSerializer[serializeBeanInfo.fields.length];
            int i2 = 0;
            while (true) {
                if (i2 >= this.getters.length) {
                    break;
                }
                FieldSerializer fieldSerializer = getFieldSerializer(serializeBeanInfo.fields[i2].name);
                if (fieldSerializer != null) {
                    this.getters[i2] = fieldSerializer;
                    i2++;
                } else {
                    FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                    System.arraycopy(fieldSerializerArr2, 0, this.getters, 0, fieldSerializerArr2.length);
                    break;
                }
            }
        }
        if (serializeBeanInfo.jsonType != null) {
            for (Class<? extends SerializeFilter> cls : serializeBeanInfo.jsonType.serialzeFilters()) {
                try {
                    addFilter(cls.getConstructor(null).newInstance(null));
                } catch (Exception unused) {
                }
            }
        }
    }

    public void writeDirectNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeAsArray(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    public void writeAsArrayNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    public void writeNoneASM(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int i) throws IOException {
        write(jSONSerializer, obj, obj2, type, i, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0100, code lost:
        if (r13.fieldTransient != false) goto L57;
     */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0162  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x03f7 A[Catch: Exception -> 0x03a0, all -> 0x0509, TryCatch #3 {all -> 0x0509, blocks: (B:273:0x0399, B:332:0x046b, B:334:0x046f, B:336:0x0473, B:339:0x047c, B:341:0x0484, B:342:0x048c, B:344:0x0492, B:280:0x03ad, B:281:0x03b0, B:283:0x03b6, B:285:0x03c2, B:292:0x03d8, B:297:0x03e2, B:301:0x03f7, B:304:0x0401, B:307:0x040b, B:309:0x0413, B:310:0x0420, B:312:0x0429, B:314:0x0430, B:315:0x0434, B:317:0x043b, B:318:0x043f, B:319:0x0443, B:321:0x0448, B:322:0x044c, B:323:0x0450, B:325:0x0454, B:327:0x0458, B:330:0x0464, B:331:0x0468, B:298:0x03ed, B:352:0x04a7, B:376:0x04fa, B:378:0x0502, B:384:0x050f), top: B:435:0x0399 }] */
    /* JADX WARN: Removed duplicated region for block: B:331:0x0468 A[Catch: Exception -> 0x03a0, all -> 0x0509, TryCatch #3 {all -> 0x0509, blocks: (B:273:0x0399, B:332:0x046b, B:334:0x046f, B:336:0x0473, B:339:0x047c, B:341:0x0484, B:342:0x048c, B:344:0x0492, B:280:0x03ad, B:281:0x03b0, B:283:0x03b6, B:285:0x03c2, B:292:0x03d8, B:297:0x03e2, B:301:0x03f7, B:304:0x0401, B:307:0x040b, B:309:0x0413, B:310:0x0420, B:312:0x0429, B:314:0x0430, B:315:0x0434, B:317:0x043b, B:318:0x043f, B:319:0x0443, B:321:0x0448, B:322:0x044c, B:323:0x0450, B:325:0x0454, B:327:0x0458, B:330:0x0464, B:331:0x0468, B:298:0x03ed, B:352:0x04a7, B:376:0x04fa, B:378:0x0502, B:384:0x050f), top: B:435:0x0399 }] */
    /* JADX WARN: Removed duplicated region for block: B:334:0x046f A[Catch: Exception -> 0x03a0, all -> 0x0509, TryCatch #3 {all -> 0x0509, blocks: (B:273:0x0399, B:332:0x046b, B:334:0x046f, B:336:0x0473, B:339:0x047c, B:341:0x0484, B:342:0x048c, B:344:0x0492, B:280:0x03ad, B:281:0x03b0, B:283:0x03b6, B:285:0x03c2, B:292:0x03d8, B:297:0x03e2, B:301:0x03f7, B:304:0x0401, B:307:0x040b, B:309:0x0413, B:310:0x0420, B:312:0x0429, B:314:0x0430, B:315:0x0434, B:317:0x043b, B:318:0x043f, B:319:0x0443, B:321:0x0448, B:322:0x044c, B:323:0x0450, B:325:0x0454, B:327:0x0458, B:330:0x0464, B:331:0x0468, B:298:0x03ed, B:352:0x04a7, B:376:0x04fa, B:378:0x0502, B:384:0x050f), top: B:435:0x0399 }] */
    /* JADX WARN: Removed duplicated region for block: B:338:0x047b  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x047c A[Catch: Exception -> 0x03a0, all -> 0x0509, TryCatch #3 {all -> 0x0509, blocks: (B:273:0x0399, B:332:0x046b, B:334:0x046f, B:336:0x0473, B:339:0x047c, B:341:0x0484, B:342:0x048c, B:344:0x0492, B:280:0x03ad, B:281:0x03b0, B:283:0x03b6, B:285:0x03c2, B:292:0x03d8, B:297:0x03e2, B:301:0x03f7, B:304:0x0401, B:307:0x040b, B:309:0x0413, B:310:0x0420, B:312:0x0429, B:314:0x0430, B:315:0x0434, B:317:0x043b, B:318:0x043f, B:319:0x0443, B:321:0x0448, B:322:0x044c, B:323:0x0450, B:325:0x0454, B:327:0x0458, B:330:0x0464, B:331:0x0468, B:298:0x03ed, B:352:0x04a7, B:376:0x04fa, B:378:0x0502, B:384:0x050f), top: B:435:0x0399 }] */
    /* JADX WARN: Removed duplicated region for block: B:373:0x04f1  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x050f A[Catch: all -> 0x0509, Exception -> 0x050b, TRY_LEAVE, TryCatch #1 {Exception -> 0x050b, blocks: (B:376:0x04fa, B:378:0x0502, B:384:0x050f), top: B:431:0x04fa }] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x055e A[Catch: all -> 0x05df, TRY_ENTER, TryCatch #18 {all -> 0x05df, blocks: (B:403:0x053c, B:406:0x055e, B:414:0x05ae, B:416:0x05b4, B:417:0x05cc, B:419:0x05d0, B:423:0x05d9, B:424:0x05de, B:408:0x0573, B:410:0x0577, B:412:0x057d, B:413:0x0598), top: B:450:0x053c }] */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:416:0x05b4 A[Catch: all -> 0x05df, TryCatch #18 {all -> 0x05df, blocks: (B:403:0x053c, B:406:0x055e, B:414:0x05ae, B:416:0x05b4, B:417:0x05cc, B:419:0x05d0, B:423:0x05d9, B:424:0x05de, B:408:0x0573, B:410:0x0577, B:412:0x057d, B:413:0x0598), top: B:450:0x053c }] */
    /* JADX WARN: Removed duplicated region for block: B:419:0x05d0 A[Catch: all -> 0x05df, TryCatch #18 {all -> 0x05df, blocks: (B:403:0x053c, B:406:0x055e, B:414:0x05ae, B:416:0x05b4, B:417:0x05cc, B:419:0x05d0, B:423:0x05d9, B:424:0x05de, B:408:0x0573, B:410:0x0577, B:412:0x057d, B:413:0x0598), top: B:450:0x053c }] */
    /* JADX WARN: Removed duplicated region for block: B:421:0x05d6  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x05d7  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x04fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:436:0x00d3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:450:0x053c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00be  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r33, java.lang.Object r34, java.lang.Object r35, java.lang.reflect.Type r36, int r37, boolean r38) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1509
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int, boolean):void");
    }

    protected void writeClassName(JSONSerializer jSONSerializer, String str, Object obj) {
        if (str == null) {
            str = jSONSerializer.config.typeKey;
        }
        jSONSerializer.out.writeFieldName(str, false);
        String str2 = this.beanInfo.typeName;
        if (str2 == null) {
            Class<?> cls = obj.getClass();
            if (TypeUtils.isProxy(cls)) {
                cls = cls.getSuperclass();
            }
            str2 = cls.getName();
        }
        jSONSerializer.write(str2);
    }

    public boolean writeReference(JSONSerializer jSONSerializer, Object obj, int i) {
        SerialContext serialContext = jSONSerializer.context;
        int i2 = SerializerFeature.DisableCircularReferenceDetect.mask;
        if (serialContext != null && (serialContext.features & i2) == 0 && (i & i2) == 0 && jSONSerializer.references != null && jSONSerializer.references.containsKey(obj)) {
            jSONSerializer.writeReference(obj);
            return true;
        }
        return false;
    }

    protected boolean isWriteAsArray(JSONSerializer jSONSerializer) {
        return isWriteAsArray(jSONSerializer, 0);
    }

    protected boolean isWriteAsArray(JSONSerializer jSONSerializer, int i) {
        int i2 = SerializerFeature.BeanToArray.mask;
        return ((this.beanInfo.features & i2) == 0 && !jSONSerializer.out.beanToArray && (i & i2) == 0) ? false : true;
    }

    public Object getFieldValue(Object obj, String str) {
        FieldSerializer fieldSerializer = getFieldSerializer(str);
        if (fieldSerializer == null) {
            throw new JSONException("field not found. " + str);
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException("getFieldValue error." + str, e);
        } catch (InvocationTargetException e2) {
            throw new JSONException("getFieldValue error." + str, e2);
        }
    }

    public Object getFieldValue(Object obj, String str, long j, boolean z) {
        FieldSerializer fieldSerializer = getFieldSerializer(j);
        if (fieldSerializer == null) {
            if (z) {
                throw new JSONException("field not found. " + str);
            }
            return null;
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException("getFieldValue error." + str, e);
        } catch (InvocationTargetException e2) {
            throw new JSONException("getFieldValue error." + str, e2);
        }
    }

    public FieldSerializer getFieldSerializer(String str) {
        if (str == null) {
            return null;
        }
        int length = this.sortedGetters.length - 1;
        int i = 0;
        while (i <= length) {
            int i2 = (i + length) >>> 1;
            int compareTo = this.sortedGetters[i2].fieldInfo.name.compareTo(str);
            if (compareTo < 0) {
                i = i2 + 1;
            } else if (compareTo <= 0) {
                return this.sortedGetters[i2];
            } else {
                length = i2 - 1;
            }
        }
        return null;
    }

    public FieldSerializer getFieldSerializer(long j) {
        PropertyNamingStrategy[] propertyNamingStrategyArr;
        int binarySearch;
        if (this.hashArray == null) {
            propertyNamingStrategyArr = PropertyNamingStrategy.values();
            long[] jArr = new long[this.sortedGetters.length * propertyNamingStrategyArr.length];
            int i = 0;
            int i2 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr = this.sortedGetters;
                if (i >= fieldSerializerArr.length) {
                    break;
                }
                String str = fieldSerializerArr[i].fieldInfo.name;
                jArr[i2] = TypeUtils.fnv1a_64(str);
                i2++;
                for (PropertyNamingStrategy propertyNamingStrategy : propertyNamingStrategyArr) {
                    String translate = propertyNamingStrategy.translate(str);
                    if (!str.equals(translate)) {
                        jArr[i2] = TypeUtils.fnv1a_64(translate);
                        i2++;
                    }
                }
                i++;
            }
            Arrays.sort(jArr, 0, i2);
            this.hashArray = new long[i2];
            System.arraycopy(jArr, 0, this.hashArray, 0, i2);
        } else {
            propertyNamingStrategyArr = null;
        }
        int binarySearch2 = Arrays.binarySearch(this.hashArray, j);
        if (binarySearch2 < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            if (propertyNamingStrategyArr == null) {
                propertyNamingStrategyArr = PropertyNamingStrategy.values();
            }
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            int i3 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                if (i3 >= fieldSerializerArr2.length) {
                    break;
                }
                String str2 = fieldSerializerArr2[i3].fieldInfo.name;
                int binarySearch3 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(str2));
                if (binarySearch3 >= 0) {
                    sArr[binarySearch3] = (short) i3;
                }
                for (PropertyNamingStrategy propertyNamingStrategy2 : propertyNamingStrategyArr) {
                    String translate2 = propertyNamingStrategy2.translate(str2);
                    if (!str2.equals(translate2) && (binarySearch = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(translate2))) >= 0) {
                        sArr[binarySearch] = (short) i3;
                    }
                }
                i3++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[binarySearch2];
        if (s != -1) {
            return this.sortedGetters[s];
        }
        return null;
    }

    public List<Object> getFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            arrayList.add(fieldSerializer.getPropertyValue(obj));
        }
        return arrayList;
    }

    public List<Object> getObjectFieldValues(Object obj) throws Exception {
        FieldSerializer[] fieldSerializerArr;
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            Class<?> cls = fieldSerializer.fieldInfo.fieldClass;
            if (!cls.isPrimitive() && !cls.getName().startsWith("java.lang.")) {
                arrayList.add(fieldSerializer.getPropertyValue(obj));
            }
        }
        return arrayList;
    }

    public int getSize(Object obj) throws Exception {
        int i = 0;
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                i++;
            }
        }
        return i;
    }

    public Set<String> getFieldNames(Object obj) throws Exception {
        FieldSerializer[] fieldSerializerArr;
        HashSet hashSet = new HashSet();
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                hashSet.add(fieldSerializer.fieldInfo.name);
            }
        }
        return hashSet;
    }

    public Map<String, Object> getFieldValuesMap(Object obj) throws Exception {
        FieldSerializer[] fieldSerializerArr;
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            boolean isEnabled = SerializerFeature.isEnabled(fieldSerializer.features, SerializerFeature.SkipTransientField);
            FieldInfo fieldInfo = fieldSerializer.fieldInfo;
            if (!isEnabled || fieldInfo == null || !fieldInfo.fieldTransient) {
                if (fieldSerializer.fieldInfo.unwrapped) {
                    Object json = JSON.toJSON(fieldSerializer.getPropertyValue(obj));
                    if (json instanceof Map) {
                        linkedHashMap.putAll((Map) json);
                    } else {
                        linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                    }
                } else {
                    linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                }
            }
        }
        return linkedHashMap;
    }

    protected BeanContext getBeanContext(int i) {
        return this.sortedGetters[i].fieldContext;
    }

    protected Type getFieldType(int i) {
        return this.sortedGetters[i].fieldInfo.fieldType;
    }

    protected char writeBefore(JSONSerializer jSONSerializer, Object obj, char c2) {
        if (jSONSerializer.beforeFilters != null) {
            for (BeforeFilter beforeFilter : jSONSerializer.beforeFilters) {
                c2 = beforeFilter.writeBefore(jSONSerializer, obj, c2);
            }
        }
        if (this.beforeFilters != null) {
            for (BeforeFilter beforeFilter2 : this.beforeFilters) {
                c2 = beforeFilter2.writeBefore(jSONSerializer, obj, c2);
            }
        }
        return c2;
    }

    protected char writeAfter(JSONSerializer jSONSerializer, Object obj, char c2) {
        if (jSONSerializer.afterFilters != null) {
            for (AfterFilter afterFilter : jSONSerializer.afterFilters) {
                c2 = afterFilter.writeAfter(jSONSerializer, obj, c2);
            }
        }
        if (this.afterFilters != null) {
            for (AfterFilter afterFilter2 : this.afterFilters) {
                c2 = afterFilter2.writeAfter(jSONSerializer, obj, c2);
            }
        }
        return c2;
    }

    protected boolean applyLabel(JSONSerializer jSONSerializer, String str) {
        if (jSONSerializer.labelFilters != null) {
            for (LabelFilter labelFilter : jSONSerializer.labelFilters) {
                if (!labelFilter.apply(str)) {
                    return false;
                }
            }
        }
        if (this.labelFilters != null) {
            for (LabelFilter labelFilter2 : this.labelFilters) {
                if (!labelFilter2.apply(str)) {
                    return false;
                }
            }
            return true;
        }
        return true;
    }
}
