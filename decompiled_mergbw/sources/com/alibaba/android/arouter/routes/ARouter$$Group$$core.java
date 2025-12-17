package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.mergbw.core.jump.JumpPath;
import com.mergbw.core.ui.DIYSetting.DIYSettingActivity;
import com.mergbw.core.ui.subColorSetting.SubColorSettingActivity;
import java.util.Map;
/* loaded from: classes.dex */
public class ARouter$$Group$$core implements IRouteGroup {
    @Override // com.alibaba.android.arouter.facade.template.IRouteGroup
    public void loadInto(Map<String, RouteMeta> atlas) {
        atlas.put(JumpPath.DEVICE_DIY, RouteMeta.build(RouteType.ACTIVITY, DIYSettingActivity.class, JumpPath.DEVICE_DIY, "core", null, -1, Integer.MIN_VALUE));
        atlas.put(JumpPath.SUB_SETTING, RouteMeta.build(RouteType.ACTIVITY, SubColorSettingActivity.class, JumpPath.SUB_SETTING, "core", null, -1, Integer.MIN_VALUE));
    }
}
