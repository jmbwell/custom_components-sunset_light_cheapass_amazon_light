package com.mergbw.core.database.bean;

import android.graphics.Color;
/* loaded from: classes4.dex */
public class ColorBean {
    private long addTime;
    private String alias;
    private int colorValue;
    private String deviceMac;

    public ColorBean() {
    }

    public ColorBean(String color) {
        setColorValue(Color.parseColor(color));
    }

    public int getColorValue() {
        return this.colorValue;
    }

    public void setColorValue(int colorValue) {
        this.colorValue = colorValue;
    }

    public String getAlias() {
        return this.alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getDeviceMac() {
        return this.deviceMac;
    }

    public void setDeviceMac(String deviceMac) {
        this.deviceMac = deviceMac;
    }

    public long getAddTime() {
        return this.addTime;
    }

    public void setAddTime(long addTime) {
        this.addTime = addTime;
    }
}
