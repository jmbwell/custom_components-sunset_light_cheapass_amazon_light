package com.mergbw.core.track.bean;
/* loaded from: classes4.dex */
public class TrackInfoBean {
    private String Data;
    private int EventId;
    private int EventType;
    private String Page;
    private String appVersion;
    private String deviceModel;
    private int platform;
    private String systemVersion;
    private String userID;

    public String getUserID() {
        return this.userID;
    }

    public void setUserID(String userID) {
        this.userID = userID;
    }

    public int getPlatform() {
        return this.platform;
    }

    public void setPlatform(int platform) {
        this.platform = platform;
    }

    public String getDeviceModel() {
        return this.deviceModel;
    }

    public void setDeviceModel(String deviceModel) {
        this.deviceModel = deviceModel;
    }

    public String getSystemVersion() {
        return this.systemVersion;
    }

    public void setSystemVersion(String systemVersion) {
        this.systemVersion = systemVersion;
    }

    public String getAppVersion() {
        return this.appVersion;
    }

    public void setAppVersion(String appVersion) {
        this.appVersion = appVersion;
    }

    public int getEventType() {
        return this.EventType;
    }

    public void setEventType(int eventType) {
        this.EventType = eventType;
    }

    public String getPage() {
        return this.Page;
    }

    public void setPage(String page) {
        this.Page = page;
    }

    public int getEventId() {
        return this.EventId;
    }

    public void setEventId(int eventId) {
        this.EventId = eventId;
    }

    public String getData() {
        return this.Data;
    }

    public void setData(String data) {
        this.Data = data;
    }
}
