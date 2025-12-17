package com.mergbw.core.network.app.bean;
/* loaded from: classes4.dex */
public class UserOverViewBean {
    private int androidUser;
    private int iphoneUser;
    private int todayAddUser;
    private int todayUseUser;
    private int totalUser;

    public int getTotalUser() {
        return this.totalUser;
    }

    public void setTotalUser(int totalUser) {
        this.totalUser = totalUser;
    }

    public int getAndroidUser() {
        return this.androidUser;
    }

    public void setAndroidUser(int androidUser) {
        this.androidUser = androidUser;
    }

    public int getIphoneUser() {
        return this.iphoneUser;
    }

    public void setIphoneUser(int iphoneUser) {
        this.iphoneUser = iphoneUser;
    }

    public int getTodayAddUser() {
        return this.todayAddUser;
    }

    public void setTodayAddUser(int todayAddUser) {
        this.todayAddUser = todayAddUser;
    }

    public int getTodayUseUser() {
        return this.todayUseUser;
    }

    public void setTodayUseUser(int todayUseUser) {
        this.todayUseUser = todayUseUser;
    }
}
