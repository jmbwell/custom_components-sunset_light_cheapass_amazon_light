package com.mergbw.core.network.app;

import com.mergbw.core.network.app.bean.UserResponse;
/* loaded from: classes4.dex */
public abstract class NetworkCallback {
    public void onGetSMSCodeResult(boolean success, String msg) {
    }

    public void onLoginResult(boolean success, String msg, UserResponse response) {
    }

    public void onRegisterResult(boolean success, String msg, UserResponse response) {
    }

    public void onResetPasswordResult(boolean success, String msg) {
    }

    public void onUpdateNicknameResult(boolean success, String msg) {
    }
}
