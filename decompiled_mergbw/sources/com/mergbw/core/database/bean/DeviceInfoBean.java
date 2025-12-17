package com.mergbw.core.database.bean;

import com.mergbw.core.bean.AlarmDataBean;
import com.mergbw.core.utils.StringUtils;
import java.io.Serializable;
/* loaded from: classes4.dex */
public class DeviceInfoBean implements Serializable {
    private String aliasName;
    private int brightness;
    private AlarmDataBean closeAlarm;
    private int coldBrightness;
    private int coldPercent;
    private String deviceMac;
    private String deviceModel;
    private String deviceName;
    private int deviceType;
    private int factoryID;
    private String firmwareVersion;
    private boolean isBound;
    private boolean isConnect;
    private boolean isConnecting;
    private boolean isOpen;
    private boolean isSelected;
    private boolean isWhiteOpen;
    private int ledNum;
    private int motorSpeed;
    private int mtu;
    private AlarmDataBean openAlarm;
    private int sensitive;
    private int starBrightness;
    private int supportCold;
    private int supportWarm;
    private int warmBrightness;
    private int warmPercent;
    private int whiteBrightness;

    public String getDeviceMac() {
        return this.deviceMac;
    }

    public void setDeviceMac(String deviceMac) {
        this.deviceMac = deviceMac;
    }

    public String getDeviceName() {
        return this.deviceName;
    }

    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
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

    public String getAliasName() {
        if (StringUtils.isEmpty(this.aliasName)) {
            return this.deviceName;
        }
        return this.aliasName;
    }

    public void setAliasName(String aliasName) {
        this.aliasName = aliasName;
    }

    public boolean isConnect() {
        return this.isConnect;
    }

    public void setConnect(boolean connect) {
        this.isConnect = connect;
    }

    public boolean isConnecting() {
        return this.isConnecting;
    }

    public void setConnecting(boolean connecting) {
        this.isConnecting = connecting;
    }

    public boolean isOpen() {
        return this.isOpen;
    }

    public void setOpen(boolean open) {
        this.isOpen = open;
    }

    public int getMtu() {
        return this.mtu;
    }

    public void setMtu(int mtu) {
        this.mtu = mtu;
    }

    public int getBrightness() {
        return this.brightness;
    }

    public void setBrightness(int brightness) {
        this.brightness = brightness;
    }

    public String getFirmwareVersion() {
        return this.firmwareVersion;
    }

    public void setFirmwareVersion(String firmwareVersion) {
        this.firmwareVersion = firmwareVersion;
    }

    public AlarmDataBean getOpenAlarm() {
        return this.openAlarm;
    }

    public void setOpenAlarm(AlarmDataBean openAlarm) {
        this.openAlarm = openAlarm;
    }

    public AlarmDataBean getCloseAlarm() {
        return this.closeAlarm;
    }

    public void setCloseAlarm(AlarmDataBean closeAlarm) {
        this.closeAlarm = closeAlarm;
    }

    public int getLedNum() {
        return this.ledNum;
    }

    public void setLedNum(int ledNum) {
        this.ledNum = ledNum;
    }

    public int getSensitive() {
        return this.sensitive;
    }

    public void setSensitive(int sensitive) {
        this.sensitive = sensitive;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setSelected(boolean selected) {
        this.isSelected = selected;
    }

    public boolean isBound() {
        return this.isBound;
    }

    public void setBound(boolean bound) {
        this.isBound = bound;
    }

    public int getFactoryID() {
        return this.factoryID;
    }

    public void setFactoryID(int factoryID) {
        this.factoryID = factoryID;
    }

    public boolean isWhiteOpen() {
        return this.isWhiteOpen;
    }

    public void setWhiteOpen(boolean whiteOpen) {
        this.isWhiteOpen = whiteOpen;
    }

    public int getWhiteBrightness() {
        return this.whiteBrightness;
    }

    public void setWhiteBrightness(int whiteBrightness) {
        this.whiteBrightness = whiteBrightness;
    }

    public int getStarBrightness() {
        return this.starBrightness;
    }

    public void setStarBrightness(int starBrightness) {
        this.starBrightness = starBrightness;
    }

    public int getMotorSpeed() {
        return this.motorSpeed;
    }

    public void setMotorSpeed(int motorSpeed) {
        this.motorSpeed = motorSpeed;
    }

    public int getSupportCold() {
        return this.supportCold;
    }

    public void setSupportCold(int supportCold) {
        this.supportCold = supportCold;
    }

    public int getSupportWarm() {
        return this.supportWarm;
    }

    public void setSupportWarm(int supportWarm) {
        this.supportWarm = supportWarm;
    }

    public int getColdBrightness() {
        return this.coldBrightness;
    }

    public void setColdBrightness(int coldBrightness) {
        this.coldBrightness = coldBrightness;
    }

    public int getWarmBrightness() {
        return this.warmBrightness;
    }

    public void setWarmBrightness(int warmBrightness) {
        this.warmBrightness = warmBrightness;
    }

    public int getColdPercent() {
        return this.coldPercent;
    }

    public void setColdPercent(int coldPercent) {
        this.coldPercent = coldPercent;
    }

    public int getWarmPercent() {
        return this.warmPercent;
    }

    public void setWarmPercent(int warmPercent) {
        this.warmPercent = warmPercent;
    }
}
