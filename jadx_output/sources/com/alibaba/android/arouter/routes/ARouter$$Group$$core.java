package com.alibaba.android.arouter.routes;

import com.alibaba.android.arouter.facade.enums.RouteType;
import com.alibaba.android.arouter.facade.model.RouteMeta;
import com.alibaba.android.arouter.facade.template.IRouteGroup;
import com.mergbw.core.ui.DIYSetting.DIYSettingActivity;
import com.mergbw.core.ui.subColorSetting.SubColorSettingActivity;
import java.util.Map;
/* loaded from: /home/graham/gemini_workspace/./ha-sunset-light-hack/decompiled_mergbw/resources/classes.dex */
public class ARouter$$Group$$core implements IRouteGroup {
    @Override // com.alibaba.android.arouter.facade.template.IRouteGroup
    public void loadInto(Map<String, RouteMeta> atlas) {
        atlas.put("/core/device_diy", RouteMeta.build(RouteType.ACTIVITY, DIYSettingActivity.class, "/core/device_diy", "core", null, -1, Integer.MIN_VALUE));
        atlas.put("/core/sub_setting", RouteMeta.build(RouteType.ACTIVITY, SubColorSettingActivity.class, "/core/sub_setting", "core", null, -1, Integer.MIN_VALUE));
    }
}
