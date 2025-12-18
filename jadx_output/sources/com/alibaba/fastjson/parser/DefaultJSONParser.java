package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONPathException;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer;
import com.alibaba.fastjson.serializer.BeanContext;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    private static final Set<Class<?>> primitiveClasses = new HashSet();
    private String[] autoTypeAccept;
    private boolean autoTypeEnable;
    protected ParserConfig config;
    protected ParseContext context;
    private ParseContext[] contextArray;
    private int contextArrayIndex;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private List<ExtraProcessor> extraProcessors;
    private List<ExtraTypeProvider> extraTypeProviders;
    protected FieldTypeResolver fieldTypeResolver;
    public final Object input;
    protected transient BeanContext lastBeanContext;
    public final JSONLexer lexer;
    private int objectKeyLevel;
    public int resolveStatus;
    private List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    static {
        Class<?>[] clsArr = {Boolean.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class, BigInteger.class, BigDecimal.class, String.class};
        for (int i = 0; i < 17; i++) {
            primitiveClasses.add(clsArr[i]);
        }
    }

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.getLocale());
            this.dateFormat = simpleDateFormat;
            simpleDateFormat.setTimeZone(this.lexer.getTimeZone());
        }
        return this.dateFormat;
    }

    public void setDateFormat(String str) {
        this.dateFormatPattern = str;
        this.dateFormat = null;
    }

    public void setDateFomrat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public DefaultJSONParser(String str) {
        this(str, ParserConfig.getGlobalInstance(), JSON.DEFAULT_PARSER_FEATURE);
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig) {
        this(str, new JSONScanner(str, JSON.DEFAULT_PARSER_FEATURE), parserConfig);
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig, int i) {
        this(str, new JSONScanner(str, i), parserConfig);
    }

    public DefaultJSONParser(char[] cArr, int i, ParserConfig parserConfig, int i2) {
        this(cArr, new JSONScanner(cArr, i, i2), parserConfig);
    }

    public DefaultJSONParser(JSONLexer jSONLexer) {
        this(jSONLexer, ParserConfig.getGlobalInstance());
    }

    public DefaultJSONParser(JSONLexer jSONLexer, ParserConfig parserConfig) {
        this((Object) null, jSONLexer, parserConfig);
    }

    public DefaultJSONParser(Object obj, JSONLexer jSONLexer, ParserConfig parserConfig) {
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.objectKeyLevel = 0;
        this.autoTypeAccept = null;
        this.lexer = jSONLexer;
        this.input = obj;
        this.config = parserConfig;
        this.symbolTable = parserConfig.symbolTable;
        char current = jSONLexer.getCurrent();
        if (current == '{') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 12;
        } else if (current == '[') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 14;
        } else {
            jSONLexer.nextToken();
        }
    }

    public SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public String getInput() {
        Object obj = this.input;
        if (obj instanceof char[]) {
            return new String((char[]) obj);
        }
        return obj.toString();
    }

    /* JADX WARN: Code restructure failed: missing block: B:140:0x0282, code lost:
        r4.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x028d, code lost:
        if (r4.token() != 13) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x028f, code lost:
        r4.nextToken(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x029a, code lost:
        if ((r16.config.getDeserializer(r7) instanceof com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x029c, code lost:
        r0 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r17, (java.lang.Class<java.lang.Object>) r7, r16.config);
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x02a3, code lost:
        r0 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x02a4, code lost:
        if (r0 != null) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x02a8, code lost:
        if (r7 != java.lang.Cloneable.class) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x02aa, code lost:
        r0 = new java.util.HashMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x02b6, code lost:
        if ("java.util.Collections$EmptyMap".equals(r6) == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x02b8, code lost:
        r0 = java.util.Collections.emptyMap();
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x02c3, code lost:
        if ("java.util.Collections$UnmodifiableMap".equals(r6) == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x02c5, code lost:
        r0 = java.util.Collections.unmodifiableMap(new java.util.HashMap());
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x02cf, code lost:
        r0 = r7.newInstance();
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x02d6, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x02d7, code lost:
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x02df, code lost:
        throw new com.alibaba.fastjson.JSONException("create instance error", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x02e0, code lost:
        setResolveStatus(2);
        r3 = r16.context;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x02e6, code lost:
        if (r3 == null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x02e8, code lost:
        if (r18 == null) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x02ec, code lost:
        if ((r18 instanceof java.lang.Integer) != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x02f2, code lost:
        if ((r3.fieldName instanceof java.lang.Integer) != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x02f4, code lost:
        popContext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02fb, code lost:
        if (r17.size() <= 0) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02fd, code lost:
        r0 = com.alibaba.fastjson.util.TypeUtils.cast((java.lang.Object) r17, (java.lang.Class<java.lang.Object>) r7, r16.config);
        setResolveStatus(0);
        parseObject(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x030d, code lost:
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x030e, code lost:
        r0 = r16.config.getDeserializer(r7);
        r3 = r0.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x031e, code lost:
        if (com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class.isAssignableFrom(r3) == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0322, code lost:
        if (r3 == com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer.class) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0326, code lost:
        if (r3 == com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer.class) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0328, code lost:
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x032f, code lost:
        if ((r0 instanceof com.alibaba.fastjson.parser.deserializer.MapDeserializer) == false) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x0331, code lost:
        setResolveStatus(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x033c, code lost:
        return r0.deserialze(r16, r7, r18);
     */
    /* JADX WARN: Removed duplicated region for block: B:115:0x0212 A[Catch: all -> 0x0676, TryCatch #0 {all -> 0x0676, blocks: (B:24:0x006f, B:26:0x0073, B:29:0x007d, B:32:0x0090, B:36:0x00a8, B:115:0x0212, B:116:0x0218, B:118:0x0223, B:120:0x022b, B:124:0x0241, B:126:0x024f, B:139:0x027c, B:140:0x0282, B:142:0x028f, B:143:0x0292, B:145:0x029c, B:150:0x02aa, B:151:0x02b0, B:153:0x02b8, B:154:0x02bd, B:156:0x02c5, B:157:0x02cf, B:161:0x02d8, B:162:0x02df, B:163:0x02e0, B:166:0x02ea, B:168:0x02ee, B:170:0x02f4, B:171:0x02f7, B:173:0x02fd, B:176:0x030e, B:182:0x0328, B:186:0x0335, B:183:0x032d, B:185:0x0331, B:128:0x0256, B:130:0x025c, B:135:0x0269, B:136:0x026c, B:194:0x0346, B:196:0x034c, B:198:0x0354, B:200:0x035e, B:202:0x036f, B:204:0x037a, B:206:0x0382, B:208:0x0386, B:210:0x038c, B:213:0x0391, B:215:0x0395, B:235:0x03e7, B:237:0x03ef, B:240:0x03f8, B:241:0x0412, B:217:0x039c, B:219:0x03a4, B:221:0x03a8, B:222:0x03ab, B:223:0x03b7, B:226:0x03c0, B:228:0x03c4, B:229:0x03c7, B:231:0x03cb, B:232:0x03cf, B:233:0x03db, B:242:0x0413, B:243:0x0431, B:246:0x0435, B:248:0x0439, B:250:0x043d, B:252:0x0443, B:253:0x0446, B:257:0x044e, B:263:0x0460, B:265:0x046f, B:267:0x047a, B:268:0x0482, B:269:0x0485, B:281:0x04b1, B:283:0x04bc, B:287:0x04c9, B:290:0x04d9, B:291:0x04f7, B:276:0x0495, B:278:0x049f, B:280:0x04ae, B:279:0x04a4, B:294:0x04fc, B:296:0x0506, B:298:0x050e, B:299:0x0511, B:301:0x051c, B:302:0x0520, B:304:0x052b, B:307:0x0532, B:310:0x053f, B:311:0x0544, B:314:0x0549, B:316:0x054e, B:320:0x0559, B:322:0x0561, B:324:0x0576, B:328:0x0595, B:330:0x059b, B:333:0x05a1, B:335:0x05a7, B:337:0x05af, B:340:0x05c0, B:343:0x05c8, B:345:0x05cc, B:346:0x05d3, B:348:0x05d8, B:349:0x05db, B:351:0x05e3, B:354:0x05ed, B:357:0x05f7, B:358:0x05fc, B:359:0x0601, B:360:0x061b, B:325:0x0581, B:326:0x0588, B:361:0x061c, B:363:0x062e, B:366:0x0635, B:369:0x0643, B:370:0x0661, B:39:0x00ba, B:40:0x00d8, B:43:0x00dd, B:45:0x00e8, B:47:0x00ec, B:49:0x00f0, B:51:0x00f6, B:52:0x00f9, B:59:0x0108, B:61:0x0110, B:64:0x0120, B:65:0x0138, B:66:0x0139, B:67:0x013e, B:78:0x0153, B:79:0x0159, B:81:0x0160, B:83:0x0169, B:90:0x017b, B:93:0x0183, B:94:0x019b, B:88:0x0176, B:82:0x0165, B:95:0x019c, B:96:0x01b4, B:102:0x01be, B:104:0x01c6, B:107:0x01d7, B:108:0x01f7, B:109:0x01f8, B:110:0x01fd, B:111:0x01fe, B:113:0x0208, B:371:0x0662, B:372:0x0669, B:373:0x066a, B:374:0x066f, B:375:0x0670, B:376:0x0675), top: B:380:0x006f, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0435 A[Catch: all -> 0x0676, TryCatch #0 {all -> 0x0676, blocks: (B:24:0x006f, B:26:0x0073, B:29:0x007d, B:32:0x0090, B:36:0x00a8, B:115:0x0212, B:116:0x0218, B:118:0x0223, B:120:0x022b, B:124:0x0241, B:126:0x024f, B:139:0x027c, B:140:0x0282, B:142:0x028f, B:143:0x0292, B:145:0x029c, B:150:0x02aa, B:151:0x02b0, B:153:0x02b8, B:154:0x02bd, B:156:0x02c5, B:157:0x02cf, B:161:0x02d8, B:162:0x02df, B:163:0x02e0, B:166:0x02ea, B:168:0x02ee, B:170:0x02f4, B:171:0x02f7, B:173:0x02fd, B:176:0x030e, B:182:0x0328, B:186:0x0335, B:183:0x032d, B:185:0x0331, B:128:0x0256, B:130:0x025c, B:135:0x0269, B:136:0x026c, B:194:0x0346, B:196:0x034c, B:198:0x0354, B:200:0x035e, B:202:0x036f, B:204:0x037a, B:206:0x0382, B:208:0x0386, B:210:0x038c, B:213:0x0391, B:215:0x0395, B:235:0x03e7, B:237:0x03ef, B:240:0x03f8, B:241:0x0412, B:217:0x039c, B:219:0x03a4, B:221:0x03a8, B:222:0x03ab, B:223:0x03b7, B:226:0x03c0, B:228:0x03c4, B:229:0x03c7, B:231:0x03cb, B:232:0x03cf, B:233:0x03db, B:242:0x0413, B:243:0x0431, B:246:0x0435, B:248:0x0439, B:250:0x043d, B:252:0x0443, B:253:0x0446, B:257:0x044e, B:263:0x0460, B:265:0x046f, B:267:0x047a, B:268:0x0482, B:269:0x0485, B:281:0x04b1, B:283:0x04bc, B:287:0x04c9, B:290:0x04d9, B:291:0x04f7, B:276:0x0495, B:278:0x049f, B:280:0x04ae, B:279:0x04a4, B:294:0x04fc, B:296:0x0506, B:298:0x050e, B:299:0x0511, B:301:0x051c, B:302:0x0520, B:304:0x052b, B:307:0x0532, B:310:0x053f, B:311:0x0544, B:314:0x0549, B:316:0x054e, B:320:0x0559, B:322:0x0561, B:324:0x0576, B:328:0x0595, B:330:0x059b, B:333:0x05a1, B:335:0x05a7, B:337:0x05af, B:340:0x05c0, B:343:0x05c8, B:345:0x05cc, B:346:0x05d3, B:348:0x05d8, B:349:0x05db, B:351:0x05e3, B:354:0x05ed, B:357:0x05f7, B:358:0x05fc, B:359:0x0601, B:360:0x061b, B:325:0x0581, B:326:0x0588, B:361:0x061c, B:363:0x062e, B:366:0x0635, B:369:0x0643, B:370:0x0661, B:39:0x00ba, B:40:0x00d8, B:43:0x00dd, B:45:0x00e8, B:47:0x00ec, B:49:0x00f0, B:51:0x00f6, B:52:0x00f9, B:59:0x0108, B:61:0x0110, B:64:0x0120, B:65:0x0138, B:66:0x0139, B:67:0x013e, B:78:0x0153, B:79:0x0159, B:81:0x0160, B:83:0x0169, B:90:0x017b, B:93:0x0183, B:94:0x019b, B:88:0x0176, B:82:0x0165, B:95:0x019c, B:96:0x01b4, B:102:0x01be, B:104:0x01c6, B:107:0x01d7, B:108:0x01f7, B:109:0x01f8, B:110:0x01fd, B:111:0x01fe, B:113:0x0208, B:371:0x0662, B:372:0x0669, B:373:0x066a, B:374:0x066f, B:375:0x0670, B:376:0x0675), top: B:380:0x006f, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x0460 A[Catch: all -> 0x0676, TRY_ENTER, TryCatch #0 {all -> 0x0676, blocks: (B:24:0x006f, B:26:0x0073, B:29:0x007d, B:32:0x0090, B:36:0x00a8, B:115:0x0212, B:116:0x0218, B:118:0x0223, B:120:0x022b, B:124:0x0241, B:126:0x024f, B:139:0x027c, B:140:0x0282, B:142:0x028f, B:143:0x0292, B:145:0x029c, B:150:0x02aa, B:151:0x02b0, B:153:0x02b8, B:154:0x02bd, B:156:0x02c5, B:157:0x02cf, B:161:0x02d8, B:162:0x02df, B:163:0x02e0, B:166:0x02ea, B:168:0x02ee, B:170:0x02f4, B:171:0x02f7, B:173:0x02fd, B:176:0x030e, B:182:0x0328, B:186:0x0335, B:183:0x032d, B:185:0x0331, B:128:0x0256, B:130:0x025c, B:135:0x0269, B:136:0x026c, B:194:0x0346, B:196:0x034c, B:198:0x0354, B:200:0x035e, B:202:0x036f, B:204:0x037a, B:206:0x0382, B:208:0x0386, B:210:0x038c, B:213:0x0391, B:215:0x0395, B:235:0x03e7, B:237:0x03ef, B:240:0x03f8, B:241:0x0412, B:217:0x039c, B:219:0x03a4, B:221:0x03a8, B:222:0x03ab, B:223:0x03b7, B:226:0x03c0, B:228:0x03c4, B:229:0x03c7, B:231:0x03cb, B:232:0x03cf, B:233:0x03db, B:242:0x0413, B:243:0x0431, B:246:0x0435, B:248:0x0439, B:250:0x043d, B:252:0x0443, B:253:0x0446, B:257:0x044e, B:263:0x0460, B:265:0x046f, B:267:0x047a, B:268:0x0482, B:269:0x0485, B:281:0x04b1, B:283:0x04bc, B:287:0x04c9, B:290:0x04d9, B:291:0x04f7, B:276:0x0495, B:278:0x049f, B:280:0x04ae, B:279:0x04a4, B:294:0x04fc, B:296:0x0506, B:298:0x050e, B:299:0x0511, B:301:0x051c, B:302:0x0520, B:304:0x052b, B:307:0x0532, B:310:0x053f, B:311:0x0544, B:314:0x0549, B:316:0x054e, B:320:0x0559, B:322:0x0561, B:324:0x0576, B:328:0x0595, B:330:0x059b, B:333:0x05a1, B:335:0x05a7, B:337:0x05af, B:340:0x05c0, B:343:0x05c8, B:345:0x05cc, B:346:0x05d3, B:348:0x05d8, B:349:0x05db, B:351:0x05e3, B:354:0x05ed, B:357:0x05f7, B:358:0x05fc, B:359:0x0601, B:360:0x061b, B:325:0x0581, B:326:0x0588, B:361:0x061c, B:363:0x062e, B:366:0x0635, B:369:0x0643, B:370:0x0661, B:39:0x00ba, B:40:0x00d8, B:43:0x00dd, B:45:0x00e8, B:47:0x00ec, B:49:0x00f0, B:51:0x00f6, B:52:0x00f9, B:59:0x0108, B:61:0x0110, B:64:0x0120, B:65:0x0138, B:66:0x0139, B:67:0x013e, B:78:0x0153, B:79:0x0159, B:81:0x0160, B:83:0x0169, B:90:0x017b, B:93:0x0183, B:94:0x019b, B:88:0x0176, B:82:0x0165, B:95:0x019c, B:96:0x01b4, B:102:0x01be, B:104:0x01c6, B:107:0x01d7, B:108:0x01f7, B:109:0x01f8, B:110:0x01fd, B:111:0x01fe, B:113:0x0208, B:371:0x0662, B:372:0x0669, B:373:0x066a, B:374:0x066f, B:375:0x0670, B:376:0x0675), top: B:380:0x006f, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:270:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x04bc A[Catch: all -> 0x0676, TryCatch #0 {all -> 0x0676, blocks: (B:24:0x006f, B:26:0x0073, B:29:0x007d, B:32:0x0090, B:36:0x00a8, B:115:0x0212, B:116:0x0218, B:118:0x0223, B:120:0x022b, B:124:0x0241, B:126:0x024f, B:139:0x027c, B:140:0x0282, B:142:0x028f, B:143:0x0292, B:145:0x029c, B:150:0x02aa, B:151:0x02b0, B:153:0x02b8, B:154:0x02bd, B:156:0x02c5, B:157:0x02cf, B:161:0x02d8, B:162:0x02df, B:163:0x02e0, B:166:0x02ea, B:168:0x02ee, B:170:0x02f4, B:171:0x02f7, B:173:0x02fd, B:176:0x030e, B:182:0x0328, B:186:0x0335, B:183:0x032d, B:185:0x0331, B:128:0x0256, B:130:0x025c, B:135:0x0269, B:136:0x026c, B:194:0x0346, B:196:0x034c, B:198:0x0354, B:200:0x035e, B:202:0x036f, B:204:0x037a, B:206:0x0382, B:208:0x0386, B:210:0x038c, B:213:0x0391, B:215:0x0395, B:235:0x03e7, B:237:0x03ef, B:240:0x03f8, B:241:0x0412, B:217:0x039c, B:219:0x03a4, B:221:0x03a8, B:222:0x03ab, B:223:0x03b7, B:226:0x03c0, B:228:0x03c4, B:229:0x03c7, B:231:0x03cb, B:232:0x03cf, B:233:0x03db, B:242:0x0413, B:243:0x0431, B:246:0x0435, B:248:0x0439, B:250:0x043d, B:252:0x0443, B:253:0x0446, B:257:0x044e, B:263:0x0460, B:265:0x046f, B:267:0x047a, B:268:0x0482, B:269:0x0485, B:281:0x04b1, B:283:0x04bc, B:287:0x04c9, B:290:0x04d9, B:291:0x04f7, B:276:0x0495, B:278:0x049f, B:280:0x04ae, B:279:0x04a4, B:294:0x04fc, B:296:0x0506, B:298:0x050e, B:299:0x0511, B:301:0x051c, B:302:0x0520, B:304:0x052b, B:307:0x0532, B:310:0x053f, B:311:0x0544, B:314:0x0549, B:316:0x054e, B:320:0x0559, B:322:0x0561, B:324:0x0576, B:328:0x0595, B:330:0x059b, B:333:0x05a1, B:335:0x05a7, B:337:0x05af, B:340:0x05c0, B:343:0x05c8, B:345:0x05cc, B:346:0x05d3, B:348:0x05d8, B:349:0x05db, B:351:0x05e3, B:354:0x05ed, B:357:0x05f7, B:358:0x05fc, B:359:0x0601, B:360:0x061b, B:325:0x0581, B:326:0x0588, B:361:0x061c, B:363:0x062e, B:366:0x0635, B:369:0x0643, B:370:0x0661, B:39:0x00ba, B:40:0x00d8, B:43:0x00dd, B:45:0x00e8, B:47:0x00ec, B:49:0x00f0, B:51:0x00f6, B:52:0x00f9, B:59:0x0108, B:61:0x0110, B:64:0x0120, B:65:0x0138, B:66:0x0139, B:67:0x013e, B:78:0x0153, B:79:0x0159, B:81:0x0160, B:83:0x0169, B:90:0x017b, B:93:0x0183, B:94:0x019b, B:88:0x0176, B:82:0x0165, B:95:0x019c, B:96:0x01b4, B:102:0x01be, B:104:0x01c6, B:107:0x01d7, B:108:0x01f7, B:109:0x01f8, B:110:0x01fd, B:111:0x01fe, B:113:0x0208, B:371:0x0662, B:372:0x0669, B:373:0x066a, B:374:0x066f, B:375:0x0670, B:376:0x0675), top: B:380:0x006f, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:340:0x05c0 A[Catch: all -> 0x0676, TryCatch #0 {all -> 0x0676, blocks: (B:24:0x006f, B:26:0x0073, B:29:0x007d, B:32:0x0090, B:36:0x00a8, B:115:0x0212, B:116:0x0218, B:118:0x0223, B:120:0x022b, B:124:0x0241, B:126:0x024f, B:139:0x027c, B:140:0x0282, B:142:0x028f, B:143:0x0292, B:145:0x029c, B:150:0x02aa, B:151:0x02b0, B:153:0x02b8, B:154:0x02bd, B:156:0x02c5, B:157:0x02cf, B:161:0x02d8, B:162:0x02df, B:163:0x02e0, B:166:0x02ea, B:168:0x02ee, B:170:0x02f4, B:171:0x02f7, B:173:0x02fd, B:176:0x030e, B:182:0x0328, B:186:0x0335, B:183:0x032d, B:185:0x0331, B:128:0x0256, B:130:0x025c, B:135:0x0269, B:136:0x026c, B:194:0x0346, B:196:0x034c, B:198:0x0354, B:200:0x035e, B:202:0x036f, B:204:0x037a, B:206:0x0382, B:208:0x0386, B:210:0x038c, B:213:0x0391, B:215:0x0395, B:235:0x03e7, B:237:0x03ef, B:240:0x03f8, B:241:0x0412, B:217:0x039c, B:219:0x03a4, B:221:0x03a8, B:222:0x03ab, B:223:0x03b7, B:226:0x03c0, B:228:0x03c4, B:229:0x03c7, B:231:0x03cb, B:232:0x03cf, B:233:0x03db, B:242:0x0413, B:243:0x0431, B:246:0x0435, B:248:0x0439, B:250:0x043d, B:252:0x0443, B:253:0x0446, B:257:0x044e, B:263:0x0460, B:265:0x046f, B:267:0x047a, B:268:0x0482, B:269:0x0485, B:281:0x04b1, B:283:0x04bc, B:287:0x04c9, B:290:0x04d9, B:291:0x04f7, B:276:0x0495, B:278:0x049f, B:280:0x04ae, B:279:0x04a4, B:294:0x04fc, B:296:0x0506, B:298:0x050e, B:299:0x0511, B:301:0x051c, B:302:0x0520, B:304:0x052b, B:307:0x0532, B:310:0x053f, B:311:0x0544, B:314:0x0549, B:316:0x054e, B:320:0x0559, B:322:0x0561, B:324:0x0576, B:328:0x0595, B:330:0x059b, B:333:0x05a1, B:335:0x05a7, B:337:0x05af, B:340:0x05c0, B:343:0x05c8, B:345:0x05cc, B:346:0x05d3, B:348:0x05d8, B:349:0x05db, B:351:0x05e3, B:354:0x05ed, B:357:0x05f7, B:358:0x05fc, B:359:0x0601, B:360:0x061b, B:325:0x0581, B:326:0x0588, B:361:0x061c, B:363:0x062e, B:366:0x0635, B:369:0x0643, B:370:0x0661, B:39:0x00ba, B:40:0x00d8, B:43:0x00dd, B:45:0x00e8, B:47:0x00ec, B:49:0x00f0, B:51:0x00f6, B:52:0x00f9, B:59:0x0108, B:61:0x0110, B:64:0x0120, B:65:0x0138, B:66:0x0139, B:67:0x013e, B:78:0x0153, B:79:0x0159, B:81:0x0160, B:83:0x0169, B:90:0x017b, B:93:0x0183, B:94:0x019b, B:88:0x0176, B:82:0x0165, B:95:0x019c, B:96:0x01b4, B:102:0x01be, B:104:0x01c6, B:107:0x01d7, B:108:0x01f7, B:109:0x01f8, B:110:0x01fd, B:111:0x01fe, B:113:0x0208, B:371:0x0662, B:372:0x0669, B:373:0x066a, B:374:0x066f, B:375:0x0670, B:376:0x0675), top: B:380:0x006f, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:345:0x05cc A[Catch: all -> 0x0676, TryCatch #0 {all -> 0x0676, blocks: (B:24:0x006f, B:26:0x0073, B:29:0x007d, B:32:0x0090, B:36:0x00a8, B:115:0x0212, B:116:0x0218, B:118:0x0223, B:120:0x022b, B:124:0x0241, B:126:0x024f, B:139:0x027c, B:140:0x0282, B:142:0x028f, B:143:0x0292, B:145:0x029c, B:150:0x02aa, B:151:0x02b0, B:153:0x02b8, B:154:0x02bd, B:156:0x02c5, B:157:0x02cf, B:161:0x02d8, B:162:0x02df, B:163:0x02e0, B:166:0x02ea, B:168:0x02ee, B:170:0x02f4, B:171:0x02f7, B:173:0x02fd, B:176:0x030e, B:182:0x0328, B:186:0x0335, B:183:0x032d, B:185:0x0331, B:128:0x0256, B:130:0x025c, B:135:0x0269, B:136:0x026c, B:194:0x0346, B:196:0x034c, B:198:0x0354, B:200:0x035e, B:202:0x036f, B:204:0x037a, B:206:0x0382, B:208:0x0386, B:210:0x038c, B:213:0x0391, B:215:0x0395, B:235:0x03e7, B:237:0x03ef, B:240:0x03f8, B:241:0x0412, B:217:0x039c, B:219:0x03a4, B:221:0x03a8, B:222:0x03ab, B:223:0x03b7, B:226:0x03c0, B:228:0x03c4, B:229:0x03c7, B:231:0x03cb, B:232:0x03cf, B:233:0x03db, B:242:0x0413, B:243:0x0431, B:246:0x0435, B:248:0x0439, B:250:0x043d, B:252:0x0443, B:253:0x0446, B:257:0x044e, B:263:0x0460, B:265:0x046f, B:267:0x047a, B:268:0x0482, B:269:0x0485, B:281:0x04b1, B:283:0x04bc, B:287:0x04c9, B:290:0x04d9, B:291:0x04f7, B:276:0x0495, B:278:0x049f, B:280:0x04ae, B:279:0x04a4, B:294:0x04fc, B:296:0x0506, B:298:0x050e, B:299:0x0511, B:301:0x051c, B:302:0x0520, B:304:0x052b, B:307:0x0532, B:310:0x053f, B:311:0x0544, B:314:0x0549, B:316:0x054e, B:320:0x0559, B:322:0x0561, B:324:0x0576, B:328:0x0595, B:330:0x059b, B:333:0x05a1, B:335:0x05a7, B:337:0x05af, B:340:0x05c0, B:343:0x05c8, B:345:0x05cc, B:346:0x05d3, B:348:0x05d8, B:349:0x05db, B:351:0x05e3, B:354:0x05ed, B:357:0x05f7, B:358:0x05fc, B:359:0x0601, B:360:0x061b, B:325:0x0581, B:326:0x0588, B:361:0x061c, B:363:0x062e, B:366:0x0635, B:369:0x0643, B:370:0x0661, B:39:0x00ba, B:40:0x00d8, B:43:0x00dd, B:45:0x00e8, B:47:0x00ec, B:49:0x00f0, B:51:0x00f6, B:52:0x00f9, B:59:0x0108, B:61:0x0110, B:64:0x0120, B:65:0x0138, B:66:0x0139, B:67:0x013e, B:78:0x0153, B:79:0x0159, B:81:0x0160, B:83:0x0169, B:90:0x017b, B:93:0x0183, B:94:0x019b, B:88:0x0176, B:82:0x0165, B:95:0x019c, B:96:0x01b4, B:102:0x01be, B:104:0x01c6, B:107:0x01d7, B:108:0x01f7, B:109:0x01f8, B:110:0x01fd, B:111:0x01fe, B:113:0x0208, B:371:0x0662, B:372:0x0669, B:373:0x066a, B:374:0x066f, B:375:0x0670, B:376:0x0675), top: B:380:0x006f, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x05d8 A[Catch: all -> 0x0676, TryCatch #0 {all -> 0x0676, blocks: (B:24:0x006f, B:26:0x0073, B:29:0x007d, B:32:0x0090, B:36:0x00a8, B:115:0x0212, B:116:0x0218, B:118:0x0223, B:120:0x022b, B:124:0x0241, B:126:0x024f, B:139:0x027c, B:140:0x0282, B:142:0x028f, B:143:0x0292, B:145:0x029c, B:150:0x02aa, B:151:0x02b0, B:153:0x02b8, B:154:0x02bd, B:156:0x02c5, B:157:0x02cf, B:161:0x02d8, B:162:0x02df, B:163:0x02e0, B:166:0x02ea, B:168:0x02ee, B:170:0x02f4, B:171:0x02f7, B:173:0x02fd, B:176:0x030e, B:182:0x0328, B:186:0x0335, B:183:0x032d, B:185:0x0331, B:128:0x0256, B:130:0x025c, B:135:0x0269, B:136:0x026c, B:194:0x0346, B:196:0x034c, B:198:0x0354, B:200:0x035e, B:202:0x036f, B:204:0x037a, B:206:0x0382, B:208:0x0386, B:210:0x038c, B:213:0x0391, B:215:0x0395, B:235:0x03e7, B:237:0x03ef, B:240:0x03f8, B:241:0x0412, B:217:0x039c, B:219:0x03a4, B:221:0x03a8, B:222:0x03ab, B:223:0x03b7, B:226:0x03c0, B:228:0x03c4, B:229:0x03c7, B:231:0x03cb, B:232:0x03cf, B:233:0x03db, B:242:0x0413, B:243:0x0431, B:246:0x0435, B:248:0x0439, B:250:0x043d, B:252:0x0443, B:253:0x0446, B:257:0x044e, B:263:0x0460, B:265:0x046f, B:267:0x047a, B:268:0x0482, B:269:0x0485, B:281:0x04b1, B:283:0x04bc, B:287:0x04c9, B:290:0x04d9, B:291:0x04f7, B:276:0x0495, B:278:0x049f, B:280:0x04ae, B:279:0x04a4, B:294:0x04fc, B:296:0x0506, B:298:0x050e, B:299:0x0511, B:301:0x051c, B:302:0x0520, B:304:0x052b, B:307:0x0532, B:310:0x053f, B:311:0x0544, B:314:0x0549, B:316:0x054e, B:320:0x0559, B:322:0x0561, B:324:0x0576, B:328:0x0595, B:330:0x059b, B:333:0x05a1, B:335:0x05a7, B:337:0x05af, B:340:0x05c0, B:343:0x05c8, B:345:0x05cc, B:346:0x05d3, B:348:0x05d8, B:349:0x05db, B:351:0x05e3, B:354:0x05ed, B:357:0x05f7, B:358:0x05fc, B:359:0x0601, B:360:0x061b, B:325:0x0581, B:326:0x0588, B:361:0x061c, B:363:0x062e, B:366:0x0635, B:369:0x0643, B:370:0x0661, B:39:0x00ba, B:40:0x00d8, B:43:0x00dd, B:45:0x00e8, B:47:0x00ec, B:49:0x00f0, B:51:0x00f6, B:52:0x00f9, B:59:0x0108, B:61:0x0110, B:64:0x0120, B:65:0x0138, B:66:0x0139, B:67:0x013e, B:78:0x0153, B:79:0x0159, B:81:0x0160, B:83:0x0169, B:90:0x017b, B:93:0x0183, B:94:0x019b, B:88:0x0176, B:82:0x0165, B:95:0x019c, B:96:0x01b4, B:102:0x01be, B:104:0x01c6, B:107:0x01d7, B:108:0x01f7, B:109:0x01f8, B:110:0x01fd, B:111:0x01fe, B:113:0x0208, B:371:0x0662, B:372:0x0669, B:373:0x066a, B:374:0x066f, B:375:0x0670, B:376:0x0675), top: B:380:0x006f, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:354:0x05ed A[Catch: all -> 0x0676, TRY_ENTER, TryCatch #0 {all -> 0x0676, blocks: (B:24:0x006f, B:26:0x0073, B:29:0x007d, B:32:0x0090, B:36:0x00a8, B:115:0x0212, B:116:0x0218, B:118:0x0223, B:120:0x022b, B:124:0x0241, B:126:0x024f, B:139:0x027c, B:140:0x0282, B:142:0x028f, B:143:0x0292, B:145:0x029c, B:150:0x02aa, B:151:0x02b0, B:153:0x02b8, B:154:0x02bd, B:156:0x02c5, B:157:0x02cf, B:161:0x02d8, B:162:0x02df, B:163:0x02e0, B:166:0x02ea, B:168:0x02ee, B:170:0x02f4, B:171:0x02f7, B:173:0x02fd, B:176:0x030e, B:182:0x0328, B:186:0x0335, B:183:0x032d, B:185:0x0331, B:128:0x0256, B:130:0x025c, B:135:0x0269, B:136:0x026c, B:194:0x0346, B:196:0x034c, B:198:0x0354, B:200:0x035e, B:202:0x036f, B:204:0x037a, B:206:0x0382, B:208:0x0386, B:210:0x038c, B:213:0x0391, B:215:0x0395, B:235:0x03e7, B:237:0x03ef, B:240:0x03f8, B:241:0x0412, B:217:0x039c, B:219:0x03a4, B:221:0x03a8, B:222:0x03ab, B:223:0x03b7, B:226:0x03c0, B:228:0x03c4, B:229:0x03c7, B:231:0x03cb, B:232:0x03cf, B:233:0x03db, B:242:0x0413, B:243:0x0431, B:246:0x0435, B:248:0x0439, B:250:0x043d, B:252:0x0443, B:253:0x0446, B:257:0x044e, B:263:0x0460, B:265:0x046f, B:267:0x047a, B:268:0x0482, B:269:0x0485, B:281:0x04b1, B:283:0x04bc, B:287:0x04c9, B:290:0x04d9, B:291:0x04f7, B:276:0x0495, B:278:0x049f, B:280:0x04ae, B:279:0x04a4, B:294:0x04fc, B:296:0x0506, B:298:0x050e, B:299:0x0511, B:301:0x051c, B:302:0x0520, B:304:0x052b, B:307:0x0532, B:310:0x053f, B:311:0x0544, B:314:0x0549, B:316:0x054e, B:320:0x0559, B:322:0x0561, B:324:0x0576, B:328:0x0595, B:330:0x059b, B:333:0x05a1, B:335:0x05a7, B:337:0x05af, B:340:0x05c0, B:343:0x05c8, B:345:0x05cc, B:346:0x05d3, B:348:0x05d8, B:349:0x05db, B:351:0x05e3, B:354:0x05ed, B:357:0x05f7, B:358:0x05fc, B:359:0x0601, B:360:0x061b, B:325:0x0581, B:326:0x0588, B:361:0x061c, B:363:0x062e, B:366:0x0635, B:369:0x0643, B:370:0x0661, B:39:0x00ba, B:40:0x00d8, B:43:0x00dd, B:45:0x00e8, B:47:0x00ec, B:49:0x00f0, B:51:0x00f6, B:52:0x00f9, B:59:0x0108, B:61:0x0110, B:64:0x0120, B:65:0x0138, B:66:0x0139, B:67:0x013e, B:78:0x0153, B:79:0x0159, B:81:0x0160, B:83:0x0169, B:90:0x017b, B:93:0x0183, B:94:0x019b, B:88:0x0176, B:82:0x0165, B:95:0x019c, B:96:0x01b4, B:102:0x01be, B:104:0x01c6, B:107:0x01d7, B:108:0x01f7, B:109:0x01f8, B:110:0x01fd, B:111:0x01fe, B:113:0x0208, B:371:0x0662, B:372:0x0669, B:373:0x066a, B:374:0x066f, B:375:0x0670, B:376:0x0675), top: B:380:0x006f, inners: #1, #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0183 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:407:0x04c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:408:0x05e3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0181  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object parseObject(java.util.Map r17, java.lang.Object r18) {
        /*
            Method dump skipped, instructions count: 1659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parseObject(java.util.Map, java.lang.Object):java.lang.Object");
    }

    public ParserConfig getConfig() {
        return this.config;
    }

    public void setConfig(ParserConfig parserConfig) {
        this.config = parserConfig;
    }

    public <T> T parseObject(Class<T> cls) {
        return (T) parseObject(cls, (Object) null);
    }

    public <T> T parseObject(Type type) {
        return (T) parseObject(type, (Object) null);
    }

    public <T> T parseObject(Type type, Object obj) {
        int i = this.lexer.token();
        if (i == 8) {
            this.lexer.nextToken();
            return null;
        }
        if (i == 4) {
            if (type == byte[].class) {
                T t = (T) this.lexer.bytesValue();
                this.lexer.nextToken();
                return t;
            } else if (type == char[].class) {
                String stringVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return (T) stringVal.toCharArray();
            }
        }
        ObjectDeserializer deserializer = this.config.getDeserializer(type);
        try {
            if (deserializer.getClass() == JavaBeanDeserializer.class) {
                if (this.lexer.token() != 12 && this.lexer.token() != 14) {
                    throw new JSONException("syntax error,except start with { or [,but actually start with " + this.lexer.tokenName());
                }
                return (T) ((JavaBeanDeserializer) deserializer).deserialze(this, type, obj, 0);
            }
            return (T) deserializer.deserialze(this, type, obj);
        } catch (JSONException e) {
            throw e;
        } catch (Throwable th) {
            throw new JSONException(th.getMessage(), th);
        }
    }

    public <T> List<T> parseArray(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        parseArray((Class<?>) cls, (Collection) arrayList);
        return arrayList;
    }

    public void parseArray(Class<?> cls, Collection collection) {
        parseArray((Type) cls, collection);
    }

    public void parseArray(Type type, Collection collection) {
        parseArray(type, collection, null);
    }

    public void parseArray(Type type, Collection collection, Object obj) {
        ObjectDeserializer deserializer;
        int i = this.lexer.token();
        if (i == 21 || i == 22) {
            this.lexer.nextToken();
            i = this.lexer.token();
        }
        if (i != 14) {
            throw new JSONException("expect '[', but " + JSONToken.name(i) + ", " + this.lexer.info());
        }
        if (Integer.TYPE == type) {
            deserializer = IntegerCodec.instance;
            this.lexer.nextToken(2);
        } else if (String.class == type) {
            deserializer = StringCodec.instance;
            this.lexer.nextToken(4);
        } else {
            deserializer = this.config.getDeserializer(type);
            this.lexer.nextToken(deserializer.getFastMatchToken());
        }
        ParseContext parseContext = this.context;
        setContext(collection, obj);
        int i2 = 0;
        while (true) {
            try {
                if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (this.lexer.token() == 16) {
                        this.lexer.nextToken();
                    }
                }
                if (this.lexer.token() != 15) {
                    Object obj2 = null;
                    if (Integer.TYPE == type) {
                        collection.add(IntegerCodec.instance.deserialze(this, null, null));
                    } else if (String.class == type) {
                        if (this.lexer.token() == 4) {
                            obj2 = this.lexer.stringVal();
                            this.lexer.nextToken(16);
                        } else {
                            Object parse = parse();
                            if (parse != null) {
                                obj2 = parse.toString();
                            }
                        }
                        collection.add(obj2);
                    } else {
                        if (this.lexer.token() == 8) {
                            this.lexer.nextToken();
                        } else {
                            obj2 = deserializer.deserialze(this, type, Integer.valueOf(i2));
                        }
                        collection.add(obj2);
                        checkListResolve(collection);
                    }
                    if (this.lexer.token() == 16) {
                        this.lexer.nextToken(deserializer.getFastMatchToken());
                    }
                    i2++;
                } else {
                    setContext(parseContext);
                    this.lexer.nextToken(16);
                    return;
                }
            } catch (Throwable th) {
                setContext(parseContext);
                throw th;
            }
        }
    }

    public Object[] parseArray(Type[] typeArr) {
        Object cast;
        Class<?> cls;
        boolean z;
        Class cls2;
        int i = 8;
        if (this.lexer.token() == 8) {
            this.lexer.nextToken(16);
            return null;
        }
        int i2 = 14;
        if (this.lexer.token() != 14) {
            throw new JSONException("syntax error : " + this.lexer.tokenName());
        }
        Object[] objArr = new Object[typeArr.length];
        if (typeArr.length == 0) {
            this.lexer.nextToken(15);
            if (this.lexer.token() != 15) {
                throw new JSONException("syntax error");
            }
            this.lexer.nextToken(16);
            return new Object[0];
        }
        this.lexer.nextToken(2);
        int i3 = 0;
        while (i3 < typeArr.length) {
            if (this.lexer.token() == i) {
                this.lexer.nextToken(16);
                cast = null;
            } else {
                Type type = typeArr[i3];
                if (type == Integer.TYPE || type == Integer.class) {
                    if (this.lexer.token() == 2) {
                        cast = Integer.valueOf(this.lexer.intValue());
                        this.lexer.nextToken(16);
                    } else {
                        cast = TypeUtils.cast(parse(), type, this.config);
                    }
                } else if (type == String.class) {
                    if (this.lexer.token() == 4) {
                        cast = this.lexer.stringVal();
                        this.lexer.nextToken(16);
                    } else {
                        cast = TypeUtils.cast(parse(), type, this.config);
                    }
                } else {
                    if (i3 == typeArr.length - 1 && (type instanceof Class) && (((cls2 = (Class) type) != byte[].class && cls2 != char[].class) || this.lexer.token() != 4)) {
                        z = cls2.isArray();
                        cls = cls2.getComponentType();
                    } else {
                        cls = null;
                        z = false;
                    }
                    if (z && this.lexer.token() != i2) {
                        ArrayList arrayList = new ArrayList();
                        ObjectDeserializer deserializer = this.config.getDeserializer(cls);
                        int fastMatchToken = deserializer.getFastMatchToken();
                        if (this.lexer.token() != 15) {
                            while (true) {
                                arrayList.add(deserializer.deserialze(this, type, null));
                                if (this.lexer.token() != 16) {
                                    break;
                                }
                                this.lexer.nextToken(fastMatchToken);
                            }
                            if (this.lexer.token() != 15) {
                                throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                            }
                        }
                        cast = TypeUtils.cast(arrayList, type, this.config);
                    } else {
                        cast = this.config.getDeserializer(type).deserialze(this, type, Integer.valueOf(i3));
                    }
                }
            }
            objArr[i3] = cast;
            if (this.lexer.token() == 15) {
                break;
            } else if (this.lexer.token() != 16) {
                throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
            } else {
                if (i3 == typeArr.length - 1) {
                    this.lexer.nextToken(15);
                } else {
                    this.lexer.nextToken(2);
                }
                i3++;
                i = 8;
                i2 = 14;
            }
        }
        if (this.lexer.token() != 15) {
            throw new JSONException("syntax error");
        }
        this.lexer.nextToken(16);
        return objArr;
    }

    public void parseObject(Object obj) {
        Object deserialze;
        Class<?> cls = obj.getClass();
        ObjectDeserializer deserializer = this.config.getDeserializer(cls);
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (this.lexer.token() != 12 && this.lexer.token() != 16) {
            throw new JSONException("syntax error, expect {, actual " + this.lexer.tokenName());
        }
        while (true) {
            String scanSymbol = this.lexer.scanSymbol(this.symbolTable);
            if (scanSymbol == null) {
                if (this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                } else if (this.lexer.token() == 16 && this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                }
            }
            FieldDeserializer fieldDeserializer = javaBeanDeserializer != null ? javaBeanDeserializer.getFieldDeserializer(scanSymbol) : null;
            if (fieldDeserializer == null) {
                if (!this.lexer.isEnabled(Feature.IgnoreNotMatch)) {
                    throw new JSONException("setter not found, class " + cls.getName() + ", property " + scanSymbol);
                }
                this.lexer.nextTokenWithColon();
                parse();
                if (this.lexer.token() == 13) {
                    this.lexer.nextToken();
                    return;
                }
            } else {
                Class<?> cls2 = fieldDeserializer.fieldInfo.fieldClass;
                Type type = fieldDeserializer.fieldInfo.fieldType;
                if (cls2 == Integer.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    deserialze = IntegerCodec.instance.deserialze(this, type, null);
                } else if (cls2 == String.class) {
                    this.lexer.nextTokenWithColon(4);
                    deserialze = StringCodec.deserialze(this);
                } else if (cls2 == Long.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    deserialze = LongCodec.instance.deserialze(this, type, null);
                } else {
                    ObjectDeserializer deserializer2 = this.config.getDeserializer(cls2, type);
                    this.lexer.nextTokenWithColon(deserializer2.getFastMatchToken());
                    deserialze = deserializer2.deserialze(this, type, null);
                }
                fieldDeserializer.setValue(obj, deserialze);
                if (this.lexer.token() != 16 && this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                }
            }
        }
    }

    public Object parseArrayWithType(Type type) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        if (actualTypeArguments.length != 1) {
            throw new JSONException("not support type " + type);
        }
        Type type2 = actualTypeArguments[0];
        if (type2 instanceof Class) {
            ArrayList arrayList = new ArrayList();
            parseArray((Class) type2, (Collection) arrayList);
            return arrayList;
        } else if (type2 instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type2;
            Type type3 = wildcardType.getUpperBounds()[0];
            if (Object.class.equals(type3)) {
                if (wildcardType.getLowerBounds().length == 0) {
                    return parse();
                }
                throw new JSONException("not support type : " + type);
            }
            ArrayList arrayList2 = new ArrayList();
            parseArray((Class) type3, (Collection) arrayList2);
            return arrayList2;
        } else {
            if (type2 instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) type2;
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length != 1) {
                    throw new JSONException("not support : " + typeVariable);
                }
                Type type4 = bounds[0];
                if (type4 instanceof Class) {
                    ArrayList arrayList3 = new ArrayList();
                    parseArray((Class) type4, (Collection) arrayList3);
                    return arrayList3;
                }
            }
            if (type2 instanceof ParameterizedType) {
                ArrayList arrayList4 = new ArrayList();
                parseArray((ParameterizedType) type2, arrayList4);
                return arrayList4;
            }
            throw new JSONException("TODO : " + type);
        }
    }

    public void acceptType(String str) {
        JSONLexer jSONLexer = this.lexer;
        jSONLexer.nextTokenWithColon();
        if (jSONLexer.token() != 4) {
            throw new JSONException("type not match error");
        }
        if (str.equals(jSONLexer.stringVal())) {
            jSONLexer.nextToken();
            if (jSONLexer.token() == 16) {
                jSONLexer.nextToken();
                return;
            }
            return;
        }
        throw new JSONException("type not match error");
    }

    public int getResolveStatus() {
        return this.resolveStatus;
    }

    public void setResolveStatus(int i) {
        this.resolveStatus = i;
    }

    public Object getObject(String str) {
        for (int i = 0; i < this.contextArrayIndex; i++) {
            if (str.equals(this.contextArray[i].toString())) {
                return this.contextArray[i].object;
            }
        }
        return null;
    }

    public void checkListResolve(Collection collection) {
        if (this.resolveStatus == 1) {
            if (collection instanceof List) {
                ResolveTask lastResolveTask = getLastResolveTask();
                lastResolveTask.fieldDeserializer = new ResolveFieldDeserializer(this, (List) collection, collection.size() - 1);
                lastResolveTask.ownerContext = this.context;
                setResolveStatus(0);
                return;
            }
            ResolveTask lastResolveTask2 = getLastResolveTask();
            lastResolveTask2.fieldDeserializer = new ResolveFieldDeserializer(collection);
            lastResolveTask2.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    public void checkMapResolve(Map map, Object obj) {
        if (this.resolveStatus == 1) {
            ResolveFieldDeserializer resolveFieldDeserializer = new ResolveFieldDeserializer(map, obj);
            ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = resolveFieldDeserializer;
            lastResolveTask.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    public Object parseObject(Map map) {
        return parseObject(map, (Object) null);
    }

    public JSONObject parseObject() {
        Object parseObject = parseObject((Map) new JSONObject(this.lexer.isEnabled(Feature.OrderedField)));
        if (parseObject instanceof JSONObject) {
            return (JSONObject) parseObject;
        }
        if (parseObject == null) {
            return null;
        }
        return new JSONObject((Map) parseObject);
    }

    public final void parseArray(Collection collection) {
        parseArray(collection, (Object) null);
    }

    public final void parseArray(Collection collection, Object obj) {
        Number number;
        Number decimalValue;
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == 21 || jSONLexer.token() == 22) {
            jSONLexer.nextToken();
        }
        if (jSONLexer.token() != 14) {
            throw new JSONException("syntax error, expect [, actual " + JSONToken.name(jSONLexer.token()) + ", pos " + jSONLexer.pos() + ", fieldName " + obj);
        }
        jSONLexer.nextToken(4);
        ParseContext parseContext = this.context;
        if (parseContext != null && parseContext.level > 512) {
            throw new JSONException("array level > 512");
        }
        ParseContext parseContext2 = this.context;
        setContext(collection, obj);
        int i = 0;
        while (true) {
            try {
                if (jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (jSONLexer.token() == 16) {
                        jSONLexer.nextToken();
                    }
                }
                int i2 = jSONLexer.token();
                if (i2 == 2) {
                    Number integerValue = jSONLexer.integerValue();
                    jSONLexer.nextToken(16);
                    number = integerValue;
                } else if (i2 == 3) {
                    if (jSONLexer.isEnabled(Feature.UseBigDecimal)) {
                        decimalValue = jSONLexer.decimalValue(true);
                    } else {
                        decimalValue = jSONLexer.decimalValue(false);
                    }
                    number = decimalValue;
                    jSONLexer.nextToken(16);
                } else if (i2 == 4) {
                    String stringVal = jSONLexer.stringVal();
                    jSONLexer.nextToken(16);
                    number = stringVal;
                    if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                        JSONScanner jSONScanner = new JSONScanner(stringVal);
                        Date date = stringVal;
                        if (jSONScanner.scanISO8601DateIfMatch()) {
                            date = jSONScanner.getCalendar().getTime();
                        }
                        jSONScanner.close();
                        number = date;
                    }
                } else if (i2 == 6) {
                    Boolean bool = Boolean.TRUE;
                    jSONLexer.nextToken(16);
                    number = bool;
                } else if (i2 != 7) {
                    number = null;
                    number = null;
                    if (i2 == 8) {
                        jSONLexer.nextToken(4);
                    } else if (i2 == 12) {
                        number = parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), Integer.valueOf(i));
                    } else if (i2 == 20) {
                        throw new JSONException("unclosed jsonArray");
                    } else {
                        if (i2 == 23) {
                            jSONLexer.nextToken(4);
                        } else if (i2 == 14) {
                            JSONArray jSONArray = new JSONArray();
                            parseArray(jSONArray, Integer.valueOf(i));
                            number = jSONArray;
                            if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                number = jSONArray.toArray();
                            }
                        } else if (i2 == 15) {
                            jSONLexer.nextToken(16);
                            return;
                        } else {
                            number = parse();
                        }
                    }
                } else {
                    Boolean bool2 = Boolean.FALSE;
                    jSONLexer.nextToken(16);
                    number = bool2;
                }
                collection.add(number);
                checkListResolve(collection);
                if (jSONLexer.token() == 16) {
                    jSONLexer.nextToken(4);
                }
                i++;
            } finally {
                setContext(parseContext2);
            }
        }
    }

    public ParseContext getContext() {
        return this.context;
    }

    public List<ResolveTask> getResolveTaskList() {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        return this.resolveTaskList;
    }

    public void addResolveTask(ResolveTask resolveTask) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(resolveTask);
    }

    public ResolveTask getLastResolveTask() {
        List<ResolveTask> list = this.resolveTaskList;
        return list.get(list.size() - 1);
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public FieldTypeResolver getFieldTypeResolver() {
        return this.fieldTypeResolver;
    }

    public void setFieldTypeResolver(FieldTypeResolver fieldTypeResolver) {
        this.fieldTypeResolver = fieldTypeResolver;
    }

    public void setContext(ParseContext parseContext) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = parseContext;
    }

    public void popContext() {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = this.context.parent;
        int i = this.contextArrayIndex;
        if (i <= 0) {
            return;
        }
        int i2 = i - 1;
        this.contextArrayIndex = i2;
        this.contextArray[i2] = null;
    }

    public ParseContext setContext(Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        return setContext(this.context, obj, obj2);
    }

    public ParseContext setContext(ParseContext parseContext, Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        ParseContext parseContext2 = new ParseContext(parseContext, obj, obj2);
        this.context = parseContext2;
        addContext(parseContext2);
        return this.context;
    }

    private void addContext(ParseContext parseContext) {
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        ParseContext[] parseContextArr = this.contextArray;
        if (parseContextArr == null) {
            this.contextArray = new ParseContext[8];
        } else if (i >= parseContextArr.length) {
            ParseContext[] parseContextArr2 = new ParseContext[(parseContextArr.length * 3) / 2];
            System.arraycopy(parseContextArr, 0, parseContextArr2, 0, parseContextArr.length);
            this.contextArray = parseContextArr2;
        }
        this.contextArray[i] = parseContext;
    }

    public Object parse() {
        return parse(null);
    }

    public Object parseKey() {
        if (this.lexer.token() == 18) {
            String stringVal = this.lexer.stringVal();
            this.lexer.nextToken(16);
            return stringVal;
        }
        return parse(null);
    }

    public Object parse(Object obj) {
        JSONLexer jSONLexer = this.lexer;
        int i = jSONLexer.token();
        if (i == 2) {
            Number integerValue = jSONLexer.integerValue();
            jSONLexer.nextToken();
            return integerValue;
        } else if (i == 3) {
            Number decimalValue = jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
            jSONLexer.nextToken();
            return decimalValue;
        } else if (i == 4) {
            String stringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                JSONScanner jSONScanner = new JSONScanner(stringVal);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        return jSONScanner.getCalendar().getTime();
                    }
                } finally {
                    jSONScanner.close();
                }
            }
            return stringVal;
        } else if (i != 12) {
            if (i == 14) {
                JSONArray jSONArray = new JSONArray();
                parseArray(jSONArray, obj);
                return jSONLexer.isEnabled(Feature.UseObjectArray) ? jSONArray.toArray() : jSONArray;
            } else if (i == 18) {
                if ("NaN".equals(jSONLexer.stringVal())) {
                    jSONLexer.nextToken();
                    return null;
                }
                throw new JSONException("syntax error, " + jSONLexer.info());
            } else if (i != 26) {
                switch (i) {
                    case 6:
                        jSONLexer.nextToken();
                        return Boolean.TRUE;
                    case 7:
                        jSONLexer.nextToken();
                        return Boolean.FALSE;
                    case 8:
                        jSONLexer.nextToken();
                        return null;
                    case 9:
                        jSONLexer.nextToken(18);
                        if (jSONLexer.token() != 18) {
                            throw new JSONException("syntax error");
                        }
                        jSONLexer.nextToken(10);
                        accept(10);
                        long longValue = jSONLexer.integerValue().longValue();
                        accept(2);
                        accept(11);
                        return new Date(longValue);
                    default:
                        switch (i) {
                            case 20:
                                if (jSONLexer.isBlankInput()) {
                                    return null;
                                }
                                throw new JSONException("unterminated json string, " + jSONLexer.info());
                            case 21:
                                jSONLexer.nextToken();
                                HashSet hashSet = new HashSet();
                                parseArray(hashSet, obj);
                                return hashSet;
                            case 22:
                                jSONLexer.nextToken();
                                TreeSet treeSet = new TreeSet();
                                parseArray(treeSet, obj);
                                return treeSet;
                            case 23:
                                jSONLexer.nextToken();
                                return null;
                            default:
                                throw new JSONException("syntax error, " + jSONLexer.info());
                        }
                }
            } else {
                byte[] bytesValue = jSONLexer.bytesValue();
                jSONLexer.nextToken();
                return bytesValue;
            }
        } else {
            return parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), obj);
        }
    }

    public void config(Feature feature, boolean z) {
        this.lexer.config(feature, z);
    }

    public boolean isEnabled(Feature feature) {
        return this.lexer.isEnabled(feature);
    }

    public JSONLexer getLexer() {
        return this.lexer;
    }

    public final void accept(int i) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken();
            return;
        }
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(jSONLexer.token()));
    }

    public final void accept(int i, int i2) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken(i2);
        } else {
            throwException(i);
        }
    }

    public void throwException(int i) {
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(this.lexer.token()));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        JSONLexer jSONLexer = this.lexer;
        try {
            if (jSONLexer.isEnabled(Feature.AutoCloseSource) && jSONLexer.token() != 20) {
                throw new JSONException("not close json text, token : " + JSONToken.name(jSONLexer.token()));
            }
        } finally {
            jSONLexer.close();
        }
    }

    public Object resolveReference(String str) {
        if (this.contextArray == null) {
            return null;
        }
        int i = 0;
        while (true) {
            ParseContext[] parseContextArr = this.contextArray;
            if (i >= parseContextArr.length || i >= this.contextArrayIndex) {
                break;
            }
            ParseContext parseContext = parseContextArr[i];
            if (parseContext.toString().equals(str)) {
                return parseContext.object;
            }
            i++;
        }
        return null;
    }

    public void handleResovleTask(Object obj) {
        Object obj2;
        List<ResolveTask> list = this.resolveTaskList;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ResolveTask resolveTask = this.resolveTaskList.get(i);
            String str = resolveTask.referenceValue;
            Object obj3 = resolveTask.ownerContext != null ? resolveTask.ownerContext.object : null;
            if (str.startsWith("$")) {
                obj2 = getObject(str);
                if (obj2 == null) {
                    try {
                        JSONPath compile = JSONPath.compile(str);
                        if (compile.isRef()) {
                            obj2 = compile.eval(obj);
                        }
                    } catch (JSONPathException unused) {
                    }
                }
            } else {
                obj2 = resolveTask.context.object;
            }
            FieldDeserializer fieldDeserializer = resolveTask.fieldDeserializer;
            if (fieldDeserializer != null) {
                if (obj2 != null && obj2.getClass() == JSONObject.class && fieldDeserializer.fieldInfo != null && !Map.class.isAssignableFrom(fieldDeserializer.fieldInfo.fieldClass)) {
                    Object obj4 = this.contextArray[0].object;
                    JSONPath compile2 = JSONPath.compile(str);
                    if (compile2.isRef()) {
                        obj2 = compile2.eval(obj4);
                    }
                }
                fieldDeserializer.setValue(obj3, obj2);
            }
        }
    }

    /* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
    public static class ResolveTask {
        public final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        public final String referenceValue;

        public ResolveTask(ParseContext parseContext, String str) {
            this.context = parseContext;
            this.referenceValue = str;
        }
    }

    public void parseExtra(Object obj, String str) {
        Object parseObject;
        this.lexer.nextTokenWithColon();
        List<ExtraTypeProvider> list = this.extraTypeProviders;
        Type type = null;
        if (list != null) {
            for (ExtraTypeProvider extraTypeProvider : list) {
                type = extraTypeProvider.getExtraType(obj, str);
            }
        }
        if (type == null) {
            parseObject = parse();
        } else {
            parseObject = parseObject(type);
        }
        if (obj instanceof ExtraProcessable) {
            ((ExtraProcessable) obj).processExtra(str, parseObject);
            return;
        }
        List<ExtraProcessor> list2 = this.extraProcessors;
        if (list2 != null) {
            for (ExtraProcessor extraProcessor : list2) {
                extraProcessor.processExtra(obj, str, parseObject);
            }
        }
        if (this.resolveStatus == 1) {
            this.resolveStatus = 0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x0233, code lost:
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable r11, java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 610
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.DefaultJSONParser.parse(com.alibaba.fastjson.parser.deserializer.PropertyProcessable, java.lang.Object):java.lang.Object");
    }
}
