package com.mergbw.core.utils;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.location.LocationRequestCompat;
import com.alibaba.fastjson.asm.Opcodes;
import com.google.android.material.card.MaterialCardViewHelper;
import com.mergbw.core.R;
import com.mergbw.core.RGBMode;
import com.mergbw.core.bean.AlarmDataBean;
import com.mergbw.core.bean.SceneData;
import com.mergbw.core.bean.SceneGroupData;
import com.mergbw.core.bean.TabItemBean;
import com.mergbw.core.database.bean.ConfigInfoBean;
import com.mergbw.core.database.bean.DeviceInfoBean;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes4.dex */
public class ViewDataUtils {
    public static final int BREATHE = 4;
    public static final Map<Integer, String> DEVICE_TYPE;
    public static final Map<Integer, Integer> EFFECT_NAME;
    public static final int FLOW = 3;
    public static final Map<String, String> LOCAL_FIRMWARE;
    public static final Map<String, String> LOCAL_FIRMWARE_02;
    public static final int MOVE = 2;
    public static final Map<Integer, String> RGB_ORDER;
    public static final int SWITCH = 1;

    static {
        HashMap hashMap = new HashMap();
        EFFECT_NAME = hashMap;
        hashMap.put(1, Integer.valueOf(R.string.effect_01));
        hashMap.put(2, Integer.valueOf(R.string.effect_02));
        hashMap.put(3, Integer.valueOf(R.string.effect_03));
        hashMap.put(4, Integer.valueOf(R.string.effect_04));
        HashMap hashMap2 = new HashMap();
        DEVICE_TYPE = hashMap2;
        hashMap2.put(1, "幻彩灯带");
        hashMap2.put(2, "RGB灯条");
        hashMap2.put(3, "星空灯");
        hashMap2.put(5, "夕阳灯");
        hashMap2.put(6, "幻彩灯泡");
        HashMap hashMap3 = new HashMap();
        RGB_ORDER = hashMap3;
        hashMap3.put(0, "RGB");
        hashMap3.put(1, "RBG");
        hashMap3.put(2, "GRB");
        hashMap3.put(3, "GBR");
        hashMap3.put(4, "BRG");
        hashMap3.put(5, "BGR");
        HashMap hashMap4 = new HashMap();
        LOCAL_FIRMWARE = hashMap4;
        hashMap4.put("TG201", "/firmware/simpleBlePeripheral-TG201.hex16");
        hashMap4.put("TG609", "/firmware/simpleBlePeripheral-TG609.hex16");
        hashMap4.put("TG610", "/firmware/simpleBlePeripheral-TG610.hex16");
        LOCAL_FIRMWARE_02 = new HashMap();
        hashMap4.put("TG201\u0000\u0000\u0000\u0000\u0000", "/firmware/simpleBlePeripheral-TG201.hex16");
        hashMap4.put("TG609\u0000\u0000\u0000\u0000\u0000", "/firmware/simpleBlePeripheral-TG609.hex16");
        hashMap4.put("TG610\u0000\u0000\u0000\u0000\u0000", "/firmware/simpleBlePeripheral-TG610.hex16");
    }

    public static int getEffectNameRes(int effect) {
        Integer num = EFFECT_NAME.get(Integer.valueOf(effect));
        if (num != null) {
            return num.intValue();
        }
        return R.string.effect_01;
    }

    public static String getTimeStr(int hour, int minute) {
        String valueOf;
        if (hour < 10) {
            valueOf = "0" + hour;
        } else {
            valueOf = String.valueOf(hour);
        }
        if (minute < 10) {
            return valueOf + ":0" + minute;
        }
        return valueOf + ":" + minute;
    }

