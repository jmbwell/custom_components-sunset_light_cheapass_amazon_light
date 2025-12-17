package com.mergbw.core.database.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class ConfigInfoBean implements Serializable {
    private String DIYMode;
    private int RGBModel;
    private String SubMode;
    private String bleName;
    private List<DIYInfoBean> configDIYColor = new ArrayList();
    private List<SubColorBean> configSubColor = new ArrayList();
    private String deviceModel;
    private int deviceType;
    private boolean enableLimit;
    private String extra;
    private int factoryId;
    private int id;
    private String keyMode;
    private int ledNum;
    private int maxMixLight;
    private int maxOtherLight;
    private String name;
    private int nameLength;
    private String remoteControl;
    private int type;

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getFactoryId() {
        return this.factoryId;
    }

    public void setFactoryId(int factoryId) {
        this.factoryId = factoryId;
    }

    public int getDeviceType() {
        return this.deviceType;
    }

    public void setDeviceType(int deviceType) {
        this.deviceType = deviceType;
    }

    public String getDeviceModel() {
        return this.deviceModel;
    }

    public void setDeviceModel(String deviceModel) {
        this.deviceModel = deviceModel;
    }

    public int getLedNum() {
        return this.ledNum;
    }

    public void setLedNum(int ledNum) {
        this.ledNum = ledNum;
    }

    public int getNameLength() {
        return this.nameLength;
    }

    public void setNameLength(int nameLength) {
        this.nameLength = nameLength;
    }

    public String getBleName() {
        return this.bleName;
    }

    public void setBleName(String bleName) {
        this.bleName = bleName;
    }

    public String getExtra() {
        return this.extra;
    }

    public void setExtra(String extra) {
        this.extra = extra;
    }

    public String getKeyMode() {
        return this.keyMode;
    }

    public void setKeyMode(String keyMode) {
        this.keyMode = keyMode;
    }

    public int getRGBModel() {
        return this.RGBModel;
    }

    public void setRGBModel(int RGBModel) {
        this.RGBModel = RGBModel;
    }

    public boolean isEnableLimit() {
        return this.enableLimit;
    }

    public void setEnableLimit(boolean enableLimit) {
        this.enableLimit = enableLimit;
    }

    public int getMaxMixLight() {
        return this.maxMixLight;
    }

    public void setMaxMixLight(int maxMixLight) {
        this.maxMixLight = maxMixLight;
    }

    public int getMaxOtherLight() {
        return this.maxOtherLight;
    }

    public void setMaxOtherLight(int maxOtherLight) {
        this.maxOtherLight = maxOtherLight;
    }

    public String getRemoteControl() {
        return this.remoteControl;
    }

    public void setRemoteControl(String remoteControl) {
        this.remoteControl = remoteControl;
    }

    public String getDIYMode() {
        return this.DIYMode;
    }

    public void setDIYMode(String DIYMode) {
        this.DIYMode = DIYMode;
    }

    public List<DIYInfoBean> getConfigDIYColor() {
        return this.configDIYColor;
    }

    public void setConfigDIYColor(List<DIYInfoBean> configDIYColor) {
        this.configDIYColor = configDIYColor;
    }

    public String getSubMode() {
        return this.SubMode;
    }

    public void setSubMode(String subMode) {
        this.SubMode = subMode;
    }

    public List<SubColorBean> getConfigSubColor() {
        return this.configSubColor;
    }

    public void setConfigSubColor(List<SubColorBean> configSubColor) {
        this.configSubColor = configSubColor;
    }
}
