package com.mergbw.core.ble;

import com.mergbw.core.utils.StringUtils;
/* loaded from: classes4.dex */
public class CastDataBean {
    private byte[] data;
    private int len;
    private int type;

    public int getLen() {
        return this.len;
    }

    public void setLen(int len) {
        this.len = len;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public byte[] getData() {
        return this.data;
    }

    public void setData(byte[] data) {
        this.data = data;
    }

    public String toString() {
        return "len: " + getLen() + " type: " + getType() + " data: " + StringUtils.byte2HexStr(getData());
    }
}
