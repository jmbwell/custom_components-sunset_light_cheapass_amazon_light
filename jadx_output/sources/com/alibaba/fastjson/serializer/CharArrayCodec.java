package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import java.lang.reflect.Type;
import java.util.Collection;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class CharArrayCodec implements ObjectDeserializer {
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 4;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        return (T) deserialze(defaultJSONParser);
    }

    public static <T> T deserialze(DefaultJSONParser defaultJSONParser) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 4) {
            String stringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            return (T) stringVal.toCharArray();
        } else if (jSONLexer.token() == 2) {
            Number integerValue = jSONLexer.integerValue();
            jSONLexer.nextToken(16);
            return (T) integerValue.toString().toCharArray();
        } else {
            Object parse = defaultJSONParser.parse();
            if (parse instanceof String) {
                return (T) ((String) parse).toCharArray();
            }
            if (!(parse instanceof Collection)) {
                if (parse == null) {
                    return null;
                }
                return (T) JSON.toJSONString(parse).toCharArray();
            }
            Collection<String> collection = (Collection) parse;
            for (Object obj : collection) {
                if ((obj instanceof String) && ((String) obj).length() != 1) {
                    throw new JSONException("can not cast to char[]");
                }
            }
            char[] cArr = new char[collection.size()];
            int i = 0;
            for (String str : collection) {
                cArr[i] = str.charAt(0);
                i++;
            }
            return cArr;
        }
    }
}
