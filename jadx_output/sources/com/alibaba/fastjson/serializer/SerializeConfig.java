package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONAware;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONStreamAware;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec;
import com.alibaba.fastjson.parser.deserializer.OptionalCodec;
import com.alibaba.fastjson.spi.Module;
import com.alibaba.fastjson.support.moneta.MonetaCodec;
import com.alibaba.fastjson.support.springfox.SwaggerJsonSerializer;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.IdentityHashMap;
import com.alibaba.fastjson.util.ServiceLoader;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.File;
import java.lang.ref.SoftReference;
import java.lang.ref.WeakReference;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.xml.datatype.XMLGregorianCalendar;
import org.w3c.dom.Node;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class SerializeConfig {
    private boolean asm;
    private ASMSerializerFactory asmFactory;
    private long[] denyClasses;
    private final boolean fieldBased;
    private final IdentityHashMap<Type, IdentityHashMap<Type, ObjectSerializer>> mixInSerializers;
    private List<Module> modules;
    public PropertyNamingStrategy propertyNamingStrategy;
    private final IdentityHashMap<Type, ObjectSerializer> serializers;
    protected String typeKey;
    public static final SerializeConfig globalInstance = new SerializeConfig();
    private static boolean awtError = false;
    private static boolean jdk8Error = false;
    private static boolean oracleJdbcError = false;
    private static boolean springfoxError = false;
    private static boolean guavaError = false;
    private static boolean jsonnullError = false;
    private static boolean jsonobjectError = false;
    private static boolean jodaError = false;

    public String getTypeKey() {
        return this.typeKey;
    }

    public void setTypeKey(String str) {
        this.typeKey = str;
    }

    private final JavaBeanSerializer createASMSerializer(SerializeBeanInfo serializeBeanInfo) throws Exception {
        JavaBeanSerializer createJavaBeanSerializer = this.asmFactory.createJavaBeanSerializer(serializeBeanInfo);
        for (int i = 0; i < createJavaBeanSerializer.sortedGetters.length; i++) {
            Class<?> cls = createJavaBeanSerializer.sortedGetters[i].fieldInfo.fieldClass;
            if (cls.isEnum() && !(getObjectWriter(cls) instanceof EnumSerializer)) {
                createJavaBeanSerializer.writeDirect = false;
            }
        }
        return createJavaBeanSerializer;
    }

    public final ObjectSerializer createJavaBeanSerializer(Class<?> cls) {
        String name = cls.getName();
        if (Arrays.binarySearch(this.denyClasses, TypeUtils.fnv1a_64(name)) >= 0) {
            throw new JSONException("not support class : " + name);
        }
        SerializeBeanInfo buildBeanInfo = TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy, this.fieldBased);
        if (buildBeanInfo.fields.length == 0 && Iterable.class.isAssignableFrom(cls)) {
            return MiscCodec.instance;
        }
        return createJavaBeanSerializer(buildBeanInfo);
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x014d, code lost:
        r0 = createASMSerializer(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0151, code lost:
        if (r0 == null) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0153, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0154, code lost:
        r14 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0168, code lost:
        throw new com.alibaba.fastjson.JSONException("create asm serializer error, verson 1.2.69, class " + r0, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0169, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0175, code lost:
        if (r0.getMessage().indexOf("Metaspace") != (-1)) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0178, code lost:
        throw r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.alibaba.fastjson.serializer.ObjectSerializer createJavaBeanSerializer(com.alibaba.fastjson.serializer.SerializeBeanInfo r14) {
        /*
            Method dump skipped, instructions count: 383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeConfig.createJavaBeanSerializer(com.alibaba.fastjson.serializer.SerializeBeanInfo):com.alibaba.fastjson.serializer.ObjectSerializer");
    }

    public boolean isAsmEnable() {
        return this.asm;
    }

    public void setAsmEnable(boolean z) {
        if (ASMUtils.IS_ANDROID) {
            return;
        }
        this.asm = z;
    }

    public static SerializeConfig getGlobalInstance() {
        return globalInstance;
    }

    public SerializeConfig() {
        this(8192);
    }

    public SerializeConfig(boolean z) {
        this(8192, z);
    }

    public SerializeConfig(int i) {
        this(i, false);
    }

    public SerializeConfig(int i, boolean z) {
        this.asm = !ASMUtils.IS_ANDROID;
        this.typeKey = JSON.DEFAULT_TYPE_KEY;
        this.denyClasses = new long[]{4165360493669296979L, 4446674157046724083L};
        this.modules = new ArrayList();
        this.fieldBased = z;
        this.serializers = new IdentityHashMap<>(i);
        this.mixInSerializers = new IdentityHashMap<>(16);
        try {
            if (this.asm) {
                this.asmFactory = new ASMSerializerFactory();
            }
        } catch (Throwable unused) {
            this.asm = false;
        }
        initSerializers();
    }

    private void initSerializers() {
        put(Boolean.class, (ObjectSerializer) BooleanCodec.instance);
        put(Character.class, (ObjectSerializer) CharacterCodec.instance);
        put(Byte.class, (ObjectSerializer) IntegerCodec.instance);
        put(Short.class, (ObjectSerializer) IntegerCodec.instance);
        put(Integer.class, (ObjectSerializer) IntegerCodec.instance);
        put(Long.class, (ObjectSerializer) LongCodec.instance);
        put(Float.class, (ObjectSerializer) FloatCodec.instance);
        put(Double.class, (ObjectSerializer) DoubleSerializer.instance);
        put(BigDecimal.class, (ObjectSerializer) BigDecimalCodec.instance);
        put(BigInteger.class, (ObjectSerializer) BigIntegerCodec.instance);
        put(String.class, (ObjectSerializer) StringCodec.instance);
        put(byte[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(short[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(int[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(long[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(float[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(double[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(boolean[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(char[].class, (ObjectSerializer) PrimitiveArraySerializer.instance);
        put(Object[].class, (ObjectSerializer) ObjectArrayCodec.instance);
        put(Class.class, (ObjectSerializer) MiscCodec.instance);
        put(SimpleDateFormat.class, (ObjectSerializer) MiscCodec.instance);
        put(Currency.class, (ObjectSerializer) new MiscCodec());
        put(TimeZone.class, (ObjectSerializer) MiscCodec.instance);
        put(InetAddress.class, (ObjectSerializer) MiscCodec.instance);
        put(Inet4Address.class, (ObjectSerializer) MiscCodec.instance);
        put(Inet6Address.class, (ObjectSerializer) MiscCodec.instance);
        put(InetSocketAddress.class, (ObjectSerializer) MiscCodec.instance);
        put(File.class, (ObjectSerializer) MiscCodec.instance);
        put(Appendable.class, (ObjectSerializer) AppendableSerializer.instance);
        put(StringBuffer.class, (ObjectSerializer) AppendableSerializer.instance);
        put(StringBuilder.class, (ObjectSerializer) AppendableSerializer.instance);
        put(Charset.class, (ObjectSerializer) ToStringSerializer.instance);
        put(Pattern.class, (ObjectSerializer) ToStringSerializer.instance);
        put(Locale.class, (ObjectSerializer) ToStringSerializer.instance);
        put(URI.class, (ObjectSerializer) ToStringSerializer.instance);
        put(URL.class, (ObjectSerializer) ToStringSerializer.instance);
        put(UUID.class, (ObjectSerializer) ToStringSerializer.instance);
        put(AtomicBoolean.class, (ObjectSerializer) AtomicCodec.instance);
        put(AtomicInteger.class, (ObjectSerializer) AtomicCodec.instance);
        put(AtomicLong.class, (ObjectSerializer) AtomicCodec.instance);
        put(AtomicReference.class, (ObjectSerializer) ReferenceCodec.instance);
        put(AtomicIntegerArray.class, (ObjectSerializer) AtomicCodec.instance);
        put(AtomicLongArray.class, (ObjectSerializer) AtomicCodec.instance);
        put(WeakReference.class, (ObjectSerializer) ReferenceCodec.instance);
        put(SoftReference.class, (ObjectSerializer) ReferenceCodec.instance);
        put(LinkedList.class, (ObjectSerializer) CollectionCodec.instance);
    }

    public void addFilter(Class<?> cls, SerializeFilter serializeFilter) {
        ObjectSerializer objectWriter = getObjectWriter(cls);
        if (objectWriter instanceof SerializeFilterable) {
            SerializeFilterable serializeFilterable = (SerializeFilterable) objectWriter;
            if (this != globalInstance && serializeFilterable == MapSerializer.instance) {
                MapSerializer mapSerializer = new MapSerializer();
                put((Type) cls, (ObjectSerializer) mapSerializer);
                mapSerializer.addFilter(serializeFilter);
                return;
            }
            serializeFilterable.addFilter(serializeFilter);
        }
    }

    public void config(Class<?> cls, SerializerFeature serializerFeature, boolean z) {
        ObjectSerializer objectWriter = getObjectWriter(cls, false);
        if (objectWriter == null) {
            SerializeBeanInfo buildBeanInfo = TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy);
            if (z) {
                buildBeanInfo.features = serializerFeature.mask | buildBeanInfo.features;
            } else {
                buildBeanInfo.features = (~serializerFeature.mask) & buildBeanInfo.features;
            }
            put((Type) cls, createJavaBeanSerializer(buildBeanInfo));
        } else if (objectWriter instanceof JavaBeanSerializer) {
            SerializeBeanInfo serializeBeanInfo = ((JavaBeanSerializer) objectWriter).beanInfo;
            int i = serializeBeanInfo.features;
            if (z) {
                serializeBeanInfo.features = serializerFeature.mask | serializeBeanInfo.features;
            } else {
                serializeBeanInfo.features = (~serializerFeature.mask) & serializeBeanInfo.features;
            }
            if (i == serializeBeanInfo.features || objectWriter.getClass() == JavaBeanSerializer.class) {
                return;
            }
            put((Type) cls, createJavaBeanSerializer(serializeBeanInfo));
        }
    }

    public ObjectSerializer getObjectWriter(Class<?> cls) {
        return getObjectWriter(cls, true);
    }

    public ObjectSerializer getObjectWriter(Class<?> cls, boolean z) {
        ClassLoader classLoader;
        ObjectSerializer objectSerializer = get(cls);
        if (objectSerializer != null) {
            return objectSerializer;
        }
        try {
            for (Object obj : ServiceLoader.load(AutowiredObjectSerializer.class, Thread.currentThread().getContextClassLoader())) {
                if (obj instanceof AutowiredObjectSerializer) {
                    AutowiredObjectSerializer autowiredObjectSerializer = (AutowiredObjectSerializer) obj;
                    for (Type type : autowiredObjectSerializer.getAutowiredFor()) {
                        put(type, (ObjectSerializer) autowiredObjectSerializer);
                    }
                }
            }
        } catch (ClassCastException unused) {
        }
        ObjectSerializer objectSerializer2 = get(cls);
        if (objectSerializer2 == null && (classLoader = JSON.class.getClassLoader()) != Thread.currentThread().getContextClassLoader()) {
            try {
                for (Object obj2 : ServiceLoader.load(AutowiredObjectSerializer.class, classLoader)) {
                    if (obj2 instanceof AutowiredObjectSerializer) {
                        AutowiredObjectSerializer autowiredObjectSerializer2 = (AutowiredObjectSerializer) obj2;
                        for (Type type2 : autowiredObjectSerializer2.getAutowiredFor()) {
                            put(type2, (ObjectSerializer) autowiredObjectSerializer2);
                        }
                    }
                }
            } catch (ClassCastException unused2) {
            }
            objectSerializer2 = get(cls);
        }
        for (Module module : this.modules) {
            objectSerializer2 = module.createSerializer(this, cls);
            if (objectSerializer2 != null) {
                put((Type) cls, objectSerializer2);
                return objectSerializer2;
            }
        }
        if (objectSerializer2 == null) {
            String name = cls.getName();
            if (Map.class.isAssignableFrom(cls)) {
                objectSerializer2 = MapSerializer.instance;
                put((Type) cls, objectSerializer2);
            } else if (List.class.isAssignableFrom(cls)) {
                objectSerializer2 = ListSerializer.instance;
                put((Type) cls, objectSerializer2);
            } else if (Collection.class.isAssignableFrom(cls)) {
                objectSerializer2 = CollectionCodec.instance;
                put((Type) cls, objectSerializer2);
            } else if (Date.class.isAssignableFrom(cls)) {
                objectSerializer2 = DateCodec.instance;
                put((Type) cls, objectSerializer2);
            } else if (JSONAware.class.isAssignableFrom(cls)) {
                objectSerializer2 = JSONAwareSerializer.instance;
                put((Type) cls, objectSerializer2);
            } else if (JSONSerializable.class.isAssignableFrom(cls)) {
                objectSerializer2 = JSONSerializableSerializer.instance;
                put((Type) cls, objectSerializer2);
            } else if (JSONStreamAware.class.isAssignableFrom(cls)) {
                objectSerializer2 = MiscCodec.instance;
                put((Type) cls, objectSerializer2);
            } else if (cls.isEnum()) {
                JSONType jSONType = (JSONType) TypeUtils.getAnnotation(cls, JSONType.class);
                if (jSONType != null && jSONType.serializeEnumAsJavaBean()) {
                    objectSerializer2 = createJavaBeanSerializer(cls);
                    put((Type) cls, objectSerializer2);
                } else {
                    objectSerializer2 = getEnumSerializer();
                    put((Type) cls, objectSerializer2);
                }
            } else {
                Class<? super Object> superclass = cls.getSuperclass();
                if (superclass != null && superclass.isEnum()) {
                    JSONType jSONType2 = (JSONType) TypeUtils.getAnnotation(superclass, JSONType.class);
                    if (jSONType2 != null && jSONType2.serializeEnumAsJavaBean()) {
                        objectSerializer2 = createJavaBeanSerializer(cls);
                        put((Type) cls, objectSerializer2);
                    } else {
                        objectSerializer2 = getEnumSerializer();
                        put((Type) cls, objectSerializer2);
                    }
                } else if (cls.isArray()) {
                    Class<?> componentType = cls.getComponentType();
                    ObjectSerializer arraySerializer = new ArraySerializer(componentType, getObjectWriter(componentType));
                    put((Type) cls, arraySerializer);
                    objectSerializer2 = arraySerializer;
                } else {
                    Class<?> cls2 = null;
                    if (Throwable.class.isAssignableFrom(cls)) {
                        SerializeBeanInfo buildBeanInfo = TypeUtils.buildBeanInfo(cls, null, this.propertyNamingStrategy);
                        buildBeanInfo.features |= SerializerFeature.WriteClassName.mask;
                        ObjectSerializer javaBeanSerializer = new JavaBeanSerializer(buildBeanInfo);
                        put((Type) cls, javaBeanSerializer);
                        objectSerializer2 = javaBeanSerializer;
                    } else if (TimeZone.class.isAssignableFrom(cls) || Map.Entry.class.isAssignableFrom(cls)) {
                        objectSerializer2 = MiscCodec.instance;
                        put((Type) cls, objectSerializer2);
                    } else if (Appendable.class.isAssignableFrom(cls)) {
                        objectSerializer2 = AppendableSerializer.instance;
                        put((Type) cls, objectSerializer2);
                    } else if (Charset.class.isAssignableFrom(cls)) {
                        objectSerializer2 = ToStringSerializer.instance;
                        put((Type) cls, objectSerializer2);
                    } else if (Enumeration.class.isAssignableFrom(cls)) {
                        objectSerializer2 = EnumerationSerializer.instance;
                        put((Type) cls, objectSerializer2);
                    } else if (Calendar.class.isAssignableFrom(cls) || XMLGregorianCalendar.class.isAssignableFrom(cls)) {
                        objectSerializer2 = CalendarCodec.instance;
                        put((Type) cls, objectSerializer2);
                    } else if (TypeUtils.isClob(cls)) {
                        objectSerializer2 = ClobSeriliazer.instance;
                        put((Type) cls, objectSerializer2);
                    } else if (TypeUtils.isPath(cls)) {
                        objectSerializer2 = ToStringSerializer.instance;
                        put((Type) cls, objectSerializer2);
                    } else if (Iterator.class.isAssignableFrom(cls)) {
                        objectSerializer2 = MiscCodec.instance;
                        put((Type) cls, objectSerializer2);
                    } else if (Node.class.isAssignableFrom(cls)) {
                        objectSerializer2 = MiscCodec.instance;
                        put((Type) cls, objectSerializer2);
                    } else {
                        int i = 0;
                        if (name.startsWith("java.awt.") && AwtCodec.support(cls) && !awtError) {
                            try {
                                String[] strArr = {"java.awt.Color", "java.awt.Font", "java.awt.Point", "java.awt.Rectangle"};
                                for (int i2 = 0; i2 < 4; i2++) {
                                    String str = strArr[i2];
                                    if (str.equals(name)) {
                                        Type cls3 = Class.forName(str);
                                        objectSerializer2 = AwtCodec.instance;
                                        put(cls3, objectSerializer2);
                                        return objectSerializer2;
                                    }
                                }
                            } catch (Throwable unused3) {
                                awtError = true;
                            }
                        }
                        if (!jdk8Error && (name.startsWith("java.time.") || name.startsWith("java.util.Optional") || name.equals("java.util.concurrent.atomic.LongAdder") || name.equals("java.util.concurrent.atomic.DoubleAdder"))) {
                            try {
                                String[] strArr2 = {"java.time.LocalDateTime", "java.time.LocalDate", "java.time.LocalTime", "java.time.ZonedDateTime", "java.time.OffsetDateTime", "java.time.OffsetTime", "java.time.ZoneOffset", "java.time.ZoneRegion", "java.time.Period", "java.time.Duration", "java.time.Instant"};
                                for (int i3 = 0; i3 < 11; i3++) {
                                    String str2 = strArr2[i3];
                                    if (str2.equals(name)) {
                                        Type cls4 = Class.forName(str2);
                                        ObjectSerializer objectSerializer3 = Jdk8DateCodec.instance;
                                        put(cls4, objectSerializer3);
                                        return objectSerializer3;
                                    }
                                }
                                String[] strArr3 = {"java.util.Optional", "java.util.OptionalDouble", "java.util.OptionalInt", "java.util.OptionalLong"};
                                for (int i4 = 0; i4 < 4; i4++) {
                                    String str3 = strArr3[i4];
                                    if (str3.equals(name)) {
                                        Type cls5 = Class.forName(str3);
                                        ObjectSerializer objectSerializer4 = OptionalCodec.instance;
                                        put(cls5, objectSerializer4);
                                        return objectSerializer4;
                                    }
                                }
                                String[] strArr4 = {"java.util.concurrent.atomic.LongAdder", "java.util.concurrent.atomic.DoubleAdder"};
                                for (int i5 = 0; i5 < 2; i5++) {
                                    String str4 = strArr4[i5];
                                    if (str4.equals(name)) {
                                        Type cls6 = Class.forName(str4);
                                        ObjectSerializer objectSerializer5 = AdderSerializer.instance;
                                        put(cls6, objectSerializer5);
                                        return objectSerializer5;
                                    }
                                }
                            } catch (Throwable unused4) {
                                jdk8Error = true;
                            }
                        }
                        if (!oracleJdbcError && name.startsWith("oracle.sql.")) {
                            try {
                                String[] strArr5 = {"oracle.sql.DATE", "oracle.sql.TIMESTAMP"};
                                for (int i6 = 0; i6 < 2; i6++) {
                                    String str5 = strArr5[i6];
                                    if (str5.equals(name)) {
                                        Type cls7 = Class.forName(str5);
                                        objectSerializer2 = DateCodec.instance;
                                        put(cls7, objectSerializer2);
                                        return objectSerializer2;
                                    }
                                }
                            } catch (Throwable unused5) {
                                oracleJdbcError = true;
                            }
                        }
                        if (!springfoxError && name.equals("springfox.documentation.spring.web.json.Json")) {
                            try {
                                Type cls8 = Class.forName("springfox.documentation.spring.web.json.Json");
                                objectSerializer2 = SwaggerJsonSerializer.instance;
                                put(cls8, objectSerializer2);
                                return objectSerializer2;
                            } catch (ClassNotFoundException unused6) {
                                springfoxError = true;
                            }
                        }
                        if (!guavaError && name.startsWith("com.google.common.collect.")) {
                            try {
                                String[] strArr6 = {"com.google.common.collect.HashMultimap", "com.google.common.collect.LinkedListMultimap", "com.google.common.collect.LinkedHashMultimap", "com.google.common.collect.ArrayListMultimap", "com.google.common.collect.TreeMultimap"};
                                for (int i7 = 0; i7 < 5; i7++) {
                                    String str6 = strArr6[i7];
                                    if (str6.equals(name)) {
                                        Type cls9 = Class.forName(str6);
                                        objectSerializer2 = GuavaCodec.instance;
                                        put(cls9, objectSerializer2);
                                        return objectSerializer2;
                                    }
                                }
                            } catch (ClassNotFoundException unused7) {
                                guavaError = true;
                            }
                        }
                        if (!jsonnullError && name.equals("net.sf.json.JSONNull")) {
                            try {
                                Type cls10 = Class.forName("net.sf.json.JSONNull");
                                objectSerializer2 = MiscCodec.instance;
                                put(cls10, objectSerializer2);
                                return objectSerializer2;
                            } catch (ClassNotFoundException unused8) {
                                jsonnullError = true;
                            }
                        }
                        if (!jsonobjectError && name.equals("org.json.JSONObject")) {
                            try {
                                Type cls11 = Class.forName("org.json.JSONObject");
                                objectSerializer2 = JSONObjectCodec.instance;
                                put(cls11, objectSerializer2);
                                return objectSerializer2;
                            } catch (ClassNotFoundException unused9) {
                                jsonobjectError = true;
                            }
                        }
                        if (!jodaError && name.startsWith("org.joda.")) {
                            try {
                                String[] strArr7 = {"org.joda.time.LocalDate", "org.joda.time.LocalDateTime", "org.joda.time.LocalTime", "org.joda.time.Instant", "org.joda.time.DateTime", "org.joda.time.Period", "org.joda.time.Duration", "org.joda.time.DateTimeZone", "org.joda.time.UTCDateTimeZone", "org.joda.time.tz.CachedDateTimeZone", "org.joda.time.tz.FixedDateTimeZone"};
                                for (int i8 = 0; i8 < 11; i8++) {
                                    String str7 = strArr7[i8];
                                    if (str7.equals(name)) {
                                        Type cls12 = Class.forName(str7);
                                        objectSerializer2 = JodaCodec.instance;
                                        put(cls12, objectSerializer2);
                                        return objectSerializer2;
                                    }
                                }
                            } catch (ClassNotFoundException unused10) {
                                jodaError = true;
                            }
                        }
                        if ("java.nio.HeapByteBuffer".equals(name)) {
                            ObjectSerializer objectSerializer6 = ByteBufferCodec.instance;
                            put((Type) cls, objectSerializer6);
                            return objectSerializer6;
                        } else if ("org.javamoney.moneta.Money".equals(name)) {
                            ObjectSerializer objectSerializer7 = MonetaCodec.instance;
                            put((Type) cls, objectSerializer7);
                            return objectSerializer7;
                        } else {
                            Class<?>[] interfaces = cls.getInterfaces();
                            if (interfaces.length == 1 && interfaces[0].isAnnotation()) {
                                put((Type) cls, AnnotationSerializer.instance);
                                return AnnotationSerializer.instance;
                            } else if (TypeUtils.isProxy(cls)) {
                                ObjectSerializer objectWriter = getObjectWriter(cls.getSuperclass());
                                put((Type) cls, objectWriter);
                                return objectWriter;
                            } else {
                                if (Proxy.isProxyClass(cls)) {
                                    if (interfaces.length == 2) {
                                        cls2 = interfaces[1];
                                    } else {
                                        int length = interfaces.length;
                                        Class<?> cls13 = null;
                                        while (true) {
                                            if (i >= length) {
                                                cls2 = cls13;
                                                break;
                                            }
                                            Class<?> cls14 = interfaces[i];
                                            if (!cls14.getName().startsWith("org.springframework.aop.")) {
                                                if (cls13 != null) {
                                                    break;
                                                }
                                                cls13 = cls14;
                                            }
                                            i++;
                                        }
                                    }
                                    if (cls2 != null) {
                                        ObjectSerializer objectWriter2 = getObjectWriter(cls2);
                                        put((Type) cls, objectWriter2);
                                        return objectWriter2;
                                    }
                                }
                                if (z) {
                                    objectSerializer2 = createJavaBeanSerializer(cls);
                                    put((Type) cls, objectSerializer2);
                                }
                            }
                        }
                    }
                }
            }
            return objectSerializer2 == null ? get(cls) : objectSerializer2;
        }
        return objectSerializer2;
    }

    protected ObjectSerializer getEnumSerializer() {
        return EnumSerializer.instance;
    }

    public final ObjectSerializer get(Type type) {
        Type mixInAnnotations = JSON.getMixInAnnotations(type);
        if (mixInAnnotations == null) {
            return this.serializers.get(type);
        }
        IdentityHashMap<Type, ObjectSerializer> identityHashMap = this.mixInSerializers.get(type);
        if (identityHashMap == null) {
            return null;
        }
        return identityHashMap.get(mixInAnnotations);
    }

    public boolean put(Object obj, Object obj2) {
        return put((Type) obj, (ObjectSerializer) obj2);
    }

    public boolean put(Type type, ObjectSerializer objectSerializer) {
        Type mixInAnnotations = JSON.getMixInAnnotations(type);
        if (mixInAnnotations != null) {
            IdentityHashMap<Type, ObjectSerializer> identityHashMap = this.mixInSerializers.get(type);
            if (identityHashMap == null) {
                identityHashMap = new IdentityHashMap<>(4);
                this.mixInSerializers.put(type, identityHashMap);
            }
            return identityHashMap.put(mixInAnnotations, objectSerializer);
        }
        return this.serializers.put(type, objectSerializer);
    }

    public void configEnumAsJavaBean(Class<? extends Enum>... clsArr) {
        for (Class<? extends Enum> cls : clsArr) {
            put((Type) cls, createJavaBeanSerializer(cls));
        }
    }

    public void setPropertyNamingStrategy(PropertyNamingStrategy propertyNamingStrategy) {
        this.propertyNamingStrategy = propertyNamingStrategy;
    }

    public void clearSerializers() {
        this.serializers.clear();
        initSerializers();
    }

    public void register(Module module) {
        this.modules.add(module);
    }
}
