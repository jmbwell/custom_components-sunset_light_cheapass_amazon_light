package com.mergbw.core.network.app.bean;
/* loaded from: classes4.dex */
public class FirmwareVersionBean {
    private String description;
    private int deviceType;
    private int fileId;
    private FileInfo fileInfo;
    private String version;
    private int vpFileId;
    private FileInfo vpFileInfo;
    private String vpVersion;

    public int getDeviceType() {
        return this.deviceType;
    }

    public void setDeviceType(int deviceType) {
        this.deviceType = deviceType;
    }

    public String getVersion() {
        return this.version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getFileId() {
        return this.fileId;
    }

    public void setFileId(int fileId) {
        this.fileId = fileId;
    }

    public String getVpVersion() {
        return this.vpVersion;
    }

    public void setVpVersion(String vpVersion) {
        this.vpVersion = vpVersion;
    }

    public int getVpFileId() {
        return this.vpFileId;
    }

    public void setVpFileId(int vpFileId) {
        this.vpFileId = vpFileId;
    }

    public FileInfo getFileInfo() {
        return this.fileInfo;
    }

    public void setFileInfo(FileInfo fileInfo) {
        this.fileInfo = fileInfo;
    }

    public FileInfo getVpFileInfo() {
        return this.vpFileInfo;
    }

    public void setVpFileInfo(FileInfo vpFileInfo) {
        this.vpFileInfo = vpFileInfo;
    }
}
