package com.mergbw.core.track;
/* loaded from: classes4.dex */
public class TrackConstants {
    public static final int CLICK_ABOUT_US = 3;
    public static final int CLICK_ADD_DEVICE = 1;
    public static final int CLICK_CONTACT_US = 2;

    /* loaded from: classes4.dex */
    public enum EventType {
        APP_LAUNCHER(1),
        PAGE_ITEM_CLICK(2);
        
        public final int value;

        EventType(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes4.dex */
    public enum Page {
        APPLICATION("application"),
        MAIN_PAGE("main_page"),
        ADD_DEVICE_PAGE("add_device_page"),
        DEVICE_DETAIL_PAGE("device_detail_page"),
        ALARM_SETTING_PAGE("alarm_setting_page"),
        DEVICE_SETTING_PAGE("device_setting_page"),
        GROUP_DETAIL_PAGE("group_detail_page"),
        GROUP_SETTING_PAGE("group_setting_page");
        
        public final String value;

        Page(String value) {
            this.value = value;
        }

        public String getValue() {
            return this.value;
        }
    }
}
