.class public Lcom/mergbw/core/utils/ViewDataUtils;
.super Ljava/lang/Object;
.source "ViewDataUtils.java"


# static fields
.field public static final BREATHE:I = 0x4

.field public static final DEVICE_TYPE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EFFECT_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLOW:I = 0x3

.field public static final LOCAL_FIRMWARE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LOCAL_FIRMWARE_02:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MOVE:I = 0x2

.field public static final RGB_ORDER:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWITCH:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mergbw/core/utils/ViewDataUtils;->EFFECT_NAME:Ljava/util/Map;

    const/4 v1, 0x1

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/mergbw/core/R$string;->effect_01:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/mergbw/core/R$string;->effect_02:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    .line 37
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget v4, Lcom/mergbw/core/R$string;->effect_03:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x4

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget v5, Lcom/mergbw/core/R$string;->effect_04:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mergbw/core/utils/ViewDataUtils;->DEVICE_TYPE:Ljava/util/Map;

    .line 68
    const-string v5, "\u5e7b\u5f69\u706f\u5e26"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v5, "RGB\u706f\u6761"

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v5, "\u661f\u7a7a\u706f"

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x5

    .line 71
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "\u5915\u9633\u706f"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x6

    .line 72
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "\u5e7b\u5f69\u706f\u6ce1"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mergbw/core/utils/ViewDataUtils;->RGB_ORDER:Ljava/util/Map;

    const/4 v6, 0x0

    .line 78
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "RGB"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v6, "RBG"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v1, "GRB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "GBR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v1, "BRG"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v1, "BGR"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mergbw/core/utils/ViewDataUtils;->LOCAL_FIRMWARE:Ljava/util/Map;

    .line 88
    const-string v1, "TG201"

    const-string v2, "/firmware/simpleBlePeripheral-TG201.hex16"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v1, "TG609"

    const-string v3, "/firmware/simpleBlePeripheral-TG609.hex16"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v1, "TG610"

    const-string v4, "/firmware/simpleBlePeripheral-TG610.hex16"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/mergbw/core/utils/ViewDataUtils;->LOCAL_FIRMWARE_02:Ljava/util/Map;

    .line 95
    const-string v1, "TG201\u0000\u0000\u0000\u0000\u0000"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "TG609\u0000\u0000\u0000\u0000\u0000"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v1, "TG610\u0000\u0000\u0000\u0000\u0000"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static analyseSyncData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceInfo",
            "data"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 101
    new-instance v2, Lcom/mergbw/core/bean/AlarmDataBean;

    invoke-direct {v2}, Lcom/mergbw/core/bean/AlarmDataBean;-><init>()V

    .line 102
    new-instance v3, Lcom/mergbw/core/bean/AlarmDataBean;

    invoke-direct {v3}, Lcom/mergbw/core/bean/AlarmDataBean;-><init>()V

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v4

    const/16 v6, 0x10

    const/16 v7, 0xf

    const/16 v8, 0xe

    const/16 v9, 0xd

    const/16 v10, 0xc

    const/16 v11, 0xb

    const/16 v12, 0x9

    const/16 v13, 0x8

    const/4 v14, 0x7

    const/4 v15, 0x6

    const/16 v16, 0x4

    const/16 v17, 0xa

    const/16 v18, 0x5

    const/16 v19, 0x0

    const/4 v5, 0x1

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_10

    .line 189
    :pswitch_0
    aget-byte v4, v1, v16

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move/from16 v4, v19

    :goto_0
    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpen(Z)V

    .line 190
    aget-byte v4, v1, v18

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBrightness(I)V

    .line 192
    aget-byte v4, v1, v15

    if-ne v4, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    move/from16 v4, v19

    :goto_1
    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setSet(Z)V

    .line 193
    aget-byte v4, v1, v14

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeHour(I)V

    .line 194
    aget-byte v4, v1, v13

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeMinute(I)V

    .line 195
    aget-byte v4, v1, v12

    invoke-static {v4}, Lcom/mergbw/core/utils/StringUtils;->getBooleanArray(B)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setWeekRepeat([B)V

    .line 196
    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpenAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V

    .line 198
    aget-byte v2, v1, v17

    if-ne v2, v5, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v5, v19

    :goto_2
    invoke-virtual {v3, v5}, Lcom/mergbw/core/bean/AlarmDataBean;->setSet(Z)V

    .line 199
    aget-byte v2, v1, v11

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeHour(I)V

    .line 200
    aget-byte v2, v1, v10

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeMinute(I)V

    .line 201
    aget-byte v2, v1, v9

    invoke-static {v2}, Lcom/mergbw/core/utils/StringUtils;->getBooleanArray(B)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setWeekRepeat([B)V

    .line 202
    invoke-virtual {v0, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setCloseAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V

    .line 204
    array-length v2, v1

    const/16 v3, 0x12

    if-lt v2, v3, :cond_10

    .line 205
    aget-byte v2, v1, v8

    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setColdBrightness(I)V

    .line 206
    aget-byte v2, v1, v7

    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setWarmBrightness(I)V

    .line 207
    aget-byte v2, v1, v6

    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setColdPercent(I)V

    const/16 v2, 0x11

    .line 208
    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setWarmPercent(I)V

    goto/16 :goto_10

    .line 169
    :pswitch_1
    aget-byte v4, v1, v16

    if-ne v4, v5, :cond_3

    move v4, v5

    goto :goto_3

    :cond_3
    move/from16 v4, v19

    :goto_3
    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpen(Z)V

    .line 170
    aget-byte v4, v1, v18

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBrightness(I)V

    .line 172
    aget-byte v4, v1, v15

    if-ne v4, v5, :cond_4

    move v4, v5

    goto :goto_4

    :cond_4
    move/from16 v4, v19

    :goto_4
    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setWhiteOpen(Z)V

    .line 173
    aget-byte v4, v1, v14

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setWhiteBrightness(I)V

    .line 175
    aget-byte v4, v1, v13

    if-ne v4, v5, :cond_5

    move v4, v5

    goto :goto_5

    :cond_5
    move/from16 v4, v19

    :goto_5
    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setSet(Z)V

    .line 176
    aget-byte v4, v1, v12

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeHour(I)V

    .line 177
    aget-byte v4, v1, v17

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeMinute(I)V

    .line 178
    aget-byte v4, v1, v11

    invoke-static {v4}, Lcom/mergbw/core/utils/StringUtils;->getBooleanArray(B)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setWeekRepeat([B)V

    .line 179
    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpenAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V

    .line 181
    aget-byte v2, v1, v10

    if-ne v2, v5, :cond_6

    goto :goto_6

    :cond_6
    move/from16 v5, v19

    :goto_6
    invoke-virtual {v3, v5}, Lcom/mergbw/core/bean/AlarmDataBean;->setSet(Z)V

    .line 182
    aget-byte v2, v1, v9

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeHour(I)V

    .line 183
    aget-byte v2, v1, v8

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeMinute(I)V

    .line 184
    aget-byte v1, v1, v7

    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->getBooleanArray(B)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mergbw/core/bean/AlarmDataBean;->setWeekRepeat([B)V

    .line 185
    invoke-virtual {v0, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setCloseAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V

    goto/16 :goto_10

    .line 150
    :pswitch_2
    aget-byte v4, v1, v16

    if-ne v4, v5, :cond_7

    move v4, v5

    goto :goto_7

    :cond_7
    move/from16 v4, v19

    :goto_7
    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpen(Z)V

    .line 151
    aget-byte v4, v1, v18

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBrightness(I)V

    .line 153
    aget-byte v4, v1, v15

    if-ne v4, v5, :cond_8

    move v4, v5

    goto :goto_8

    :cond_8
    move/from16 v4, v19

    :goto_8
    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setSet(Z)V

    .line 154
    aget-byte v4, v1, v14

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeHour(I)V

    .line 155
    aget-byte v4, v1, v13

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeMinute(I)V

    .line 156
    aget-byte v4, v1, v12

    invoke-static {v4}, Lcom/mergbw/core/utils/StringUtils;->getBooleanArray(B)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setWeekRepeat([B)V

    .line 157
    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpenAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V

    .line 159
    aget-byte v2, v1, v17

    if-ne v2, v5, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v5, v19

    :goto_9
    invoke-virtual {v3, v5}, Lcom/mergbw/core/bean/AlarmDataBean;->setSet(Z)V

    .line 160
    aget-byte v2, v1, v11

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeHour(I)V

    .line 161
    aget-byte v2, v1, v10

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeMinute(I)V

    .line 162
    aget-byte v1, v1, v9

    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->getBooleanArray(B)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mergbw/core/bean/AlarmDataBean;->setWeekRepeat([B)V

    .line 163
    invoke-virtual {v0, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setCloseAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V

    goto/16 :goto_10

    .line 130
    :pswitch_3
    aget-byte v4, v1, v16

    if-ne v4, v5, :cond_a

    move v4, v5

    goto :goto_a

    :cond_a
    move/from16 v4, v19

    :goto_a
    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpen(Z)V

    .line 131
    aget-byte v4, v1, v18

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBrightness(I)V

    .line 133
    aget-byte v4, v1, v15

    if-ne v4, v5, :cond_b

    move v4, v5

    goto :goto_b

    :cond_b
    move/from16 v4, v19

    :goto_b
    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setSet(Z)V

    .line 134
    aget-byte v4, v1, v14

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeHour(I)V

    .line 135
    aget-byte v4, v1, v13

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeMinute(I)V

    .line 136
    aget-byte v4, v1, v12

    invoke-static {v4}, Lcom/mergbw/core/utils/StringUtils;->getBooleanArray(B)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setWeekRepeat([B)V

    .line 137
    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpenAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V

    .line 139
    aget-byte v2, v1, v17

    if-ne v2, v5, :cond_c

    goto :goto_c

    :cond_c
    move/from16 v5, v19

    :goto_c
    invoke-virtual {v3, v5}, Lcom/mergbw/core/bean/AlarmDataBean;->setSet(Z)V

    .line 140
    aget-byte v2, v1, v11

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeHour(I)V

    .line 141
    aget-byte v2, v1, v10

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeMinute(I)V

    .line 142
    aget-byte v2, v1, v9

    invoke-static {v2}, Lcom/mergbw/core/utils/StringUtils;->getBooleanArray(B)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setWeekRepeat([B)V

    .line 143
    invoke-virtual {v0, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setCloseAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V

    .line 145
    aget-byte v2, v1, v8

    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setStarBrightness(I)V

    .line 146
    aget-byte v1, v1, v7

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setMotorSpeed(I)V

    goto/16 :goto_10

    .line 108
    :pswitch_4
    aget-byte v4, v1, v16

    if-ne v4, v5, :cond_d

    move v4, v5

    goto :goto_d

    :cond_d
    move/from16 v4, v19

    :goto_d
    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpen(Z)V

    .line 110
    aget-byte v4, v1, v18

    aget-byte v15, v1, v15

    invoke-static {v4, v15}, Lcom/mergbw/core/utils/StringUtils;->bytesToInt2(BB)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    add-int/lit8 v4, v4, -0x5

    invoke-virtual {v0, v4}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBrightness(I)V

    .line 112
    aget-byte v4, v1, v14

    if-ne v4, v5, :cond_e

    move v4, v5

    goto :goto_e

    :cond_e
    move/from16 v4, v19

    :goto_e
    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setSet(Z)V

    .line 113
    aget-byte v4, v1, v13

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeHour(I)V

    .line 114
    aget-byte v4, v1, v12

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeMinute(I)V

    .line 115
    aget-byte v4, v1, v17

    invoke-static {v4}, Lcom/mergbw/core/utils/StringUtils;->getBooleanArray(B)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/mergbw/core/bean/AlarmDataBean;->setWeekRepeat([B)V

    .line 116
    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpenAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V

    .line 118
    aget-byte v2, v1, v11

    if-ne v2, v5, :cond_f

    goto :goto_f

    :cond_f
    move/from16 v5, v19

    :goto_f
    invoke-virtual {v3, v5}, Lcom/mergbw/core/bean/AlarmDataBean;->setSet(Z)V

    .line 119
    aget-byte v2, v1, v10

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeHour(I)V

    .line 120
    aget-byte v2, v1, v9

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setTimeMinute(I)V

    .line 121
    aget-byte v2, v1, v8

    invoke-static {v2}, Lcom/mergbw/core/utils/StringUtils;->getBooleanArray(B)[B

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/mergbw/core/bean/AlarmDataBean;->setWeekRepeat([B)V

    .line 122
    invoke-virtual {v0, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setCloseAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V

    .line 124
    aget-byte v2, v1, v7

    aget-byte v3, v1, v6

    invoke-static {v2, v3}, Lcom/mergbw/core/utils/StringUtils;->bytesToInt2(BB)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setLedNum(I)V

    const/16 v2, 0x11

    .line 126
    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSensitive(I)V

    :cond_10
    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultConfigInfo(II)Lcom/mergbw/core/database/bean/ConfigInfoBean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "factoryID"
        }
    .end annotation

    .line 802
    new-instance v0, Lcom/mergbw/core/database/bean/ConfigInfoBean;

    invoke-direct {v0}, Lcom/mergbw/core/database/bean/ConfigInfoBean;-><init>()V

    .line 803
    invoke-virtual {v0, p0}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setType(I)V

    .line 804
    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setFactoryId(I)V

    const/4 p0, 0x1

    .line 805
    invoke-virtual {v0, p0}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setDeviceType(I)V

    const/16 p1, 0x14

    .line 806
    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setLedNum(I)V

    .line 807
    invoke-virtual {v0, p0}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setRGBModel(I)V

    .line 808
    invoke-virtual {v0, p0}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setEnableLimit(Z)V

    const/16 p0, 0x32

    .line 809
    invoke-virtual {v0, p0}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setMaxMixLight(I)V

    const/16 p0, 0x50

    .line 810
    invoke-virtual {v0, p0}, Lcom/mergbw/core/database/bean/ConfigInfoBean;->setMaxOtherLight(I)V

    return-object v0
.end method

.method public static getDeviceIcon(IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceType",
            "connected"
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 v0, 0x3

    if-eq p0, v0, :cond_5

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    if-eqz p1, :cond_0

    .line 237
    sget p0, Lcom/mergbw/core/R$mipmap;->icon_device_icon:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/mergbw/core/R$mipmap;->icon_device_disconnect:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 223
    sget p0, Lcom/mergbw/core/R$mipmap;->icon_device_icon_6:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/mergbw/core/R$mipmap;->icon_device_disconnect_6:I

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 218
    sget p0, Lcom/mergbw/core/R$mipmap;->icon_device_icon_5:I

    goto :goto_0

    :cond_4
    sget p0, Lcom/mergbw/core/R$mipmap;->icon_device_disconnect_5:I

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    .line 231
    sget p0, Lcom/mergbw/core/R$mipmap;->icon_device_icon_3:I

    goto :goto_0

    :cond_6
    sget p0, Lcom/mergbw/core/R$mipmap;->icon_device_disconnect_3:I

    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    .line 227
    sget p0, Lcom/mergbw/core/R$mipmap;->icon_device_icon_2:I

    goto :goto_0

    :cond_8
    sget p0, Lcom/mergbw/core/R$mipmap;->icon_device_disconnect_2:I

    :goto_0
    return p0
.end method

.method public static getEffectNameRes(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    .line 42
    sget-object v0, Lcom/mergbw/core/utils/ViewDataUtils;->EFFECT_NAME:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 46
    :cond_0
    sget p0, Lcom/mergbw/core/R$string;->effect_01:I

    return p0
.end method

.method public static getGroupTabList(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/TabItemBean;",
            ">;"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x23

    const/16 v2, 0x1f

    const/16 v3, 0x15

    const/16 v4, 0xb

    packed-switch p0, :pswitch_data_0

    .line 323
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->color:I

    invoke-direct {p0, v4, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->scene:I

    invoke-direct {p0, v3, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->music:I

    invoke-direct {p0, v2, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 305
    :pswitch_0
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    const/16 v2, 0x10

    sget v3, Lcom/mergbw/core/R$string;->illuminating:I

    invoke-direct {p0, v2, v3}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    const/16 v2, 0x1a

    sget v3, Lcom/mergbw/core/R$string;->atmosphere:I

    invoke-direct {p0, v2, v3}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v2, Lcom/mergbw/core/R$string;->music:I

    invoke-direct {p0, v1, v2}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 317
    :pswitch_1
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->color:I

    invoke-direct {p0, v4, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->scene:I

    invoke-direct {p0, v3, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 298
    :pswitch_2
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v2, Lcom/mergbw/core/R$string;->color:I

    invoke-direct {p0, v4, v2}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    const/16 v2, 0x19

    sget v3, Lcom/mergbw/core/R$string;->scene:I

    invoke-direct {p0, v2, v3}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v2, Lcom/mergbw/core/R$string;->music:I

    invoke-direct {p0, v1, v2}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :pswitch_3
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->color:I

    invoke-direct {p0, v4, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->scene:I

    invoke-direct {p0, v3, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->music:I

    invoke-direct {p0, v2, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getIlluminatingData6()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 752
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->bright:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_6_01:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2, v2, v2}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v3, 0x64

    invoke-virtual {v1, v5, v3}, Lcom/mergbw/core/bean/SceneData;->setLightPercent(II)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->night_light:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_type_6_02:I

    const/4 v7, 0x2

    invoke-direct {v1, v4, v6, v7, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v4, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v4}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v4, 0x7d

    invoke-virtual {v1, v2, v4, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v5}, Lcom/mergbw/core/bean/SceneData;->setLightPercent(II)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->reading:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_type_6_03:I

    const/4 v7, 0x3

    invoke-direct {v1, v4, v6, v7, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v4, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v4}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v4, 0x91

    invoke-virtual {v1, v2, v4, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v6, 0x50

    invoke-virtual {v1, v3, v6}, Lcom/mergbw/core/bean/SceneData;->setLightPercent(II)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v3, Lcom/mergbw/core/R$string;->rest:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_type_6_04:I

    const/4 v7, 0x4

    invoke-direct {v1, v3, v6, v7, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v3, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-virtual {v1, v2, v4, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0x32

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Lcom/mergbw/core/bean/SceneData;->setLightPercent(II)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->gradually_darken:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_6_05:I

    const/16 v4, 0x8e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 757
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->mode_2:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_01:I

    const/16 v4, 0x8a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getMusicModel()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 691
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->spectrum1:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_01:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->spectrum2:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_02:I

    const/4 v4, 0x5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->spectrum3:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_03:I

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->flowing:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_04:I

    const/4 v4, 0x3

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 695
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->rolling:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_05:I

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->rhythm:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_06:I

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getMusicModel6()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation

    .line 777
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->symphony:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_type_6_01:I

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->red:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_type_6_02:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->blue:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_type_6_03:I

    const/16 v4, 0xf0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 781
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->pink:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_type_6_04:I

    const/16 v4, 0x12c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 782
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->green:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_type_6_05:I

    const/16 v4, 0x78

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 783
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->orange:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_type_6_06:I

    const/16 v4, 0x1e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->yellow:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_type_6_07:I

    const/16 v4, 0x3c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->purple:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_type_6_08:I

    const/16 v4, 0x10e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->light_blue:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_music_type_6_09:I

    const/16 v4, 0xd2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->MUSIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSceneData()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneGroupData;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 334
    new-instance v1, Lcom/mergbw/core/bean/SceneGroupData;

    invoke-direct {v1}, Lcom/mergbw/core/bean/SceneGroupData;-><init>()V

    const/4 v2, 0x1

    .line 335
    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneGroupData;->setId(I)V

    .line 336
    sget v3, Lcom/mergbw/core/R$string;->classic:I

    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneGroupData;->setGroupNameRes(I)V

    .line 337
    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneGroupData;->setType(I)V

    .line 338
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->symphony:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_01:I

    const/4 v7, 0x2

    const/16 v8, 0x32

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->energy:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_02:I

    const/4 v9, 0x3

    invoke-direct {v4, v5, v6, v9, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->jump:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_03:I

    const/4 v10, 0x4

    invoke-direct {v4, v5, v6, v10, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->vitality:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_04:I

    const/4 v11, 0x7

    const/16 v12, 0x23

    invoke-direct {v4, v5, v6, v11, v12}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->accumulation:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_05:I

    const/16 v13, 0x10

    invoke-direct {v4, v5, v6, v13, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->chase:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_06:I

    const/16 v14, 0x17

    const/16 v15, 0x14

    invoke-direct {v4, v5, v6, v14, v15}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->space_time:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_07:I

    const/16 v14, 0x2d

    const/16 v13, 0xf

    invoke-direct {v4, v5, v6, v14, v13}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->ephemeral:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_08:I

    invoke-direct {v4, v5, v6, v12, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->flow:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_09:I

    const/16 v14, 0x37

    const/16 v11, 0x1e

    invoke-direct {v4, v5, v6, v14, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->forest:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_10:I

    const/16 v14, 0xd

    const/16 v10, 0x50

    invoke-direct {v4, v5, v6, v14, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->neon_lights:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_11:I

    const/16 v14, 0x30

    invoke-direct {v4, v5, v6, v14, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->green_jade:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_12:I

    const/16 v14, 0x47

    invoke-direct {v4, v5, v6, v14, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->running:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_13:I

    const/16 v14, 0x5b

    invoke-direct {v4, v5, v6, v14, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->pink_light:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_14:I

    const/16 v14, 0x6d

    invoke-direct {v4, v5, v6, v14, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->alarm:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_15:I

    const/16 v14, 0x71

    invoke-direct {v4, v5, v6, v14, v13}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->aurora:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_16:I

    const/16 v14, 0x3b

    const/16 v11, 0x64

    invoke-direct {v4, v5, v6, v14, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->rainbow:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_17:I

    const/16 v14, 0x1a

    invoke-direct {v4, v5, v6, v14, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->melody:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_18:I

    const/16 v14, 0x20

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v14, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v1, Lcom/mergbw/core/bean/SceneGroupData;

    invoke-direct {v1}, Lcom/mergbw/core/bean/SceneGroupData;-><init>()V

    .line 360
    invoke-virtual {v1, v7}, Lcom/mergbw/core/bean/SceneGroupData;->setId(I)V

    .line 361
    sget v3, Lcom/mergbw/core/R$string;->festival:I

    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneGroupData;->setGroupNameRes(I)V

    .line 362
    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneGroupData;->setType(I)V

    .line 363
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->christmas:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_01:I

    const/16 v14, 0x8

    invoke-direct {v4, v5, v6, v14, v12}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->halloween:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_02:I

    const/16 v2, 0xb

    invoke-direct {v4, v5, v6, v2, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->valentine:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_03:I

    const/16 v7, 0x66

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->new_year:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_04:I

    const/4 v8, 0x5

    invoke-direct {v4, v5, v6, v8, v12}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->candlelight:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_05:I

    const/16 v8, 0x74

    invoke-direct {v4, v5, v6, v8, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 368
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->birthday:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_06:I

    invoke-direct {v4, v5, v6, v9, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->ghost:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_07:I

    const/16 v8, 0x6f

    const/16 v9, 0x1d

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->party:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_08:I

    const/4 v8, 0x6

    invoke-direct {v4, v5, v6, v8, v12}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->carnival:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_09:I

    invoke-direct {v4, v5, v6, v14, v15}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->disco:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_10:I

    const/4 v8, 0x4

    invoke-direct {v4, v5, v6, v8, v13}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->sweet:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_11:I

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->romantic:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_12:I

    const/16 v8, 0xc

    invoke-direct {v4, v5, v6, v8, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 375
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->dating:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_13:I

    const/16 v8, 0x32

    invoke-direct {v4, v5, v6, v2, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->ball:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_14:I

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v9, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->game:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_15:I

    const/16 v8, 0x32

    const/16 v10, 0x1a

    invoke-direct {v4, v5, v6, v10, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v1, Lcom/mergbw/core/bean/SceneGroupData;

    invoke-direct {v1}, Lcom/mergbw/core/bean/SceneGroupData;-><init>()V

    const/4 v3, 0x3

    .line 382
    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneGroupData;->setId(I)V

    .line 383
    sget v3, Lcom/mergbw/core/R$string;->other:I

    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneGroupData;->setGroupNameRes(I)V

    const/4 v3, 0x2

    .line 384
    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneGroupData;->setType(I)V

    .line 385
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/mergbw/core/bean/SceneData;

    sget v6, Lcom/mergbw/core/R$string;->mode_1:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0x32

    invoke-direct {v5, v6, v7, v8, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/mergbw/core/bean/SceneData;

    sget v6, Lcom/mergbw/core/R$string;->mode_2:I

    invoke-direct {v5, v6, v7, v3, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_3:I

    const/4 v6, 0x3

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_4:I

    const/4 v6, 0x4

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_5:I

    const/4 v6, 0x5

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_6:I

    const/4 v6, 0x6

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_7:I

    const/4 v6, 0x7

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_8:I

    invoke-direct {v4, v5, v7, v14, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_9:I

    const/16 v6, 0x9

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_10:I

    const/16 v6, 0xa

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_11:I

    invoke-direct {v4, v5, v7, v2, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_12:I

    const/16 v5, 0xc

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_13:I

    const/16 v5, 0xd

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_14:I

    const/16 v5, 0xe

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_15:I

    invoke-direct {v3, v4, v7, v13, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 400
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_16:I

    const/16 v5, 0x10

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_17:I

    const/16 v5, 0x11

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_18:I

    const/16 v5, 0x12

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_19:I

    const/16 v5, 0x13

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_20:I

    invoke-direct {v3, v4, v7, v15, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_21:I

    const/16 v5, 0x15

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_22:I

    const/16 v5, 0x16

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_23:I

    const/16 v5, 0x17

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_24:I

    const/16 v5, 0x18

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_25:I

    const/16 v5, 0x19

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 411
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_26:I

    const/16 v5, 0x1a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_27:I

    const/16 v5, 0x1b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_28:I

    const/16 v5, 0x1c

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 414
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_29:I

    invoke-direct {v3, v4, v7, v9, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_30:I

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_31:I

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_32:I

    const/16 v5, 0x20

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_33:I

    const/16 v5, 0x21

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_34:I

    const/16 v5, 0x22

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 421
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_35:I

    invoke-direct {v3, v4, v7, v12, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_36:I

    const/16 v5, 0x24

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_37:I

    const/16 v5, 0x25

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_38:I

    const/16 v5, 0x26

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_39:I

    const/16 v5, 0x27

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_40:I

    const/16 v5, 0x28

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_41:I

    const/16 v5, 0x29

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_42:I

    const/16 v5, 0x2a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_43:I

    const/16 v5, 0x2b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_44:I

    const/16 v5, 0x2c

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_45:I

    const/16 v5, 0x2d

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_46:I

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_47:I

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 435
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_48:I

    const/16 v5, 0x30

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_49:I

    const/16 v5, 0x31

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_50:I

    invoke-direct {v3, v4, v7, v10, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_51:I

    const/16 v5, 0x33

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_52:I

    const/16 v5, 0x34

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_53:I

    const/16 v5, 0x35

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_54:I

    const/16 v5, 0x36

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_55:I

    const/16 v5, 0x37

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_56:I

    const/16 v5, 0x38

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_57:I

    const/16 v5, 0x39

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_58:I

    const/16 v5, 0x3a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_59:I

    const/16 v5, 0x3b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_60:I

    const/16 v5, 0x3c

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_61:I

    const/16 v5, 0x3d

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_62:I

    const/16 v5, 0x3e

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_63:I

    const/16 v5, 0x3f

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_64:I

    const/16 v5, 0x40

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_65:I

    const/16 v5, 0x41

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_66:I

    const/16 v5, 0x42

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_67:I

    const/16 v5, 0x43

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_68:I

    const/16 v5, 0x44

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_69:I

    const/16 v5, 0x45

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_70:I

    const/16 v5, 0x46

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_71:I

    const/16 v5, 0x47

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_72:I

    const/16 v5, 0x48

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_73:I

    const/16 v5, 0x49

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_74:I

    const/16 v5, 0x4a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_75:I

    const/16 v5, 0x4b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_84:I

    const/16 v5, 0x54

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_85:I

    const/16 v5, 0x55

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_86:I

    const/16 v5, 0x56

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_87:I

    const/16 v5, 0x57

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_88:I

    const/16 v5, 0x58

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_89:I

    const/16 v5, 0x59

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_90:I

    const/16 v5, 0x5a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_91:I

    const/16 v5, 0x5b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_92:I

    const/16 v5, 0x5c

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_93:I

    const/16 v5, 0x5d

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_94:I

    const/16 v5, 0x5e

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_95:I

    const/16 v5, 0x5f

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_96:I

    const/16 v5, 0x60

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_97:I

    const/16 v5, 0x61

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 482
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_98:I

    const/16 v5, 0x62

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_99:I

    const/16 v5, 0x63

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_100:I

    invoke-direct {v3, v4, v7, v11, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_101:I

    const/16 v5, 0x65

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_102:I

    const/16 v5, 0x66

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 488
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_103:I

    const/16 v5, 0x67

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_104:I

    const/16 v5, 0x68

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_105:I

    const/16 v5, 0x69

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_106:I

    const/16 v5, 0x6a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_107:I

    const/16 v5, 0x6b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_108:I

    const/16 v5, 0x6c

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_109:I

    const/16 v5, 0x6d

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_110:I

    const/16 v5, 0x6e

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_111:I

    const/16 v5, 0x6f

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_112:I

    const/16 v5, 0x70

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_113:I

    const/16 v5, 0x71

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_114:I

    const/16 v5, 0x72

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_115:I

    const/16 v5, 0x73

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_116:I

    const/16 v5, 0x74

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_117:I

    const/16 v5, 0x75

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSceneData2()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneGroupData;",
            ">;"
        }
    .end annotation

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 513
    new-instance v1, Lcom/mergbw/core/bean/SceneGroupData;

    invoke-direct {v1}, Lcom/mergbw/core/bean/SceneGroupData;-><init>()V

    const/4 v2, 0x1

    .line 514
    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneGroupData;->setId(I)V

    .line 515
    sget v3, Lcom/mergbw/core/R$string;->classic:I

    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneGroupData;->setGroupNameRes(I)V

    .line 516
    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneGroupData;->setType(I)V

    .line 517
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->symphony:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_01:I

    const/4 v7, 0x2

    const/16 v8, 0x32

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->energy:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_02:I

    const/4 v9, 0x3

    invoke-direct {v4, v5, v6, v9, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 519
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->jump:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_03:I

    const/4 v10, 0x4

    invoke-direct {v4, v5, v6, v10, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->vitality:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_04:I

    const/4 v11, 0x7

    const/16 v12, 0x23

    invoke-direct {v4, v5, v6, v11, v12}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->accumulation:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_05:I

    const/16 v13, 0x10

    invoke-direct {v4, v5, v6, v13, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->chase:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_06:I

    const/16 v14, 0x17

    const/16 v15, 0x14

    invoke-direct {v4, v5, v6, v14, v15}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->space_time:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_07:I

    const/16 v14, 0x2d

    const/16 v13, 0xf

    invoke-direct {v4, v5, v6, v14, v13}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 524
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->ephemeral:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_08:I

    invoke-direct {v4, v5, v6, v12, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->flow:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_09:I

    const/16 v14, 0x37

    const/16 v11, 0x1e

    invoke-direct {v4, v5, v6, v14, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 526
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->forest:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_10:I

    const/16 v14, 0xd

    const/16 v10, 0x50

    invoke-direct {v4, v5, v6, v14, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->neon_lights:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_11:I

    const/16 v14, 0x30

    invoke-direct {v4, v5, v6, v14, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 528
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->green_jade:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_12:I

    const/16 v14, 0x47

    invoke-direct {v4, v5, v6, v14, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 529
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->running:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_13:I

    const/16 v14, 0x5b

    invoke-direct {v4, v5, v6, v14, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 530
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->pink_light:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_14:I

    const/16 v14, 0x6d

    invoke-direct {v4, v5, v6, v14, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->alarm:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_15:I

    const/16 v14, 0x71

    invoke-direct {v4, v5, v6, v14, v13}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->aurora:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_16:I

    const/16 v14, 0x3b

    const/16 v11, 0x64

    invoke-direct {v4, v5, v6, v14, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->rainbow:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_17:I

    const/16 v14, 0x1a

    invoke-direct {v4, v5, v6, v14, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->melody:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_classic_18:I

    const/16 v14, 0x20

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v14, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 535
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 538
    new-instance v1, Lcom/mergbw/core/bean/SceneGroupData;

    invoke-direct {v1}, Lcom/mergbw/core/bean/SceneGroupData;-><init>()V

    .line 539
    invoke-virtual {v1, v7}, Lcom/mergbw/core/bean/SceneGroupData;->setId(I)V

    .line 540
    sget v3, Lcom/mergbw/core/R$string;->festival:I

    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneGroupData;->setGroupNameRes(I)V

    .line 541
    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneGroupData;->setType(I)V

    .line 542
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->christmas:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_01:I

    const/16 v14, 0x8

    invoke-direct {v4, v5, v6, v14, v12}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 543
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->halloween:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_02:I

    const/16 v2, 0xb

    invoke-direct {v4, v5, v6, v2, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 544
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->valentine:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_03:I

    const/16 v7, 0x66

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->new_year:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_04:I

    const/4 v8, 0x5

    invoke-direct {v4, v5, v6, v8, v12}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->candlelight:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_05:I

    const/16 v8, 0x74

    invoke-direct {v4, v5, v6, v8, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->birthday:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_06:I

    invoke-direct {v4, v5, v6, v9, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->ghost:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_07:I

    const/16 v8, 0x6f

    const/16 v9, 0x1d

    invoke-direct {v4, v5, v6, v8, v9}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->party:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_08:I

    const/4 v8, 0x6

    invoke-direct {v4, v5, v6, v8, v12}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->carnival:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_09:I

    invoke-direct {v4, v5, v6, v14, v15}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->disco:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_10:I

    const/4 v8, 0x4

    invoke-direct {v4, v5, v6, v8, v13}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 552
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->sweet:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_11:I

    invoke-direct {v4, v5, v6, v7, v11}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->romantic:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_12:I

    const/16 v8, 0xc

    invoke-direct {v4, v5, v6, v8, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->dating:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_13:I

    const/16 v8, 0x32

    invoke-direct {v4, v5, v6, v2, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->ball:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_14:I

    const/4 v8, 0x0

    invoke-direct {v4, v5, v6, v9, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 556
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->game:I

    sget v6, Lcom/mergbw/core/R$mipmap;->icon_festival_15:I

    const/16 v8, 0x32

    const/16 v10, 0x1a

    invoke-direct {v4, v5, v6, v10, v8}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 560
    new-instance v1, Lcom/mergbw/core/bean/SceneGroupData;

    invoke-direct {v1}, Lcom/mergbw/core/bean/SceneGroupData;-><init>()V

    const/4 v3, 0x3

    .line 561
    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneGroupData;->setId(I)V

    .line 562
    sget v3, Lcom/mergbw/core/R$string;->other:I

    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneGroupData;->setGroupNameRes(I)V

    const/4 v3, 0x2

    .line 563
    invoke-virtual {v1, v3}, Lcom/mergbw/core/bean/SceneGroupData;->setType(I)V

    .line 564
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/mergbw/core/bean/SceneData;

    sget v6, Lcom/mergbw/core/R$string;->mode_1:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0x32

    invoke-direct {v5, v6, v7, v8, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v4

    new-instance v5, Lcom/mergbw/core/bean/SceneData;

    sget v6, Lcom/mergbw/core/R$string;->mode_2:I

    invoke-direct {v5, v6, v7, v3, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_3:I

    const/4 v6, 0x3

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_4:I

    const/4 v6, 0x4

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 568
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_5:I

    const/4 v6, 0x5

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_6:I

    const/4 v6, 0x6

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_7:I

    const/4 v6, 0x7

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_8:I

    invoke-direct {v4, v5, v7, v14, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_9:I

    const/16 v6, 0x9

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_10:I

    const/16 v6, 0xa

    invoke-direct {v4, v5, v7, v6, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/mergbw/core/bean/SceneData;

    sget v5, Lcom/mergbw/core/R$string;->mode_11:I

    invoke-direct {v4, v5, v7, v2, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 575
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_12:I

    const/16 v5, 0xc

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_13:I

    const/16 v5, 0xd

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_14:I

    const/16 v5, 0xe

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_15:I

    invoke-direct {v3, v4, v7, v13, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_16:I

    const/16 v5, 0x10

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_17:I

    const/16 v5, 0x11

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_18:I

    const/16 v5, 0x12

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_19:I

    const/16 v5, 0x13

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_20:I

    invoke-direct {v3, v4, v7, v15, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_21:I

    const/16 v5, 0x15

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_22:I

    const/16 v5, 0x16

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_23:I

    const/16 v5, 0x17

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_24:I

    const/16 v5, 0x18

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_25:I

    const/16 v5, 0x19

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_26:I

    const/16 v5, 0x1a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_27:I

    const/16 v5, 0x1b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_28:I

    const/16 v5, 0x1c

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_29:I

    invoke-direct {v3, v4, v7, v9, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_30:I

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 596
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_31:I

    const/16 v5, 0x1f

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_32:I

    const/16 v5, 0x20

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_33:I

    const/16 v5, 0x21

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_34:I

    const/16 v5, 0x22

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 600
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_35:I

    invoke-direct {v3, v4, v7, v12, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 601
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_36:I

    const/16 v5, 0x24

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_37:I

    const/16 v5, 0x25

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 603
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_38:I

    const/16 v5, 0x26

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_39:I

    const/16 v5, 0x27

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_40:I

    const/16 v5, 0x28

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_41:I

    const/16 v5, 0x29

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_42:I

    const/16 v5, 0x2a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_43:I

    const/16 v5, 0x2b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_44:I

    const/16 v5, 0x2c

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_45:I

    const/16 v5, 0x2d

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_46:I

    const/16 v5, 0x2e

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_47:I

    const/16 v5, 0x2f

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_48:I

    const/16 v5, 0x30

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_49:I

    const/16 v5, 0x31

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_50:I

    invoke-direct {v3, v4, v7, v10, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_51:I

    const/16 v5, 0x33

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_52:I

    const/16 v5, 0x34

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_53:I

    const/16 v5, 0x35

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_54:I

    const/16 v5, 0x36

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_55:I

    const/16 v5, 0x37

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_56:I

    const/16 v5, 0x38

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 624
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_57:I

    const/16 v5, 0x39

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_58:I

    const/16 v5, 0x3a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_59:I

    const/16 v5, 0x3b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_60:I

    const/16 v5, 0x3c

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_61:I

    const/16 v5, 0x3d

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_62:I

    const/16 v5, 0x3e

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_63:I

    const/16 v5, 0x3f

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 632
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_64:I

    const/16 v5, 0x40

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_65:I

    const/16 v5, 0x41

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 634
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_66:I

    const/16 v5, 0x42

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_67:I

    const/16 v5, 0x43

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 636
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_68:I

    const/16 v5, 0x44

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_69:I

    const/16 v5, 0x45

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 639
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_70:I

    const/16 v5, 0x46

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_71:I

    const/16 v5, 0x47

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 641
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_72:I

    const/16 v5, 0x48

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_73:I

    const/16 v5, 0x49

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 643
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_74:I

    const/16 v5, 0x4a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 644
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_75:I

    const/16 v5, 0x4b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 646
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_84:I

    const/16 v5, 0x54

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_85:I

    const/16 v5, 0x55

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 648
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_86:I

    const/16 v5, 0x56

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_87:I

    const/16 v5, 0x57

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 650
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_88:I

    const/16 v5, 0x58

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 651
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_89:I

    const/16 v5, 0x59

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 653
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_90:I

    const/16 v5, 0x5a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_91:I

    const/16 v5, 0x5b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_92:I

    const/16 v5, 0x5c

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_93:I

    const/16 v5, 0x5d

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_94:I

    const/16 v5, 0x5e

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 658
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_95:I

    const/16 v5, 0x5f

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_96:I

    const/16 v5, 0x60

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_97:I

    const/16 v5, 0x61

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_98:I

    const/16 v5, 0x62

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 662
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_99:I

    const/16 v5, 0x63

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_100:I

    invoke-direct {v3, v4, v7, v11, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_101:I

    const/16 v5, 0x65

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_102:I

    const/16 v5, 0x66

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_103:I

    const/16 v5, 0x67

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_104:I

    const/16 v5, 0x68

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_105:I

    const/16 v5, 0x69

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_106:I

    const/16 v5, 0x6a

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 671
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_107:I

    const/16 v5, 0x6b

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_108:I

    const/16 v5, 0x6c

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_109:I

    const/16 v5, 0x6d

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 675
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_110:I

    const/16 v5, 0x6e

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_111:I

    const/16 v5, 0x6f

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 677
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_112:I

    const/16 v5, 0x70

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 678
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_113:I

    const/16 v5, 0x71

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_114:I

    const/16 v5, 0x72

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_115:I

    const/16 v5, 0x73

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_116:I

    const/16 v5, 0x74

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 682
    invoke-virtual {v1}, Lcom/mergbw/core/bean/SceneGroupData;->getSceneDataList()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/mergbw/core/bean/SceneData;

    sget v4, Lcom/mergbw/core/R$string;->mode_117:I

    const/16 v5, 0x75

    invoke-direct {v3, v4, v7, v5, v10}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 683
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSceneData3()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation

    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 702
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->colorful_breathing:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_3_01:I

    const/16 v4, 0x86

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->mode_2:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_01:I

    const/16 v4, 0x8a

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->forest:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_04:I

    const/16 v4, 0x8c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->ghost:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_05:I

    const/16 v4, 0x8d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 706
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->red_breathing:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_06:I

    const/16 v4, 0x8b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->savannah_sunset:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_10:I

    const/16 v4, 0x8e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 708
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->tropical_twilight:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_08:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0x3c

    const/16 v3, 0xf0

    const/16 v4, 0xff

    invoke-virtual {v1, v4, v2, v3}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 709
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->green_prairie:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_09:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-virtual {v1, v5, v4, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->ruby_glow:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_10:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0x28

    const/16 v3, 0x32

    invoke-virtual {v1, v4, v2, v3}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->aurora:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_11:I

    const/16 v6, 0x8f

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 712
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->red_green_breathing:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_3_02:I

    const/16 v6, 0x92

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->alarm:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_13:I

    const/16 v6, 0x96

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->lake_placid:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_14:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v4}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->red_green_blue:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_3_03:I

    const/16 v6, 0x89

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->sundowner:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_16:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v4, v2, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 717
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->blue_starry_sky:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_17:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-virtual {v1, v5, v5, v4}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 718
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->red_roses:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_18:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->blue_pink_breathing:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_3_04:I

    const/16 v6, 0x90

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->disco:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_20:I

    const/16 v6, 0x95

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 721
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->autumn_gold:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_21:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {v1, v4, v2, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSceneData5()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation

    .line 726
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 727
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->mode_2:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_01:I

    const/16 v4, 0x8a

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 728
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->sunset:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_02:I

    const/16 v4, 0x86

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 729
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->forest:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_04:I

    const/16 v4, 0x8c

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 730
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->ghost:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_05:I

    const/16 v4, 0x8d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 731
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->sunrise:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_06:I

    const/16 v4, 0x8b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->summer_sun:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_07:I

    const/16 v4, 0x8e

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 733
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->tropical_twilight:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_08:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0x3c

    const/16 v3, 0xf0

    const/16 v4, 0xff

    invoke-virtual {v1, v4, v2, v3}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 734
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->green_prairie:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_09:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-virtual {v1, v5, v4, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 735
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->ruby_glow:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_10:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0x28

    const/16 v3, 0x32

    invoke-virtual {v1, v4, v2, v3}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 736
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->aurora:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_11:I

    const/16 v6, 0x8f

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 737
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->savannah_sunset:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_12:I

    const/16 v6, 0x92

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->alarm:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_13:I

    const/16 v6, 0x96

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 739
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->lake_placid:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_14:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v4, v2, v4}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 740
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->neon_lights:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_15:I

    const/16 v6, 0x89

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 741
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->sundowner:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_16:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-virtual {v1, v4, v2, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 742
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->blue_starry_sky:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_17:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-virtual {v1, v5, v5, v4}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 743
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->red_roses:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_18:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-virtual {v1, v4, v5, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 744
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->dating:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_19:I

    const/16 v6, 0x90

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->disco:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_20:I

    const/16 v6, 0x95

    invoke-direct {v1, v2, v3, v6, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 746
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->autumn_gold:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_21:I

    invoke-direct {v1, v2, v3, v5, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->COLOR_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0x5a

    invoke-virtual {v1, v4, v2, v5}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getSceneData6()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation

    .line 762
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 763
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->forest:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_04:I

    const/16 v4, 0x8c

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->ghost:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_05:I

    const/16 v4, 0x8d

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->alarm:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_13:I

    const/16 v4, 0x96

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 767
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->romantic:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_6_07:I

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->DIY_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0xff

    invoke-virtual {v1, v2, v5, v2}, Lcom/mergbw/core/bean/SceneData;->setRGBValue(III)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v5}, Lcom/mergbw/core/bean/SceneData;->setLightPercent(II)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->dating:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_19:I

    const/16 v4, 0x90

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 769
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->sweet:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_6_08:I

    const/16 v4, 0x8b

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 770
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->neon_lights:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_15:I

    const/16 v4, 0x87

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 771
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->aurora:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_5_11:I

    const/16 v4, 0x94

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->carnival:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_type_6_09:I

    const/16 v4, 0x95

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    sget-object v2, Lcom/mergbw/core/RGBMode;->STATIC_MODEL:Lcom/mergbw/core/RGBMode;

    invoke-virtual {v1, v2}, Lcom/mergbw/core/bean/SceneData;->setMode(Lcom/mergbw/core/RGBMode;)Lcom/mergbw/core/bean/SceneData;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getTabList(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/TabItemBean;",
            ">;"
        }
    .end annotation

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x19

    const/16 v2, 0x29

    const/16 v3, 0x1f

    const/16 v4, 0x23

    const/16 v5, 0x15

    const/16 v6, 0xb

    const/16 v7, 0x33

    packed-switch p0, :pswitch_data_0

    .line 284
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->color:I

    invoke-direct {p0, v6, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->scene:I

    invoke-direct {p0, v5, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->music:I

    invoke-direct {p0, v3, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->diy:I

    invoke-direct {p0, v2, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 276
    :pswitch_0
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    const/16 v1, 0x10

    sget v2, Lcom/mergbw/core/R$string;->illuminating:I

    invoke-direct {p0, v1, v2}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    const/16 v1, 0x1a

    sget v2, Lcom/mergbw/core/R$string;->atmosphere:I

    invoke-direct {p0, v1, v2}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->music:I

    invoke-direct {p0, v4, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->white_noise:I

    invoke-direct {p0, v7, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 268
    :pswitch_1
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v2, Lcom/mergbw/core/R$string;->color:I

    invoke-direct {p0, v6, v2}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v2, Lcom/mergbw/core/R$string;->scene:I

    invoke-direct {p0, v1, v2}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->music:I

    invoke-direct {p0, v4, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->white_noise:I

    invoke-direct {p0, v7, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 261
    :pswitch_2
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->color:I

    invoke-direct {p0, v6, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->scene:I

    invoke-direct {p0, v5, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->diy:I

    invoke-direct {p0, v2, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->white_noise:I

    invoke-direct {p0, v7, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :pswitch_3
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    const/16 v2, 0xd

    sget v3, Lcom/mergbw/core/R$string;->color:I

    invoke-direct {p0, v2, v3}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v2, Lcom/mergbw/core/R$string;->scene:I

    invoke-direct {p0, v1, v2}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->music:I

    invoke-direct {p0, v4, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->white_noise:I

    invoke-direct {p0, v7, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 247
    :pswitch_4
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->color:I

    invoke-direct {p0, v6, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->scene:I

    invoke-direct {p0, v5, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->music:I

    invoke-direct {p0, v3, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance p0, Lcom/mergbw/core/bean/TabItemBean;

    sget v1, Lcom/mergbw/core/R$string;->white_noise:I

    invoke-direct {p0, v7, v1}, Lcom/mergbw/core/bean/TabItemBean;-><init>(II)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getTimeStr(II)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hour",
            "minute"
        }
    .end annotation

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-ge p1, v0, :cond_1

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getWhiteNoiseModel()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/bean/SceneData;",
            ">;"
        }
    .end annotation

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 792
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->noise_fan:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_noise_fan:I

    sget v4, Lcom/mergbw/core/R$raw;->fan_sound:I

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->noise_water:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_noise_water:I

    sget v4, Lcom/mergbw/core/R$raw;->water:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 794
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->noise_train:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_noise_train:I

    sget v4, Lcom/mergbw/core/R$raw;->train:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 795
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->noise_bird:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_noise_bird:I

    sget v4, Lcom/mergbw/core/R$raw;->bird:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->noise_fire:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_noise_fire:I

    sget v4, Lcom/mergbw/core/R$raw;->fire:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 797
    new-instance v1, Lcom/mergbw/core/bean/SceneData;

    sget v2, Lcom/mergbw/core/R$string;->noise_rain:I

    sget v3, Lcom/mergbw/core/R$mipmap;->icon_noise_rain:I

    sget v4, Lcom/mergbw/core/R$raw;->rain:I

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mergbw/core/bean/SceneData;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
