.class public Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "DeviceAlarmActivity.java"


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

.field private mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;


# direct methods
.method public static synthetic $r8$lambda$-a_F2P9ESgnAsCCkLmh7SEfwOH0(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;Lcom/mergbw/core/ble/BleStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->onConnectStatus(Lcom/mergbw/core/ble/BleStatus;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UlDBwWajw6f8AfSn8fRUnAuqZZ4(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->setResult(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$sIsvZT1FciHx7_ijpwwVhhI2G7Q(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->updateDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private onConnectStatus(Lcom/mergbw/core/ble/BleStatus;)V
    .locals 1

    .line 79
    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->DISCONNECTED:Lcom/mergbw/core/ble/BleStatus;

    if-ne p1, v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->finish()V

    :cond_0
    return-void
.end method

.method private setAlarm()V
    .locals 10

    const/16 v0, 0x8

    .line 187
    new-array v0, v0, [B

    .line 188
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->switchOpen:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 189
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenRepeatTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 190
    array-length v4, v1

    const-string v5, "00"

    const/4 v6, 0x1

    if-lt v4, v6, :cond_1

    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v4

    aget-byte v4, v4, v6

    aput-byte v4, v0, v6

    goto :goto_1

    .line 191
    :cond_1
    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v4

    aget-byte v4, v4, v6

    aput-byte v4, v0, v6

    .line 195
    :goto_1
    array-length v4, v1

    const/4 v7, 0x2

    if-lt v4, v7, :cond_3

    aget-object v4, v1, v6

    invoke-static {v4}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    .line 198
    :cond_2
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v1

    aget-byte v1, v1, v6

    aput-byte v1, v0, v7

    goto :goto_3

    .line 196
    :cond_3
    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v1

    aget-byte v1, v1, v6

    aput-byte v1, v0, v7

    .line 200
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 201
    iget-object v8, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v8, v8, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek7:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    const-string v9, "1"

    if-eqz v8, :cond_4

    move-object v8, v9

    goto :goto_4

    :cond_4
    move-object v8, v4

    :goto_4
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget-object v8, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v8, v8, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek6:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    move-object v8, v9

    goto :goto_5

    :cond_5
    move-object v8, v4

    :goto_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget-object v8, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v8, v8, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek5:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v9

    goto :goto_6

    :cond_6
    move-object v8, v4

    :goto_6
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v8, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v8, v8, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek4:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_7

    move-object v8, v9

    goto :goto_7

    :cond_7
    move-object v8, v4

    :goto_7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v8, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v8, v8, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek3:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_8

    move-object v8, v9

    goto :goto_8

    :cond_8
    move-object v8, v4

    :goto_8
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-object v8, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v8, v8, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek2:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_9

    move-object v8, v9

    goto :goto_9

    :cond_9
    move-object v8, v4

    :goto_9
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    iget-object v8, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v8, v8, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek1:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_a

    move-object v8, v9

    goto :goto_a

    :cond_a
    move-object v8, v4

    :goto_a
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x3

    .line 208
    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->BitToByte(Ljava/lang/String;)B

    move-result v1

    aput-byte v1, v0, v8

    .line 210
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->switchClose:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {v1}, Landroidx/appcompat/widget/SwitchCompat;->isChecked()Z

    move-result v1

    const/4 v8, 0x4

    aput-byte v1, v0, v8

    .line 211
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseRepeatTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 212
    array-length v3, v1

    const/4 v8, 0x5

    if-lt v3, v6, :cond_c

    aget-object v3, v1, v2

    invoke-static {v3}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_b

    .line 215
    :cond_b
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v2

    aget-byte v2, v2, v6

    aput-byte v2, v0, v8

    goto :goto_c

    .line 213
    :cond_c
    :goto_b
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v2

    aget-byte v2, v2, v6

    aput-byte v2, v0, v8

    .line 217
    :goto_c
    array-length v2, v1

    const/4 v3, 0x6

    if-lt v2, v7, :cond_e

    aget-object v2, v1, v6

    invoke-static {v2}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_d

    .line 220
    :cond_d
    aget-object v1, v1, v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v1

    aget-byte v1, v1, v6

    aput-byte v1, v0, v3

    goto :goto_e

    .line 218
    :cond_e
    :goto_d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Lcom/mergbw/core/ble/CommandUtils;->getByteArray(I)[B

    move-result-object v1

    aget-byte v1, v1, v6

    aput-byte v1, v0, v3

    .line 222
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v2, v2, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek7:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_f

    move-object v2, v9

    goto :goto_f

    :cond_f
    move-object v2, v4

    :goto_f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v2, v2, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek6:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_10

    move-object v2, v9

    goto :goto_10

    :cond_10
    move-object v2, v4

    :goto_10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v2, v2, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek5:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_11

    move-object v2, v9

    goto :goto_11

    :cond_11
    move-object v2, v4

    :goto_11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v2, v2, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek4:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_12

    move-object v2, v9

    goto :goto_12

    :cond_12
    move-object v2, v4

    :goto_12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v2, v2, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek3:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object v2, v9

    goto :goto_13

    :cond_13
    move-object v2, v4

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v2, v2, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek2:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_14

    move-object v2, v9

    goto :goto_14

    :cond_14
    move-object v2, v4

    :goto_14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v2, v2, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek1:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object v4, v9

    :cond_15
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    .line 230
    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->BitToByte(Ljava/lang/String;)B

    move-result v1

    aput-byte v1, v0, v2

    .line 231
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    const/16 v2, 0xa

    invoke-static {v2, v0}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->sendData([B)V

    .line 232
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->showWaitDialog()V

    .line 233
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/track/TrackManager;->alarmSettingTrack()V

    .line 234
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/google/GoogleTrackManager;->alarmSettingTrack()V

    return-void
.end method

.method private setCloseEnable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseTitle:Landroid/widget/TextView;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 159
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseTime:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 160
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseRepeat:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 161
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseRepeatTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 162
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->layoutCloseTime:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda11;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseTitle:Landroid/widget/TextView;

    const v1, 0x3f0a3d71    # 0.54f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 172
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseTime:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 173
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseRepeat:Landroid/widget/TextView;

    const v1, 0x3ed70a3d    # 0.42f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 174
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseRepeatTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 175
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->layoutCloseTime:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 179
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek3:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 180
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek4:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek5:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek6:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek7:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method private setOpenEnable(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenTitle:Landroid/widget/TextView;

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 129
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenTime:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 130
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenRepeat:Landroid/widget/TextView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 131
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenRepeatTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 132
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->layoutOpenTime:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenTitle:Landroid/widget/TextView;

    const v1, 0x3f0a3d71    # 0.54f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 141
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenTime:Landroid/widget/TextView;

    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 142
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenRepeat:Landroid/widget/TextView;

    const v1, 0x3ed70a3d    # 0.42f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 143
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenRepeatTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 144
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->layoutOpenTime:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    :goto_0
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 147
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek2:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek3:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek4:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 150
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek5:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek6:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 152
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek7:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    return-void
.end method

.method private setResult(Z)V
    .locals 4

    .line 115
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda10;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;Z)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private subscribeUI()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    new-instance v1, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda13;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->setConnectStatusObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 73
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    new-instance v1, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->setDeviceViewDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 74
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->initData(Landroid/content/Intent;)V

    .line 75
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    new-instance v1, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->setSetResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private updateDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 11

    .line 86
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    .line 88
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 89
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 90
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->switchOpen:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->isSet()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 91
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/bean/AlarmDataBean;->isSet()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->setOpenEnable(Z)V

    .line 92
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenRepeatTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getTimeHour()I

    move-result v1

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/core/bean/AlarmDataBean;->getTimeMinute()I

    move-result v2

    invoke-static {v1, v2}, Lcom/mergbw/core/utils/ViewDataUtils;->getTimeStr(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek1:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    const/4 v2, 0x7

    aget-byte v1, v1, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 94
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek2:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    const/4 v5, 0x6

    aget-byte v1, v1, v5

    if-ne v1, v4, :cond_1

    move v1, v4

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek3:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    const/4 v6, 0x5

    aget-byte v1, v1, v6

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 96
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek4:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    const/4 v7, 0x4

    aget-byte v1, v1, v7

    if-ne v1, v4, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 97
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek5:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    const/4 v8, 0x3

    aget-byte v1, v1, v8

    if-ne v1, v4, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v3

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek6:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    const/4 v9, 0x2

    aget-byte v1, v1, v9

    if-ne v1, v4, :cond_5

    move v1, v4

    goto :goto_5

    :cond_5
    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 99
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek7:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    aget-byte v1, v1, v4

    if-ne v1, v4, :cond_6

    move v1, v4

    goto :goto_6

    :cond_6
    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->switchClose:Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->isSet()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 102
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/bean/AlarmDataBean;->isSet()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->setCloseEnable(Z)V

    .line 103
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseRepeatTime:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getTimeHour()I

    move-result v1

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mergbw/core/bean/AlarmDataBean;->getTimeMinute()I

    move-result v10

    invoke-static {v1, v10}, Lcom/mergbw/core/utils/ViewDataUtils;->getTimeStr(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek1:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    aget-byte v1, v1, v2

    if-ne v1, v4, :cond_7

    move v1, v4

    goto :goto_7

    :cond_7
    move v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek2:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    aget-byte v1, v1, v5

    if-ne v1, v4, :cond_8

    move v1, v4

    goto :goto_8

    :cond_8
    move v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 106
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek3:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    aget-byte v1, v1, v6

    if-ne v1, v4, :cond_9

    move v1, v4

    goto :goto_9

    :cond_9
    move v1, v3

    :goto_9
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 107
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek4:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    aget-byte v1, v1, v7

    if-ne v1, v4, :cond_a

    move v1, v4

    goto :goto_a

    :cond_a
    move v1, v3

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek5:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    aget-byte v1, v1, v8

    if-ne v1, v4, :cond_b

    move v1, v4

    goto :goto_b

    :cond_b
    move v1, v3

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 109
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek6:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object v1

    aget-byte v1, v1, v9

    if-ne v1, v4, :cond_c

    move v1, v4

    goto :goto_c

    :cond_c
    move v1, v3

    :goto_c
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 110
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek7:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/core/bean/AlarmDataBean;->getWeekRepeat()[B

    move-result-object p1

    aget-byte p1, p1, v4

    if-ne p1, v4, :cond_d

    move v3, v4

    :cond_d
    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_e
    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 53
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->switchOpen:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 55
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->switchClose:Landroidx/appcompat/widget/SwitchCompat;

    new-instance v0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 56
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->btnSave:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek1:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda8;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 64
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek1:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda9;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(Landroid/view/View;)V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 54
    invoke-direct {p0, p2}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->setOpenEnable(Z)V

    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 55
    invoke-direct {p0, p2}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->setCloseEnable(Z)V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->setAlarm()V

    return-void
.end method

.method synthetic lambda$initViews$4$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 61
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbOpenWeek1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method synthetic lambda$initViews$5$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek1:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->getWidth()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 67
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->cbCloseWeek1:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method synthetic lambda$setCloseEnable$10$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(Landroid/view/View;)V
    .locals 4

    .line 163
    new-instance p1, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mContext:Landroid/content/Context;

    .line 164
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->getDeviceInfo()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->getDeviceInfo()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getTimeHour()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 165
    :goto_0
    iget-object v3, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-virtual {v3}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->getDeviceInfo()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-virtual {v2}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->getDeviceInfo()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/core/bean/AlarmDataBean;->getTimeMinute()I

    move-result v2

    :cond_1
    new-instance v3, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;-><init>(Landroid/content/Context;IILcom/mergbw/android/ui/view/ChooseTimePopWindow$OnTimeChooseListener;)V

    .line 167
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method synthetic lambda$setCloseEnable$9$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(II)V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvCloseRepeatTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/mergbw/core/utils/ViewDataUtils;->getTimeStr(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$setOpenEnable$7$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(II)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->tvOpenRepeatTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/mergbw/core/utils/ViewDataUtils;->getTimeStr(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method synthetic lambda$setOpenEnable$8$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(Landroid/view/View;)V
    .locals 4

    .line 133
    new-instance p1, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mContext:Landroid/content/Context;

    .line 134
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->getDeviceInfo()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-virtual {v1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->getDeviceInfo()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/core/bean/AlarmDataBean;->getTimeHour()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 135
    :goto_0
    iget-object v3, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-virtual {v3}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->getDeviceInfo()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-virtual {v2}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->getDeviceInfo()Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/core/bean/AlarmDataBean;->getTimeMinute()I

    move-result v2

    :cond_1
    new-instance v3, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda12;

    invoke-direct {v3, p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity$$ExternalSyntheticLambda12;-><init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;)V

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/mergbw/android/ui/view/ChooseTimePopWindow;-><init>(Landroid/content/Context;IILcom/mergbw/android/ui/view/ChooseTimePopWindow$OnTimeChooseListener;)V

    .line 137
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    invoke-virtual {v0}, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->showPopWindow(Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method

.method synthetic lambda$setResult$6$com-mergbw-android-ui-deviceAlarm-DeviceAlarmActivity(Z)V
    .locals 0

    .line 116
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->hideWaitDialog()V

    if-eqz p1, :cond_0

    .line 118
    sget p1, Lcom/mergbw/core/R$string;->set_success:I

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_0
    sget p1, Lcom/mergbw/core/R$string;->set_failed:I

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 42
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mViewModel:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    .line 44
    invoke-virtual {p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    .line 45
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->setContentView(Landroid/view/View;)V

    .line 46
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityDeviceAlarmBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->initViews(Landroid/view/View;)V

    .line 47
    invoke-direct {p0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmActivity;->subscribeUI()V

    return-void
.end method
