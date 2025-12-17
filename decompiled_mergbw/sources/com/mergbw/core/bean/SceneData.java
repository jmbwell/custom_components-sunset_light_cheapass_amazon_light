package com.mergbw.core.bean;

import android.os.Parcel;
import android.os.Parcelable;
import com.mergbw.core.RGBMode;
/* loaded from: classes4.dex */
public class SceneData implements Parcelable {
    public static final Parcelable.Creator<SceneData> CREATOR = new Parcelable.Creator<SceneData>() { // from class: com.mergbw.core.bean.SceneData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneData createFromParcel(Parcel in) {
            return new SceneData(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneData[] newArray(int size) {
            return new SceneData[size];
        }
    };
    private int BValue;
    private int GValue;
    private int RGBPercent;
    private int RValue;
    private int WhitePercent;
    private int iconRes;
    private boolean isPlaying;
    private boolean isSelected;
    private RGBMode mode;
    private int sceneIndex;
    private String sceneName;
    private int sceneNameRes;
    private int speed;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public SceneData() {
    }

    public String getSceneName() {
        return this.sceneName;
    }

    public void setSceneName(String sceneName) {
        this.sceneName = sceneName;
    }

    public int getSceneNameRes() {
        return this.sceneNameRes;
    }

    public void setSceneNameRes(int sceneNameRes) {
        this.sceneNameRes = sceneNameRes;
    }

    public int getIconRes() {
        return this.iconRes;
    }

    public void setIconRes(int iconRes) {
        this.iconRes = iconRes;
    }

    public int getSceneIndex() {
        return this.sceneIndex;
    }

    public void setSceneIndex(int sceneIndex) {
        this.sceneIndex = sceneIndex;
    }

    public int getSpeed() {
        return this.speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }

    public boolean isSelected() {
        return this.isSelected;
    }

    public void setSelected(boolean selected) {
        this.isSelected = selected;
    }

    public int getRValue() {
        return this.RValue;
    }

    public void setRValue(int RValue) {
        this.RValue = RValue;
    }

    public int getGValue() {
        return this.GValue;
    }

    public void setGValue(int GValue) {
        this.GValue = GValue;
    }

    public int getBValue() {
        return this.BValue;
    }

    public void setBValue(int BValue) {
        this.BValue = BValue;
    }

    public int getRGBPercent() {
        return this.RGBPercent;
    }

    public void setRGBPercent(int RGBPercent) {
        this.RGBPercent = RGBPercent;
    }

    public int getWhitePercent() {
        return this.WhitePercent;
    }

    public void setWhitePercent(int whitePercent) {
        this.WhitePercent = whitePercent;
    }

    public RGBMode getMode() {
        return this.mode;
    }

    public SceneData setMode(RGBMode mode) {
        this.mode = mode;
        return this;
    }

    public boolean isPlaying() {
        return this.isPlaying;
    }

    public void setPlaying(boolean playing) {
        this.isPlaying = playing;
    }

    public SceneData(int sceneNameRes, int iconRes, int index, int speed) {
        setSceneNameRes(sceneNameRes);
        setIconRes(iconRes);
        setSceneIndex(index);
        setSpeed(speed);
    }

    public SceneData(String sceneName, int index) {
        setSceneName(sceneName);
        setSceneIndex(index);
    }

    public SceneData setRGBValue(int R, int G, int B) {
        setRValue(R);
        setGValue(G);
        setBValue(B);
        return this;
    }

    public SceneData setLightPercent(int rgb, int white) {
        setRGBPercent(rgb);
        setWhitePercent(white);
        return this;
    }

    protected SceneData(Parcel in) {
        this.sceneName = in.readString();
        this.sceneNameRes = in.readInt();
        this.iconRes = in.readInt();
        this.sceneIndex = in.readInt();
        this.speed = in.readInt();
        this.isSelected = in.readByte() != 0;
        this.RValue = in.readInt();
        this.GValue = in.readInt();
        this.BValue = in.readInt();
        this.RGBPercent = in.readInt();
        this.WhitePercent = in.readInt();
        this.mode = (RGBMode) in.readSerializable();
        this.isPlaying = in.readByte() != 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeString(this.sceneName);
        dest.writeInt(this.sceneNameRes);
        dest.writeInt(this.iconRes);
        dest.writeInt(this.sceneIndex);
        dest.writeInt(this.speed);
        dest.writeByte(this.isSelected ? (byte) 1 : (byte) 0);
        dest.writeInt(this.RValue);
        dest.writeInt(this.GValue);
        dest.writeInt(this.BValue);
        dest.writeInt(this.RGBPercent);
        dest.writeInt(this.WhitePercent);
        dest.writeSerializable(this.mode);
        dest.writeByte(this.isPlaying ? (byte) 1 : (byte) 0);
    }
}
