package com.mergbw.core.utils;

import android.text.TextUtils;
import androidx.core.view.InputDeviceCompat;
import java.io.UnsupportedEncodingException;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.Locale;
/* loaded from: classes4.dex */
public class StringUtils {
    public static int bytesToInt2(byte high, byte low) {
        return ((high & 255) << 8) | (low & 255);
    }

    private static boolean isEmojiCharacter(char codePoint) {
        return codePoint == 0 || codePoint == '\t' || codePoint == '\n' || codePoint == '\r' || (codePoint >= ' ' && codePoint <= 55295) || ((codePoint >= 57344 && codePoint <= 65533) || (codePoint >= 0 && codePoint <= 65535));
    }

    public static String str2HexStr(String str) {
        char[] charArray = "0123456789ABCDEF".toCharArray();
        StringBuilder sb = new StringBuilder("");
        byte[] bytes = str.getBytes();
        for (int i = 0; i < bytes.length; i++) {
            sb.append(charArray[(bytes[i] & 240) >> 4]);
            sb.append(charArray[bytes[i] & 15]);
            sb.append(' ');
        }
        return sb.toString().trim();
    }

    public static String hexStr2Str(String hexStr) {
        char[] charArray = hexStr.toCharArray();
        int length = hexStr.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) ((("0123456789ABCDEF".indexOf(charArray[i2]) * 16) + "0123456789ABCDEF".indexOf(charArray[i2 + 1])) & 255);
        }
        return new String(bArr);
    }

    public static String byte2HexStr(byte[] b2) {
        StringBuilder sb = new StringBuilder("");
        for (byte b3 : b2) {
            String hexString = Integer.toHexString(b3 & 255);
            if (hexString.length() == 1) {
                hexString = "0" + hexString;
            }
            sb.append(hexString);
        }
        return sb.toString().toUpperCase(Locale.getDefault()).trim();
    }

    public static int bytesToInt(byte[] src) {
        return (src[3] & 255) | ((src[0] & 255) << 24) | ((src[1] & 255) << 16) | ((src[2] & 255) << 8);
    }

    public static byte[] hexStr2Bytes(String src) {
        int length = src.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            int i3 = i2 + 1;
            bArr[i] = Byte.decode("0x" + src.substring(i2, i3) + src.substring(i3, i2 + 2)).byteValue();
        }
        return bArr;
    }

    public static byte[] toByteArray(String hexString) {
        if (isEmpty(hexString)) {
            return null;
        }
        String lowerCase = hexString.toLowerCase();
        byte[] bArr = new byte[lowerCase.length() >> 1];
        int i = 0;
        for (int i2 = 0; i2 < lowerCase.length() && i <= lowerCase.length() - 1; i2++) {
            bArr[i2] = (byte) ((((byte) (Character.digit(lowerCase.charAt(i), 16) & 255)) << 4) | ((byte) (Character.digit(lowerCase.charAt(i + 1), 16) & 255)));
            i += 2;
        }
        return bArr;
    }

    public static byte[] toBytes(String str) {
        if (str == null || str.trim().equals("")) {
            return new byte[0];
        }
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < str.length() / 2; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (Integer.parseInt(str.substring(i2, i2 + 2), 16) & 255);
        }
        return bArr;
    }

    public static String strToUnicode(String strText) throws Exception {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < strText.length(); i++) {
            char charAt = strText.charAt(i);
            String hexString = Integer.toHexString(charAt);
            if (charAt > 128) {
                sb.append("\\u" + hexString);
            } else {
                sb.append("\\u00" + hexString);
            }
        }
        return sb.toString();
    }

    public static String unicodeToString(String hex) {
        int length = hex.length() / 6;
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < length) {
            int i2 = i * 6;
            i++;
            String substring = hex.substring(i2, i * 6);
            sb.append(new String(Character.toChars(Integer.valueOf(substring.substring(2, 4) + "00", 16).intValue() + Integer.valueOf(substring.substring(4), 16).intValue())));
        }
        return sb.toString();
    }

    public static byte[] getBooleanArray(byte b2) {
        byte[] bArr = new byte[8];
        for (int i = 7; i >= 0; i--) {
            bArr[i] = (byte) (b2 & 1);
            b2 = (byte) (b2 >> 1);
        }
        return bArr;
    }

    public static String byteToBit(byte b2) {
        return "" + ((int) ((byte) ((b2 >> 7) & 1))) + ((int) ((byte) ((b2 >> 6) & 1))) + ((int) ((byte) ((b2 >> 5) & 1))) + ((int) ((byte) ((b2 >> 4) & 1))) + ((int) ((byte) ((b2 >> 3) & 1))) + ((int) ((byte) ((b2 >> 2) & 1))) + ((int) ((byte) ((b2 >> 1) & 1))) + ((int) ((byte) (b2 & 1)));
    }

    public static byte BitToByte(String byteStr) {
        int parseInt;
        if (byteStr == null) {
            return (byte) 0;
        }
        int length = byteStr.length();
        if (length == 4 || length == 8) {
            if (length == 8) {
                if (byteStr.charAt(0) == '0') {
                    parseInt = Integer.parseInt(byteStr, 2);
                } else {
                    parseInt = Integer.parseInt(byteStr, 2) + InputDeviceCompat.SOURCE_ANY;
                }
            } else {
                parseInt = Integer.parseInt(byteStr, 2);
            }
            return (byte) parseInt;
        }
        return (byte) 0;
    }

    public static boolean isEmpty(String value) {
        if (value == null || value.trim().isEmpty()) {
            return true;
        }
        return TextUtils.isEmpty(value);
    }

    public static int calculateLength(String str) {
        try {
            return str.getBytes("utf-8").length;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return 0;
        }
    }

    private static boolean isContainsEmoji(String str) {
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!isEmojiCharacter(str.charAt(i))) {
                return true;
            }
        }
        return false;
    }

    public static int getWeekInt() {
        int i = Calendar.getInstance().get(7);
        if (i == 1) {
            return 7;
        }
        return i - 1;
    }

    public static boolean checkEmail(String email) {
        return email.matches("\\p{Alpha}\\w{2,15}[@][a-z0-9]{3,}[.]\\p{Lower}{2,}");
    }

    public static String UseApplyPatternMethodFormat(double value) {
        DecimalFormat decimalFormat = new DecimalFormat();
        decimalFormat.applyPattern("###.##");
        return decimalFormat.format(value);
    }

    public static boolean checkPassword(String password) {
        return !isEmpty(password) && password.length() >= 6;
    }

    public static boolean checkVerifyCode(String verifyCode) {
        return !isEmpty(verifyCode) && verifyCode.matches("^[0-9]+$") && verifyCode.length() == 6;
    }

    public static boolean checkNumber(String number) {
        return number.matches("^[0-9]+$");
    }
}
