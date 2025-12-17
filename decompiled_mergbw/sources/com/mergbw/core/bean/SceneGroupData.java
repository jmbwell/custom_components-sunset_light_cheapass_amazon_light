package com.mergbw.core.bean;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes4.dex */
public class SceneGroupData implements Parcelable {
    public static final Parcelable.Creator<SceneGroupData> CREATOR = new Parcelable.Creator<SceneGroupData>() { // from class: com.mergbw.core.bean.SceneGroupData.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneGroupData createFromParcel(Parcel in) {
            return new SceneGroupData(in);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SceneGroupData[] newArray(int size) {
            return new SceneGroupData[size];
        }
    };
    private int groupNameRes;
    private int id;
    private List<SceneData> sceneDataList;
    private int type;

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getType() {
        return this.type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getGroupNameRes() {
        return this.groupNameRes;
    }

    public void setGroupNameRes(int groupNameRes) {
        this.groupNameRes = groupNameRes;
    }

    public List<SceneData> getSceneDataList() {
        return this.sceneDataList;
    }

    public void setSceneDataList(List<SceneData> sceneDataList) {
        this.sceneDataList = sceneDataList;
    }

    protected SceneGroupData(Parcel in) {
        this.sceneDataList = new ArrayList();
        this.id = in.readInt();
        this.type = in.readInt();
        this.groupNameRes = in.readInt();
        ArrayList arrayList = new ArrayList();
        this.sceneDataList = arrayList;
        in.readList(arrayList, SceneData.class.getClassLoader());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        dest.writeInt(this.id);
        dest.writeInt(this.type);
        dest.writeInt(this.groupNameRes);
        dest.writeList(this.sceneDataList);
    }

    public SceneGroupData() {
        this.sceneDataList = new ArrayList();
    }
}