    public static void analyseSyncData(DeviceInfoBean deviceInfo, byte[] data) {
        AlarmDataBean alarmDataBean = new AlarmDataBean();
        AlarmDataBean alarmDataBean2 = new AlarmDataBean();
        switch (deviceInfo.getDeviceType()) {
            case 1:
            case 2:
            case 4:
                deviceInfo.setOpen(data[4] == 1);
                deviceInfo.setBrightness((StringUtils.bytesToInt2(data[5], data[6]) / 10) - 5);
                alarmDataBean.setSet(data[7] == 1);
                alarmDataBean.setTimeHour(data[8]);
                alarmDataBean.setTimeMinute(data[9]);
                alarmDataBean.setWeekRepeat(StringUtils.getBooleanArray(data[10]));
                deviceInfo.setOpenAlarm(alarmDataBean);
                alarmDataBean2.setSet(data[11] == 1);
                alarmDataBean2.setTimeHour(data[12]);
                alarmDataBean2.setTimeMinute(data[13]);
                alarmDataBean2.setWeekRepeat(StringUtils.getBooleanArray(data[14]));
                deviceInfo.setCloseAlarm(alarmDataBean2);
                deviceInfo.setLedNum(StringUtils.bytesToInt2(data[15], data[16]));
                deviceInfo.setSensitive(data[17]);
                return;
            case 3:
                deviceInfo.setOpen(data[4] == 1);
                deviceInfo.setBrightness(data[5] - 5);
                alarmDataBean.setSet(data[6] == 1);
                alarmDataBean.setTimeHour(data[7]);
                alarmDataBean.setTimeMinute(data[8]);
                alarmDataBean.setWeekRepeat(StringUtils.getBooleanArray(data[9]));
                deviceInfo.setOpenAlarm(alarmDataBean);
                alarmDataBean2.setSet(data[10] == 1);
                alarmDataBean2.setTimeHour(data[11]);
                alarmDataBean2.setTimeMinute(data[12]);
                alarmDataBean2.setWeekRepeat(StringUtils.getBooleanArray(data[13]));
                deviceInfo.setCloseAlarm(alarmDataBean2);
                deviceInfo.setStarBrightness(data[14]);
                deviceInfo.setMotorSpeed(data[15]);
                return;
            case 5:
                deviceInfo.setOpen(data[4] == 1);
                deviceInfo.setBrightness(data[5] - 5);
                alarmDataBean.setSet(data[6] == 1);
                alarmDataBean.setTimeHour(data[7]);
                alarmDataBean.setTimeMinute(data[8]);
                alarmDataBean.setWeekRepeat(StringUtils.getBooleanArray(data[9]));
                deviceInfo.setOpenAlarm(alarmDataBean);
                alarmDataBean2.setSet(data[10] == 1);
                alarmDataBean2.setTimeHour(data[11]);
                alarmDataBean2.setTimeMinute(data[12]);
                alarmDataBean2.setWeekRepeat(StringUtils.getBooleanArray(data[13]));
                deviceInfo.setCloseAlarm(alarmDataBean2);
                return;
            case 6:
                deviceInfo.setOpen(data[4] == 1);
                deviceInfo.setBrightness(data[5] - 5);
                deviceInfo.setWhiteOpen(data[6] == 1);
                deviceInfo.setWhiteBrightness(data[7] - 5);
                alarmDataBean.setSet(data[8] == 1);
                alarmDataBean.setTimeHour(data[9]);
                alarmDataBean.setTimeMinute(data[10]);
                alarmDataBean.setWeekRepeat(StringUtils.getBooleanArray(data[11]));
                deviceInfo.setOpenAlarm(alarmDataBean);
                alarmDataBean2.setSet(data[12] == 1);
                alarmDataBean2.setTimeHour(data[13]);
                alarmDataBean2.setTimeMinute(data[14]);
                alarmDataBean2.setWeekRepeat(StringUtils.getBooleanArray(data[15]));
                deviceInfo.setCloseAlarm(alarmDataBean2);
                return;
            case 7:
                deviceInfo.setOpen(data[4] == 1);
                deviceInfo.setBrightness(data[5] - 5);
                alarmDataBean.setSet(data[6] == 1);
                alarmDataBean.setTimeHour(data[7]);
                alarmDataBean.setTimeMinute(data[8]);
                alarmDataBean.setWeekRepeat(StringUtils.getBooleanArray(data[9]));
                deviceInfo.setOpenAlarm(alarmDataBean);
                alarmDataBean2.setSet(data[10] == 1);
                alarmDataBean2.setTimeHour(data[11]);
                alarmDataBean2.setTimeMinute(data[12]);
                alarmDataBean2.setWeekRepeat(StringUtils.getBooleanArray(data[13]));
                deviceInfo.setCloseAlarm(alarmDataBean2);
                if (data.length >= 18) {
                    deviceInfo.setColdBrightness(data[14]);
                    deviceInfo.setWarmBrightness(data[15]);
                    deviceInfo.setColdPercent(data[16]);
                    deviceInfo.setWarmPercent(data[17]);
                    return;
                }
                return;
            default:
                return;
        }
    }

