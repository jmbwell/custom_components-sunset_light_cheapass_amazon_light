package com.mergbw.core.jump;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.alibaba.android.arouter.launcher.ARouter;
import com.mergbw.core.database.bean.DIYInfoBean;
import com.mergbw.core.database.bean.DeviceInfoBean;
import com.mergbw.core.database.bean.SubColorBean;
/* loaded from: classes4.dex */
public class JumpManager {
    private JumpManager() {
    }

    public static JumpManager getInstance() {
        return JumpManagerFactory.jumpManager;
    }

    /* loaded from: classes4.dex */
    private static class JumpManagerFactory {
        private static final JumpManager jumpManager = new JumpManager();

        private JumpManagerFactory() {
        }
    }

    public void jumpToSubSetting(DeviceInfoBean device, SubColorBean subColor, int from) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("device", device);
        bundle.putSerializable("subColor", subColor);
        bundle.putInt(TypedValues.TransitionType.S_FROM, from);
        build().targetClass(JumpPath.SUB_SETTING).bundle(bundle).jump();
    }

    public void jumpToDIYSetting(DeviceInfoBean device, DIYInfoBean diyInfo, int from) {
        Bundle bundle = new Bundle();
        bundle.putSerializable("device", device);
        bundle.putSerializable("diyInfo", diyInfo);
        bundle.putInt(TypedValues.TransitionType.S_FROM, from);
        build().targetClass(JumpPath.DEVICE_DIY).bundle(bundle).jump();
    }

    private Builder build() {
        return new Builder();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class Builder {
        private Bundle bundle;
        private String targetClass;

        private Builder() {
        }

        public Builder bundle(Bundle bundle) {
            this.bundle = bundle;
            return this;
        }

        public Builder targetClass(String targetClass) {
            this.targetClass = targetClass;
            return this;
        }

        public void jump() throws NoTargetClassException {
            if (TextUtils.isEmpty(this.targetClass)) {
                throw new NoTargetClassException();
            }
            if (this.bundle == null) {
                ARouter.getInstance().build(this.targetClass).navigation();
            } else {
                ARouter.getInstance().build(this.targetClass).with(this.bundle).navigation();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes4.dex */
    public static class NoTargetClassException extends RuntimeException {
        private NoTargetClassException() {
        }
    }
}
