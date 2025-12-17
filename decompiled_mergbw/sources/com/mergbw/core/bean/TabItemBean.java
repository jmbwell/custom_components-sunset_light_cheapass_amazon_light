package com.mergbw.core.bean;
/* loaded from: classes4.dex */
public class TabItemBean {
    public static final int TAB_ATMOSPHERE = 26;
    public static final int TAB_COLOR = 11;
    public static final int TAB_DIY = 41;
    public static final int TAB_FACTORY_AREA = 61;
    public static final int TAB_ILLUMINATING = 16;
    public static final int TAB_MULTI_SCENE = 21;
    public static final int TAB_MUSIC = 31;
    public static final int TAB_MUSIC_LOCAL = 35;
    public static final int TAB_SINGLE_SCENE = 25;
    public static final int TAB_STAR_COLOR = 13;
    public static final int TAB_WHITE_NOISE = 51;
    private int id;
    private int name;

    public TabItemBean() {
    }

    public TabItemBean(int id, int name) {
        setId(id);
        setName(name);
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getName() {
        return this.name;
    }

    public void setName(int name) {
        this.name = name;
    }
}