    public static int getDeviceIcon(int deviceType, boolean connected) {
        return deviceType != 2 ? deviceType != 3 ? deviceType != 5 ? (deviceType == 6 || deviceType == 7) ? connected ? R.mipmap.icon_device_icon_6 : R.mipmap.icon_device_disconnect_6 : connected ? R.mipmap.icon_device_icon : R.mipmap.icon_device_disconnect : connected ? R.mipmap.icon_device_icon_5 : R.mipmap.icon_device_disconnect_5 : connected ? R.mipmap.icon_device_icon_3 : R.mipmap.icon_device_disconnect_3 : connected ? R.mipmap.icon_device_icon_2 : R.mipmap.icon_device_disconnect_2;
    }

    public static List<TabItemBean> getTabList(int deviceType) {
        ArrayList arrayList = new ArrayList();
        switch (deviceType) {
            case 2:
                arrayList.add(new TabItemBean(11, R.string.color));
                arrayList.add(new TabItemBean(21, R.string.scene));
                arrayList.add(new TabItemBean(31, R.string.music));
                arrayList.add(new TabItemBean(51, R.string.white_noise));
                break;
            case 3:
                arrayList.add(new TabItemBean(13, R.string.color));
                arrayList.add(new TabItemBean(25, R.string.scene));
                arrayList.add(new TabItemBean(35, R.string.music));
                arrayList.add(new TabItemBean(51, R.string.white_noise));
                break;
            case 4:
                arrayList.add(new TabItemBean(11, R.string.color));
                arrayList.add(new TabItemBean(21, R.string.scene));
                arrayList.add(new TabItemBean(41, R.string.diy));
                arrayList.add(new TabItemBean(51, R.string.white_noise));
                break;
            case 5:
                arrayList.add(new TabItemBean(11, R.string.color));
                arrayList.add(new TabItemBean(25, R.string.scene));
                arrayList.add(new TabItemBean(35, R.string.music));
                arrayList.add(new TabItemBean(51, R.string.white_noise));
                break;
            case 6:
            case 7:
                arrayList.add(new TabItemBean(16, R.string.illuminating));
                arrayList.add(new TabItemBean(26, R.string.atmosphere));
                arrayList.add(new TabItemBean(35, R.string.music));
                arrayList.add(new TabItemBean(51, R.string.white_noise));
                break;
            default:
                arrayList.add(new TabItemBean(11, R.string.color));
                arrayList.add(new TabItemBean(21, R.string.scene));
                arrayList.add(new TabItemBean(31, R.string.music));
                arrayList.add(new TabItemBean(41, R.string.diy));
                break;
        }
        return arrayList;
    }

    public static List<TabItemBean> getGroupTabList(int deviceType) {
        ArrayList arrayList = new ArrayList();
        switch (deviceType) {
            case 2:
                arrayList.add(new TabItemBean(11, R.string.color));
                arrayList.add(new TabItemBean(21, R.string.scene));
                arrayList.add(new TabItemBean(31, R.string.music));
                break;
            case 3:
            case 5:
                arrayList.add(new TabItemBean(11, R.string.color));
                arrayList.add(new TabItemBean(25, R.string.scene));
                arrayList.add(new TabItemBean(35, R.string.music));
                break;
            case 4:
                arrayList.add(new TabItemBean(11, R.string.color));
                arrayList.add(new TabItemBean(21, R.string.scene));
                break;
            case 6:
            case 7:
                arrayList.add(new TabItemBean(16, R.string.illuminating));
                arrayList.add(new TabItemBean(26, R.string.atmosphere));
                arrayList.add(new TabItemBean(35, R.string.music));
                break;
            default:
                arrayList.add(new TabItemBean(11, R.string.color));
                arrayList.add(new TabItemBean(21, R.string.scene));
                arrayList.add(new TabItemBean(31, R.string.music));
                break;
        }
        return arrayList;
    }

