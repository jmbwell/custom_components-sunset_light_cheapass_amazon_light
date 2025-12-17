package com.mergbw.core.database.bean;

import java.io.Serializable;
import java.util.List;
/* loaded from: classes4.dex */
public class DIYInfoBean implements Serializable {
    private String colorValue;
    private String deviceMac;
    private int deviceType;
    private int diyType;
    private int id;
    private String name;
    private int style;
    private List<SubColorBean> subColorList;
    private int time;
    private int type;

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDeviceMac() {
        return this.deviceMac;
    }

    public void setDeviceMac(String deviceMac) {
        this.deviceMac = deviceMac;
    }

    public List<SubColorBean> getSubColorList() {
        return this.subColorList;
    }

    public void setSubColorList(List<SubColorBean> subColorList) {
        this.subColorList = subColorList;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getStyle() {
        return this.style;
    }

    public void setStyle(int style) {
        this.style = style;
    }

    public int getTime() {
        return this.time;
    }

    public void setTime(int time) {
        this.time = time;
    }

    public String getColorValue() {
        return this.colorValue;
    }

    public void setColorValue(String colorValue) {
        this.colorValue = colorValue;
    }

    public int getDiyType() {
        return this.diyType;
    }

    public void setDiyType(int diyType) {
        this.diyType = diyType;
    }

    public int getDeviceType() {
        return this.deviceType;
    }

    public void setDeviceType(int deviceType) {
        this.deviceType = deviceType;
    }
}
