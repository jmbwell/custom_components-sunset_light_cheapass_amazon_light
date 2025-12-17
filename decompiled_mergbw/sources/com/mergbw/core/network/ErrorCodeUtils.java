package com.mergbw.core.network;
/* loaded from: classes4.dex */
public class ErrorCodeUtils {
    public static final int INVALID_EMAIL = 1011;
    public static final int INVALID_PHONE_NUMBER = 1013;
    public static final int INVALID_TOKEN = 1010;
    public static final int RESULT_OK = 0;
    public static final int USERNAME_ALREADY_EXIST = 1006;
    public static final int USERNAME_EMPTY = 1005;
    public static final int USER_NOT_EXIST = 1007;
    public static final int VERIFY_CODE_ERROR = 1003;
    public static final int VERIFY_CODE_EXPIRED = 1004;
    public static final int VERIFY_CODE_SEND_FAIL = 1012;
    public static final int WRONG_PASSWORD = 1009;

    public static String getErrorMsg(int resultCode) {
        if (resultCode != 1006) {
            if (resultCode != 1007) {
                if (resultCode != 1009) {
                    if (resultCode != 1012) {
                        return "OK";
                    }
                    return "验证码发送失败";
                }
                return "密码错误";
            }
            return "用户不存在";
        }
        return "用户已存在";
    }
}
