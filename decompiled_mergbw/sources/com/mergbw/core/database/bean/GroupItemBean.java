package com.mergbw.core.database.bean;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class GroupItemBean implements Serializable {
    private List<DeviceInfoBean> deviceList = new ArrayList();
    private String[] deviceMacList;
    private int deviceType;
    private String devices;
    private int groupId;
    private String groupName;

    public int getGroupId() {
        return this.groupId;
    }

    public void setGroupId(int groupId) {
        this.groupId = groupId;
    }

    public String getGroupName() {
        return this.groupName;
    }

    public void setGroupName(String groupName) {
        this.groupName = groupName;
    }

    public String getDevices() {
        return this.devices;
    }

    public void setDevices(String devices) {
        this.devices = devices;
    }

    public List<DeviceInfoBean> getDeviceList() {
        return this.deviceList;
    }

    public void setDeviceList(List<DeviceInfoBean> deviceList) {
        this.deviceList = deviceList;
    }

    public String[] getDeviceMacList() {
        return this.deviceMacList;
    }

    public void setDeviceMacList(String[] deviceMacList) {
        this.deviceMacList = deviceMacList;
    }

    public int getDeviceType() {
        return this.deviceType;
    }

    public void setDeviceType(int deviceType) {
        this.deviceType = deviceType;
    }
}
