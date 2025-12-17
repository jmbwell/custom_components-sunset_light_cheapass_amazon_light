package com.mergbw.core.ble;

import com.mergbw.core.utils.MeRGBWLog;
/* loaded from: classes4.dex */
public class CommandUtils {
    private static final byte CMD_HEAD = 85;
    private static final byte CMD_SEQUENCE = -1;

    public static byte[] getCommand(byte cmdCode, byte[] value) {
        int length = value != null ? 5 + value.length : 5;
        byte[] bArr = new byte[length];
        bArr[0] = CMD_HEAD;
        bArr[1] = cmdCode;
        bArr[2] = -1;
        bArr[3] = (byte) length;
        if (value != null) {
            System.arraycopy(value, 0, bArr, 4, value.length);
        }
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            i += 255 & bArr[i2];
        }
        while (i > 255) {
            i &= 255;
        }
        bArr[length - 1] = (byte) ((~i) & 255);
        return bArr;
    }

    public static boolean checkValid(byte[] data) {
        int i = 0;
        for (int i2 = 0; i2 < data.length - 1; i2++) {
            i += data[i2] & 255;
        }
        while (i > 255) {
            i &= 255;
        }
        if (((~(i + data[data.length - 1])) & 255) != 0) {
            MeRGBWLog.e("checkSum error!");
            return false;
        }
        return true;
    }

    public static byte[] getByteArray(int delay) {
        return new byte[]{(byte) ((delay >> 8) & 255), (byte) (delay & 255)};
    }

    public static byte[] int2ByteArray(int value) {
        return new byte[]{(byte) ((value >> 24) & 255), (byte) ((value >> 16) & 255), (byte) ((value >> 8) & 255), (byte) (value & 255)};
    }

    public static byte[] getSeqCommand(byte cmdCode, byte[] value, byte seq, int length) {
        int i = length + 5;
        byte[] bArr = new byte[i];
        bArr[0] = CMD_HEAD;
        bArr[1] = cmdCode;
        bArr[2] = seq;
        bArr[3] = (byte) i;
        System.arraycopy(value, 0, bArr, 4, length);
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += 255 & bArr[i3];
        }
        while (i2 > 255) {
            i2 = (i2 >> 8) + (i2 & 255);
        }
        bArr[length + 4] = (byte) ((~i2) & 255);
        return bArr;
    }

    public static byte[] getSeqCommandWithoutLength(byte cmdCode, byte[] value, byte seq, int length) {
        int i = length + 4;
        byte[] bArr = new byte[i];
        bArr[0] = CMD_HEAD;
        bArr[1] = cmdCode;
        bArr[2] = seq;
        if (cmdCode == 4) {
            System.arraycopy(value, 0, bArr, 3, length);
        }
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += 255 & bArr[i3];
        }
        while (i2 > 255) {
            i2 = (i2 >> 8) + (i2 & 255);
        }
        bArr[length + 3] = (byte) ((~i2) & 255);
        return bArr;
    }
}