    public static List<SceneGroupData> getSceneData() {
        ArrayList arrayList = new ArrayList();
        SceneGroupData sceneGroupData = new SceneGroupData();
        sceneGroupData.setId(1);
        sceneGroupData.setGroupNameRes(R.string.classic);
        sceneGroupData.setType(1);
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.symphony, R.mipmap.icon_classic_01, 2, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.energy, R.mipmap.icon_classic_02, 3, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.jump, R.mipmap.icon_classic_03, 4, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.vitality, R.mipmap.icon_classic_04, 7, 35));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.accumulation, R.mipmap.icon_classic_05, 16, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.chase, R.mipmap.icon_classic_06, 23, 20));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.space_time, R.mipmap.icon_classic_07, 45, 15));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.ephemeral, R.mipmap.icon_classic_08, 35, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.flow, R.mipmap.icon_classic_09, 55, 30));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.forest, R.mipmap.icon_classic_10, 13, 80));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.neon_lights, R.mipmap.icon_classic_11, 48, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.green_jade, R.mipmap.icon_classic_12, 71, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.running, R.mipmap.icon_classic_13, 91, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.pink_light, R.mipmap.icon_classic_14, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 30));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.alarm, R.mipmap.icon_classic_15, 113, 15));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.aurora, R.mipmap.icon_classic_16, 59, 100));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.rainbow, R.mipmap.icon_classic_17, 26, 100));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.melody, R.mipmap.icon_classic_18, 32, 0));
        arrayList.add(sceneGroupData);
        SceneGroupData sceneGroupData2 = new SceneGroupData();
        sceneGroupData2.setId(2);
        sceneGroupData2.setGroupNameRes(R.string.festival);
        sceneGroupData2.setType(1);
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.christmas, R.mipmap.icon_festival_01, 8, 35));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.halloween, R.mipmap.icon_festival_02, 11, 80));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.valentine, R.mipmap.icon_festival_03, 102, 100));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.new_year, R.mipmap.icon_festival_04, 5, 35));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.candlelight, R.mipmap.icon_festival_05, 116, 100));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.birthday, R.mipmap.icon_festival_06, 3, 100));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.ghost, R.mipmap.icon_festival_07, 111, 29));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.party, R.mipmap.icon_festival_08, 6, 35));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.carnival, R.mipmap.icon_festival_09, 8, 20));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.disco, R.mipmap.icon_festival_10, 4, 15));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.sweet, R.mipmap.icon_festival_11, 102, 100));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.romantic, R.mipmap.icon_festival_12, 12, 80));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.dating, R.mipmap.icon_festival_13, 11, 50));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.ball, R.mipmap.icon_festival_14, 29, 0));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.game, R.mipmap.icon_festival_15, 26, 50));
        arrayList.add(sceneGroupData2);
        SceneGroupData sceneGroupData3 = new SceneGroupData();
        sceneGroupData3.setId(3);
        sceneGroupData3.setGroupNameRes(R.string.other);
        sceneGroupData3.setType(2);
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_1, 0, 1, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_2, 0, 2, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_3, 0, 3, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_4, 0, 4, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_5, 0, 5, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_6, 0, 6, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_7, 0, 7, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_8, 0, 8, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_9, 0, 9, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_10, 0, 10, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_11, 0, 11, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_12, 0, 12, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_13, 0, 13, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_14, 0, 14, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_15, 0, 15, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_16, 0, 16, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_17, 0, 17, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_18, 0, 18, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_19, 0, 19, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_20, 0, 20, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_21, 0, 21, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_22, 0, 22, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_23, 0, 23, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_24, 0, 24, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_25, 0, 25, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_26, 0, 26, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_27, 0, 27, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_28, 0, 28, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_29, 0, 29, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_30, 0, 30, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_31, 0, 31, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_32, 0, 32, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_33, 0, 33, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_34, 0, 34, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_35, 0, 35, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_36, 0, 36, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_37, 0, 37, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_38, 0, 38, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_39, 0, 39, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_40, 0, 40, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_41, 0, 41, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_42, 0, 42, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_43, 0, 43, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_44, 0, 44, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_45, 0, 45, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_46, 0, 46, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_47, 0, 47, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_48, 0, 48, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_49, 0, 49, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_50, 0, 50, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_51, 0, 51, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_52, 0, 52, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_53, 0, 53, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_54, 0, 54, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_55, 0, 55, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_56, 0, 56, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_57, 0, 57, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_58, 0, 58, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_59, 0, 59, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_60, 0, 60, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_61, 0, 61, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_62, 0, 62, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_63, 0, 63, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_64, 0, 64, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_65, 0, 65, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_66, 0, 66, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_67, 0, 67, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_68, 0, 68, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_69, 0, 69, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_70, 0, 70, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_71, 0, 71, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_72, 0, 72, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_73, 0, 73, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_74, 0, 74, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_75, 0, 75, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_84, 0, 84, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_85, 0, 85, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_86, 0, 86, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_87, 0, 87, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_88, 0, 88, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_89, 0, 89, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_90, 0, 90, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_91, 0, 91, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_92, 0, 92, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_93, 0, 93, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_94, 0, 94, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_95, 0, 95, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_96, 0, 96, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_97, 0, 97, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_98, 0, 98, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_99, 0, 99, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_100, 0, 100, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_101, 0, 101, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_102, 0, 102, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_103, 0, 103, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_104, 0, LocationRequestCompat.QUALITY_LOW_POWER, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_105, 0, 105, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_106, 0, 106, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_107, 0, 107, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_108, 0, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_109, 0, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_110, 0, 110, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_111, 0, 111, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_112, 0, 112, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_113, 0, 113, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_114, 0, 114, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_115, 0, 115, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_116, 0, 116, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_117, 0, 117, 50));
        arrayList.add(sceneGroupData3);
        return arrayList;
    }

    public static List<SceneGroupData> getSceneData2() {
        ArrayList arrayList = new ArrayList();
        SceneGroupData sceneGroupData = new SceneGroupData();
        sceneGroupData.setId(1);
        sceneGroupData.setGroupNameRes(R.string.classic);
        sceneGroupData.setType(1);
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.symphony, R.mipmap.icon_classic_01, 2, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.energy, R.mipmap.icon_classic_02, 3, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.jump, R.mipmap.icon_classic_03, 4, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.vitality, R.mipmap.icon_classic_04, 7, 35));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.accumulation, R.mipmap.icon_classic_05, 16, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.chase, R.mipmap.icon_classic_06, 23, 20));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.space_time, R.mipmap.icon_classic_07, 45, 15));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.ephemeral, R.mipmap.icon_classic_08, 35, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.flow, R.mipmap.icon_classic_09, 55, 30));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.forest, R.mipmap.icon_classic_10, 13, 80));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.neon_lights, R.mipmap.icon_classic_11, 48, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.green_jade, R.mipmap.icon_classic_12, 71, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.running, R.mipmap.icon_classic_13, 91, 50));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.pink_light, R.mipmap.icon_classic_14, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 30));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.alarm, R.mipmap.icon_classic_15, 113, 15));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.aurora, R.mipmap.icon_classic_16, 59, 100));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.rainbow, R.mipmap.icon_classic_17, 26, 100));
        sceneGroupData.getSceneDataList().add(new SceneData(R.string.melody, R.mipmap.icon_classic_18, 32, 0));
        arrayList.add(sceneGroupData);
        SceneGroupData sceneGroupData2 = new SceneGroupData();
        sceneGroupData2.setId(2);
        sceneGroupData2.setGroupNameRes(R.string.festival);
        sceneGroupData2.setType(1);
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.christmas, R.mipmap.icon_festival_01, 8, 35));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.halloween, R.mipmap.icon_festival_02, 11, 80));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.valentine, R.mipmap.icon_festival_03, 102, 100));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.new_year, R.mipmap.icon_festival_04, 5, 35));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.candlelight, R.mipmap.icon_festival_05, 116, 100));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.birthday, R.mipmap.icon_festival_06, 3, 100));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.ghost, R.mipmap.icon_festival_07, 111, 29));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.party, R.mipmap.icon_festival_08, 6, 35));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.carnival, R.mipmap.icon_festival_09, 8, 20));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.disco, R.mipmap.icon_festival_10, 4, 15));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.sweet, R.mipmap.icon_festival_11, 102, 100));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.romantic, R.mipmap.icon_festival_12, 12, 80));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.dating, R.mipmap.icon_festival_13, 11, 50));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.ball, R.mipmap.icon_festival_14, 29, 0));
        sceneGroupData2.getSceneDataList().add(new SceneData(R.string.game, R.mipmap.icon_festival_15, 26, 50));
        arrayList.add(sceneGroupData2);
        SceneGroupData sceneGroupData3 = new SceneGroupData();
        sceneGroupData3.setId(3);
        sceneGroupData3.setGroupNameRes(R.string.other);
        sceneGroupData3.setType(2);
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_1, 0, 1, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_2, 0, 2, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_3, 0, 3, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_4, 0, 4, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_5, 0, 5, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_6, 0, 6, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_7, 0, 7, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_8, 0, 8, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_9, 0, 9, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_10, 0, 10, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_11, 0, 11, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_12, 0, 12, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_13, 0, 13, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_14, 0, 14, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_15, 0, 15, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_16, 0, 16, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_17, 0, 17, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_18, 0, 18, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_19, 0, 19, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_20, 0, 20, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_21, 0, 21, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_22, 0, 22, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_23, 0, 23, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_24, 0, 24, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_25, 0, 25, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_26, 0, 26, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_27, 0, 27, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_28, 0, 28, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_29, 0, 29, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_30, 0, 30, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_31, 0, 31, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_32, 0, 32, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_33, 0, 33, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_34, 0, 34, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_35, 0, 35, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_36, 0, 36, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_37, 0, 37, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_38, 0, 38, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_39, 0, 39, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_40, 0, 40, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_41, 0, 41, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_42, 0, 42, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_43, 0, 43, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_44, 0, 44, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_45, 0, 45, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_46, 0, 46, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_47, 0, 47, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_48, 0, 48, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_49, 0, 49, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_50, 0, 50, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_51, 0, 51, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_52, 0, 52, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_53, 0, 53, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_54, 0, 54, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_55, 0, 55, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_56, 0, 56, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_57, 0, 57, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_58, 0, 58, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_59, 0, 59, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_60, 0, 60, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_61, 0, 61, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_62, 0, 62, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_63, 0, 63, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_64, 0, 64, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_65, 0, 65, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_66, 0, 66, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_67, 0, 67, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_68, 0, 68, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_69, 0, 69, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_70, 0, 70, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_71, 0, 71, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_72, 0, 72, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_73, 0, 73, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_74, 0, 74, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_75, 0, 75, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_84, 0, 84, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_85, 0, 85, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_86, 0, 86, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_87, 0, 87, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_88, 0, 88, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_89, 0, 89, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_90, 0, 90, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_91, 0, 91, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_92, 0, 92, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_93, 0, 93, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_94, 0, 94, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_95, 0, 95, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_96, 0, 96, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_97, 0, 97, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_98, 0, 98, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_99, 0, 99, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_100, 0, 100, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_101, 0, 101, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_102, 0, 102, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_103, 0, 103, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_104, 0, LocationRequestCompat.QUALITY_LOW_POWER, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_105, 0, 105, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_106, 0, 106, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_107, 0, 107, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_108, 0, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_109, 0, AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_110, 0, 110, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_111, 0, 111, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_112, 0, 112, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_113, 0, 113, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_114, 0, 114, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_115, 0, 115, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_116, 0, 116, 50));
        sceneGroupData3.getSceneDataList().add(new SceneData(R.string.mode_117, 0, 117, 50));
        arrayList.add(sceneGroupData3);
        return arrayList;
    }

    public static List<SceneData> getMusicModel() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SceneData(R.string.spectrum1, R.mipmap.icon_music_01, 2, 0));
        arrayList.add(new SceneData(R.string.spectrum2, R.mipmap.icon_music_02, 5, 0));
        arrayList.add(new SceneData(R.string.spectrum3, R.mipmap.icon_music_03, 6, 0));
        arrayList.add(new SceneData(R.string.flowing, R.mipmap.icon_music_04, 3, 0));
        arrayList.add(new SceneData(R.string.rolling, R.mipmap.icon_music_05, 1, 0));
        arrayList.add(new SceneData(R.string.rhythm, R.mipmap.icon_music_06, 4, 0));
        return arrayList;
    }

    public static List<SceneData> getSceneData3() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SceneData(R.string.colorful_breathing, R.mipmap.icon_type_3_01, 134, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.mode_2, R.mipmap.icon_type_5_01, 138, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.forest, R.mipmap.icon_type_5_04, 140, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.ghost, R.mipmap.icon_type_5_05, 141, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.red_breathing, R.mipmap.icon_type_5_06, 139, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.savannah_sunset, R.mipmap.icon_type_5_10, 142, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.tropical_twilight, R.mipmap.icon_type_5_08, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, 60, 240));
        arrayList.add(new SceneData(R.string.green_prairie, R.mipmap.icon_type_5_09, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(0, 255, 0));
        arrayList.add(new SceneData(R.string.ruby_glow, R.mipmap.icon_type_5_10, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, 40, 50));
        arrayList.add(new SceneData(R.string.aurora, R.mipmap.icon_type_5_11, 143, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.red_green_breathing, R.mipmap.icon_type_3_02, 146, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.alarm, R.mipmap.icon_type_5_13, 150, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.lake_placid, R.mipmap.icon_type_5_14, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, 200, 255));
        arrayList.add(new SceneData(R.string.red_green_blue, R.mipmap.icon_type_3_03, 137, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.sundowner, R.mipmap.icon_type_5_16, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, Opcodes.IF_ICMPNE, 0));
        arrayList.add(new SceneData(R.string.blue_starry_sky, R.mipmap.icon_type_5_17, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(0, 0, 255));
        arrayList.add(new SceneData(R.string.red_roses, R.mipmap.icon_type_5_18, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, 0, 0));
        arrayList.add(new SceneData(R.string.blue_pink_breathing, R.mipmap.icon_type_3_04, 144, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.disco, R.mipmap.icon_type_5_20, Opcodes.FCMPL, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.autumn_gold, R.mipmap.icon_type_5_21, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, 90, 0));
        return arrayList;
    }

    public static List<SceneData> getSceneData5() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SceneData(R.string.mode_2, R.mipmap.icon_type_5_01, 138, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.sunset, R.mipmap.icon_type_5_02, 134, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.forest, R.mipmap.icon_type_5_04, 140, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.ghost, R.mipmap.icon_type_5_05, 141, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.sunrise, R.mipmap.icon_type_5_06, 139, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.summer_sun, R.mipmap.icon_type_5_07, 142, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.tropical_twilight, R.mipmap.icon_type_5_08, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, 60, 240));
        arrayList.add(new SceneData(R.string.green_prairie, R.mipmap.icon_type_5_09, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(0, 255, 0));
        arrayList.add(new SceneData(R.string.ruby_glow, R.mipmap.icon_type_5_10, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, 40, 50));
        arrayList.add(new SceneData(R.string.aurora, R.mipmap.icon_type_5_11, 143, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.savannah_sunset, R.mipmap.icon_type_5_12, 146, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.alarm, R.mipmap.icon_type_5_13, 150, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.lake_placid, R.mipmap.icon_type_5_14, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, 200, 255));
        arrayList.add(new SceneData(R.string.neon_lights, R.mipmap.icon_type_5_15, 137, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.sundowner, R.mipmap.icon_type_5_16, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, Opcodes.IF_ICMPNE, 0));
        arrayList.add(new SceneData(R.string.blue_starry_sky, R.mipmap.icon_type_5_17, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(0, 0, 255));
        arrayList.add(new SceneData(R.string.red_roses, R.mipmap.icon_type_5_18, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, 0, 0));
        arrayList.add(new SceneData(R.string.dating, R.mipmap.icon_type_5_19, 144, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.disco, R.mipmap.icon_type_5_20, Opcodes.FCMPL, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.autumn_gold, R.mipmap.icon_type_5_21, 0, 0).setMode(RGBMode.COLOR_MODEL).setRGBValue(255, 90, 0));
        return arrayList;
    }

    public static List<SceneData> getIlluminatingData6() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SceneData(R.string.bright, R.mipmap.icon_type_6_01, 1, 0).setMode(RGBMode.DIY_MODEL).setRGBValue(255, 255, 255).setLightPercent(0, 100));
        arrayList.add(new SceneData(R.string.night_light, R.mipmap.icon_type_6_02, 2, 0).setMode(RGBMode.DIY_MODEL).setRGBValue(255, 125, 0).setLightPercent(5, 0));
        arrayList.add(new SceneData(R.string.reading, R.mipmap.icon_type_6_03, 3, 0).setMode(RGBMode.DIY_MODEL).setRGBValue(255, 145, 0).setLightPercent(100, 80));
        arrayList.add(new SceneData(R.string.rest, R.mipmap.icon_type_6_04, 4, 0).setMode(RGBMode.DIY_MODEL).setRGBValue(255, 145, 0).setLightPercent(50, 10));
        arrayList.add(new SceneData(R.string.gradually_darken, R.mipmap.icon_type_6_05, 142, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.mode_2, R.mipmap.icon_type_5_01, 138, 0).setMode(RGBMode.STATIC_MODEL));
        return arrayList;
    }

    public static List<SceneData> getSceneData6() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SceneData(R.string.forest, R.mipmap.icon_type_5_04, 140, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.ghost, R.mipmap.icon_type_5_05, 141, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.alarm, R.mipmap.icon_type_5_13, 150, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.romantic, R.mipmap.icon_type_6_07, 2, 0).setMode(RGBMode.DIY_MODEL).setRGBValue(255, 0, 255).setLightPercent(100, 0));
        arrayList.add(new SceneData(R.string.dating, R.mipmap.icon_type_5_19, 144, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.sweet, R.mipmap.icon_type_6_08, 139, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.neon_lights, R.mipmap.icon_type_5_15, 135, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.aurora, R.mipmap.icon_type_5_11, Opcodes.LCMP, 0).setMode(RGBMode.STATIC_MODEL));
        arrayList.add(new SceneData(R.string.carnival, R.mipmap.icon_type_6_09, Opcodes.FCMPL, 0).setMode(RGBMode.STATIC_MODEL));
        return arrayList;
    }

    public static List<SceneData> getMusicModel6() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SceneData(R.string.symphony, R.mipmap.icon_music_type_6_01, -1, 0).setMode(RGBMode.MUSIC_MODEL));
        arrayList.add(new SceneData(R.string.red, R.mipmap.icon_music_type_6_02, 0, 0).setMode(RGBMode.MUSIC_MODEL));
        arrayList.add(new SceneData(R.string.blue, R.mipmap.icon_music_type_6_03, 240, 0).setMode(RGBMode.MUSIC_MODEL));
        arrayList.add(new SceneData(R.string.pink, R.mipmap.icon_music_type_6_04, MaterialCardViewHelper.DEFAULT_FADE_ANIM_DURATION, 0).setMode(RGBMode.MUSIC_MODEL));
        arrayList.add(new SceneData(R.string.green, R.mipmap.icon_music_type_6_05, 120, 0).setMode(RGBMode.MUSIC_MODEL));
        arrayList.add(new SceneData(R.string.orange, R.mipmap.icon_music_type_6_06, 30, 0).setMode(RGBMode.MUSIC_MODEL));
        arrayList.add(new SceneData(R.string.yellow, R.mipmap.icon_music_type_6_07, 60, 0).setMode(RGBMode.MUSIC_MODEL));
        arrayList.add(new SceneData(R.string.purple, R.mipmap.icon_music_type_6_08, 270, 0).setMode(RGBMode.MUSIC_MODEL));
        arrayList.add(new SceneData(R.string.light_blue, R.mipmap.icon_music_type_6_09, 210, 0).setMode(RGBMode.MUSIC_MODEL));
        return arrayList;
    }

    public static List<SceneData> getWhiteNoiseModel() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SceneData(R.string.noise_fan, R.mipmap.icon_noise_fan, R.raw.fan_sound, 0));
        arrayList.add(new SceneData(R.string.noise_water, R.mipmap.icon_noise_water, R.raw.water, 0));
        arrayList.add(new SceneData(R.string.noise_train, R.mipmap.icon_noise_train, R.raw.train, 0));
        arrayList.add(new SceneData(R.string.noise_bird, R.mipmap.icon_noise_bird, R.raw.bird, 0));
        arrayList.add(new SceneData(R.string.noise_fire, R.mipmap.icon_noise_fire, R.raw.fire, 0));
        arrayList.add(new SceneData(R.string.noise_rain, R.mipmap.icon_noise_rain, R.raw.rain, 0));
        return arrayList;
    }

    public static ConfigInfoBean getDefaultConfigInfo(int type, int factoryID) {
        ConfigInfoBean configInfoBean = new ConfigInfoBean();
        configInfoBean.setType(type);
        configInfoBean.setFactoryId(factoryID);
        configInfoBean.setDeviceType(1);
        configInfoBean.setLedNum(20);
        configInfoBean.setRGBModel(1);
        configInfoBean.setEnableLimit(true);
        configInfoBean.setMaxMixLight(50);
        configInfoBean.setMaxOtherLight(80);
        return configInfoBean;
    }
}
