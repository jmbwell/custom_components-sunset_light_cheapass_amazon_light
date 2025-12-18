package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.mergbw.android.ui.AboutActivity;
import com.mergbw.android.ui.AgreementActivity;
import com.mergbw.android.ui.FirstCheckPrivacyActivity;
import com.mergbw.android.ui.WebViewActivity;
import com.mergbw.android.ui.addDevice.AddDeviceActivity;
import com.mergbw.android.ui.deviceAlarm.DeviceAlarmActivity;
import com.mergbw.android.ui.deviceDetail.DeviceDetailActivity;
import com.mergbw.android.ui.deviceInfo.DeviceInfoActivity;
import com.mergbw.android.ui.deviceUpgrade.DeviceResumeActivity;
import com.mergbw.android.ui.deviceUpgrade.DeviceUpgradeActivity;
import com.mergbw.android.ui.factoryArea.FactoryAreaActivity;
import com.mergbw.android.ui.groupDetail.GroupDetailActivity;
import com.mergbw.android.ui.groupDetail.GroupDetailActivity2;
import com.mergbw.android.ui.groupSetting.GroupSettingActivity;
import com.mergbw.android.ui.home.MainActivity;
import com.mergbw.android.ui.login.LoginActivity;
import com.mergbw.android.ui.login.RegisterActivity;
import com.mergbw.android.ui.login.ResetPasswordActivity;
import java.util.Map;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class ARouter$$Group$$app implements IRouteGroup {
    @Override // com.alibaba.android.arouter.facade.template.IRouteGroup
    public void loadInto(Map<String, RouteMeta> map) {
        map.put("/app/about_page", RouteMeta.build(RouteType.ACTIVITY, AboutActivity.class, "/app/about_page", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/add_device", RouteMeta.build(RouteType.ACTIVITY, AddDeviceActivity.class, "/app/add_device", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/agreement_page", RouteMeta.build(RouteType.ACTIVITY, AgreementActivity.class, "/app/agreement_page", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/device_alarm", RouteMeta.build(RouteType.ACTIVITY, DeviceAlarmActivity.class, "/app/device_alarm", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/device_detail", RouteMeta.build(RouteType.ACTIVITY, DeviceDetailActivity.class, "/app/device_detail", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/device_info", RouteMeta.build(RouteType.ACTIVITY, DeviceInfoActivity.class, "/app/device_info", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/factory_area_page", RouteMeta.build(RouteType.ACTIVITY, FactoryAreaActivity.class, "/app/factory_area_page", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/first_check_page", RouteMeta.build(RouteType.ACTIVITY, FirstCheckPrivacyActivity.class, "/app/first_check_page", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/group_detail", RouteMeta.build(RouteType.ACTIVITY, GroupDetailActivity.class, "/app/group_detail", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/group_detail_2", RouteMeta.build(RouteType.ACTIVITY, GroupDetailActivity2.class, "/app/group_detail_2", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/group_setting", RouteMeta.build(RouteType.ACTIVITY, GroupSettingActivity.class, "/app/group_setting", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/home_page", RouteMeta.build(RouteType.ACTIVITY, MainActivity.class, "/app/home_page", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/login_page", RouteMeta.build(RouteType.ACTIVITY, LoginActivity.class, "/app/login_page", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/register_page", RouteMeta.build(RouteType.ACTIVITY, RegisterActivity.class, "/app/register_page", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/reset_page", RouteMeta.build(RouteType.ACTIVITY, ResetPasswordActivity.class, "/app/reset_page", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/resume_page", RouteMeta.build(RouteType.ACTIVITY, DeviceResumeActivity.class, "/app/resume_page", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/upgrade_page", RouteMeta.build(RouteType.ACTIVITY, DeviceUpgradeActivity.class, "/app/upgrade_page", "app", null, -1, Integer.MIN_VALUE));
        map.put("/app/web_view_page", RouteMeta.build(RouteType.ACTIVITY, WebViewActivity.class, "/app/web_view_page", "app", null, -1, Integer.MIN_VALUE));
    }
}
