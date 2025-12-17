package com.mergbw.core.bean;

import java.io.Serializable;
/* loaded from: classes4.dex */
public class AlarmDataBean implements Serializable {
    private boolean isSet;
    private int timeHour;
    private int timeMinute;
    private byte[] weekRepeat;

    public boolean isSet() {
        return this.isSet;
    }

    public void setSet(boolean set) {
        this.isSet = set;
    }

    public int getTimeHour() {
        return this.timeHour;
    }

    public void setTimeHour(int timeHour) {
        this.timeHour = timeHour;
    }

    public int getTimeMinute() {
        return this.timeMinute;
    }

    public void setTimeMinute(int timeMinute) {
        this.timeMinute = timeMinute;
    }

    public byte[] getWeekRepeat() {
        return this.weekRepeat;
    }

    public void setWeekRepeat(byte[] weekRepeat) {
        this.weekRepeat = weekRepeat;
    }
}
