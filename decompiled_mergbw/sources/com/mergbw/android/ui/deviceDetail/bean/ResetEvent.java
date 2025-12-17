package com.mergbw.android.ui.deviceDetail.bean;
/* loaded from: classes4.dex */
public class ResetEvent {
    private int childPosition;
    private int from;
    private int position;

    public ResetEvent(int i, int i2) {
        setPosition(i);
        setFrom(i2);
    }

    public ResetEvent(int i, int i2, int i3) {
        setPosition(i);
        setChildPosition(i2);
        setFrom(i3);
    }

    public int getPosition() {
        return this.position;
    }

    public void setPosition(int i) {
        this.position = i;
    }

    public int getChildPosition() {
        return this.childPosition;
    }

    public void setChildPosition(int i) {
        this.childPosition = i;
    }

    public int getFrom() {
        return this.from;
    }

    public void setFrom(int i) {
        this.from = i;
    }
}
