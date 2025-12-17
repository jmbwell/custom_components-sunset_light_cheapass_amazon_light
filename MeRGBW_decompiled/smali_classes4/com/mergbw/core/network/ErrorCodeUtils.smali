.class public Lcom/mergbw/core/network/ErrorCodeUtils;
.super Ljava/lang/Object;
.source "ErrorCodeUtils.java"


# static fields
.field public static final INVALID_EMAIL:I = 0x3f3

.field public static final INVALID_PHONE_NUMBER:I = 0x3f5

.field public static final INVALID_TOKEN:I = 0x3f2

.field public static final RESULT_OK:I = 0x0

.field public static final USERNAME_ALREADY_EXIST:I = 0x3ee

.field public static final USERNAME_EMPTY:I = 0x3ed

.field public static final USER_NOT_EXIST:I = 0x3ef

.field public static final VERIFY_CODE_ERROR:I = 0x3eb

.field public static final VERIFY_CODE_EXPIRED:I = 0x3ec

.field public static final VERIFY_CODE_SEND_FAIL:I = 0x3f4

.field public static final WRONG_PASSWORD:I = 0x3f1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorMsg(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultCode"
        }
    .end annotation

    const/16 v0, 0x3ee

    if-eq p0, v0, :cond_3

    const/16 v0, 0x3ef

    if-eq p0, v0, :cond_2

    const/16 v0, 0x3f1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3f4

    if-eq p0, v0, :cond_0

    .line 23
    const-string p0, "OK"

    goto :goto_0

    .line 37
    :cond_0
    const-string p0, "\u9a8c\u8bc1\u7801\u53d1\u9001\u5931\u8d25"

    goto :goto_0

    .line 34
    :cond_1
    const-string p0, "\u5bc6\u7801\u9519\u8bef"

    goto :goto_0

    .line 30
    :cond_2
    const-string p0, "\u7528\u6237\u4e0d\u5b58\u5728"

    goto :goto_0

    .line 26
    :cond_3
    const-string p0, "\u7528\u6237\u5df2\u5b58\u5728"

    :goto_0
    return-object p0
.end method
