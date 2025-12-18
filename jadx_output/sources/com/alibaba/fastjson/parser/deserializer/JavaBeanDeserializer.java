package com.alibaba.fastjson.parser.deserializer;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONLexerBase;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.JavaBeanInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class JavaBeanDeserializer implements ObjectDeserializer {
    private final Map<String, FieldDeserializer> alterNameFieldDeserializers;
    public final JavaBeanInfo beanInfo;
    protected final Class<?> clazz;
    private ConcurrentMap<String, Object> extraFieldDeserializers;
    private Map<String, FieldDeserializer> fieldDeserializerMap;
    private final FieldDeserializer[] fieldDeserializers;
    private transient long[] hashArray;
    private transient short[] hashArrayMapping;
    private transient long[] smartMatchHashArray;
    private transient short[] smartMatchHashArrayMapping;
    protected final FieldDeserializer[] sortedFieldDeserializers;

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls) {
        this(parserConfig, cls, cls);
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, Class<?> cls, Type type) {
        this(parserConfig, JavaBeanInfo.build(cls, type, parserConfig.propertyNamingStrategy, parserConfig.fieldBased, parserConfig.compatibleWithJavaBean, parserConfig.isJacksonCompatible()));
    }

    public JavaBeanDeserializer(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo) {
        String[] strArr;
        this.clazz = javaBeanInfo.clazz;
        this.beanInfo = javaBeanInfo;
        this.sortedFieldDeserializers = new FieldDeserializer[javaBeanInfo.sortedFields.length];
        int length = javaBeanInfo.sortedFields.length;
        HashMap hashMap = null;
        for (int i = 0; i < length; i++) {
            FieldInfo fieldInfo = javaBeanInfo.sortedFields[i];
            FieldDeserializer createFieldDeserializer = parserConfig.createFieldDeserializer(parserConfig, javaBeanInfo, fieldInfo);
            this.sortedFieldDeserializers[i] = createFieldDeserializer;
            if (length > 128) {
                if (this.fieldDeserializerMap == null) {
                    this.fieldDeserializerMap = new HashMap();
                }
                this.fieldDeserializerMap.put(fieldInfo.name, createFieldDeserializer);
            }
            for (String str : fieldInfo.alternateNames) {
                if (hashMap == null) {
                    hashMap = new HashMap();
                }
                hashMap.put(str, createFieldDeserializer);
            }
        }
        this.alterNameFieldDeserializers = hashMap;
        this.fieldDeserializers = new FieldDeserializer[javaBeanInfo.fields.length];
        int length2 = javaBeanInfo.fields.length;
        for (int i2 = 0; i2 < length2; i2++) {
            this.fieldDeserializers[i2] = getFieldDeserializer(javaBeanInfo.fields[i2].name);
        }
    }

    public FieldDeserializer getFieldDeserializer(String str) {
        return getFieldDeserializer(str, null);
    }

    public FieldDeserializer getFieldDeserializer(String str, int[] iArr) {
        FieldDeserializer fieldDeserializer;
        if (str == null) {
            return null;
        }
        Map<String, FieldDeserializer> map = this.fieldDeserializerMap;
        if (map == null || (fieldDeserializer = map.get(str)) == null) {
            int length = this.sortedFieldDeserializers.length - 1;
            int i = 0;
            while (i <= length) {
                int i2 = (i + length) >>> 1;
                int compareTo = this.sortedFieldDeserializers[i2].fieldInfo.name.compareTo(str);
                if (compareTo < 0) {
                    i = i2 + 1;
                } else if (compareTo <= 0) {
                    if (isSetFlag(i2, iArr)) {
                        return null;
                    }
                    return this.sortedFieldDeserializers[i2];
                } else {
                    length = i2 - 1;
                }
            }
            Map<String, FieldDeserializer> map2 = this.alterNameFieldDeserializers;
            if (map2 != null) {
                return map2.get(str);
            }
            return null;
        }
        return fieldDeserializer;
    }

    public FieldDeserializer getFieldDeserializer(long j) {
        int i = 0;
        if (this.hashArray == null) {
            long[] jArr = new long[this.sortedFieldDeserializers.length];
            int i2 = 0;
            while (true) {
                FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                if (i2 >= fieldDeserializerArr.length) {
                    break;
                }
                jArr[i2] = TypeUtils.fnv1a_64(fieldDeserializerArr[i2].fieldInfo.name);
                i2++;
            }
            Arrays.sort(jArr);
            this.hashArray = jArr;
        }
        int binarySearch = Arrays.binarySearch(this.hashArray, j);
        if (binarySearch < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            while (true) {
                FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                if (i >= fieldDeserializerArr2.length) {
                    break;
                }
                int binarySearch2 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(fieldDeserializerArr2[i].fieldInfo.name));
                if (binarySearch2 >= 0) {
                    sArr[binarySearch2] = (short) i;
                }
                i++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[binarySearch];
        if (s != -1) {
            return this.sortedFieldDeserializers[s];
        }
        return null;
    }

    static boolean isSetFlag(int i, int[] iArr) {
        if (iArr == null) {
            return false;
        }
        int i2 = i / 32;
        int i3 = i % 32;
        if (i2 < iArr.length) {
            if (((1 << i3) & iArr[i2]) != 0) {
                return true;
            }
        }
        return false;
    }

    public Object createInstance(DefaultJSONParser defaultJSONParser, Type type) {
        Object newInstance;
        FieldInfo[] fieldInfoArr;
        if ((type instanceof Class) && this.clazz.isInterface()) {
            return Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{(Class) type}, new JSONObject());
        }
        Object obj = null;
        if (this.beanInfo.defaultConstructor == null && this.beanInfo.factoryMethod == null) {
            return null;
        }
        if (this.beanInfo.factoryMethod == null || this.beanInfo.defaultConstructorParameterSize <= 0) {
            try {
                Constructor<?> constructor = this.beanInfo.defaultConstructor;
                if (this.beanInfo.defaultConstructorParameterSize != 0) {
                    ParseContext context = defaultJSONParser.getContext();
                    if (context == null || context.object == null) {
                        throw new JSONException("can't create non-static inner class instance.");
                    }
                    if (type instanceof Class) {
                        String name = ((Class) type).getName();
                        String substring = name.substring(0, name.lastIndexOf(36));
                        Object obj2 = context.object;
                        String name2 = obj2.getClass().getName();
                        if (!name2.equals(substring)) {
                            ParseContext parseContext = context.parent;
                            if (parseContext == null || parseContext.object == null || !("java.util.ArrayList".equals(name2) || "java.util.List".equals(name2) || "java.util.Collection".equals(name2) || "java.util.Map".equals(name2) || "java.util.HashMap".equals(name2))) {
                                obj = obj2;
                            } else if (parseContext.object.getClass().getName().equals(substring)) {
                                obj = parseContext.object;
                            }
                            obj2 = obj;
                        }
                        if (obj2 == null || ((obj2 instanceof Collection) && ((Collection) obj2).isEmpty())) {
                            throw new JSONException("can't create non-static inner class instance.");
                        }
                        newInstance = constructor.newInstance(obj2);
                    } else {
                        throw new JSONException("can't create non-static inner class instance.");
                    }
                } else if (constructor != null) {
                    newInstance = constructor.newInstance(null);
                } else {
                    newInstance = this.beanInfo.factoryMethod.invoke(null, null);
                }
                if (defaultJSONParser != null && defaultJSONParser.lexer.isEnabled(Feature.InitStringFieldAsEmpty)) {
                    for (FieldInfo fieldInfo : this.beanInfo.fields) {
                        if (fieldInfo.fieldClass == String.class) {
                            try {
                                fieldInfo.set(newInstance, "");
                            } catch (Exception e) {
                                throw new JSONException("create instance error, class " + this.clazz.getName(), e);
                            }
                        }
                    }
                }
                return newInstance;
            } catch (JSONException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new JSONException("create instance error, class " + this.clazz.getName(), e3);
            }
        }
        return null;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return (T) deserialze(defaultJSONParser, type, obj, 0);
    }

    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj, int i) {
        return (T) deserialze(defaultJSONParser, type, obj, null, i, null);
    }

    public <T> T deserialzeArrayMapping(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2) {
        Enum<?> scanEnum;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() != 14) {
            throw new JSONException("error");
        }
        String scanTypeName = jSONLexer.scanTypeName(defaultJSONParser.symbolTable);
        if (scanTypeName != null) {
            ObjectDeserializer seeAlso = getSeeAlso(defaultJSONParser.getConfig(), this.beanInfo, scanTypeName);
            if (seeAlso == null) {
                seeAlso = defaultJSONParser.getConfig().getDeserializer(defaultJSONParser.getConfig().checkAutoType(scanTypeName, TypeUtils.getClass(type), jSONLexer.getFeatures()));
            }
            if (seeAlso instanceof JavaBeanDeserializer) {
                return (T) ((JavaBeanDeserializer) seeAlso).deserialzeArrayMapping(defaultJSONParser, type, obj, obj2);
            }
        }
        T t = (T) createInstance(defaultJSONParser, type);
        int length = this.sortedFieldDeserializers.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            char c2 = i == length + (-1) ? ']' : ',';
            FieldDeserializer fieldDeserializer = this.sortedFieldDeserializers[i];
            Class<?> cls = fieldDeserializer.fieldInfo.fieldClass;
            if (cls == Integer.TYPE) {
                fieldDeserializer.setValue((Object) t, jSONLexer.scanInt(c2));
            } else if (cls == String.class) {
                fieldDeserializer.setValue((Object) t, jSONLexer.scanString(c2));
            } else if (cls == Long.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanLong(c2));
            } else if (cls.isEnum()) {
                char current = jSONLexer.getCurrent();
                if (current == '\"' || current == 'n') {
                    scanEnum = jSONLexer.scanEnum(cls, defaultJSONParser.getSymbolTable(), c2);
                } else if (current >= '0' && current <= '9') {
                    scanEnum = ((EnumDeserializer) ((DefaultFieldDeserializer) fieldDeserializer).getFieldValueDeserilizer(defaultJSONParser.getConfig())).valueOf(jSONLexer.scanInt(c2));
                } else {
                    scanEnum = scanEnum(jSONLexer, c2);
                }
                fieldDeserializer.setValue(t, scanEnum);
            } else if (cls == Boolean.TYPE) {
                fieldDeserializer.setValue(t, jSONLexer.scanBoolean(c2));
            } else if (cls == Float.TYPE) {
                fieldDeserializer.setValue(t, Float.valueOf(jSONLexer.scanFloat(c2)));
            } else if (cls == Double.TYPE) {
                fieldDeserializer.setValue(t, Double.valueOf(jSONLexer.scanDouble(c2)));
            } else if (cls == Date.class && jSONLexer.getCurrent() == '1') {
                fieldDeserializer.setValue(t, new Date(jSONLexer.scanLong(c2)));
            } else if (cls == BigDecimal.class) {
                fieldDeserializer.setValue(t, jSONLexer.scanDecimal(c2));
            } else {
                jSONLexer.nextToken(14);
                fieldDeserializer.setValue(t, defaultJSONParser.parseObject(fieldDeserializer.fieldInfo.fieldType, fieldDeserializer.fieldInfo.name));
                if (jSONLexer.token() == 15) {
                    break;
                }
                check(jSONLexer, c2 == ']' ? 15 : 16);
            }
            i++;
        }
        jSONLexer.nextToken(16);
        return t;
    }

    protected void check(JSONLexer jSONLexer, int i) {
        if (jSONLexer.token() != i) {
            throw new JSONException("syntax error");
        }
    }

    protected Enum<?> scanEnum(JSONLexer jSONLexer, char c2) {
        throw new JSONException("illegal enum. " + jSONLexer.info());
    }

    /* JADX WARN: Code restructure failed: missing block: B:294:0x0380, code lost:
        if (r12.matchStat == (-2)) goto L586;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x053b, code lost:
        r31 = r7;
        r2 = r20;
        r36 = 0;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x0672, code lost:
        r12.nextToken();
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x06a5, code lost:
        r12.nextToken(16);
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x06a8, code lost:
        r1 = (T) r18;
        r2 = r21;
        r6 = r30;
        r3 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x06ae, code lost:
        if (r1 != null) goto L393;
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x06b0, code lost:
        if (r2 != null) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x06b2, code lost:
        r1 = (T) createInstance((com.alibaba.fastjson.parser.DefaultJSONParser) r33, r34);
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x06b6, code lost:
        if (r6 != null) goto L389;
     */
    /* JADX WARN: Code restructure failed: missing block: B:480:0x06b8, code lost:
        r3 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x06ba, code lost:
        r6 = r33.setContext(r3, r1, r35);
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x06bf, code lost:
        r3 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x06c1, code lost:
        if (r6 == null) goto L387;
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x06c3, code lost:
        r6.object = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:486:0x06c5, code lost:
        r33.setContext(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x06c8, code lost:
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:488:0x06c9, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x06ca, code lost:
        r3 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:490:0x06ce, code lost:
        r3 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x06d0, code lost:
        r4 = r32.beanInfo.creatorConstructorParameters;
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x06d6, code lost:
        if (r4 == null) goto L328;
     */
    /* JADX WARN: Code restructure failed: missing block: B:494:0x06d8, code lost:
        r7 = new java.lang.Object[r4.length];
        r10 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x06de, code lost:
        if (r10 >= r4.length) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:497:0x06e0, code lost:
        r11 = r2.remove(r4[r10]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:498:0x06e6, code lost:
        if (r11 != null) goto L216;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x06e8, code lost:
        r12 = r32.beanInfo.creatorConstructorParameterTypes[r10];
        r13 = r32.beanInfo.fields[r10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:500:0x06f6, code lost:
        if (r12 != java.lang.Byte.TYPE) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x06f8, code lost:
        r11 = java.lang.Byte.valueOf(r36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:503:0x06ff, code lost:
        if (r12 != java.lang.Short.TYPE) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:504:0x0701, code lost:
        r11 = java.lang.Short.valueOf(r36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0708, code lost:
        if (r12 != java.lang.Integer.TYPE) goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:507:0x070a, code lost:
        r11 = java.lang.Integer.valueOf(r36);
     */
    /* JADX WARN: Code restructure failed: missing block: B:509:0x0711, code lost:
        if (r12 != java.lang.Long.TYPE) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x0713, code lost:
        r11 = 0L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:512:0x071a, code lost:
        if (r12 != java.lang.Float.TYPE) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:513:0x071c, code lost:
        r11 = java.lang.Float.valueOf(0.0f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:515:0x0723, code lost:
        if (r12 != java.lang.Double.TYPE) goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:516:0x0725, code lost:
        r11 = java.lang.Double.valueOf(0.0d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:518:0x072c, code lost:
        if (r12 != java.lang.Boolean.TYPE) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:519:0x072e, code lost:
        r11 = java.lang.Boolean.FALSE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:521:0x0733, code lost:
        if (r12 != java.lang.String.class) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:523:0x073c, code lost:
        if ((r13.parserFeatures & com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty.mask) == 0) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:524:0x073e, code lost:
        r11 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:525:0x073f, code lost:
        r14 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:527:0x0746, code lost:
        if (r32.beanInfo.creatorConstructorParameterTypes == null) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:529:0x074d, code lost:
        if (r10 >= r32.beanInfo.creatorConstructorParameterTypes.length) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:530:0x074f, code lost:
        r12 = r32.beanInfo.creatorConstructorParameterTypes[r10];
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0757, code lost:
        if ((r12 instanceof java.lang.Class) == false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x0759, code lost:
        r12 = (java.lang.Class) r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:533:0x075f, code lost:
        if (r12.isInstance(r11) != false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x0763, code lost:
        if ((r11 instanceof java.util.List) == false) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x0765, code lost:
        r13 = (java.util.List) r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x076d, code lost:
        if (r13.size() != 1) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x076f, code lost:
        r14 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:539:0x0779, code lost:
        if (r12.isInstance(r13.get(r14)) == false) goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x077b, code lost:
        r11 = r13.get(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x077f, code lost:
        r7[r10] = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:542:0x0781, code lost:
        r10 = r10 + 1;
        r36 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:543:0x0787, code lost:
        r37 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:544:0x078b, code lost:
        r14 = r36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:545:0x078d, code lost:
        r7 = r32.beanInfo.fields;
        r10 = r7.length;
        r11 = new java.lang.Object[r10];
        r12 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:546:0x0795, code lost:
        if (r12 >= r10) goto L376;
     */
    /* JADX WARN: Code restructure failed: missing block: B:547:0x0797, code lost:
        r13 = r7[r12];
        r15 = r2.get(r13.name);
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x079f, code lost:
        if (r15 != null) goto L373;
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x07a1, code lost:
        r14 = r13.fieldType;
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x07a3, code lost:
        r37 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x07a7, code lost:
        if (r14 != java.lang.Byte.TYPE) goto L341;
     */
    /* JADX WARN: Code restructure failed: missing block: B:553:0x07a9, code lost:
        r15 = (byte) 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:555:0x07b1, code lost:
        if (r14 != java.lang.Short.TYPE) goto L345;
     */
    /* JADX WARN: Code restructure failed: missing block: B:556:0x07b3, code lost:
        r15 = (short) 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x07bb, code lost:
        if (r14 != java.lang.Integer.TYPE) goto L349;
     */
    /* JADX WARN: Code restructure failed: missing block: B:559:0x07bd, code lost:
        r15 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:561:0x07c5, code lost:
        if (r14 != java.lang.Long.TYPE) goto L353;
     */
    /* JADX WARN: Code restructure failed: missing block: B:562:0x07c7, code lost:
        r15 = 0L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:564:0x07ce, code lost:
        if (r14 != java.lang.Float.TYPE) goto L357;
     */
    /* JADX WARN: Code restructure failed: missing block: B:565:0x07d0, code lost:
        r15 = java.lang.Float.valueOf(0.0f);
     */
    /* JADX WARN: Code restructure failed: missing block: B:567:0x07d7, code lost:
        if (r14 != java.lang.Double.TYPE) goto L361;
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x07d9, code lost:
        r15 = java.lang.Double.valueOf(0.0d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x07e0, code lost:
        if (r14 != java.lang.Boolean.TYPE) goto L365;
     */
    /* JADX WARN: Code restructure failed: missing block: B:571:0x07e2, code lost:
        r15 = java.lang.Boolean.FALSE;
     */
    /* JADX WARN: Code restructure failed: missing block: B:573:0x07e7, code lost:
        if (r14 != java.lang.String.class) goto L372;
     */
    /* JADX WARN: Code restructure failed: missing block: B:575:0x07f0, code lost:
        if ((r13.parserFeatures & com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty.mask) == 0) goto L371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x07f2, code lost:
        r15 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:577:0x07f4, code lost:
        r37 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x07f6, code lost:
        r11[r12] = r15;
        r12 = r12 + 1;
        r1 = (T) r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:579:0x07fe, code lost:
        r37 = r1;
        r7 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:581:0x0805, code lost:
        if (r32.beanInfo.creatorConstructor == null) goto L315;
     */
    /* JADX WARN: Code restructure failed: missing block: B:583:0x080b, code lost:
        if (r32.beanInfo.kotlin == false) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x080d, code lost:
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x080f, code lost:
        if (r1 >= r7.length) goto L313;
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x0813, code lost:
        if (r7[r1] != null) goto L312;
     */
    /* JADX WARN: Code restructure failed: missing block: B:590:0x0819, code lost:
        if (r32.beanInfo.fields == null) goto L311;
     */
    /* JADX WARN: Code restructure failed: missing block: B:592:0x0820, code lost:
        if (r1 >= r32.beanInfo.fields.length) goto L309;
     */
    /* JADX WARN: Code restructure failed: missing block: B:594:0x082c, code lost:
        if (r32.beanInfo.fields[r1].fieldClass != java.lang.String.class) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:596:0x0832, code lost:
        if (r32.beanInfo.kotlinDefaultConstructor == null) goto L314;
     */
    /* JADX WARN: Code restructure failed: missing block: B:597:0x0834, code lost:
        r1 = (T) r32.beanInfo.kotlinDefaultConstructor.newInstance(null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:598:0x083d, code lost:
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:600:0x083f, code lost:
        if (r5 >= r7.length) goto L269;
     */
    /* JADX WARN: Code restructure failed: missing block: B:601:0x0841, code lost:
        r10 = r7[r5];
     */
    /* JADX WARN: Code restructure failed: missing block: B:602:0x0843, code lost:
        if (r10 == null) goto L268;
     */
    /* JADX WARN: Code restructure failed: missing block: B:604:0x0849, code lost:
        if (r32.beanInfo.fields == null) goto L267;
     */
    /* JADX WARN: Code restructure failed: missing block: B:606:0x0850, code lost:
        if (r5 >= r32.beanInfo.fields.length) goto L266;
     */
    /* JADX WARN: Code restructure failed: missing block: B:607:0x0852, code lost:
        r32.beanInfo.fields[r5].set(r1, r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:608:0x085b, code lost:
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:609:0x085e, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:611:0x0860, code lost:
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:612:0x0863, code lost:
        r1 = r32.beanInfo.creatorConstructor.newInstance(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:613:0x086b, code lost:
        if (r4 == null) goto L282;
     */
    /* JADX WARN: Code restructure failed: missing block: B:614:0x086d, code lost:
        r2 = r2.entrySet().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x0879, code lost:
        if (r2.hasNext() == false) goto L281;
     */
    /* JADX WARN: Code restructure failed: missing block: B:617:0x087b, code lost:
        r4 = r2.next();
        r5 = getFieldDeserializer(r4.getKey());
     */
    /* JADX WARN: Code restructure failed: missing block: B:618:0x088b, code lost:
        if (r5 == null) goto L280;
     */
    /* JADX WARN: Code restructure failed: missing block: B:619:0x088d, code lost:
        r5.setValue(r1, r4.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:620:0x0895, code lost:
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:623:0x08bf, code lost:
        throw new com.alibaba.fastjson.JSONException("create instance error, " + r4 + ", " + r32.beanInfo.creatorConstructor.toGenericString(), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:625:0x08c4, code lost:
        if (r32.beanInfo.factoryMethod == null) goto L317;
     */
    /* JADX WARN: Code restructure failed: missing block: B:626:0x08c6, code lost:
        r1 = r32.beanInfo.factoryMethod.invoke(null, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:628:0x08d0, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:631:0x08f0, code lost:
        throw new com.alibaba.fastjson.JSONException("create factory method error, " + r32.beanInfo.factoryMethod.toString(), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:632:0x08f1, code lost:
        r1 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:633:0x08f3, code lost:
        if (r6 == null) goto L284;
     */
    /* JADX WARN: Code restructure failed: missing block: B:634:0x08f5, code lost:
        r6.object = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:635:0x08f8, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:636:0x08f9, code lost:
        r1 = (T) r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:637:0x08fd, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:638:0x08fe, code lost:
        r1 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:639:0x0902, code lost:
        r1 = r1;
        r3 = r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:640:0x0906, code lost:
        r2 = r32.beanInfo.buildMethod;
     */
    /* JADX WARN: Code restructure failed: missing block: B:641:0x090a, code lost:
        if (r2 != null) goto L290;
     */
    /* JADX WARN: Code restructure failed: missing block: B:642:0x090c, code lost:
        if (r6 == null) goto L288;
     */
    /* JADX WARN: Code restructure failed: missing block: B:643:0x090e, code lost:
        r6.object = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:644:0x0910, code lost:
        r33.setContext(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:645:0x0913, code lost:
        return (T) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:647:0x0915, code lost:
        r2 = (T) r2.invoke(r1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:648:0x0919, code lost:
        if (r6 == null) goto L295;
     */
    /* JADX WARN: Code restructure failed: missing block: B:649:0x091b, code lost:
        r6.object = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:650:0x091d, code lost:
        r33.setContext(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:651:0x0920, code lost:
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:652:0x0921, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:655:0x092a, code lost:
        throw new com.alibaba.fastjson.JSONException("build object error", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:656:0x092b, code lost:
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:665:0x0973, code lost:
        throw new com.alibaba.fastjson.JSONException("syntax error, unexpect token " + com.alibaba.fastjson.parser.JSONToken.name(r12.token()));
     */
    /* JADX WARN: Code restructure failed: missing block: B:675:0x098a, code lost:
        r2 = r0;
        r15 = r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0302 A[Catch: all -> 0x056a, TryCatch #8 {all -> 0x056a, blocks: (B:304:0x03ad, B:306:0x03b5, B:308:0x03c1, B:311:0x03ce, B:319:0x03e6, B:321:0x03f0, B:323:0x03fc, B:325:0x0402, B:327:0x040a, B:329:0x0410, B:330:0x0413, B:331:0x041f, B:334:0x0428, B:336:0x042c, B:337:0x042f, B:339:0x0433, B:340:0x0436, B:341:0x0442, B:343:0x044a, B:344:0x0450, B:346:0x0456, B:348:0x045c, B:349:0x0462, B:350:0x0468, B:351:0x046c, B:354:0x0474, B:365:0x04a4, B:366:0x04be, B:368:0x04c1, B:372:0x04cb, B:374:0x04d5, B:376:0x04e8, B:379:0x04f1, B:381:0x04f9, B:383:0x050f, B:385:0x0517, B:387:0x051b, B:389:0x0521, B:370:0x04c7, B:134:0x01da, B:141:0x01e8, B:146:0x01f7, B:295:0x0382, B:153:0x0206, B:155:0x020a, B:158:0x0213, B:163:0x021d, B:166:0x0226, B:171:0x0230, B:174:0x0239, B:177:0x023f, B:182:0x0249, B:187:0x0253, B:192:0x025d, B:194:0x0263, B:197:0x0271, B:199:0x0279, B:201:0x027d, B:204:0x028d, B:211:0x029e, B:214:0x02a8, B:219:0x02b3, B:222:0x02bc, B:227:0x02c7, B:230:0x02d0, B:233:0x02d7, B:237:0x02e5, B:239:0x02ed, B:244:0x02fc, B:247:0x0302, B:243:0x02f8, B:250:0x0309, B:252:0x0313, B:256:0x031e, B:259:0x0323, B:255:0x031a, B:262:0x0329, B:266:0x033a, B:269:0x033f, B:265:0x0336, B:272:0x0345, B:274:0x034f, B:278:0x035a, B:281:0x035f, B:277:0x0356, B:284:0x0365, B:286:0x036d, B:290:0x0378, B:293:0x037d, B:289:0x0374), top: B:699:0x03ad }] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x056f  */
    /* JADX WARN: Removed duplicated region for block: B:408:0x057a A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:420:0x05b3  */
    /* JADX WARN: Removed duplicated region for block: B:448:0x062b  */
    /* JADX WARN: Removed duplicated region for block: B:471:0x069a  */
    /* JADX WARN: Removed duplicated region for block: B:472:0x069f A[Catch: all -> 0x0980, TryCatch #1 {all -> 0x0980, blocks: (B:469:0x0692, B:472:0x069f, B:474:0x06a5, B:457:0x0666, B:467:0x068a), top: B:687:0x0692 }] */
    /* JADX WARN: Removed duplicated region for block: B:679:0x0995  */
    /* JADX WARN: Removed duplicated region for block: B:699:0x03ad A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r33v0, types: [com.alibaba.fastjson.parser.DefaultJSONParser] */
    /* JADX WARN: Type inference failed for: r3v102 */
    /* JADX WARN: Type inference failed for: r3v103 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v33 */
    /* JADX WARN: Type inference failed for: r3v34 */
    /* JADX WARN: Type inference failed for: r3v36, types: [com.alibaba.fastjson.parser.ParseContext] */
    /* JADX WARN: Type inference failed for: r3v42 */
    /* JADX WARN: Type inference failed for: r3v72 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected <T> T deserialze(com.alibaba.fastjson.parser.DefaultJSONParser r33, java.lang.reflect.Type r34, java.lang.Object r35, java.lang.Object r36, int r37, int[] r38) {
        /*
            Method dump skipped, instructions count: 2464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.deserialze(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.reflect.Type, java.lang.Object, java.lang.Object, int, int[]):java.lang.Object");
    }

    protected Enum scanEnum(JSONLexerBase jSONLexerBase, char[] cArr, ObjectDeserializer objectDeserializer) {
        EnumDeserializer enumDeserializer = objectDeserializer instanceof EnumDeserializer ? (EnumDeserializer) objectDeserializer : null;
        if (enumDeserializer == null) {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        long scanEnumSymbol = jSONLexerBase.scanEnumSymbol(cArr);
        if (jSONLexerBase.matchStat > 0) {
            Enum enumByHashCode = enumDeserializer.getEnumByHashCode(scanEnumSymbol);
            if (enumByHashCode == null) {
                if (scanEnumSymbol == -3750763034362895579L) {
                    return null;
                }
                if (jSONLexerBase.isEnabled(Feature.ErrorOnEnumNotMatch)) {
                    throw new JSONException("not match enum value, " + enumDeserializer.enumClass);
                }
            }
            return enumByHashCode;
        }
        return null;
    }

    public boolean parseField(DefaultJSONParser defaultJSONParser, String str, Object obj, Type type, Map<String, Object> map) {
        return parseField(defaultJSONParser, str, obj, type, map, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:112:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x012a  */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r19v6 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean parseField(com.alibaba.fastjson.parser.DefaultJSONParser r22, java.lang.String r23, java.lang.Object r24, java.lang.reflect.Type r25, java.util.Map<java.lang.String, java.lang.Object> r26, int[] r27) {
        /*
            Method dump skipped, instructions count: 598
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.parseField(com.alibaba.fastjson.parser.DefaultJSONParser, java.lang.String, java.lang.Object, java.lang.reflect.Type, java.util.Map, int[]):boolean");
    }

    public FieldDeserializer smartMatch(String str) {
        return smartMatch(str, null);
    }

    public FieldDeserializer smartMatch(String str, int[] iArr) {
        boolean z;
        if (str == null) {
            return null;
        }
        FieldDeserializer fieldDeserializer = getFieldDeserializer(str, iArr);
        if (fieldDeserializer == null) {
            long fnv1a_64_lower = TypeUtils.fnv1a_64_lower(str);
            int i = 0;
            if (this.smartMatchHashArray == null) {
                long[] jArr = new long[this.sortedFieldDeserializers.length];
                int i2 = 0;
                while (true) {
                    FieldDeserializer[] fieldDeserializerArr = this.sortedFieldDeserializers;
                    if (i2 >= fieldDeserializerArr.length) {
                        break;
                    }
                    jArr[i2] = TypeUtils.fnv1a_64_lower(fieldDeserializerArr[i2].fieldInfo.name);
                    i2++;
                }
                Arrays.sort(jArr);
                this.smartMatchHashArray = jArr;
            }
            int binarySearch = Arrays.binarySearch(this.smartMatchHashArray, fnv1a_64_lower);
            if (binarySearch < 0) {
                z = str.startsWith("is");
                if (z) {
                    binarySearch = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_lower(str.substring(2)));
                }
            } else {
                z = false;
            }
            if (binarySearch >= 0) {
                if (this.smartMatchHashArrayMapping == null) {
                    short[] sArr = new short[this.smartMatchHashArray.length];
                    Arrays.fill(sArr, (short) -1);
                    while (true) {
                        FieldDeserializer[] fieldDeserializerArr2 = this.sortedFieldDeserializers;
                        if (i >= fieldDeserializerArr2.length) {
                            break;
                        }
                        int binarySearch2 = Arrays.binarySearch(this.smartMatchHashArray, TypeUtils.fnv1a_64_lower(fieldDeserializerArr2[i].fieldInfo.name));
                        if (binarySearch2 >= 0) {
                            sArr[binarySearch2] = (short) i;
                        }
                        i++;
                    }
                    this.smartMatchHashArrayMapping = sArr;
                }
                short s = this.smartMatchHashArrayMapping[binarySearch];
                if (s != -1 && !isSetFlag(s, iArr)) {
                    fieldDeserializer = this.sortedFieldDeserializers[s];
                }
            }
            if (fieldDeserializer != null) {
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                if ((fieldInfo.parserFeatures & Feature.DisableFieldSmartMatch.mask) != 0) {
                    return null;
                }
                Class<?> cls = fieldInfo.fieldClass;
                if (z && cls != Boolean.TYPE && cls != Boolean.class) {
                    return null;
                }
            }
        }
        return fieldDeserializer;
    }

    private Object createFactoryInstance(ParserConfig parserConfig, Object obj) throws IllegalArgumentException, IllegalAccessException, InvocationTargetException {
        return this.beanInfo.factoryMethod.invoke(null, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x006e, code lost:
        r8 = r6.getType();
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
        if (r8 != java.lang.Boolean.TYPE) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0078, code lost:
        if (r3 != java.lang.Boolean.FALSE) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007a, code lost:
        r6.setBoolean(r0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0080, code lost:
        if (r3 != java.lang.Boolean.TRUE) goto L116;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0082, code lost:
        r6.setBoolean(r0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0089, code lost:
        if (r8 != java.lang.Integer.TYPE) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x008d, code lost:
        if ((r3 instanceof java.lang.Number) == false) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x008f, code lost:
        r6.setInt(r0, ((java.lang.Number) r3).intValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x009b, code lost:
        if (r8 != java.lang.Long.TYPE) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009f, code lost:
        if ((r3 instanceof java.lang.Number) == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a1, code lost:
        r6.setLong(r0, ((java.lang.Number) r3).longValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b0, code lost:
        if (r8 != java.lang.Float.TYPE) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b4, code lost:
        if ((r3 instanceof java.lang.Number) == false) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b6, code lost:
        r6.setFloat(r0, ((java.lang.Number) r3).floatValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c3, code lost:
        if ((r3 instanceof java.lang.String) == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00c5, code lost:
        r3 = (java.lang.String) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cb, code lost:
        if (r3.length() > 10) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cd, code lost:
        r3 = com.alibaba.fastjson.util.TypeUtils.parseFloat(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00d2, code lost:
        r3 = java.lang.Float.parseFloat(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d6, code lost:
        r6.setFloat(r0, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00dd, code lost:
        if (r8 != java.lang.Double.TYPE) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e1, code lost:
        if ((r3 instanceof java.lang.Number) == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e3, code lost:
        r6.setDouble(r0, ((java.lang.Number) r3).doubleValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f0, code lost:
        if ((r3 instanceof java.lang.String) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f2, code lost:
        r3 = (java.lang.String) r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f8, code lost:
        if (r3.length() > 10) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00fa, code lost:
        r3 = com.alibaba.fastjson.util.TypeUtils.parseDouble(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ff, code lost:
        r3 = java.lang.Double.parseDouble(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0103, code lost:
        r6.setDouble(r0, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0108, code lost:
        if (r3 == null) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x010e, code lost:
        if (r7 != r3.getClass()) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0110, code lost:
        r6.set(r0, r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object createInstance(java.util.Map<java.lang.String, java.lang.Object> r12, com.alibaba.fastjson.parser.ParserConfig r13) throws java.lang.IllegalArgumentException, java.lang.IllegalAccessException, java.lang.reflect.InvocationTargetException {
        /*
            Method dump skipped, instructions count: 743
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.createInstance(java.util.Map, com.alibaba.fastjson.parser.ParserConfig):java.lang.Object");
    }

    public Type getFieldType(int i) {
        return this.sortedFieldDeserializers[i].fieldInfo.fieldType;
    }

    protected Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i) {
        return parseRest(defaultJSONParser, type, obj, obj2, i, new int[0]);
    }

    protected Object parseRest(DefaultJSONParser defaultJSONParser, Type type, Object obj, Object obj2, int i, int[] iArr) {
        return deserialze(defaultJSONParser, type, obj, obj2, i, iArr);
    }

    protected static JavaBeanDeserializer getSeeAlso(ParserConfig parserConfig, JavaBeanInfo javaBeanInfo, String str) {
        if (javaBeanInfo.jsonType == null) {
            return null;
        }
        for (Class<?> cls : javaBeanInfo.jsonType.seeAlso()) {
            ObjectDeserializer deserializer = parserConfig.getDeserializer(cls);
            if (deserializer instanceof JavaBeanDeserializer) {
                JavaBeanDeserializer javaBeanDeserializer = (JavaBeanDeserializer) deserializer;
                JavaBeanInfo javaBeanInfo2 = javaBeanDeserializer.beanInfo;
                if (javaBeanInfo2.typeName.equals(str)) {
                    return javaBeanDeserializer;
                }
                JavaBeanDeserializer seeAlso = getSeeAlso(parserConfig, javaBeanInfo2, str);
                if (seeAlso != null) {
                    return seeAlso;
                }
            }
        }
        return null;
    }

    protected static void parseArray(Collection collection, ObjectDeserializer objectDeserializer, DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        JSONLexerBase jSONLexerBase = (JSONLexerBase) defaultJSONParser.lexer;
        int i = jSONLexerBase.token();
        if (i == 8) {
            jSONLexerBase.nextToken(16);
            jSONLexerBase.token();
            return;
        }
        if (i != 14) {
            defaultJSONParser.throwException(i);
        }
        if (jSONLexerBase.getCurrent() == '[') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(14);
        } else {
            jSONLexerBase.nextToken(14);
        }
        if (jSONLexerBase.token() == 15) {
            jSONLexerBase.nextToken();
            return;
        }
        int i2 = 0;
        while (true) {
            collection.add(objectDeserializer.deserialze(defaultJSONParser, type, Integer.valueOf(i2)));
            i2++;
            if (jSONLexerBase.token() != 16) {
                break;
            } else if (jSONLexerBase.getCurrent() == '[') {
                jSONLexerBase.next();
                jSONLexerBase.setToken(14);
            } else {
                jSONLexerBase.nextToken(14);
            }
        }
        int i3 = jSONLexerBase.token();
        if (i3 != 15) {
            defaultJSONParser.throwException(i3);
        }
        if (jSONLexerBase.getCurrent() == ',') {
            jSONLexerBase.next();
            jSONLexerBase.setToken(16);
            return;
        }
        jSONLexerBase.nextToken(16);
    }
}
