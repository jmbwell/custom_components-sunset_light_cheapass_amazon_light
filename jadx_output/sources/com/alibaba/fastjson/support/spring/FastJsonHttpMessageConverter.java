package com.alibaba.fastjson.support.spring;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.serializer.SerializeFilter;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.support.config.FastJsonConfig;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.nio.charset.Charset;
import org.springframework.core.ResolvableType;
import org.springframework.http.HttpInputMessage;
import org.springframework.http.HttpOutputMessage;
import org.springframework.http.MediaType;
import org.springframework.http.converter.AbstractHttpMessageConverter;
import org.springframework.http.converter.GenericHttpMessageConverter;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.http.converter.HttpMessageNotWritableException;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class FastJsonHttpMessageConverter extends AbstractHttpMessageConverter<Object> implements GenericHttpMessageConverter<Object> {
    public static final MediaType APPLICATION_JAVASCRIPT = new MediaType("application", "javascript");
    @Deprecated
    protected String dateFormat;
    private FastJsonConfig fastJsonConfig;
    @Deprecated
    protected SerializerFeature[] features;
    @Deprecated
    protected SerializeFilter[] filters;

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean supports(Class<?> cls) {
        return true;
    }

    public FastJsonConfig getFastJsonConfig() {
        return this.fastJsonConfig;
    }

    public void setFastJsonConfig(FastJsonConfig fastJsonConfig) {
        this.fastJsonConfig = fastJsonConfig;
    }

    public FastJsonHttpMessageConverter() {
        super(MediaType.ALL);
        this.features = new SerializerFeature[0];
        this.filters = new SerializeFilter[0];
        this.fastJsonConfig = new FastJsonConfig();
    }

    @Deprecated
    public Charset getCharset() {
        return this.fastJsonConfig.getCharset();
    }

    @Deprecated
    public void setCharset(Charset charset) {
        this.fastJsonConfig.setCharset(charset);
    }

    @Deprecated
    public String getDateFormat() {
        return this.fastJsonConfig.getDateFormat();
    }

    @Deprecated
    public void setDateFormat(String str) {
        this.fastJsonConfig.setDateFormat(str);
    }

    @Deprecated
    public SerializerFeature[] getFeatures() {
        return this.fastJsonConfig.getSerializerFeatures();
    }

    @Deprecated
    public void setFeatures(SerializerFeature... serializerFeatureArr) {
        this.fastJsonConfig.setSerializerFeatures(serializerFeatureArr);
    }

    @Deprecated
    public SerializeFilter[] getFilters() {
        return this.fastJsonConfig.getSerializeFilters();
    }

    @Deprecated
    public void setFilters(SerializeFilter... serializeFilterArr) {
        this.fastJsonConfig.setSerializeFilters(serializeFilterArr);
    }

    @Deprecated
    public void addSerializeFilter(SerializeFilter serializeFilter) {
        if (serializeFilter == null) {
            return;
        }
        int length = this.fastJsonConfig.getSerializeFilters().length;
        SerializeFilter[] serializeFilterArr = new SerializeFilter[length + 1];
        System.arraycopy(this.fastJsonConfig.getSerializeFilters(), 0, serializeFilterArr, 0, length);
        serializeFilterArr[length] = serializeFilter;
        this.fastJsonConfig.setSerializeFilters(serializeFilterArr);
    }

    public boolean canRead(Type type, Class<?> cls, MediaType mediaType) {
        return super.canRead(cls, mediaType);
    }

    public boolean canWrite(Type type, Class<?> cls, MediaType mediaType) {
        return super.canWrite(cls, mediaType);
    }

    public Object read(Type type, Class<?> cls, HttpInputMessage httpInputMessage) throws IOException, HttpMessageNotReadableException {
        return readType(getType(type, cls), httpInputMessage);
    }

    public void write(Object obj, Type type, MediaType mediaType, HttpOutputMessage httpOutputMessage) throws IOException, HttpMessageNotWritableException {
        super.write(obj, mediaType, httpOutputMessage);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object readInternal(Class<? extends Object> cls, HttpInputMessage httpInputMessage) throws IOException, HttpMessageNotReadableException {
        return readType(getType(cls, null), httpInputMessage);
    }

    private Object readType(Type type, HttpInputMessage httpInputMessage) {
        try {
            return JSON.parseObject(httpInputMessage.getBody(), this.fastJsonConfig.getCharset(), type, this.fastJsonConfig.getParserConfig(), this.fastJsonConfig.getParseProcess(), JSON.DEFAULT_PARSER_FEATURE, this.fastJsonConfig.getFeatures());
        } catch (JSONException e) {
            throw new HttpMessageNotReadableException("JSON parse error: " + e.getMessage(), e);
        } catch (IOException e2) {
            throw new HttpMessageNotReadableException("I/O error while reading input message", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004a, code lost:
        if ((r3 instanceof com.alibaba.fastjson.JSONPObject) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeInternal(java.lang.Object r13, org.springframework.http.HttpOutputMessage r14) throws java.io.IOException, org.springframework.http.converter.HttpMessageNotWritableException {
        /*
            r12 = this;
            java.lang.String r0 = "Could not write JSON: "
            java.io.ByteArrayOutputStream r9 = new java.io.ByteArrayOutputStream
            r9.<init>()
            org.springframework.http.HttpHeaders r10 = r14.getHeaders()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            com.alibaba.fastjson.support.config.FastJsonConfig r1 = r12.fastJsonConfig     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            com.alibaba.fastjson.serializer.SerializeFilter[] r1 = r1.getSerializeFilters()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            java.util.ArrayList r2 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            java.util.List r1 = java.util.Arrays.asList(r1)     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            java.lang.Object r13 = r12.strangeCodeForJackson(r13)     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            boolean r1 = r13 instanceof com.alibaba.fastjson.support.spring.FastJsonContainer     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            if (r1 == 0) goto L33
            com.alibaba.fastjson.support.spring.FastJsonContainer r13 = (com.alibaba.fastjson.support.spring.FastJsonContainer) r13     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            com.alibaba.fastjson.support.spring.PropertyPreFilters r1 = r13.getFilters()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            java.util.List r1 = r1.getFilters()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            r2.addAll(r1)     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            java.lang.Object r13 = r13.getValue()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
        L33:
            r3 = r13
            boolean r13 = r3 instanceof com.alibaba.fastjson.support.spring.MappingFastJsonValue     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            r1 = 1
            if (r13 == 0) goto L48
            r13 = r3
            com.alibaba.fastjson.support.spring.MappingFastJsonValue r13 = (com.alibaba.fastjson.support.spring.MappingFastJsonValue) r13     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            java.lang.String r13 = r13.getJsonpFunction()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            boolean r13 = org.springframework.util.StringUtils.isEmpty(r13)     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            if (r13 != 0) goto L4d
            goto L4c
        L48:
            boolean r13 = r3 instanceof com.alibaba.fastjson.JSONPObject     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            if (r13 == 0) goto L4d
        L4c:
            goto L4e
        L4d:
            r1 = 0
        L4e:
            r13 = r1
            com.alibaba.fastjson.support.config.FastJsonConfig r1 = r12.fastJsonConfig     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            java.nio.charset.Charset r4 = r1.getCharset()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            com.alibaba.fastjson.support.config.FastJsonConfig r1 = r12.fastJsonConfig     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            com.alibaba.fastjson.serializer.SerializeConfig r5 = r1.getSerializeConfig()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            int r1 = r2.size()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            com.alibaba.fastjson.serializer.SerializeFilter[] r1 = new com.alibaba.fastjson.serializer.SerializeFilter[r1]     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            java.lang.Object[] r1 = r2.toArray(r1)     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            r6 = r1
            com.alibaba.fastjson.serializer.SerializeFilter[] r6 = (com.alibaba.fastjson.serializer.SerializeFilter[]) r6     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            com.alibaba.fastjson.support.config.FastJsonConfig r1 = r12.fastJsonConfig     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            java.lang.String r7 = r1.getDateFormat()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            int r8 = com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            com.alibaba.fastjson.support.config.FastJsonConfig r1 = r12.fastJsonConfig     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            com.alibaba.fastjson.serializer.SerializerFeature[] r11 = r1.getSerializerFeatures()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            r1 = r9
            r2 = r4
            r4 = r5
            r5 = r6
            r6 = r7
            r7 = r8
            r8 = r11
            int r1 = com.alibaba.fastjson.JSON.writeJSONString(r1, r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            if (r13 == 0) goto L88
            org.springframework.http.MediaType r13 = com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter.APPLICATION_JAVASCRIPT     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            r10.setContentType(r13)     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
        L88:
            com.alibaba.fastjson.support.config.FastJsonConfig r13 = r12.fastJsonConfig     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            boolean r13 = r13.isWriteContentLength()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            if (r13 == 0) goto L94
            long r1 = (long) r1     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            r10.setContentLength(r1)     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
        L94:
            java.io.OutputStream r13 = r14.getBody()     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            r9.writeTo(r13)     // Catch: java.lang.Throwable -> L9f com.alibaba.fastjson.JSONException -> La1
            r9.close()
            return
        L9f:
            r13 = move-exception
            goto Lb8
        La1:
            r13 = move-exception
            org.springframework.http.converter.HttpMessageNotWritableException r14 = new org.springframework.http.converter.HttpMessageNotWritableException     // Catch: java.lang.Throwable -> L9f
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L9f
            r1.<init>(r0)     // Catch: java.lang.Throwable -> L9f
            java.lang.String r0 = r13.getMessage()     // Catch: java.lang.Throwable -> L9f
            r1.append(r0)     // Catch: java.lang.Throwable -> L9f
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Throwable -> L9f
            r14.<init>(r0, r13)     // Catch: java.lang.Throwable -> L9f
            throw r14     // Catch: java.lang.Throwable -> L9f
        Lb8:
            r9.close()
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.support.spring.FastJsonHttpMessageConverter.writeInternal(java.lang.Object, org.springframework.http.HttpOutputMessage):void");
    }

    private Object strangeCodeForJackson(Object obj) {
        return (obj == null || !"com.fasterxml.jackson.databind.node.ObjectNode".equals(obj.getClass().getName())) ? obj : obj.toString();
    }

    protected Type getType(Type type, Class<?> cls) {
        return Spring4TypeResolvableHelper.access$000() ? Spring4TypeResolvableHelper.getType(type, cls) : type;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
    public static class Spring4TypeResolvableHelper {
        private static boolean hasClazzResolvableType;

        private Spring4TypeResolvableHelper() {
        }

        static /* synthetic */ boolean access$000() {
            return isSupport();
        }

        static {
            try {
                Class.forName("org.springframework.core.ResolvableType");
                hasClazzResolvableType = true;
            } catch (ClassNotFoundException unused) {
                hasClazzResolvableType = false;
            }
        }

        private static boolean isSupport() {
            return hasClazzResolvableType;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static Type getType(Type type, Class<?> cls) {
            if (cls != null) {
                ResolvableType forType = ResolvableType.forType(type);
                if (type instanceof TypeVariable) {
                    ResolvableType resolveVariable = resolveVariable((TypeVariable) type, ResolvableType.forClass(cls));
                    return resolveVariable != ResolvableType.NONE ? resolveVariable.resolve() : type;
                } else if ((type instanceof ParameterizedType) && forType.hasUnresolvableGenerics()) {
                    ParameterizedType parameterizedType = (ParameterizedType) type;
                    Class[] clsArr = new Class[parameterizedType.getActualTypeArguments().length];
                    Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                    for (int i = 0; i < actualTypeArguments.length; i++) {
                        Type type2 = actualTypeArguments[i];
                        if (type2 instanceof TypeVariable) {
                            ResolvableType resolveVariable2 = resolveVariable((TypeVariable) type2, ResolvableType.forClass(cls));
                            if (resolveVariable2 != ResolvableType.NONE) {
                                clsArr[i] = resolveVariable2.resolve();
                            } else {
                                clsArr[i] = ResolvableType.forType(type2).resolve();
                            }
                        } else {
                            clsArr[i] = ResolvableType.forType(type2).resolve();
                        }
                    }
                    return ResolvableType.forClassWithGenerics(forType.getRawClass(), clsArr).getType();
                } else {
                    return type;
                }
            }
            return type;
        }

        private static ResolvableType resolveVariable(TypeVariable<?> typeVariable, ResolvableType resolvableType) {
            if (resolvableType.hasGenerics()) {
                ResolvableType forType = ResolvableType.forType(typeVariable, resolvableType);
                if (forType.resolve() != null) {
                    return forType;
                }
            }
            ResolvableType superType = resolvableType.getSuperType();
            if (superType != ResolvableType.NONE) {
                ResolvableType resolveVariable = resolveVariable(typeVariable, superType);
                if (resolveVariable.resolve() != null) {
                    return resolveVariable;
                }
            }
            for (ResolvableType resolvableType2 : resolvableType.getInterfaces()) {
                ResolvableType resolveVariable2 = resolveVariable(typeVariable, resolvableType2);
                if (resolveVariable2.resolve() != null) {
                    return resolveVariable2;
                }
            }
            return ResolvableType.NONE;
        }
    }
}
