package com.alibaba.fastjson.parser.deserializer;

import androidx.work.Constraints$Builder$$ExternalSyntheticApiModelOutline0;
import androidx.work.WorkRequest;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONScanner;
import com.alibaba.fastjson.serializer.BeanContext;
import com.alibaba.fastjson.serializer.ContextObjectSerializer;
import com.alibaba.fastjson.serializer.JSONSerializer;
import com.alibaba.fastjson.serializer.ObjectSerializer;
import com.alibaba.fastjson.serializer.SerializeWriter;
import java.io.IOException;
import java.lang.reflect.Type;
import java.time.Duration;
import java.time.Instant;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;
import java.time.OffsetDateTime;
import java.time.OffsetTime;
import java.time.Period;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.TemporalAccessor;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class Jdk8DateCodec extends ContextObjectDeserializer implements ObjectSerializer, ContextObjectSerializer, ObjectDeserializer {
    private static final DateTimeFormatter ISO_FIXED_FORMAT;
    private static final DateTimeFormatter defaultFormatter;
    private static final DateTimeFormatter defaultFormatter_23;
    private static final String defaultPatttern = "yyyy-MM-dd HH:mm:ss";
    private static final DateTimeFormatter formatter_d10_cn;
    private static final DateTimeFormatter formatter_d10_de;
    private static final DateTimeFormatter formatter_d10_eur;
    private static final DateTimeFormatter formatter_d10_in;
    private static final DateTimeFormatter formatter_d10_kr;
    private static final DateTimeFormatter formatter_d10_tw;
    private static final DateTimeFormatter formatter_d10_us;
    private static final DateTimeFormatter formatter_d8;
    private static final DateTimeFormatter formatter_dt19_cn;
    private static final DateTimeFormatter formatter_dt19_cn_1;
    private static final DateTimeFormatter formatter_dt19_de;
    private static final DateTimeFormatter formatter_dt19_eur;
    private static final DateTimeFormatter formatter_dt19_in;
    private static final DateTimeFormatter formatter_dt19_kr;
    private static final DateTimeFormatter formatter_dt19_tw;
    private static final DateTimeFormatter formatter_dt19_us;
    private static final DateTimeFormatter formatter_iso8601;
    private static final String formatter_iso8601_pattern = "yyyy-MM-dd'T'HH:mm:ss";
    private static final String formatter_iso8601_pattern_23 = "yyyy-MM-dd'T'HH:mm:ss.SSS";
    private static final String formatter_iso8601_pattern_29 = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS";
    public static final Jdk8DateCodec instance = new Jdk8DateCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 4;
    }

    static {
        DateTimeFormatter ofPattern;
        DateTimeFormatter ofPattern2;
        DateTimeFormatter ofPattern3;
        DateTimeFormatter ofPattern4;
        DateTimeFormatter ofPattern5;
        DateTimeFormatter ofPattern6;
        DateTimeFormatter ofPattern7;
        DateTimeFormatter ofPattern8;
        DateTimeFormatter ofPattern9;
        DateTimeFormatter ofPattern10;
        DateTimeFormatter ofPattern11;
        DateTimeFormatter ofPattern12;
        DateTimeFormatter ofPattern13;
        DateTimeFormatter ofPattern14;
        DateTimeFormatter ofPattern15;
        DateTimeFormatter ofPattern16;
        DateTimeFormatter ofPattern17;
        DateTimeFormatter ofPattern18;
        DateTimeFormatter ofPattern19;
        ZoneId systemDefault;
        DateTimeFormatter withZone;
        DateTimeFormatter ofPattern20;
        ofPattern = DateTimeFormatter.ofPattern(defaultPatttern);
        defaultFormatter = ofPattern;
        ofPattern2 = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.SSS");
        defaultFormatter_23 = ofPattern2;
        ofPattern3 = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        formatter_dt19_tw = ofPattern3;
        ofPattern4 = DateTimeFormatter.ofPattern("yyyy年M月d日 HH:mm:ss");
        formatter_dt19_cn = ofPattern4;
        ofPattern5 = DateTimeFormatter.ofPattern("yyyy年M月d日 H时m分s秒");
        formatter_dt19_cn_1 = ofPattern5;
        ofPattern6 = DateTimeFormatter.ofPattern("yyyy년M월d일 HH:mm:ss");
        formatter_dt19_kr = ofPattern6;
        ofPattern7 = DateTimeFormatter.ofPattern("MM/dd/yyyy HH:mm:ss");
        formatter_dt19_us = ofPattern7;
        ofPattern8 = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");
        formatter_dt19_eur = ofPattern8;
        ofPattern9 = DateTimeFormatter.ofPattern("dd.MM.yyyy HH:mm:ss");
        formatter_dt19_de = ofPattern9;
        ofPattern10 = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
        formatter_dt19_in = ofPattern10;
        ofPattern11 = DateTimeFormatter.ofPattern("yyyyMMdd");
        formatter_d8 = ofPattern11;
        ofPattern12 = DateTimeFormatter.ofPattern("yyyy/MM/dd");
        formatter_d10_tw = ofPattern12;
        ofPattern13 = DateTimeFormatter.ofPattern("yyyy年M月d日");
        formatter_d10_cn = ofPattern13;
        ofPattern14 = DateTimeFormatter.ofPattern("yyyy년M월d일");
        formatter_d10_kr = ofPattern14;
        ofPattern15 = DateTimeFormatter.ofPattern("MM/dd/yyyy");
        formatter_d10_us = ofPattern15;
        ofPattern16 = DateTimeFormatter.ofPattern("dd/MM/yyyy");
        formatter_d10_eur = ofPattern16;
        ofPattern17 = DateTimeFormatter.ofPattern("dd.MM.yyyy");
        formatter_d10_de = ofPattern17;
        ofPattern18 = DateTimeFormatter.ofPattern("dd-MM-yyyy");
        formatter_d10_in = ofPattern18;
        ofPattern19 = DateTimeFormatter.ofPattern(defaultPatttern);
        systemDefault = ZoneId.systemDefault();
        withZone = ofPattern19.withZone(systemDefault);
        ISO_FIXED_FORMAT = withZone;
        ofPattern20 = DateTimeFormatter.ofPattern(formatter_iso8601_pattern);
        formatter_iso8601 = ofPattern20;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ContextObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj, String str, int i) {
        Instant ofEpochMilli;
        ZoneId zoneId;
        Instant ofEpochMilli2;
        ZoneId zoneId2;
        LocalDateTime ofInstant;
        Instant ofEpochMilli3;
        ZoneId zoneId3;
        LocalDateTime ofInstant2;
        Instant ofEpochMilli4;
        ZoneId zoneId4;
        DateTimeFormatter dateTimeFormatter;
        Instant instant;
        ZoneId zoneId5;
        Instant ofEpochMilli5;
        ZoneId zoneId6;
        LocalDateTime ofInstant3;
        LocalDateTime parse;
        int hour;
        int minute;
        int second;
        int nano;
        LocalDateTime parse2;
        int year;
        int monthValue;
        int dayOfMonth;
        LocalTime localTime;
        LocalDateTime of;
        Instant ofEpochMilli6;
        ZonedDateTime ofInstant4;
        LocalTime localTime2;
        LocalDate localDate;
        LocalDateTime ofInstant5;
        Instant ofEpochMilli7;
        Instant parse3;
        Duration parse4;
        Period parse5;
        ZoneId of2;
        OffsetTime parse6;
        OffsetDateTime parse7;
        ZonedDateTime ofInstant6;
        LocalTime localTime3;
        LocalTime parse8;
        LocalTime of3;
        LocalDate of4;
        LocalDateTime of5;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        } else if (jSONLexer.token() == 4) {
            String stringVal = jSONLexer.stringVal();
            jSONLexer.nextToken();
            if (str == null) {
                dateTimeFormatter = null;
            } else if (defaultPatttern.equals(str)) {
                dateTimeFormatter = defaultFormatter;
            } else {
                dateTimeFormatter = DateTimeFormatter.ofPattern(str);
            }
            if ("".equals(stringVal)) {
                return null;
            }
            if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$9()) {
                if (stringVal.length() == 10 || stringVal.length() == 8) {
                    LocalDate parseLocalDate = parseLocalDate(stringVal, str, dateTimeFormatter);
                    localTime = LocalTime.MIN;
                    of5 = LocalDateTime.of(parseLocalDate, localTime);
                    return (T) of5;
                }
                return (T) parseDateTime(stringVal, dateTimeFormatter);
            } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$8()) {
                if (stringVal.length() == 23) {
                    parse2 = LocalDateTime.parse(stringVal);
                    year = parse2.getYear();
                    monthValue = parse2.getMonthValue();
                    dayOfMonth = parse2.getDayOfMonth();
                    of4 = LocalDate.of(year, monthValue, dayOfMonth);
                    return (T) of4;
                }
                return (T) parseLocalDate(stringVal, str, dateTimeFormatter);
            } else {
                int i2 = 0;
                if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m()) {
                    if (stringVal.length() == 23) {
                        parse = LocalDateTime.parse(stringVal);
                        hour = parse.getHour();
                        minute = parse.getMinute();
                        second = parse.getSecond();
                        nano = parse.getNano();
                        of3 = LocalTime.of(hour, minute, second, nano);
                        return (T) of3;
                    }
                    while (true) {
                        if (i2 < stringVal.length()) {
                            char charAt = stringVal.charAt(i2);
                            if (charAt < '0' || charAt > '9') {
                                break;
                            }
                            i2++;
                        } else if (stringVal.length() > 8 && stringVal.length() < 19) {
                            ofEpochMilli5 = Instant.ofEpochMilli(Long.parseLong(stringVal));
                            zoneId6 = JSON.defaultTimeZone.toZoneId();
                            ofInstant3 = LocalDateTime.ofInstant(ofEpochMilli5, zoneId6);
                            localTime3 = ofInstant3.toLocalTime();
                            return (T) localTime3;
                        }
                    }
                    parse8 = LocalTime.parse(stringVal);
                    return (T) parse8;
                } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$1()) {
                    if (dateTimeFormatter == defaultFormatter) {
                        dateTimeFormatter = ISO_FIXED_FORMAT;
                    }
                    if (dateTimeFormatter == null && stringVal.length() <= 19) {
                        JSONScanner jSONScanner = new JSONScanner(stringVal);
                        TimeZone timeZone = defaultJSONParser.lexer.getTimeZone();
                        jSONScanner.setTimeZone(timeZone);
                        if (jSONScanner.scanISO8601DateIfMatch(false)) {
                            instant = jSONScanner.getCalendar().getTime().toInstant();
                            zoneId5 = timeZone.toZoneId();
                            ofInstant6 = ZonedDateTime.ofInstant(instant, zoneId5);
                            return (T) ofInstant6;
                        }
                    }
                    return (T) parseZonedDateTime(stringVal, dateTimeFormatter);
                } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$2()) {
                    parse7 = OffsetDateTime.parse(stringVal);
                    return (T) parse7;
                } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$3()) {
                    parse6 = OffsetTime.parse(stringVal);
                    return (T) parse6;
                } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$4()) {
                    of2 = ZoneId.of(stringVal);
                    return (T) of2;
                } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$5()) {
                    parse5 = Period.parse(stringVal);
                    return (T) parse5;
                } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$6()) {
                    parse4 = Duration.parse(stringVal);
                    return (T) parse4;
                } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$7()) {
                    while (true) {
                        if (i2 < stringVal.length()) {
                            char charAt2 = stringVal.charAt(i2);
                            if (charAt2 < '0' || charAt2 > '9') {
                                break;
                            }
                            i2++;
                        } else if (stringVal.length() > 8 && stringVal.length() < 19) {
                            ofEpochMilli7 = Instant.ofEpochMilli(Long.parseLong(stringVal));
                            return (T) ofEpochMilli7;
                        }
                    }
                    parse3 = Instant.parse(stringVal);
                    return (T) parse3;
                } else {
                    return null;
                }
            }
        } else if (jSONLexer.token() == 2) {
            long longValue = jSONLexer.longValue();
            jSONLexer.nextToken();
            if ("unixtime".equals(str)) {
                longValue *= 1000;
            } else if ("yyyyMMddHHmmss".equals(str)) {
                int i3 = (int) (longValue / 10000000000L);
                int i4 = (int) ((longValue / 100000000) % 100);
                int i5 = (int) ((longValue / 1000000) % 100);
                int i6 = (int) ((longValue / WorkRequest.MIN_BACKOFF_MILLIS) % 100);
                int i7 = (int) ((longValue / 100) % 100);
                int i8 = (int) (longValue % 100);
                if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$9()) {
                    of = LocalDateTime.of(i3, i4, i5, i6, i7, i8);
                    return (T) of;
                }
            }
            if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$9()) {
                ofEpochMilli4 = Instant.ofEpochMilli(longValue);
                zoneId4 = JSON.defaultTimeZone.toZoneId();
                ofInstant5 = LocalDateTime.ofInstant(ofEpochMilli4, zoneId4);
                return (T) ofInstant5;
            } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$8()) {
                ofEpochMilli3 = Instant.ofEpochMilli(longValue);
                zoneId3 = JSON.defaultTimeZone.toZoneId();
                ofInstant2 = LocalDateTime.ofInstant(ofEpochMilli3, zoneId3);
                localDate = ofInstant2.toLocalDate();
                return (T) localDate;
            } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m()) {
                ofEpochMilli2 = Instant.ofEpochMilli(longValue);
                zoneId2 = JSON.defaultTimeZone.toZoneId();
                ofInstant = LocalDateTime.ofInstant(ofEpochMilli2, zoneId2);
                localTime2 = ofInstant.toLocalTime();
                return (T) localTime2;
            } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$1()) {
                ofEpochMilli = Instant.ofEpochMilli(longValue);
                zoneId = JSON.defaultTimeZone.toZoneId();
                ofInstant4 = ZonedDateTime.ofInstant(ofEpochMilli, zoneId);
                return (T) ofInstant4;
            } else if (type == Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$7()) {
                ofEpochMilli6 = Instant.ofEpochMilli(longValue);
                return (T) ofEpochMilli6;
            } else {
                throw new UnsupportedOperationException();
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.time.LocalDateTime parseDateTime(java.lang.String r17, java.time.format.DateTimeFormatter r18) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.parseDateTime(java.lang.String, java.time.format.DateTimeFormatter):java.time.LocalDateTime");
    }

    protected LocalDate parseLocalDate(String str, String str2, DateTimeFormatter dateTimeFormatter) {
        LocalDate parse;
        LocalDate parse2;
        Instant ofEpochMilli;
        ZoneId zoneId;
        LocalDateTime ofInstant;
        LocalDate localDate;
        DateTimeFormatter dateTimeFormatter2;
        DateTimeFormatter dateTimeFormatter3;
        if (dateTimeFormatter == null) {
            if (str.length() == 8) {
                dateTimeFormatter = formatter_d8;
            }
            int i = 0;
            if (str.length() == 10) {
                char charAt = str.charAt(4);
                char charAt2 = str.charAt(7);
                if (charAt == '/' && charAt2 == '/') {
                    dateTimeFormatter = formatter_d10_tw;
                }
                char charAt3 = str.charAt(0);
                char charAt4 = str.charAt(1);
                char charAt5 = str.charAt(2);
                char charAt6 = str.charAt(3);
                char charAt7 = str.charAt(5);
                if (charAt5 == '/' && charAt7 == '/') {
                    int i2 = ((charAt6 - '0') * 10) + (charAt - '0');
                    if (((charAt3 - '0') * 10) + (charAt4 - '0') > 12) {
                        dateTimeFormatter3 = formatter_d10_eur;
                    } else if (i2 > 12) {
                        dateTimeFormatter3 = formatter_d10_us;
                    } else {
                        String country = Locale.getDefault().getCountry();
                        if (country.equals("US")) {
                            dateTimeFormatter3 = formatter_d10_us;
                        } else if (country.equals("BR") || country.equals("AU")) {
                            dateTimeFormatter3 = formatter_d10_eur;
                        }
                    }
                    dateTimeFormatter = dateTimeFormatter3;
                } else if (charAt5 == '.' && charAt7 == '.') {
                    dateTimeFormatter = formatter_d10_de;
                } else if (charAt5 == '-' && charAt7 == '-') {
                    dateTimeFormatter = formatter_d10_in;
                }
            }
            if (str.length() >= 9) {
                char charAt8 = str.charAt(4);
                if (charAt8 == 24180) {
                    dateTimeFormatter2 = formatter_d10_cn;
                } else if (charAt8 == 45380) {
                    dateTimeFormatter2 = formatter_d10_kr;
                }
                dateTimeFormatter = dateTimeFormatter2;
            }
            while (true) {
                if (i < str.length()) {
                    char charAt9 = str.charAt(i);
                    if (charAt9 < '0' || charAt9 > '9') {
                        break;
                    }
                    i++;
                } else if (str.length() > 8 && str.length() < 19) {
                    ofEpochMilli = Instant.ofEpochMilli(Long.parseLong(str));
                    zoneId = JSON.defaultTimeZone.toZoneId();
                    ofInstant = LocalDateTime.ofInstant(ofEpochMilli, zoneId);
                    localDate = ofInstant.toLocalDate();
                    return localDate;
                }
            }
        }
        if (dateTimeFormatter == null) {
            parse2 = LocalDate.parse(str);
            return parse2;
        }
        parse = LocalDate.parse(str, dateTimeFormatter);
        return parse;
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00eb  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x00f9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected java.time.ZonedDateTime parseZonedDateTime(java.lang.String r16, java.time.format.DateTimeFormatter r17) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.parseZonedDateTime(java.lang.String, java.time.format.DateTimeFormatter):java.time.ZonedDateTime");
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0033, code lost:
        r2 = r3.getNano();
     */
    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(com.alibaba.fastjson.serializer.JSONSerializer r2, java.lang.Object r3, java.lang.Object r4, java.lang.reflect.Type r5, int r6) throws java.io.IOException {
        /*
            r1 = this;
            com.alibaba.fastjson.serializer.SerializeWriter r4 = r2.out
            if (r3 != 0) goto L9
            r4.writeNull()
            goto L76
        L9:
            if (r5 != 0) goto Lf
            java.lang.Class r5 = r3.getClass()
        Lf:
            java.lang.Class r0 = androidx.work.Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$9()
            if (r5 != r0) goto L6f
            com.alibaba.fastjson.serializer.SerializerFeature r5 = com.alibaba.fastjson.serializer.SerializerFeature.UseISO8601DateFormat
            int r5 = r5.getMask()
            java.time.LocalDateTime r3 = androidx.work.Constraints$Builder$$ExternalSyntheticApiModelOutline0.m482m(r3)
            java.lang.String r0 = r2.getDateFormatPattern()
            if (r0 != 0) goto L45
            r5 = r5 & r6
            java.lang.String r0 = "yyyy-MM-dd'T'HH:mm:ss"
            if (r5 != 0) goto L45
            com.alibaba.fastjson.serializer.SerializerFeature r5 = com.alibaba.fastjson.serializer.SerializerFeature.UseISO8601DateFormat
            boolean r2 = r2.isEnabled(r5)
            if (r2 == 0) goto L33
            goto L45
        L33:
            int r2 = androidx.work.Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$6(r3)
            if (r2 != 0) goto L3a
            goto L45
        L3a:
            r5 = 1000000(0xf4240, float:1.401298E-39)
            int r2 = r2 % r5
            if (r2 != 0) goto L43
            java.lang.String r0 = "yyyy-MM-dd'T'HH:mm:ss.SSS"
            goto L45
        L43:
            java.lang.String r0 = "yyyy-MM-dd'T'HH:mm:ss.SSSSSSSSS"
        L45:
            if (r0 == 0) goto L4b
            r1.write(r4, r3, r0)
            goto L76
        L4b:
            com.alibaba.fastjson.serializer.SerializerFeature r2 = com.alibaba.fastjson.serializer.SerializerFeature.WriteDateUseDateFormat
            boolean r2 = r4.isEnabled(r2)
            if (r2 == 0) goto L59
            java.lang.String r2 = com.alibaba.fastjson.JSON.DEFFAULT_DATE_FORMAT
            r1.write(r4, r3, r2)
            goto L76
        L59:
            java.util.TimeZone r2 = com.alibaba.fastjson.JSON.defaultTimeZone
            java.time.ZoneId r2 = androidx.work.Constraints$Builder$$ExternalSyntheticApiModelOutline0.m(r2)
            java.time.ZonedDateTime r2 = androidx.work.Constraints$Builder$$ExternalSyntheticApiModelOutline0.m(r3, r2)
            java.time.Instant r2 = r2.toInstant()
            long r2 = androidx.work.Constraints$Builder$$ExternalSyntheticApiModelOutline0.m(r2)
            r4.writeLong(r2)
            goto L76
        L6f:
            java.lang.String r2 = r3.toString()
            r4.writeString(r2)
        L76:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.deserializer.Jdk8DateCodec.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int):void");
    }

    @Override // com.alibaba.fastjson.serializer.ContextObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, BeanContext beanContext) throws IOException {
        write(jSONSerializer.out, Constraints$Builder$$ExternalSyntheticApiModelOutline0.m496m(obj), beanContext.getFormat());
    }

    private void write(SerializeWriter serializeWriter, TemporalAccessor temporalAccessor, String str) {
        DateTimeFormatter ofPattern;
        String format;
        Instant instant;
        ZoneId zoneId;
        ZonedDateTime atZone;
        long epochMilli;
        ZoneId zoneId2;
        ZonedDateTime atZone2;
        long epochSecond;
        if ("unixtime".equals(str)) {
            if (Constraints$Builder$$ExternalSyntheticApiModelOutline0.m504m((Object) temporalAccessor)) {
                epochSecond = Constraints$Builder$$ExternalSyntheticApiModelOutline0.m493m((Object) temporalAccessor).toEpochSecond();
                serializeWriter.writeInt((int) epochSecond);
                return;
            } else if (Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$1(temporalAccessor)) {
                LocalDateTime m482m = Constraints$Builder$$ExternalSyntheticApiModelOutline0.m482m((Object) temporalAccessor);
                zoneId2 = JSON.defaultTimeZone.toZoneId();
                atZone2 = m482m.atZone(zoneId2);
                serializeWriter.writeInt((int) atZone2.toEpochSecond());
                return;
            }
        }
        if ("millis".equals(str)) {
            if (Constraints$Builder$$ExternalSyntheticApiModelOutline0.m504m((Object) temporalAccessor)) {
                instant = Constraints$Builder$$ExternalSyntheticApiModelOutline0.m493m((Object) temporalAccessor).toInstant();
            } else if (Constraints$Builder$$ExternalSyntheticApiModelOutline0.m$1(temporalAccessor)) {
                LocalDateTime m482m2 = Constraints$Builder$$ExternalSyntheticApiModelOutline0.m482m((Object) temporalAccessor);
                zoneId = JSON.defaultTimeZone.toZoneId();
                atZone = m482m2.atZone(zoneId);
                instant = atZone.toInstant();
            } else {
                instant = null;
            }
            if (instant != null) {
                epochMilli = instant.toEpochMilli();
                serializeWriter.writeLong(epochMilli);
                return;
            }
        }
        if (str == formatter_iso8601_pattern) {
            ofPattern = formatter_iso8601;
        } else {
            ofPattern = DateTimeFormatter.ofPattern(str);
        }
        format = ofPattern.format(temporalAccessor);
        serializeWriter.writeString(format);
    }
}
