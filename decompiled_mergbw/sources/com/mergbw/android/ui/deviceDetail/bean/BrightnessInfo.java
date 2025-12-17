package com.mergbw.android.ui.deviceDetail.bean;
/* loaded from: classes4.dex */
public class BrightnessInfo {
    private int brightness;
    private boolean enable;
    private int warmBrightness;

    public BrightnessInfo(boolean z, int i, int i2) {
        this.enable = z;
        this.brightness = i - 5;
        this.warmBrightness = i2;
    }

    public int getBrightness() {
        return this.brightness;
    }

    public void setBrightness(int i) {
        this.brightness = i;
    }

    public boolean isEnable() {
        return this.enable;
    }

    public void setEnable(boolean z) {
        this.enable = z;
    }

    public int getWarmBrightness() {
        return this.warmBrightness;
    }

    public void setWarmBrightness(int i) {
        this.warmBrightness = i;
    }
}
