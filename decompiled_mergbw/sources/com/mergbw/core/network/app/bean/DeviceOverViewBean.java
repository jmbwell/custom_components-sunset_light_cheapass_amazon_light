package com.mergbw.core.network.app.bean;

import java.util.List;
/* loaded from: classes4.dex */
public class DeviceOverViewBean {
    private List<DeviceCountBean> deviceModeCount;
    private List<DeviceCountBean> deviceTypeCount;
    private List<DeviceCountBean> factoryIdCount;
    private List<DeviceCountBean> mostUseCount;
    private int todayAddDevice;
    private int todayUseDevice;
    private int totalDevice;

    public int getTotalDevice() {
        return this.totalDevice;
    }

    public void setTotalDevice(int totalDevice) {
        this.totalDevice = totalDevice;
    }

    public List<DeviceCountBean> getDeviceTypeCount() {
        return this.deviceTypeCount;
    }

    public void setDeviceTypeCount(List<DeviceCountBean> deviceTypeCount) {
        this.deviceTypeCount = deviceTypeCount;
    }

    public List<DeviceCountBean> getDeviceModeCount() {
        return this.deviceModeCount;
    }

    public void setDeviceModeCount(List<DeviceCountBean> deviceModeCount) {
        this.deviceModeCount = deviceModeCount;
    }

    public List<DeviceCountBean> getFactoryIdCount() {
        return this.factoryIdCount;
    }

    public void setFactoryIdCount(List<DeviceCountBean> factoryIdCount) {
        this.factoryIdCount = factoryIdCount;
    }

    public List<DeviceCountBean> getMostUseCount() {
        return this.mostUseCount;
    }

    public void setMostUseCount(List<DeviceCountBean> mostUseCount) {
        this.mostUseCount = mostUseCount;
    }

    public int getTodayAddDevice() {
        return this.todayAddDevice;
    }

    public void setTodayAddDevice(int todayAddDevice) {
        this.todayAddDevice = todayAddDevice;
    }

    public int getTodayUseDevice() {
        return this.todayUseDevice;
    }

    public void setTodayUseDevice(int todayUseDevice) {
        this.todayUseDevice = todayUseDevice;
    }
}
