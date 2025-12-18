package com.alibaba.fastjson.parser;

import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.location.LocationRequestCompat;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.asm.Opcodes;
import com.alibaba.fastjson.util.IOUtils;
import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public abstract class JSONLexerBase implements JSONLexer, Closeable {
    protected static final int INT_MULTMIN_RADIX_TEN = -214748364;
    protected static final long MULTMIN_RADIX_TEN = -922337203685477580L;
    protected int bp;
    protected char ch;
    protected int eofPos;
    protected int features;
    protected boolean hasSpecial;
    protected int np;
    protected int pos;
    protected char[] sbuf;
    protected int sp;
    protected String stringDefaultValue;
    protected int token;
    private static final ThreadLocal<char[]> SBUF_LOCAL = new ThreadLocal<>();
    protected static final char[] typeFieldName = ("\"" + JSON.DEFAULT_TYPE_KEY + "\":\"").toCharArray();
    protected static final int[] digits = new int[103];
    protected Calendar calendar = null;
    protected TimeZone timeZone = JSON.defaultTimeZone;
    protected Locale locale = JSON.defaultLocale;
    public int matchStat = 0;
    protected int nanos = 0;

    public static boolean isWhitespace(char c2) {
        return c2 <= ' ' && (c2 == ' ' || c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == '\f' || c2 == '\b');
    }

    public abstract String addSymbol(int i, int i2, int i3, SymbolTable symbolTable);

    protected abstract void arrayCopy(int i, char[] cArr, int i2, int i3);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract byte[] bytesValue();

    protected abstract boolean charArrayCompare(char[] cArr);

    public abstract char charAt(int i);

    protected abstract void copyTo(int i, int i2, char[] cArr);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract BigDecimal decimalValue();

    public abstract int indexOf(char c2, int i);

    public abstract boolean isEOF();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract char next();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract String numberString();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanTypeName(SymbolTable symbolTable) {
        return null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract String stringVal();

    public abstract String subString(int i, int i2);

    protected abstract char[] sub_chars(int i, int i2);

    protected void lexError(String str, Object... objArr) {
        this.token = 1;
    }

    static {
        for (int i = 48; i <= 57; i++) {
            digits[i] = i - 48;
        }
        for (int i2 = 97; i2 <= 102; i2++) {
            digits[i2] = i2 - 87;
        }
        for (int i3 = 65; i3 <= 70; i3++) {
            digits[i3] = i3 - 55;
        }
    }

    public JSONLexerBase(int i) {
        this.stringDefaultValue = null;
        this.features = i;
        if ((i & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
        char[] cArr = SBUF_LOCAL.get();
        this.sbuf = cArr;
        if (cArr == null) {
            this.sbuf = new char[512];
        }
    }

    public final int matchStat() {
        return this.matchStat;
    }

    public void setToken(int i) {
        this.token = i;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken() {
        this.sp = 0;
        while (true) {
            this.pos = this.bp;
            char c2 = this.ch;
            if (c2 == '/') {
                skipComment();
            } else if (c2 == '\"') {
                scanString();
                return;
            } else if (c2 == ',') {
                next();
                this.token = 16;
                return;
            } else if (c2 >= '0' && c2 <= '9') {
                scanNumber();
                return;
            } else if (c2 == '-') {
                scanNumber();
                return;
            } else {
                switch (c2) {
                    case '\b':
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                        next();
                        continue;
                    case '\'':
                        if (!isEnabled(Feature.AllowSingleQuotes)) {
                            throw new JSONException("Feature.AllowSingleQuotes is false");
                        }
                        scanStringSingleQuote();
                        return;
                    case '(':
                        next();
                        this.token = 10;
                        return;
                    case ')':
                        next();
                        this.token = 11;
                        return;
                    case '+':
                        next();
                        scanNumber();
                        return;
                    case '.':
                        next();
                        this.token = 25;
                        return;
                    case Opcodes.ASTORE /* 58 */:
                        next();
                        this.token = 17;
                        return;
                    case ';':
                        next();
                        this.token = 24;
                        return;
                    case 'N':
                    case 'S':
                    case 'T':
                    case 'u':
                        scanIdent();
                        return;
                    case '[':
                        next();
                        this.token = 14;
                        return;
                    case ']':
                        next();
                        this.token = 15;
                        return;
                    case LocationRequestCompat.QUALITY_BALANCED_POWER_ACCURACY /* 102 */:
                        scanFalse();
                        return;
                    case 'n':
                        scanNullOrNew();
                        return;
                    case 't':
                        scanTrue();
                        return;
                    case 'x':
                        scanHex();
                        return;
                    case '{':
                        next();
                        this.token = 12;
                        return;
                    case '}':
                        next();
                        this.token = 13;
                        return;
                    default:
                        if (isEOF()) {
                            if (this.token == 20) {
                                throw new JSONException("EOF error");
                            }
                            this.token = 20;
                            int i = this.bp;
                            this.pos = i;
                            this.eofPos = i;
                            return;
                        }
                        char c3 = this.ch;
                        if (c3 <= 31 || c3 == 127) {
                            next();
                            continue;
                        } else {
                            lexError("illegal.char", String.valueOf((int) c3));
                            next();
                            return;
                        }
                }
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken(int i) {
        this.sp = 0;
        while (true) {
            if (i == 2) {
                char c2 = this.ch;
                if (c2 >= '0' && c2 <= '9') {
                    this.pos = this.bp;
                    scanNumber();
                    return;
                } else if (c2 == '\"') {
                    this.pos = this.bp;
                    scanString();
                    return;
                } else if (c2 == '[') {
                    this.token = 14;
                    next();
                    return;
                } else if (c2 == '{') {
                    this.token = 12;
                    next();
                    return;
                }
            } else if (i == 4) {
                char c3 = this.ch;
                if (c3 == '\"') {
                    this.pos = this.bp;
                    scanString();
                    return;
                } else if (c3 >= '0' && c3 <= '9') {
                    this.pos = this.bp;
                    scanNumber();
                    return;
                } else if (c3 == '[') {
                    this.token = 14;
                    next();
                    return;
                } else if (c3 == '{') {
                    this.token = 12;
                    next();
                    return;
                }
            } else if (i == 12) {
                char c4 = this.ch;
                if (c4 == '{') {
                    this.token = 12;
                    next();
                    return;
                } else if (c4 == '[') {
                    this.token = 14;
                    next();
                    return;
                }
            } else if (i != 18) {
                if (i != 20) {
                    switch (i) {
                        case 14:
                            char c5 = this.ch;
                            if (c5 == '[') {
                                this.token = 14;
                                next();
                                return;
                            } else if (c5 == '{') {
                                this.token = 12;
                                next();
                                return;
                            }
                            break;
                        case 15:
                            if (this.ch == ']') {
                                this.token = 15;
                                next();
                                return;
                            }
                            break;
                        case 16:
                            char c6 = this.ch;
                            if (c6 == ',') {
                                this.token = 16;
                                next();
                                return;
                            } else if (c6 == '}') {
                                this.token = 13;
                                next();
                                return;
                            } else if (c6 == ']') {
                                this.token = 15;
                                next();
                                return;
                            } else if (c6 == 26) {
                                this.token = 20;
                                return;
                            } else if (c6 == 'n') {
                                scanNullOrNew(false);
                                return;
                            }
                            break;
                    }
                }
                if (this.ch == 26) {
                    this.token = 20;
                    return;
                }
            } else {
                nextIdent();
                return;
            }
            char c7 = this.ch;
            if (c7 == ' ' || c7 == '\n' || c7 == '\r' || c7 == '\t' || c7 == '\f' || c7 == '\b') {
                next();
            } else {
                nextToken();
                return;
            }
        }
    }

    public final void nextIdent() {
        while (isWhitespace(this.ch)) {
            next();
        }
        char c2 = this.ch;
        if (c2 == '_' || c2 == '$' || Character.isLetter(c2)) {
            scanIdent();
        } else {
            nextToken();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon() {
        nextTokenWithChar(':');
    }

    public final void nextTokenWithChar(char c2) {
        this.sp = 0;
        while (true) {
            char c3 = this.ch;
            if (c3 == c2) {
                next();
                nextToken();
                return;
            } else if (c3 == ' ' || c3 == '\n' || c3 == '\r' || c3 == '\t' || c3 == '\f' || c3 == '\b') {
                next();
            } else {
                throw new JSONException("not match " + c2 + " - " + this.ch + ", info : " + info());
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int token() {
        return this.token;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String tokenName() {
        return JSONToken.name(this.token);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int pos() {
        return this.pos;
    }

    public final String stringDefaultValue() {
        return this.stringDefaultValue;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0088  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0086 -> B:19:0x0051). Please submit an issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Number integerValue() throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.integerValue():java.lang.Number");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon(int i) {
        nextTokenWithChar(':');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public float floatValue() {
        char charAt;
        String numberString = numberString();
        float parseFloat = Float.parseFloat(numberString);
        if ((parseFloat == 0.0f || parseFloat == Float.POSITIVE_INFINITY) && (charAt = numberString.charAt(0)) > '0' && charAt <= '9') {
            throw new JSONException("float overflow : " + numberString);
        }
        return parseFloat;
    }

    public double doubleValue() {
        return Double.parseDouble(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void config(Feature feature, boolean z) {
        int config = Feature.config(this.features, feature, z);
        this.features = config;
        if ((config & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(Feature feature) {
        return isEnabled(feature.mask);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(int i) {
        return (i & this.features) != 0;
    }

    public final boolean isEnabled(int i, int i2) {
        return ((this.features & i2) == 0 && (i & i2) == 0) ? false : true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final char getCurrent() {
        return this.ch;
    }

    protected void skipComment() {
        char c2;
        next();
        char c3 = this.ch;
        if (c3 == '/') {
            do {
                next();
                c2 = this.ch;
                if (c2 == '\n') {
                    next();
                    return;
                }
            } while (c2 != 26);
        } else if (c3 == '*') {
            next();
            while (true) {
                char c4 = this.ch;
                if (c4 == 26) {
                    return;
                }
                if (c4 == '*') {
                    next();
                    if (this.ch == '/') {
                        next();
                        return;
                    }
                } else {
                    next();
                }
            }
        } else {
            throw new JSONException("invalid comment");
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbol(SymbolTable symbolTable) {
        skipWhitespace();
        char c2 = this.ch;
        if (c2 == '\"') {
            return scanSymbol(symbolTable, '\"');
        }
        if (c2 == '\'') {
            if (!isEnabled(Feature.AllowSingleQuotes)) {
                throw new JSONException("syntax error");
            }
            return scanSymbol(symbolTable, '\'');
        } else if (c2 == '}') {
            next();
            this.token = 13;
            return null;
        } else if (c2 == ',') {
            next();
            this.token = 16;
            return null;
        } else if (c2 == 26) {
            this.token = 20;
            return null;
        } else if (!isEnabled(Feature.AllowUnQuotedFieldNames)) {
            throw new JSONException("syntax error");
        } else {
            return scanSymbolUnQuoted(symbolTable);
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbol(SymbolTable symbolTable, char c2) {
        String addSymbol;
        this.np = this.bp;
        this.sp = 0;
        boolean z = false;
        int i = 0;
        while (true) {
            char next = next();
            if (next == c2) {
                this.token = 4;
                if (!z) {
                    int i2 = this.np;
                    addSymbol = addSymbol(i2 == -1 ? 0 : i2 + 1, this.sp, i, symbolTable);
                } else {
                    addSymbol = symbolTable.addSymbol(this.sbuf, 0, this.sp, i);
                }
                this.sp = 0;
                next();
                return addSymbol;
            } else if (next == 26) {
                throw new JSONException("unclosed.str");
            } else {
                if (next == '\\') {
                    if (!z) {
                        int i3 = this.sp;
                        char[] cArr = this.sbuf;
                        if (i3 >= cArr.length) {
                            int length = cArr.length * 2;
                            if (i3 <= length) {
                                i3 = length;
                            }
                            char[] cArr2 = new char[i3];
                            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                            this.sbuf = cArr2;
                        }
                        arrayCopy(this.np + 1, this.sbuf, 0, this.sp);
                        z = true;
                    }
                    char next2 = next();
                    if (next2 == '\"') {
                        i = (i * 31) + 34;
                        putChar('\"');
                    } else if (next2 != '\'') {
                        if (next2 != 'F') {
                            if (next2 == '\\') {
                                i = (i * 31) + 92;
                                putChar('\\');
                            } else if (next2 == 'b') {
                                i = (i * 31) + 8;
                                putChar('\b');
                            } else if (next2 != 'f') {
                                if (next2 == 'n') {
                                    i = (i * 31) + 10;
                                    putChar('\n');
                                } else if (next2 == 'r') {
                                    i = (i * 31) + 13;
                                    putChar('\r');
                                } else if (next2 != 'x') {
                                    switch (next2) {
                                        case '/':
                                            i = (i * 31) + 47;
                                            putChar('/');
                                            continue;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                                            i = (i * 31) + next2;
                                            putChar((char) 0);
                                            continue;
                                        case '1':
                                            i = (i * 31) + next2;
                                            putChar((char) 1);
                                            continue;
                                        case '2':
                                            i = (i * 31) + next2;
                                            putChar((char) 2);
                                            continue;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                                            i = (i * 31) + next2;
                                            putChar((char) 3);
                                            continue;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                                            i = (i * 31) + next2;
                                            putChar((char) 4);
                                            continue;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                                            i = (i * 31) + next2;
                                            putChar((char) 5);
                                            continue;
                                        case '6':
                                            i = (i * 31) + next2;
                                            putChar((char) 6);
                                            continue;
                                        case '7':
                                            i = (i * 31) + next2;
                                            putChar((char) 7);
                                            continue;
                                        default:
                                            switch (next2) {
                                                case 't':
                                                    i = (i * 31) + 9;
                                                    putChar('\t');
                                                    continue;
                                                case 'u':
                                                    int parseInt = Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16);
                                                    i = (i * 31) + parseInt;
                                                    putChar((char) parseInt);
                                                    continue;
                                                    continue;
                                                case 'v':
                                                    i = (i * 31) + 11;
                                                    putChar((char) 11);
                                                    continue;
                                                default:
                                                    this.ch = next2;
                                                    throw new JSONException("unclosed.str.lit");
                                            }
                                    }
                                } else {
                                    char next3 = next();
                                    this.ch = next3;
                                    char next4 = next();
                                    this.ch = next4;
                                    int[] iArr = digits;
                                    char c3 = (char) ((iArr[next3] * 16) + iArr[next4]);
                                    i = (i * 31) + c3;
                                    putChar(c3);
                                }
                            }
                        }
                        i = (i * 31) + 12;
                        putChar('\f');
                    } else {
                        i = (i * 31) + 39;
                        putChar('\'');
                    }
                } else {
                    i = (i * 31) + next;
                    if (!z) {
                        this.sp++;
                    } else {
                        int i4 = this.sp;
                        char[] cArr3 = this.sbuf;
                        if (i4 == cArr3.length) {
                            putChar(next);
                        } else {
                            this.sp = i4 + 1;
                            cArr3[i4] = next;
                        }
                    }
                }
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void resetStringPosition() {
        this.sp = 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String info() {
        return "";
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbolUnQuoted(SymbolTable symbolTable) {
        if (this.token == 1 && this.pos == 0 && this.bp == 1) {
            this.bp = 0;
        }
        boolean[] zArr = IOUtils.firstIdentifierFlags;
        int i = this.ch;
        if (i < zArr.length && !zArr[i]) {
            throw new JSONException("illegal identifier : " + this.ch + info());
        }
        boolean[] zArr2 = IOUtils.identifierFlags;
        this.np = this.bp;
        this.sp = 1;
        while (true) {
            char next = next();
            if (next < zArr2.length && !zArr2[next]) {
                break;
            }
            i = (i * 31) + next;
            this.sp++;
        }
        this.ch = charAt(this.bp);
        this.token = 18;
        if (this.sp == 4 && i == 3392903 && charAt(this.np) == 'n' && charAt(this.np + 1) == 'u' && charAt(this.np + 2) == 'l' && charAt(this.np + 3) == 'l') {
            return null;
        }
        if (symbolTable == null) {
            return subString(this.np, this.sp);
        }
        return addSymbol(this.np, this.sp, i, symbolTable);
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x0165, code lost:
        throw new com.alibaba.fastjson.JSONException("invalid escape character \\x" + r1 + r2);
     */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void scanString() {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanString():void");
    }

    public Calendar getCalendar() {
        return this.calendar;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setTimeZone(TimeZone timeZone) {
        this.timeZone = timeZone;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public Locale getLocale() {
        return this.locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setLocale(Locale locale) {
        this.locale = locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int intValue() {
        int i;
        boolean z;
        int i2 = 0;
        if (this.np == -1) {
            this.np = 0;
        }
        int i3 = this.np;
        int i4 = this.sp + i3;
        if (charAt(i3) == '-') {
            i3++;
            i = Integer.MIN_VALUE;
            z = true;
        } else {
            i = -2147483647;
            z = false;
        }
        if (i3 < i4) {
            i2 = -(charAt(i3) - '0');
            i3++;
        }
        while (i3 < i4) {
            int i5 = i3 + 1;
            char charAt = charAt(i3);
            if (charAt == 'L' || charAt == 'S' || charAt == 'B') {
                i3 = i5;
                break;
            }
            int i6 = charAt - '0';
            if (i2 < -214748364) {
                throw new NumberFormatException(numberString());
            }
            int i7 = i2 * 10;
            if (i7 < i + i6) {
                throw new NumberFormatException(numberString());
            }
            i2 = i7 - i6;
            i3 = i5;
        }
        if (z) {
            if (i3 > this.np + 1) {
                return i2;
            }
            throw new NumberFormatException(numberString());
        }
        return -i2;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        char[] cArr = this.sbuf;
        if (cArr.length <= 8192) {
            SBUF_LOCAL.set(cArr);
        }
        this.sbuf = null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isRef() {
        return this.sp == 4 && charAt(this.np + 1) == '$' && charAt(this.np + 2) == 'r' && charAt(this.np + 3) == 'e' && charAt(this.np + 4) == 'f';
    }

    public final int scanType(String str) {
        int i;
        this.matchStat = 0;
        char[] cArr = typeFieldName;
        if (charArrayCompare(cArr)) {
            int length = this.bp + cArr.length;
            int length2 = str.length();
            for (int i2 = 0; i2 < length2; i2++) {
                if (str.charAt(i2) != charAt(length + i2)) {
                    return -1;
                }
            }
            int i3 = length + length2;
            if (charAt(i3) != '\"') {
                return -1;
            }
            int i4 = i3 + 1;
            char charAt = charAt(i4);
            this.ch = charAt;
            if (charAt == ',') {
                int i5 = i3 + 2;
                this.ch = charAt(i5);
                this.bp = i5;
                this.token = 16;
                return 3;
            }
            if (charAt == '}') {
                i4 = i3 + 2;
                char charAt2 = charAt(i4);
                this.ch = charAt2;
                if (charAt2 == ',') {
                    this.token = 16;
                    i = i3 + 3;
                    this.ch = charAt(i);
                } else if (charAt2 == ']') {
                    this.token = 15;
                    i = i3 + 3;
                    this.ch = charAt(i);
                } else if (charAt2 == '}') {
                    this.token = 13;
                    i = i3 + 3;
                    this.ch = charAt(i);
                } else if (charAt2 != 26) {
                    return -1;
                } else {
                    this.token = 20;
                    this.matchStat = 4;
                }
                i4 = i;
                this.matchStat = 4;
            }
            this.bp = i4;
            return this.matchStat;
        }
        return -2;
    }

    public final boolean matchField(char[] cArr) {
        while (!charArrayCompare(cArr)) {
            if (!isWhitespace(this.ch)) {
                return false;
            }
            next();
        }
        int length = this.bp + cArr.length;
        this.bp = length;
        char charAt = charAt(length);
        this.ch = charAt;
        if (charAt == '{') {
            next();
            this.token = 12;
        } else if (charAt == '[') {
            next();
            this.token = 14;
        } else if (charAt == 'S' && charAt(this.bp + 1) == 'e' && charAt(this.bp + 2) == 't' && charAt(this.bp + 3) == '[') {
            int i = this.bp + 3;
            this.bp = i;
            this.ch = charAt(i);
            this.token = 21;
        } else {
            nextToken();
        }
        return true;
    }

    public int matchField(long j) {
        throw new UnsupportedOperationException();
    }

    public boolean seekArrayToItem(int i) {
        throw new UnsupportedOperationException();
    }

    public int seekObjectToField(long j, boolean z) {
        throw new UnsupportedOperationException();
    }

    public int seekObjectToField(long[] jArr) {
        throw new UnsupportedOperationException();
    }

    public int seekObjectToFieldDeepScan(long j) {
        throw new UnsupportedOperationException();
    }

    public void skipObject() {
        throw new UnsupportedOperationException();
    }

    public void skipObject(boolean z) {
        throw new UnsupportedOperationException();
    }

    public void skipArray() {
        throw new UnsupportedOperationException();
    }

    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return stringDefaultValue();
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.bp + length) != '\"') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int indexOf = indexOf('\"', this.bp + cArr.length + 1);
        if (indexOf == -1) {
            throw new JSONException("unclosed str");
        }
        int length2 = this.bp + cArr.length + 1;
        String subString = subString(length2, indexOf - length2);
        if (subString.indexOf(92) != -1) {
            while (true) {
                int i2 = 0;
                for (int i3 = indexOf - 1; i3 >= 0 && charAt(i3) == '\\'; i3--) {
                    i2++;
                }
                if (i2 % 2 == 0) {
                    break;
                }
                indexOf = indexOf('\"', indexOf + 1);
            }
            int i4 = this.bp;
            int length3 = indexOf - ((cArr.length + i4) + 1);
            subString = readString(sub_chars(i4 + cArr.length + 1, length3), length3);
        }
        int i5 = this.bp;
        int length4 = i + (indexOf - ((cArr.length + i5) + 1)) + 1;
        int i6 = length4 + 1;
        char charAt = charAt(i5 + length4);
        if (charAt == ',') {
            int i7 = this.bp + i6;
            this.bp = i7;
            this.ch = charAt(i7);
            this.matchStat = 3;
            return subString;
        } else if (charAt == '}') {
            int i8 = length4 + 2;
            char charAt2 = charAt(this.bp + i6);
            if (charAt2 == ',') {
                this.token = 16;
                int i9 = this.bp + i8;
                this.bp = i9;
                this.ch = charAt(i9);
            } else if (charAt2 == ']') {
                this.token = 15;
                int i10 = this.bp + i8;
                this.bp = i10;
                this.ch = charAt(i10);
            } else if (charAt2 == '}') {
                this.token = 13;
                int i11 = this.bp + i8;
                this.bp = i11;
                this.ch = charAt(i11);
            } else if (charAt2 == 26) {
                this.token = 20;
                this.bp += length4 + 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.matchStat = 4;
            return subString;
        } else {
            this.matchStat = -1;
            return stringDefaultValue();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanString(char c2) {
        this.matchStat = 0;
        char charAt = charAt(this.bp);
        if (charAt == 'n') {
            if (charAt(this.bp + 1) == 'u' && charAt(this.bp + 2) == 'l' && charAt(this.bp + 3) == 'l') {
                if (charAt(this.bp + 4) == c2) {
                    int i = this.bp + 5;
                    this.bp = i;
                    this.ch = charAt(i);
                    this.matchStat = 3;
                    return null;
                }
                this.matchStat = -1;
                return null;
            }
            this.matchStat = -1;
            return null;
        }
        int i2 = 1;
        while (charAt != '\"') {
            if (isWhitespace(charAt)) {
                charAt = charAt(this.bp + i2);
                i2++;
            } else {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        int i3 = this.bp + i2;
        int indexOf = indexOf('\"', i3);
        if (indexOf == -1) {
            throw new JSONException("unclosed str");
        }
        String subString = subString(this.bp + i2, indexOf - i3);
        if (subString.indexOf(92) != -1) {
            while (true) {
                int i4 = 0;
                for (int i5 = indexOf - 1; i5 >= 0 && charAt(i5) == '\\'; i5--) {
                    i4++;
                }
                if (i4 % 2 == 0) {
                    break;
                }
                indexOf = indexOf('\"', indexOf + 1);
            }
            int i6 = indexOf - i3;
            subString = readString(sub_chars(this.bp + 1, i6), i6);
        }
        int i7 = i2 + (indexOf - i3) + 1;
        int i8 = i7 + 1;
        char charAt2 = charAt(this.bp + i7);
        while (charAt2 != c2) {
            if (!isWhitespace(charAt2)) {
                if (charAt2 == ']') {
                    int i9 = this.bp + i8;
                    this.bp = i9;
                    this.ch = charAt(i9);
                    this.matchStat = -1;
                }
                return subString;
            }
            charAt2 = charAt(this.bp + i8);
            i8++;
        }
        int i10 = this.bp + i8;
        this.bp = i10;
        this.ch = charAt(i10);
        this.matchStat = 3;
        this.token = 16;
        return subString;
    }

    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = -3750763034362895579L;
        while (true) {
            int i2 = i + 1;
            char charAt = charAt(this.bp + i);
            if (charAt == '\"') {
                int i3 = i + 2;
                char charAt2 = charAt(this.bp + i2);
                if (charAt2 == ',') {
                    int i4 = this.bp + i3;
                    this.bp = i4;
                    this.ch = charAt(i4);
                    this.matchStat = 3;
                    return j;
                } else if (charAt2 == '}') {
                    int i5 = i + 3;
                    char charAt3 = charAt(this.bp + i3);
                    if (charAt3 == ',') {
                        this.token = 16;
                        int i6 = this.bp + i5;
                        this.bp = i6;
                        this.ch = charAt(i6);
                    } else if (charAt3 == ']') {
                        this.token = 15;
                        int i7 = this.bp + i5;
                        this.bp = i7;
                        this.ch = charAt(i7);
                    } else if (charAt3 == '}') {
                        this.token = 13;
                        int i8 = this.bp + i5;
                        this.bp = i8;
                        this.ch = charAt(i8);
                    } else if (charAt3 == 26) {
                        this.token = 20;
                        this.bp += i + 2;
                        this.ch = JSONLexer.EOI;
                    } else {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.matchStat = 4;
                    return j;
                } else {
                    this.matchStat = -1;
                    return 0L;
                }
            }
            j = (j ^ charAt) * 1099511628211L;
            if (charAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i = i2;
        }
    }

    public long scanEnumSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i = length + 1;
        if (charAt(this.bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = -3750763034362895579L;
        while (true) {
            int i2 = i + 1;
            char charAt = charAt(this.bp + i);
            if (charAt == '\"') {
                int i3 = i + 2;
                char charAt2 = charAt(this.bp + i2);
                if (charAt2 == ',') {
                    int i4 = this.bp + i3;
                    this.bp = i4;
                    this.ch = charAt(i4);
                    this.matchStat = 3;
                    return j;
                } else if (charAt2 == '}') {
                    int i5 = i + 3;
                    char charAt3 = charAt(this.bp + i3);
                    if (charAt3 == ',') {
                        this.token = 16;
                        int i6 = this.bp + i5;
                        this.bp = i6;
                        this.ch = charAt(i6);
                    } else if (charAt3 == ']') {
                        this.token = 15;
                        int i7 = this.bp + i5;
                        this.bp = i7;
                        this.ch = charAt(i7);
                    } else if (charAt3 == '}') {
                        this.token = 13;
                        int i8 = this.bp + i5;
                        this.bp = i8;
                        this.ch = charAt(i8);
                    } else if (charAt3 == 26) {
                        this.token = 20;
                        this.bp += i + 2;
                        this.ch = JSONLexer.EOI;
                    } else {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.matchStat = 4;
                    return j;
                } else {
                    this.matchStat = -1;
                    return 0L;
                }
            }
            j = (j ^ ((charAt < 'A' || charAt > 'Z') ? charAt : charAt + ' ')) * 1099511628211L;
            if (charAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i = i2;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public Enum<?> scanEnum(Class<?> cls, SymbolTable symbolTable, char c2) {
        String scanSymbolWithSeperator = scanSymbolWithSeperator(symbolTable, c2);
        if (scanSymbolWithSeperator == null) {
            return null;
        }
        return Enum.valueOf(cls, scanSymbolWithSeperator);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanSymbolWithSeperator(SymbolTable symbolTable, char c2) {
        int i = 0;
        this.matchStat = 0;
        char charAt = charAt(this.bp);
        if (charAt == 'n') {
            if (charAt(this.bp + 1) == 'u' && charAt(this.bp + 2) == 'l' && charAt(this.bp + 3) == 'l') {
                if (charAt(this.bp + 4) == c2) {
                    int i2 = this.bp + 5;
                    this.bp = i2;
                    this.ch = charAt(i2);
                    this.matchStat = 3;
                    return null;
                }
                this.matchStat = -1;
                return null;
            }
            this.matchStat = -1;
            return null;
        } else if (charAt != '\"') {
            this.matchStat = -1;
            return null;
        } else {
            int i3 = 1;
            while (true) {
                int i4 = i3 + 1;
                char charAt2 = charAt(this.bp + i3);
                if (charAt2 == '\"') {
                    int i5 = this.bp;
                    int i6 = i5 + 1;
                    String addSymbol = addSymbol(i6, ((i5 + i4) - i6) - 1, i, symbolTable);
                    int i7 = i3 + 2;
                    char charAt3 = charAt(this.bp + i4);
                    while (charAt3 != c2) {
                        if (isWhitespace(charAt3)) {
                            charAt3 = charAt(this.bp + i7);
                            i7++;
                        } else {
                            this.matchStat = -1;
                            return addSymbol;
                        }
                    }
                    int i8 = this.bp + i7;
                    this.bp = i8;
                    this.ch = charAt(i8);
                    this.matchStat = 3;
                    return addSymbol;
                }
                i = (i * 31) + charAt2;
                if (charAt2 == '\\') {
                    this.matchStat = -1;
                    return null;
                }
                i3 = i4;
            }
        }
    }

    public Collection<String> newCollectionByType(Class<?> cls) {
        if (cls.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (cls.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        if (cls.isAssignableFrom(LinkedList.class)) {
            return new LinkedList();
        }
        try {
            return (Collection) cls.newInstance();
        } catch (Exception e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00f0, code lost:
        if (r14.size() != 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f2, code lost:
        r1 = r13 + 1;
        r13 = charAt(r12.bp + r13);
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00fc, code lost:
        if (r13 != ',') goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00fe, code lost:
        r13 = r12.bp + r0;
        r12.bp = r13;
        r12.ch = charAt(r13);
        r12.matchStat = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x010c, code lost:
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x010f, code lost:
        if (r13 != '}') goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0111, code lost:
        r6 = r0 + 1;
        r13 = charAt(r12.bp + r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x011a, code lost:
        if (r13 != ',') goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x011c, code lost:
        r12.token = 16;
        r13 = r12.bp + r6;
        r12.bp = r13;
        r12.ch = charAt(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x012c, code lost:
        if (r13 != ']') goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012e, code lost:
        r12.token = 15;
        r13 = r12.bp + r6;
        r12.bp = r13;
        r12.ch = charAt(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x013e, code lost:
        if (r13 != '}') goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0140, code lost:
        r12.token = 13;
        r13 = r12.bp + r6;
        r12.bp = r13;
        r12.ch = charAt(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0152, code lost:
        if (r13 != 26) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0154, code lost:
        r12.bp += r0;
        r12.token = 20;
        r12.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x015f, code lost:
        r12.matchStat = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0162, code lost:
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0163, code lost:
        r12.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0165, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0166, code lost:
        r12.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0168, code lost:
        return null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0170, code lost:
        throw new com.alibaba.fastjson.JSONException("illega str");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r13, java.lang.Class<?> r14) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x0127, code lost:
        if (r1 != r18) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0129, code lost:
        r1 = r16.bp + r3;
        r16.bp = r1;
        r16.ch = charAt(r1);
        r16.matchStat = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0136, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0137, code lost:
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0139, code lost:
        return;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void scanStringArray(java.util.Collection<java.lang.String> r17, char r18) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanStringArray(java.util.Collection, char):void");
    }

    public int scanFieldInt(char[] cArr) {
        int i;
        char charAt;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char charAt2 = charAt(this.bp + length);
        boolean z = charAt2 == '-';
        if (z) {
            charAt2 = charAt(this.bp + i2);
            i2 = length + 2;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int i3 = charAt2 - '0';
        while (true) {
            i = i2 + 1;
            charAt = charAt(this.bp + i2);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            i3 = (i3 * 10) + (charAt - '0');
            i2 = i;
        }
        if (charAt == '.') {
            this.matchStat = -1;
            return 0;
        } else if ((i3 < 0 || i > cArr.length + 14) && !(i3 == Integer.MIN_VALUE && i == 17 && z)) {
            this.matchStat = -1;
            return 0;
        } else if (charAt == ',') {
            int i4 = this.bp + i;
            this.bp = i4;
            this.ch = charAt(i4);
            this.matchStat = 3;
            this.token = 16;
            return z ? -i3 : i3;
        } else if (charAt == '}') {
            int i5 = i2 + 2;
            char charAt3 = charAt(this.bp + i);
            if (charAt3 == ',') {
                this.token = 16;
                int i6 = this.bp + i5;
                this.bp = i6;
                this.ch = charAt(i6);
            } else if (charAt3 == ']') {
                this.token = 15;
                int i7 = this.bp + i5;
                this.bp = i7;
                this.ch = charAt(i7);
            } else if (charAt3 == '}') {
                this.token = 13;
                int i8 = this.bp + i5;
                this.bp = i8;
                this.ch = charAt(i8);
            } else if (charAt3 == 26) {
                this.token = 20;
                this.bp += i2 + 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return 0;
            }
            this.matchStat = 4;
            return z ? -i3 : i3;
        } else {
            this.matchStat = -1;
            return 0;
        }
    }

    public final int[] scanFieldIntArray(char[] cArr) {
        boolean z;
        int i;
        char charAt;
        int i2;
        char charAt2;
        int i3;
        int[] iArr;
        this.matchStat = 0;
        int[] iArr2 = null;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i4 = length + 1;
        if (charAt(this.bp + length) != '[') {
            this.matchStat = -2;
            return null;
        }
        int i5 = length + 2;
        char charAt3 = charAt(this.bp + i4);
        int[] iArr3 = new int[16];
        if (charAt3 == ']') {
            i3 = length + 3;
            charAt2 = charAt(this.bp + i5);
            i2 = 0;
        } else {
            int i6 = 0;
            while (true) {
                if (charAt3 == '-') {
                    charAt3 = charAt(this.bp + i5);
                    i5++;
                    z = true;
                } else {
                    z = false;
                }
                if (charAt3 < '0' || charAt3 > '9') {
                    break;
                }
                int i7 = charAt3 - '0';
                while (true) {
                    i = i5 + 1;
                    charAt = charAt(this.bp + i5);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    }
                    i7 = (i7 * 10) + (charAt - '0');
                    i5 = i;
                }
                if (i6 >= iArr3.length) {
                    int[] iArr4 = new int[(iArr3.length * 3) / 2];
                    System.arraycopy(iArr3, 0, iArr4, 0, i6);
                    iArr3 = iArr4;
                }
                i2 = i6 + 1;
                if (z) {
                    i7 = -i7;
                }
                iArr3[i6] = i7;
                if (charAt == ',') {
                    i5 += 2;
                    charAt3 = charAt(this.bp + i);
                    iArr = null;
                } else if (charAt == ']') {
                    charAt2 = charAt(this.bp + i);
                    i3 = i5 + 2;
                    break;
                } else {
                    iArr = null;
                    charAt3 = charAt;
                    i5 = i;
                }
                iArr2 = iArr;
                i6 = i2;
            }
            int[] iArr5 = iArr2;
            this.matchStat = -1;
            return iArr5;
        }
        if (i2 != iArr3.length) {
            int[] iArr6 = new int[i2];
            System.arraycopy(iArr3, 0, iArr6, 0, i2);
            iArr3 = iArr6;
        }
        if (charAt2 == ',') {
            this.bp += i3 - 1;
            next();
            this.matchStat = 3;
            this.token = 16;
            return iArr3;
        } else if (charAt2 == '}') {
            char charAt4 = charAt(this.bp + i3);
            if (charAt4 == ',') {
                this.token = 16;
                this.bp += i3;
                next();
            } else if (charAt4 == ']') {
                this.token = 15;
                this.bp += i3;
                next();
            } else if (charAt4 == '}') {
                this.token = 13;
                this.bp += i3;
                next();
            } else if (charAt4 == 26) {
                this.bp += i3;
                this.token = 20;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return iArr3;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a6  */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanBoolean(char r10) {
        /*
            r9 = this;
            r0 = 0
            r9.matchStat = r0
            int r1 = r9.bp
            char r1 = r9.charAt(r1)
            r2 = 116(0x74, float:1.63E-43)
            r3 = 5
            r4 = 101(0x65, float:1.42E-43)
            r5 = 3
            r6 = -1
            r7 = 2
            r8 = 1
            if (r1 != r2) goto L3f
            int r1 = r9.bp
            int r1 = r1 + r8
            char r1 = r9.charAt(r1)
            r2 = 114(0x72, float:1.6E-43)
            if (r1 != r2) goto L3c
            int r1 = r9.bp
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            r2 = 117(0x75, float:1.64E-43)
            if (r1 != r2) goto L3c
            int r1 = r9.bp
            int r1 = r1 + r5
            char r1 = r9.charAt(r1)
            if (r1 != r4) goto L3c
            int r0 = r9.bp
            int r0 = r0 + 4
            char r1 = r9.charAt(r0)
            goto L86
        L3c:
            r9.matchStat = r6
            return r0
        L3f:
            r2 = 102(0x66, float:1.43E-43)
            if (r1 != r2) goto L7a
            int r1 = r9.bp
            int r1 = r1 + r8
            char r1 = r9.charAt(r1)
            r2 = 97
            if (r1 != r2) goto L77
            int r1 = r9.bp
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            r2 = 108(0x6c, float:1.51E-43)
            if (r1 != r2) goto L77
            int r1 = r9.bp
            int r1 = r1 + r5
            char r1 = r9.charAt(r1)
            r2 = 115(0x73, float:1.61E-43)
            if (r1 != r2) goto L77
            int r1 = r9.bp
            int r1 = r1 + 4
            char r1 = r9.charAt(r1)
            if (r1 != r4) goto L77
            int r1 = r9.bp
            int r1 = r1 + r3
            char r1 = r9.charAt(r1)
            r3 = 6
            goto L96
        L77:
            r9.matchStat = r6
            return r0
        L7a:
            r2 = 49
            if (r1 != r2) goto L88
            int r0 = r9.bp
            int r0 = r0 + r8
            char r1 = r9.charAt(r0)
            r3 = r7
        L86:
            r0 = r8
            goto L96
        L88:
            r2 = 48
            if (r1 != r2) goto L95
            int r1 = r9.bp
            int r1 = r1 + r8
            char r1 = r9.charAt(r1)
            r3 = r7
            goto L96
        L95:
            r3 = r8
        L96:
            if (r1 != r10) goto La6
            int r10 = r9.bp
            int r10 = r10 + r3
            r9.bp = r10
            char r10 = r9.charAt(r10)
            r9.ch = r10
            r9.matchStat = r5
            return r0
        La6:
            boolean r1 = isWhitespace(r1)
            if (r1 == 0) goto Lb7
            int r1 = r9.bp
            int r2 = r3 + 1
            int r1 = r1 + r3
            char r1 = r9.charAt(r1)
            r3 = r2
            goto L96
        Lb7:
            r9.matchStat = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanBoolean(char):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int scanInt(char c2) {
        int i;
        int i2;
        char charAt;
        this.matchStat = 0;
        char charAt2 = charAt(this.bp);
        boolean z = charAt2 == '\"';
        if (z) {
            charAt2 = charAt(this.bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z2 = charAt2 == '-';
        if (z2) {
            charAt2 = charAt(this.bp + i);
            i++;
        }
        if (charAt2 >= '0' && charAt2 <= '9') {
            int i3 = charAt2 - '0';
            while (true) {
                i2 = i + 1;
                charAt = charAt(this.bp + i);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                i3 = (i3 * 10) + (charAt - '0');
                i = i2;
            }
            if (charAt == '.') {
                this.matchStat = -1;
                return 0;
            } else if (i3 < 0) {
                this.matchStat = -1;
                return 0;
            } else {
                while (charAt != c2) {
                    if (isWhitespace(charAt)) {
                        i2++;
                        charAt = charAt(this.bp + i2);
                    } else {
                        this.matchStat = -1;
                        return z2 ? -i3 : i3;
                    }
                }
                int i4 = this.bp + i2;
                this.bp = i4;
                this.ch = charAt(i4);
                this.matchStat = 3;
                this.token = 16;
                return z2 ? -i3 : i3;
            }
        } else if (charAt2 == 'n' && charAt(this.bp + i) == 'u' && charAt(this.bp + i + 1) == 'l' && charAt(this.bp + i + 2) == 'l') {
            this.matchStat = 5;
            int i5 = i + 4;
            char charAt3 = charAt(this.bp + i + 3);
            if (z && charAt3 == '\"') {
                charAt3 = charAt(this.bp + i5);
                i5 = i + 5;
            }
            while (charAt3 != ',') {
                if (charAt3 == ']') {
                    int i6 = this.bp + i5;
                    this.bp = i6;
                    this.ch = charAt(i6);
                    this.matchStat = 5;
                    this.token = 15;
                    return 0;
                } else if (isWhitespace(charAt3)) {
                    charAt3 = charAt(this.bp + i5);
                    i5++;
                } else {
                    this.matchStat = -1;
                    return 0;
                }
            }
            int i7 = this.bp + i5;
            this.bp = i7;
            this.ch = charAt(i7);
            this.matchStat = 5;
            this.token = 16;
            return 0;
        } else {
            this.matchStat = -1;
            return 0;
        }
    }

    public boolean scanFieldBoolean(char[] cArr) {
        int i;
        boolean z;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char charAt = charAt(this.bp + length);
        if (charAt == 't') {
            int i3 = length + 2;
            if (charAt(this.bp + i2) != 'r') {
                this.matchStat = -1;
                return false;
            }
            int i4 = length + 3;
            if (charAt(this.bp + i3) != 'u') {
                this.matchStat = -1;
                return false;
            }
            i = length + 4;
            if (charAt(this.bp + i4) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z = true;
        } else if (charAt == 'f') {
            int i5 = length + 2;
            if (charAt(this.bp + i2) != 'a') {
                this.matchStat = -1;
                return false;
            }
            int i6 = length + 3;
            if (charAt(this.bp + i5) != 'l') {
                this.matchStat = -1;
                return false;
            }
            int i7 = length + 4;
            if (charAt(this.bp + i6) != 's') {
                this.matchStat = -1;
                return false;
            }
            i = length + 5;
            if (charAt(this.bp + i7) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z = false;
        } else {
            this.matchStat = -1;
            return false;
        }
        int i8 = i + 1;
        char charAt2 = charAt(this.bp + i);
        if (charAt2 == ',') {
            int i9 = this.bp + i8;
            this.bp = i9;
            this.ch = charAt(i9);
            this.matchStat = 3;
            this.token = 16;
            return z;
        } else if (charAt2 == '}') {
            int i10 = i + 2;
            char charAt3 = charAt(this.bp + i8);
            if (charAt3 == ',') {
                this.token = 16;
                int i11 = this.bp + i10;
                this.bp = i11;
                this.ch = charAt(i11);
            } else if (charAt3 == ']') {
                this.token = 15;
                int i12 = this.bp + i10;
                this.bp = i12;
                this.ch = charAt(i12);
            } else if (charAt3 == '}') {
                this.token = 13;
                int i13 = this.bp + i10;
                this.bp = i13;
                this.ch = charAt(i13);
            } else if (charAt3 == 26) {
                this.token = 20;
                this.bp += i + 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return false;
            }
            this.matchStat = 4;
            return z;
        } else {
            this.matchStat = -1;
            return false;
        }
    }

    public long scanFieldLong(char[] cArr) {
        int i;
        char charAt;
        boolean z = false;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char charAt2 = charAt(this.bp + length);
        if (charAt2 == '-') {
            charAt2 = charAt(this.bp + i2);
            i2 = length + 2;
            z = true;
        }
        if (charAt2 < '0' || charAt2 > '9') {
            this.matchStat = -1;
            return 0L;
        }
        long j = charAt2 - '0';
        while (true) {
            i = i2 + 1;
            charAt = charAt(this.bp + i2);
            if (charAt < '0' || charAt > '9') {
                break;
            }
            j = (j * 10) + (charAt - '0');
            i2 = i;
        }
        if (charAt == '.') {
            this.matchStat = -1;
            return 0L;
        } else if (i - cArr.length >= 21 || (j < 0 && !(j == Long.MIN_VALUE && z))) {
            this.matchStat = -1;
            return 0L;
        } else if (charAt == ',') {
            int i3 = this.bp + i;
            this.bp = i3;
            this.ch = charAt(i3);
            this.matchStat = 3;
            this.token = 16;
            return z ? -j : j;
        } else if (charAt == '}') {
            int i4 = i2 + 2;
            char charAt3 = charAt(this.bp + i);
            if (charAt3 == ',') {
                this.token = 16;
                int i5 = this.bp + i4;
                this.bp = i5;
                this.ch = charAt(i5);
            } else if (charAt3 == ']') {
                this.token = 15;
                int i6 = this.bp + i4;
                this.bp = i6;
                this.ch = charAt(i6);
            } else if (charAt3 == '}') {
                this.token = 13;
                int i7 = this.bp + i4;
                this.bp = i7;
                this.ch = charAt(i7);
            } else if (charAt3 == 26) {
                this.token = 20;
                this.bp += i2 + 1;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return 0L;
            }
            this.matchStat = 4;
            return z ? -j : j;
        } else {
            this.matchStat = -1;
            return 0L;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c2) {
        int i;
        int i2;
        char charAt;
        char c3;
        this.matchStat = 0;
        char charAt2 = charAt(this.bp);
        boolean z = charAt2 == '\"';
        if (z) {
            charAt2 = charAt(this.bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z2 = charAt2 == '-';
        if (z2) {
            charAt2 = charAt(this.bp + i);
            i++;
        }
        if (charAt2 >= '0') {
            char c4 = '9';
            if (charAt2 <= '9') {
                long j = charAt2 - '0';
                while (true) {
                    i2 = i + 1;
                    charAt = charAt(this.bp + i);
                    if (charAt < '0' || charAt > c4) {
                        break;
                    }
                    j = (j * 10) + (charAt - '0');
                    i = i2;
                    c4 = '9';
                }
                if (charAt == '.') {
                    this.matchStat = -1;
                    return 0L;
                } else if (j < 0 && (j != Long.MIN_VALUE || !z2)) {
                    throw new NumberFormatException(subString(this.bp, i));
                } else {
                    if (!z) {
                        c3 = c2;
                    } else if (charAt != '\"') {
                        this.matchStat = -1;
                        return 0L;
                    } else {
                        charAt = charAt(this.bp + i2);
                        c3 = c2;
                        i2 = i + 2;
                    }
                    while (charAt != c3) {
                        if (isWhitespace(charAt)) {
                            charAt = charAt(this.bp + i2);
                            i2++;
                        } else {
                            this.matchStat = -1;
                            return j;
                        }
                    }
                    int i3 = this.bp + i2;
                    this.bp = i3;
                    this.ch = charAt(i3);
                    this.matchStat = 3;
                    this.token = 16;
                    return z2 ? -j : j;
                }
            }
        }
        if (charAt2 == 'n' && charAt(this.bp + i) == 'u' && charAt(this.bp + i + 1) == 'l' && charAt(this.bp + i + 2) == 'l') {
            this.matchStat = 5;
            int i4 = i + 4;
            char charAt3 = charAt(this.bp + i + 3);
            if (z && charAt3 == '\"') {
                charAt3 = charAt(this.bp + i4);
                i4 = i + 5;
            }
            while (charAt3 != ',') {
                if (charAt3 == ']') {
                    int i5 = this.bp + i4;
                    this.bp = i5;
                    this.ch = charAt(i5);
                    this.matchStat = 5;
                    this.token = 15;
                    return 0L;
                } else if (isWhitespace(charAt3)) {
                    charAt3 = charAt(this.bp + i4);
                    i4++;
                } else {
                    this.matchStat = -1;
                    return 0L;
                }
            }
            int i6 = this.bp + i4;
            this.bp = i6;
            this.ch = charAt(i6);
            this.matchStat = 5;
            this.token = 16;
            return 0L;
        }
        this.matchStat = -1;
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00cb A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00c8 -> B:55:0x00c9). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float scanFieldFloat(char[] r21) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloat(char[]):float");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00c3 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x00c5 -> B:51:0x00b4). Please submit an issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float scanFloat(char r21) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFloat(char):float");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00c2 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x00c4 -> B:51:0x00b3). Please submit an issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double scanDouble(char r21) {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanDouble(char):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0097 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x0099 -> B:39:0x0089). Please submit an issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigDecimal scanDecimal(char r18) {
        /*
            Method dump skipped, instructions count: 447
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanDecimal(char):java.math.BigDecimal");
    }

    /* JADX WARN: Code restructure failed: missing block: B:97:0x01b6, code lost:
        r1 = r4;
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01b9, code lost:
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[] scanFieldFloatArray(char[] r20) {
        /*
            Method dump skipped, instructions count: 442
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray(char[]):float[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b8, code lost:
        r21.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00bd, code lost:
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x013e, code lost:
        r4 = r18 + 1;
        r1 = charAt(r21.bp + r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0149, code lost:
        if (r2 == r3.length) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x014b, code lost:
        r5 = new float[r2];
        r7 = 0;
        java.lang.System.arraycopy(r3, 0, r5, 0, r2);
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0153, code lost:
        r7 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0155, code lost:
        if (r8 < r6.length) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0157, code lost:
        r5 = new float[(r6.length * 3) / 2];
        java.lang.System.arraycopy(r3, r7, r5, r7, r2);
        r6 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0162, code lost:
        r5 = r8 + 1;
        r6[r8] = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0168, code lost:
        if (r1 != ',') goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x016a, code lost:
        r3 = charAt(r21.bp + r4);
        r2 = r18 + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0179, code lost:
        if (r1 != ']') goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x017b, code lost:
        r2 = r18 + 2;
        r3 = charAt(r21.bp + r4);
        r8 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0186, code lost:
        r3 = r1;
        r2 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x019c, code lost:
        r21.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01a2, code lost:
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[][] scanFieldFloatArray2(char[] r22) {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray2(char[]):float[][]");
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00d2 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00cf -> B:57:0x00d0). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double scanFieldDouble(char[] r21) {
        /*
            Method dump skipped, instructions count: 556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldDouble(char[]):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00a8 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00a5 -> B:44:0x00a6). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigDecimal scanFieldDecimal(char[] r18) {
        /*
            Method dump skipped, instructions count: 469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldDecimal(char[]):java.math.BigDecimal");
    }

    public BigInteger scanFieldBigInteger(char[] cArr) {
        int i;
        char charAt;
        boolean z;
        int length;
        int i2;
        BigInteger bigInteger;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length2 = cArr.length;
        int i3 = length2 + 1;
        char charAt2 = charAt(this.bp + length2);
        boolean z2 = charAt2 == '\"';
        if (z2) {
            charAt2 = charAt(this.bp + i3);
            i3 = length2 + 2;
        }
        boolean z3 = charAt2 == '-';
        if (z3) {
            charAt2 = charAt(this.bp + i3);
            i3++;
        }
        if (charAt2 >= '0') {
            char c2 = '9';
            if (charAt2 <= '9') {
                long j = charAt2 - '0';
                while (true) {
                    i = i3 + 1;
                    charAt = charAt(this.bp + i3);
                    if (charAt < '0' || charAt > c2) {
                        break;
                    }
                    long j2 = (10 * j) + (charAt - '0');
                    if (j2 < j) {
                        z = true;
                        break;
                    }
                    j = j2;
                    i3 = i;
                    c2 = '9';
                }
                z = false;
                if (!z2) {
                    int i4 = this.bp;
                    length = cArr.length + i4;
                    i2 = ((i4 + i) - length) - 1;
                } else if (charAt != '\"') {
                    this.matchStat = -1;
                    return null;
                } else {
                    int i5 = i3 + 2;
                    charAt = charAt(this.bp + i);
                    int i6 = this.bp;
                    length = cArr.length + i6 + 1;
                    i2 = ((i6 + i5) - length) - 2;
                    i = i5;
                }
                if (!z && (i2 < 20 || (z3 && i2 < 21))) {
                    if (z3) {
                        j = -j;
                    }
                    bigInteger = BigInteger.valueOf(j);
                } else {
                    bigInteger = new BigInteger(subString(length, i2));
                }
                if (charAt == ',') {
                    int i7 = this.bp + i;
                    this.bp = i7;
                    this.ch = charAt(i7);
                    this.matchStat = 3;
                    this.token = 16;
                    return bigInteger;
                } else if (charAt == '}') {
                    int i8 = i + 1;
                    char charAt3 = charAt(this.bp + i);
                    if (charAt3 == ',') {
                        this.token = 16;
                        int i9 = this.bp + i8;
                        this.bp = i9;
                        this.ch = charAt(i9);
                    } else if (charAt3 == ']') {
                        this.token = 15;
                        int i10 = this.bp + i8;
                        this.bp = i10;
                        this.ch = charAt(i10);
                    } else if (charAt3 == '}') {
                        this.token = 13;
                        int i11 = this.bp + i8;
                        this.bp = i11;
                        this.ch = charAt(i11);
                    } else if (charAt3 == 26) {
                        this.token = 20;
                        this.bp += i;
                        this.ch = JSONLexer.EOI;
                    } else {
                        this.matchStat = -1;
                        return null;
                    }
                    this.matchStat = 4;
                    return bigInteger;
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
        }
        if (charAt2 == 'n' && charAt(this.bp + i3) == 'u' && charAt(this.bp + i3 + 1) == 'l' && charAt(this.bp + i3 + 2) == 'l') {
            this.matchStat = 5;
            int i12 = i3 + 4;
            char charAt4 = charAt(this.bp + i3 + 3);
            if (z2 && charAt4 == '\"') {
                charAt4 = charAt(this.bp + i12);
                i12 = i3 + 5;
            }
            while (charAt4 != ',') {
                if (charAt4 == '}') {
                    int i13 = this.bp + i12;
                    this.bp = i13;
                    this.ch = charAt(i13);
                    this.matchStat = 5;
                    this.token = 13;
                    return null;
                } else if (isWhitespace(charAt4)) {
                    charAt4 = charAt(this.bp + i12);
                    i12++;
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
            int i14 = this.bp + i12;
            this.bp = i14;
            this.ch = charAt(i14);
            this.matchStat = 5;
            this.token = 16;
            return null;
        }
        this.matchStat = -1;
        return null;
    }

    public Date scanFieldDate(char[] cArr) {
        char c2;
        int i;
        long j;
        Date date;
        int i2;
        char charAt;
        boolean z = false;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i3 = length + 1;
        char charAt2 = charAt(this.bp + length);
        if (charAt2 == '\"') {
            int indexOf = indexOf('\"', this.bp + cArr.length + 1);
            if (indexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int length2 = this.bp + cArr.length + 1;
            String subString = subString(length2, indexOf - length2);
            if (subString.indexOf(92) != -1) {
                while (true) {
                    int i4 = 0;
                    for (int i5 = indexOf - 1; i5 >= 0 && charAt(i5) == '\\'; i5--) {
                        i4++;
                    }
                    if (i4 % 2 == 0) {
                        break;
                    }
                    indexOf = indexOf('\"', indexOf + 1);
                }
                int i6 = this.bp;
                int length3 = indexOf - ((cArr.length + i6) + 1);
                subString = readString(sub_chars(i6 + cArr.length + 1, length3), length3);
            }
            int i7 = this.bp;
            int length4 = i3 + (indexOf - ((cArr.length + i7) + 1)) + 1;
            i = length4 + 1;
            c2 = charAt(i7 + length4);
            JSONScanner jSONScanner = new JSONScanner(subString);
            try {
                if (jSONScanner.scanISO8601DateIfMatch(false)) {
                    date = jSONScanner.getCalendar().getTime();
                } else {
                    this.matchStat = -1;
                    return null;
                }
            } finally {
                jSONScanner.close();
            }
        } else if (charAt2 == '-' || (charAt2 >= '0' && charAt2 <= '9')) {
            if (charAt2 == '-') {
                charAt2 = charAt(this.bp + i3);
                i3 = length + 2;
                z = true;
            }
            if (charAt2 < '0' || charAt2 > '9') {
                c2 = charAt2;
                i = i3;
                j = 0;
            } else {
                j = charAt2 - '0';
                while (true) {
                    i2 = i3 + 1;
                    charAt = charAt(this.bp + i3);
                    if (charAt < '0' || charAt > '9') {
                        break;
                    }
                    j = (j * 10) + (charAt - '0');
                    i3 = i2;
                }
                c2 = charAt;
                i = i2;
            }
            if (j < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            date = new Date(j);
        } else {
            this.matchStat = -1;
            return null;
        }
        if (c2 == ',') {
            int i8 = this.bp + i;
            this.bp = i8;
            this.ch = charAt(i8);
            this.matchStat = 3;
            return date;
        } else if (c2 == '}') {
            int i9 = i + 1;
            char charAt3 = charAt(this.bp + i);
            if (charAt3 == ',') {
                this.token = 16;
                int i10 = this.bp + i9;
                this.bp = i10;
                this.ch = charAt(i10);
            } else if (charAt3 == ']') {
                this.token = 15;
                int i11 = this.bp + i9;
                this.bp = i11;
                this.ch = charAt(i11);
            } else if (charAt3 == '}') {
                this.token = 13;
                int i12 = this.bp + i9;
                this.bp = i12;
                this.ch = charAt(i12);
            } else if (charAt3 == 26) {
                this.token = 20;
                this.bp += i;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return date;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public Date scanDate(char c2) {
        long j;
        char c3;
        int i;
        Date date;
        int i2;
        char charAt;
        boolean z = false;
        this.matchStat = 0;
        char charAt2 = charAt(this.bp);
        int i3 = 1;
        if (charAt2 == '\"') {
            int indexOf = indexOf('\"', this.bp + 1);
            if (indexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int i4 = this.bp + 1;
            String subString = subString(i4, indexOf - i4);
            if (subString.indexOf(92) != -1) {
                while (true) {
                    int i5 = 0;
                    for (int i6 = indexOf - 1; i6 >= 0 && charAt(i6) == '\\'; i6--) {
                        i5++;
                    }
                    if (i5 % 2 == 0) {
                        break;
                    }
                    indexOf = indexOf('\"', indexOf + 1);
                }
                int i7 = this.bp;
                int i8 = indexOf - (i7 + 1);
                subString = readString(sub_chars(i7 + 1, i8), i8);
            }
            int i9 = this.bp;
            int i10 = indexOf - (i9 + 1);
            int i11 = i10 + 2;
            i = i10 + 3;
            c3 = charAt(i9 + i11);
            JSONScanner jSONScanner = new JSONScanner(subString);
            try {
                if (jSONScanner.scanISO8601DateIfMatch(false)) {
                    date = jSONScanner.getCalendar().getTime();
                } else {
                    this.matchStat = -1;
                    return null;
                }
            } finally {
                jSONScanner.close();
            }
        } else {
            char c4 = '9';
            if (charAt2 == '-' || (charAt2 >= '0' && charAt2 <= '9')) {
                if (charAt2 == '-') {
                    charAt2 = charAt(this.bp + 1);
                    z = true;
                    i3 = 2;
                }
                if (charAt2 < '0' || charAt2 > '9') {
                    j = 0;
                    int i12 = i3;
                    c3 = charAt2;
                    i = i12;
                } else {
                    j = charAt2 - '0';
                    while (true) {
                        i2 = i3 + 1;
                        charAt = charAt(this.bp + i3);
                        if (charAt < '0' || charAt > c4) {
                            break;
                        }
                        j = (j * 10) + (charAt - '0');
                        i3 = i2;
                        c4 = '9';
                    }
                    c3 = charAt;
                    i = i2;
                }
                if (j < 0) {
                    this.matchStat = -1;
                    return null;
                }
                if (z) {
                    j = -j;
                }
                date = new Date(j);
            } else if (charAt2 == 'n' && charAt(this.bp + 1) == 'u' && charAt(this.bp + 2) == 'l' && charAt(this.bp + 3) == 'l') {
                i = 5;
                this.matchStat = 5;
                c3 = charAt(this.bp + 4);
                date = null;
            } else {
                this.matchStat = -1;
                return null;
            }
        }
        if (c3 == ',') {
            int i13 = this.bp + i;
            this.bp = i13;
            this.ch = charAt(i13);
            this.matchStat = 3;
            this.token = 16;
            return date;
        } else if (c3 == ']') {
            int i14 = i + 1;
            char charAt3 = charAt(this.bp + i);
            if (charAt3 == ',') {
                this.token = 16;
                int i15 = this.bp + i14;
                this.bp = i15;
                this.ch = charAt(i15);
            } else if (charAt3 == ']') {
                this.token = 15;
                int i16 = this.bp + i14;
                this.bp = i16;
                this.ch = charAt(i16);
            } else if (charAt3 == '}') {
                this.token = 13;
                int i17 = this.bp + i14;
                this.bp = i17;
                this.ch = charAt(i17);
            } else if (charAt3 == 26) {
                this.token = 20;
                this.bp += i;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return date;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public UUID scanFieldUUID(char[] cArr) {
        char charAt;
        int i;
        UUID uuid;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i9 = length + 1;
        char charAt2 = charAt(this.bp + length);
        char c2 = 4;
        if (charAt2 == '\"') {
            int indexOf = indexOf('\"', this.bp + cArr.length + 1);
            if (indexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int length2 = this.bp + cArr.length + 1;
            int i10 = indexOf - length2;
            char c3 = 'f';
            char c4 = 'A';
            char c5 = '9';
            char c6 = 'a';
            if (i10 == 36) {
                int i11 = 0;
                long j = 0;
                while (i11 < 8) {
                    char charAt3 = charAt(length2 + i11);
                    if (charAt3 >= '0' && charAt3 <= '9') {
                        i8 = charAt3 - '0';
                    } else if (charAt3 >= 'a' && charAt3 <= 'f') {
                        i8 = charAt3 - 'W';
                    } else if (charAt3 < 'A' || charAt3 > 'F') {
                        this.matchStat = -2;
                        return null;
                    } else {
                        i8 = charAt3 - '7';
                    }
                    j = (j << c2) | i8;
                    i11++;
                    c2 = 4;
                }
                for (int i12 = 9; i12 < 13; i12++) {
                    char charAt4 = charAt(length2 + i12);
                    if (charAt4 >= '0' && charAt4 <= '9') {
                        i7 = charAt4 - '0';
                    } else if (charAt4 >= 'a' && charAt4 <= 'f') {
                        i7 = charAt4 - 'W';
                    } else if (charAt4 < 'A' || charAt4 > 'F') {
                        this.matchStat = -2;
                        return null;
                    } else {
                        i7 = charAt4 - '7';
                    }
                    j = (j << 4) | i7;
                }
                int i13 = 14;
                long j2 = j;
                while (i13 < 18) {
                    char charAt5 = charAt(length2 + i13);
                    if (charAt5 >= '0' && charAt5 <= '9') {
                        i6 = charAt5 - '0';
                    } else if (charAt5 >= 'a' && charAt5 <= c3) {
                        i6 = charAt5 - 'W';
                    } else if (charAt5 < 'A' || charAt5 > 'F') {
                        this.matchStat = -2;
                        return null;
                    } else {
                        i6 = charAt5 - '7';
                    }
                    j2 = (j2 << 4) | i6;
                    i13++;
                    indexOf = indexOf;
                    c3 = 'f';
                }
                int i14 = indexOf;
                int i15 = 19;
                long j3 = 0;
                while (i15 < 23) {
                    char charAt6 = charAt(length2 + i15);
                    if (charAt6 >= '0' && charAt6 <= '9') {
                        i5 = charAt6 - '0';
                    } else if (charAt6 >= c6 && charAt6 <= 'f') {
                        i5 = charAt6 - 'W';
                    } else if (charAt6 < 'A' || charAt6 > 'F') {
                        this.matchStat = -2;
                        return null;
                    } else {
                        i5 = charAt6 - '7';
                    }
                    j3 = (j3 << 4) | i5;
                    i15++;
                    j2 = j2;
                    c6 = 'a';
                }
                long j4 = j2;
                int i16 = 24;
                long j5 = j3;
                while (i16 < 36) {
                    char charAt7 = charAt(length2 + i16);
                    if (charAt7 >= '0' && charAt7 <= c5) {
                        i4 = charAt7 - '0';
                    } else if (charAt7 >= 'a' && charAt7 <= 'f') {
                        i4 = charAt7 - 'W';
                    } else if (charAt7 < c4 || charAt7 > 'F') {
                        this.matchStat = -2;
                        return null;
                    } else {
                        i4 = charAt7 - '7';
                    }
                    j5 = (j5 << 4) | i4;
                    i16++;
                    c4 = 'A';
                    c5 = '9';
                }
                uuid = new UUID(j4, j5);
                int i17 = this.bp;
                int length3 = i9 + (i14 - ((cArr.length + i17) + 1)) + 1;
                i = length3 + 1;
                charAt = charAt(i17 + length3);
            } else {
                if (i10 == 32) {
                    int i18 = 0;
                    long j6 = 0;
                    for (int i19 = 16; i18 < i19; i19 = 16) {
                        char charAt8 = charAt(length2 + i18);
                        if (charAt8 >= '0' && charAt8 <= '9') {
                            i3 = charAt8 - '0';
                        } else if (charAt8 >= 'a' && charAt8 <= 'f') {
                            i3 = charAt8 - 'W';
                        } else if (charAt8 < 'A' || charAt8 > 'F') {
                            this.matchStat = -2;
                            return null;
                        } else {
                            i3 = charAt8 - '7';
                        }
                        j6 = (j6 << 4) | i3;
                        i18++;
                    }
                    int i20 = 16;
                    long j7 = 0;
                    for (int i21 = 32; i20 < i21; i21 = 32) {
                        char charAt9 = charAt(length2 + i20);
                        if (charAt9 >= '0' && charAt9 <= '9') {
                            i2 = charAt9 - '0';
                        } else if (charAt9 >= 'a' && charAt9 <= 'f') {
                            i2 = charAt9 - 'W';
                        } else if (charAt9 < 'A' || charAt9 > 'F') {
                            this.matchStat = -2;
                            return null;
                        } else {
                            i2 = charAt9 - '7';
                            j7 = (j7 << 4) | i2;
                            i20++;
                        }
                        j7 = (j7 << 4) | i2;
                        i20++;
                    }
                    uuid = new UUID(j6, j7);
                    int i22 = this.bp;
                    int length4 = i9 + (indexOf - ((cArr.length + i22) + 1)) + 1;
                    i = length4 + 1;
                    charAt = charAt(i22 + length4);
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
        } else {
            if (charAt2 == 'n') {
                int i23 = length + 2;
                if (charAt(this.bp + i9) == 'u') {
                    int i24 = length + 3;
                    if (charAt(this.bp + i23) == 'l') {
                        int i25 = length + 4;
                        if (charAt(this.bp + i24) == 'l') {
                            int i26 = length + 5;
                            charAt = charAt(this.bp + i25);
                            i = i26;
                            uuid = null;
                        }
                    }
                }
            }
            this.matchStat = -1;
            return null;
        }
        if (charAt == ',') {
            int i27 = this.bp + i;
            this.bp = i27;
            this.ch = charAt(i27);
            this.matchStat = 3;
            return uuid;
        } else if (charAt == '}') {
            int i28 = i + 1;
            char charAt10 = charAt(this.bp + i);
            if (charAt10 == ',') {
                this.token = 16;
                int i29 = this.bp + i28;
                this.bp = i29;
                this.ch = charAt(i29);
            } else if (charAt10 == ']') {
                this.token = 15;
                int i30 = this.bp + i28;
                this.bp = i30;
                this.ch = charAt(i30);
            } else if (charAt10 == '}') {
                this.token = 13;
                int i31 = this.bp + i28;
                this.bp = i31;
                this.ch = charAt(i31);
            } else if (charAt10 == 26) {
                this.token = 20;
                this.bp += i;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return uuid;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public UUID scanUUID(char c2) {
        char charAt;
        int i;
        UUID uuid;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        this.matchStat = 0;
        char charAt2 = charAt(this.bp);
        if (charAt2 == '\"') {
            int indexOf = indexOf('\"', this.bp + 1);
            if (indexOf == -1) {
                throw new JSONException("unclosed str");
            }
            int i9 = this.bp + 1;
            int i10 = indexOf - i9;
            char c3 = 'F';
            char c4 = 'A';
            char c5 = 'a';
            char c6 = '0';
            if (i10 == 36) {
                int i11 = 0;
                long j = 0;
                while (i11 < 8) {
                    char charAt3 = charAt(i9 + i11);
                    if (charAt3 >= '0' && charAt3 <= '9') {
                        i8 = charAt3 - '0';
                    } else if (charAt3 >= 'a' && charAt3 <= 'f') {
                        i8 = charAt3 - 'W';
                    } else if (charAt3 < c4 || charAt3 > 'F') {
                        this.matchStat = -2;
                        return null;
                    } else {
                        i8 = charAt3 - '7';
                    }
                    j = (j << 4) | i8;
                    i11++;
                    indexOf = indexOf;
                    c4 = 'A';
                }
                int i12 = indexOf;
                for (int i13 = 9; i13 < 13; i13++) {
                    char charAt4 = charAt(i9 + i13);
                    if (charAt4 >= '0' && charAt4 <= '9') {
                        i7 = charAt4 - '0';
                    } else if (charAt4 >= 'a' && charAt4 <= 'f') {
                        i7 = charAt4 - 'W';
                    } else if (charAt4 < 'A' || charAt4 > 'F') {
                        this.matchStat = -2;
                        return null;
                    } else {
                        i7 = charAt4 - '7';
                    }
                    j = (j << 4) | i7;
                }
                int i14 = 14;
                long j2 = j;
                while (i14 < 18) {
                    char charAt5 = charAt(i9 + i14);
                    if (charAt5 >= '0' && charAt5 <= '9') {
                        i6 = charAt5 - '0';
                    } else if (charAt5 >= c5 && charAt5 <= 'f') {
                        i6 = charAt5 - 'W';
                    } else if (charAt5 < 'A' || charAt5 > c3) {
                        this.matchStat = -2;
                        return null;
                    } else {
                        i6 = charAt5 - '7';
                    }
                    j2 = (j2 << 4) | i6;
                    i14++;
                    c5 = 'a';
                    c3 = 'F';
                }
                int i15 = 19;
                long j3 = 0;
                while (i15 < 23) {
                    char charAt6 = charAt(i9 + i15);
                    if (charAt6 >= c6 && charAt6 <= '9') {
                        i5 = charAt6 - '0';
                    } else if (charAt6 >= 'a' && charAt6 <= 'f') {
                        i5 = charAt6 - 'W';
                    } else if (charAt6 < 'A' || charAt6 > 'F') {
                        this.matchStat = -2;
                        return null;
                    } else {
                        i5 = charAt6 - '7';
                    }
                    j3 = (j3 << 4) | i5;
                    i15++;
                    c6 = '0';
                }
                long j4 = j3;
                for (int i16 = 24; i16 < 36; i16++) {
                    char charAt7 = charAt(i9 + i16);
                    if (charAt7 >= '0' && charAt7 <= '9') {
                        i4 = charAt7 - '0';
                    } else if (charAt7 >= 'a' && charAt7 <= 'f') {
                        i4 = charAt7 - 'W';
                    } else if (charAt7 < 'A' || charAt7 > 'F') {
                        this.matchStat = -2;
                        return null;
                    } else {
                        i4 = charAt7 - '7';
                    }
                    j4 = (j4 << 4) | i4;
                }
                uuid = new UUID(j2, j4);
                int i17 = this.bp;
                int i18 = i12 - (i17 + 1);
                int i19 = i18 + 2;
                i = i18 + 3;
                charAt = charAt(i17 + i19);
            } else {
                if (i10 == 32) {
                    int i20 = 0;
                    long j5 = 0;
                    for (int i21 = 16; i20 < i21; i21 = 16) {
                        char charAt8 = charAt(i9 + i20);
                        if (charAt8 >= '0' && charAt8 <= '9') {
                            i3 = charAt8 - '0';
                        } else if (charAt8 >= 'a' && charAt8 <= 'f') {
                            i3 = charAt8 - 'W';
                        } else if (charAt8 < 'A' || charAt8 > 'F') {
                            this.matchStat = -2;
                            return null;
                        } else {
                            i3 = charAt8 - '7';
                        }
                        j5 = (j5 << 4) | i3;
                        i20++;
                    }
                    int i22 = 16;
                    long j6 = 0;
                    for (int i23 = 32; i22 < i23; i23 = 32) {
                        char charAt9 = charAt(i9 + i22);
                        if (charAt9 >= '0' && charAt9 <= '9') {
                            i2 = charAt9 - '0';
                        } else if (charAt9 >= 'a' && charAt9 <= 'f') {
                            i2 = charAt9 - 'W';
                        } else if (charAt9 < 'A' || charAt9 > 'F') {
                            this.matchStat = -2;
                            return null;
                        } else {
                            i2 = charAt9 - '7';
                            j6 = (j6 << 4) | i2;
                            i22++;
                        }
                        j6 = (j6 << 4) | i2;
                        i22++;
                    }
                    uuid = new UUID(j5, j6);
                    int i24 = this.bp;
                    int i25 = indexOf - (i24 + 1);
                    int i26 = i25 + 2;
                    i = i25 + 3;
                    charAt = charAt(i24 + i26);
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
        } else if (charAt2 == 'n' && charAt(this.bp + 1) == 'u' && charAt(this.bp + 2) == 'l' && charAt(this.bp + 3) == 'l') {
            charAt = charAt(this.bp + 4);
            i = 5;
            uuid = null;
        } else {
            this.matchStat = -1;
            return null;
        }
        if (charAt == ',') {
            int i27 = this.bp + i;
            this.bp = i27;
            this.ch = charAt(i27);
            this.matchStat = 3;
            return uuid;
        } else if (charAt == ']') {
            int i28 = i + 1;
            char charAt10 = charAt(this.bp + i);
            if (charAt10 == ',') {
                this.token = 16;
                int i29 = this.bp + i28;
                this.bp = i29;
                this.ch = charAt(i29);
            } else if (charAt10 == ']') {
                this.token = 15;
                int i30 = this.bp + i28;
                this.bp = i30;
                this.ch = charAt(i30);
            } else if (charAt10 == '}') {
                this.token = 13;
                int i31 = this.bp + i28;
                this.bp = i31;
                this.ch = charAt(i31);
            } else if (charAt10 == 26) {
                this.token = 20;
                this.bp += i;
                this.ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return uuid;
        } else {
            this.matchStat = -1;
            return null;
        }
    }

    public final void scanTrue() {
        if (this.ch != 't') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.ch != 'r') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.ch != 'u') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.ch != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        char c2 = this.ch;
        if (c2 == ' ' || c2 == ',' || c2 == '}' || c2 == ']' || c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == 26 || c2 == '\f' || c2 == '\b' || c2 == ':' || c2 == '/') {
            this.token = 6;
            return;
        }
        throw new JSONException("scan true error");
    }

    public final void scanNullOrNew() {
        scanNullOrNew(true);
    }

    public final void scanNullOrNew(boolean z) {
        if (this.ch != 'n') {
            throw new JSONException("error parse null or new");
        }
        next();
        char c2 = this.ch;
        if (c2 != 'u') {
            if (c2 != 'e') {
                throw new JSONException("error parse new");
            }
            next();
            if (this.ch != 'w') {
                throw new JSONException("error parse new");
            }
            next();
            char c3 = this.ch;
            if (c3 == ' ' || c3 == ',' || c3 == '}' || c3 == ']' || c3 == '\n' || c3 == '\r' || c3 == '\t' || c3 == 26 || c3 == '\f' || c3 == '\b') {
                this.token = 9;
                return;
            }
            throw new JSONException("scan new error");
        }
        next();
        if (this.ch != 'l') {
            throw new JSONException("error parse null");
        }
        next();
        if (this.ch != 'l') {
            throw new JSONException("error parse null");
        }
        next();
        char c4 = this.ch;
        if (c4 == ' ' || c4 == ',' || c4 == '}' || c4 == ']' || c4 == '\n' || c4 == '\r' || c4 == '\t' || c4 == 26 || ((c4 == ':' && z) || c4 == '\f' || c4 == '\b')) {
            this.token = 8;
            return;
        }
        throw new JSONException("scan null error");
    }

    public final void scanFalse() {
        if (this.ch != 'f') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.ch != 'a') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.ch != 'l') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.ch != 's') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.ch != 'e') {
            throw new JSONException("error parse false");
        }
        next();
        char c2 = this.ch;
        if (c2 == ' ' || c2 == ',' || c2 == '}' || c2 == ']' || c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == 26 || c2 == '\f' || c2 == '\b' || c2 == ':' || c2 == '/') {
            this.token = 7;
            return;
        }
        throw new JSONException("scan false error");
    }

    public final void scanIdent() {
        this.np = this.bp - 1;
        this.hasSpecial = false;
        do {
            this.sp++;
            next();
        } while (Character.isLetterOrDigit(this.ch));
        String stringVal = stringVal();
        if ("null".equalsIgnoreCase(stringVal)) {
            this.token = 8;
        } else if ("new".equals(stringVal)) {
            this.token = 9;
        } else if ("true".equals(stringVal)) {
            this.token = 6;
        } else if ("false".equals(stringVal)) {
            this.token = 7;
        } else if ("undefined".equals(stringVal)) {
            this.token = 23;
        } else if ("Set".equals(stringVal)) {
            this.token = 21;
        } else if ("TreeSet".equals(stringVal)) {
            this.token = 22;
        } else {
            this.token = 18;
        }
    }

    public static String readString(char[] cArr, int i) {
        int i2;
        int i3;
        char[] cArr2 = new char[i];
        int i4 = 0;
        int i5 = 0;
        while (i4 < i) {
            char c2 = cArr[i4];
            if (c2 != '\\') {
                cArr2[i5] = c2;
                i5++;
            } else {
                int i6 = i4 + 1;
                char c3 = cArr[i6];
                if (c3 == '\"') {
                    i2 = i5 + 1;
                    cArr2[i5] = '\"';
                } else if (c3 != '\'') {
                    if (c3 != 'F') {
                        if (c3 == '\\') {
                            i2 = i5 + 1;
                            cArr2[i5] = '\\';
                        } else if (c3 == 'b') {
                            i2 = i5 + 1;
                            cArr2[i5] = '\b';
                        } else if (c3 != 'f') {
                            if (c3 == 'n') {
                                i2 = i5 + 1;
                                cArr2[i5] = '\n';
                            } else if (c3 != 'r') {
                                if (c3 != 'x') {
                                    switch (c3) {
                                        case '/':
                                            i2 = i5 + 1;
                                            cArr2[i5] = '/';
                                            break;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_VERTICAL_CHAINSTYLE /* 48 */:
                                            i2 = i5 + 1;
                                            cArr2[i5] = 0;
                                            break;
                                        case '1':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 1;
                                            break;
                                        case '2':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 2;
                                            break;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_TAG /* 51 */:
                                            i2 = i5 + 1;
                                            cArr2[i5] = 3;
                                            break;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_TOP_OF /* 52 */:
                                            i2 = i5 + 1;
                                            cArr2[i5] = 4;
                                            break;
                                        case ConstraintLayout.LayoutParams.Table.LAYOUT_CONSTRAINT_BASELINE_TO_BOTTOM_OF /* 53 */:
                                            i2 = i5 + 1;
                                            cArr2[i5] = 5;
                                            break;
                                        case '6':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 6;
                                            break;
                                        case '7':
                                            i2 = i5 + 1;
                                            cArr2[i5] = 7;
                                            break;
                                        default:
                                            switch (c3) {
                                                case 't':
                                                    i2 = i5 + 1;
                                                    cArr2[i5] = '\t';
                                                    break;
                                                case 'u':
                                                    i3 = i5 + 1;
                                                    char c4 = cArr[i4 + 2];
                                                    char c5 = cArr[i4 + 3];
                                                    char c6 = cArr[i4 + 4];
                                                    i4 += 5;
                                                    cArr2[i5] = (char) Integer.parseInt(new String(new char[]{c4, c5, c6, cArr[i4]}), 16);
                                                    break;
                                                case 'v':
                                                    i2 = i5 + 1;
                                                    cArr2[i5] = 11;
                                                    break;
                                                default:
                                                    throw new JSONException("unclosed.str.lit");
                                            }
                                    }
                                } else {
                                    i3 = i5 + 1;
                                    int[] iArr = digits;
                                    i4 += 3;
                                    cArr2[i5] = (char) ((iArr[cArr[i4 + 2]] * 16) + iArr[cArr[i4]]);
                                }
                                i5 = i3;
                            } else {
                                i2 = i5 + 1;
                                cArr2[i5] = '\r';
                            }
                        }
                    }
                    i2 = i5 + 1;
                    cArr2[i5] = '\f';
                } else {
                    i2 = i5 + 1;
                    cArr2[i5] = '\'';
                }
                i5 = i2;
                i4 = i6;
            }
            i4++;
        }
        return new String(cArr2, 0, i5);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public boolean isBlankInput() {
        int i = 0;
        while (true) {
            char charAt = charAt(i);
            if (charAt == 26) {
                this.token = 20;
                return true;
            } else if (!isWhitespace(charAt)) {
                return false;
            } else {
                i++;
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void skipWhitespace() {
        while (true) {
            char c2 = this.ch;
            if (c2 > '/') {
                return;
            }
            if (c2 == ' ' || c2 == '\r' || c2 == '\n' || c2 == '\t' || c2 == '\f' || c2 == '\b') {
                next();
            } else if (c2 != '/') {
                return;
            } else {
                skipComment();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0146, code lost:
        throw new com.alibaba.fastjson.JSONException("invalid escape character \\x" + r1 + r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void scanStringSingleQuote() {
        /*
            Method dump skipped, instructions count: 434
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanStringSingleQuote():void");
    }

    protected final void putChar(char c2) {
        int i = this.sp;
        char[] cArr = this.sbuf;
        if (i == cArr.length) {
            char[] cArr2 = new char[cArr.length * 2];
            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
            this.sbuf = cArr2;
        }
        char[] cArr3 = this.sbuf;
        int i2 = this.sp;
        this.sp = i2 + 1;
        cArr3[i2] = c2;
    }

    public final void scanHex() {
        char next;
        if (this.ch != 'x') {
            throw new JSONException("illegal state. " + this.ch);
        }
        next();
        if (this.ch != '\'') {
            throw new JSONException("illegal state. " + this.ch);
        }
        this.np = this.bp;
        next();
        if (this.ch == '\'') {
            next();
            this.token = 26;
            return;
        }
        while (true) {
            next = next();
            if ((next < '0' || next > '9') && (next < 'A' || next > 'F')) {
                break;
            }
            this.sp++;
        }
        if (next == '\'') {
            this.sp++;
            next();
            this.token = 26;
            return;
        }
        throw new JSONException("illegal state. " + next);
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00cb  */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void scanNumber() {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanNumber():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0085  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x005c -> B:11:0x002e). Please submit an issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long longValue() throws java.lang.NumberFormatException {
        /*
            r13 = this;
            int r0 = r13.np
            r1 = -1
            r2 = 0
            if (r0 != r1) goto L8
            r13.np = r2
        L8:
            int r0 = r13.np
            int r1 = r13.sp
            int r1 = r1 + r0
            char r3 = r13.charAt(r0)
            r4 = 45
            r5 = 1
            if (r3 != r4) goto L1d
            int r0 = r0 + 1
            r2 = -9223372036854775808
            r3 = r2
            r2 = r5
            goto L22
        L1d:
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L22:
            if (r0 >= r1) goto L30
            int r6 = r0 + 1
            char r0 = r13.charAt(r0)
            int r0 = r0 + (-48)
            int r0 = -r0
            long r7 = (long) r0
        L2e:
            r0 = r6
            goto L32
        L30:
            r7 = 0
        L32:
            if (r0 >= r1) goto L73
            int r6 = r0 + 1
            char r0 = r13.charAt(r0)
            r9 = 76
            if (r0 == r9) goto L72
            r9 = 83
            if (r0 == r9) goto L72
            r9 = 66
            if (r0 != r9) goto L47
            goto L72
        L47:
            int r0 = r0 + (-48)
            r9 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            int r9 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r9 < 0) goto L68
            r9 = 10
            long r7 = r7 * r9
            long r9 = (long) r0
            long r11 = r3 + r9
            int r0 = (r7 > r11 ? 1 : (r7 == r11 ? 0 : -1))
            if (r0 < 0) goto L5e
            long r7 = r7 - r9
            goto L2e
        L5e:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r13.numberString()
            r0.<init>(r1)
            throw r0
        L68:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r13.numberString()
            r0.<init>(r1)
            throw r0
        L72:
            r0 = r6
        L73:
            if (r2 == 0) goto L85
            int r1 = r13.np
            int r1 = r1 + r5
            if (r0 <= r1) goto L7b
            return r7
        L7b:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r13.numberString()
            r0.<init>(r1)
            throw r0
        L85:
            long r0 = -r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.longValue():long");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final Number decimalValue(boolean z) {
        char charAt = charAt((this.np + this.sp) - 1);
        try {
            if (charAt == 'F') {
                return Float.valueOf(Float.parseFloat(numberString()));
            }
            if (charAt == 'D') {
                return Double.valueOf(Double.parseDouble(numberString()));
            }
            if (z) {
                return decimalValue();
            }
            return Double.valueOf(doubleValue());
        } catch (NumberFormatException e) {
            throw new JSONException(e.getMessage() + ", " + info());
        }
    }

    public String[] scanFieldStringArray(char[] cArr, int i, SymbolTable symbolTable) {
        throw new UnsupportedOperationException();
    }

    public boolean matchField2(char[] cArr) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int getFeatures() {
        return this.features;
    }
}
