package com.mergbw.android.ui.deviceDetail.bean;
/* loaded from: classes4.dex */
public class ColdAndWarm {
    private int coldPercent;
    private int color;
    private int warmPercent;

    public ColdAndWarm(int i) {
        setColor(i);
    }

    public ColdAndWarm(int i, int i2) {
        setColdPercent(i);
        setWarmPercent(i2);
    }

    public int getColor() {
        return this.color;
    }

    public void setColor(int i) {
        this.color = i;
    }

    public int getColdPercent() {
        return this.coldPercent;
    }

    public void setColdPercent(int i) {
        this.coldPercent = i;
    }

    public int getWarmPercent() {
        return this.warmPercent;
    }

    public void setWarmPercent(int i) {
        this.warmPercent = i;
    }
}
