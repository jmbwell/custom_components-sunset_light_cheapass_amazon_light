.class public Lcom/mergbw/android/task/SortDeviceDataTask;
.super Ljava/lang/Object;
.source "SortDeviceDataTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mDeviceDataPresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/task/SortDeviceDataTask;Ljava/util/List;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/mergbw/android/task/SortDeviceDataTask;->sortDeviceData(Ljava/util/List;)V

    return-void
.end method

.method private sortDeviceData(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 50
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 53
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result v2

    const-string v3, "TG609"

    const-string v4, "TG202"

    const-string v5, "LT-06"

    const/4 v6, 0x0

    const-string v7, "TG201"

    const/4 v8, 0x2

    const/16 v9, 0x12

    const/16 v10, 0x10

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x1

    if-nez v2, :cond_15

    .line 56
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 57
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v14

    const/4 v15, -0x1

    sparse-switch v14, :sswitch_data_0

    :goto_1
    move v6, v15

    goto/16 :goto_2

    :sswitch_0
    const-string v6, "LT-06A\u0000\u0000\u0000\u0000\u0000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v6, 0xd

    goto/16 :goto_2

    :sswitch_1
    const-string v6, "TG609\u0000\u0000\u0000\u0000\u0000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/16 v6, 0xc

    goto/16 :goto_2

    :sswitch_2
    const-string v6, "NH69-LED\u0000\u0000\u0000\u0000\u0000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v6, 0xb

    goto/16 :goto_2

    :sswitch_3
    const-string v6, "TG610"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v6, 0xa

    goto/16 :goto_2

    :sswitch_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_5
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_6
    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_6
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v6, 0x7

    goto :goto_2

    :sswitch_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_1

    :cond_8
    move v6, v11

    goto :goto_2

    :sswitch_8
    const-string v6, "NH69-LED"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    move v6, v12

    goto :goto_2

    :sswitch_9
    const-string v6, "TG202\u0000\u0000\u0000\u0000\u0000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_a
    const-string v6, "TG201\u0000\u0000\u0000\u0000\u0000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_1

    :cond_b
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_b
    const-string v6, "LT-06\u0000\u0000\u0000\u0000\u0000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto/16 :goto_1

    :cond_c
    move v6, v8

    goto :goto_2

    :sswitch_c
    const-string v6, "TG610\u0000\u0000\u0000\u0000\u0000"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto/16 :goto_1

    :cond_d
    move v6, v13

    goto :goto_2

    :sswitch_d
    const-string v14, "LT-06A"

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto/16 :goto_1

    :cond_e
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 82
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v2, v13, :cond_f

    goto :goto_3

    .line 84
    :cond_f
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v2, v12, :cond_10

    goto :goto_4

    .line 86
    :cond_10
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v2, v11, :cond_12

    goto :goto_5

    :pswitch_0
    move v2, v8

    goto :goto_6

    .line 94
    :cond_11
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v2, v13, :cond_13

    :cond_12
    :goto_3
    :pswitch_1
    move v2, v13

    goto :goto_6

    .line 96
    :cond_13
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v2, v12, :cond_14

    :goto_4
    :pswitch_2
    move v2, v10

    goto :goto_6

    .line 98
    :cond_14
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v2, v11, :cond_12

    :goto_5
    :pswitch_3
    move v2, v9

    .line 104
    :goto_6
    invoke-virtual {v1, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setFactoryID(I)V

    move v6, v13

    .line 109
    :cond_15
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 112
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v2, v13, :cond_17

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result v2

    if-ne v2, v13, :cond_17

    :cond_16
    move-object v3, v7

    goto :goto_7

    .line 114
    :cond_17
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v2, v13, :cond_18

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result v2

    if-ne v2, v8, :cond_18

    goto :goto_7

    .line 116
    :cond_18
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v2, v12, :cond_19

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result v2

    if-ne v2, v10, :cond_19

    move-object v3, v5

    goto :goto_7

    .line 118
    :cond_19
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    if-ne v2, v11, :cond_16

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result v2

    if-ne v2, v9, :cond_16

    move-object v3, v4

    .line 123
    :goto_7
    invoke-virtual {v1, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceModel(Ljava/lang/String;)V

    goto :goto_8

    :cond_1a
    move v13, v6

    :goto_8
    move-object/from16 v2, p0

    if-eqz v13, :cond_0

    .line 128
    iget-object v3, v2, Lcom/mergbw/android/task/SortDeviceDataTask;->mDeviceDataPresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    invoke-virtual {v3, v1}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->updateDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    goto/16 :goto_0

    :cond_1b
    move-object/from16 v2, p0

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x799acaca -> :sswitch_d
        -0x5d72ac42 -> :sswitch_c
        -0x49d84d8b -> :sswitch_b
        -0x3028c260 -> :sswitch_a
        -0x2e73e9c1 -> :sswitch_9
        -0x194521e5 -> :sswitch_8
        0x455d86b -> :sswitch_7
        0x4c0be60 -> :sswitch_6
        0x4c0be61 -> :sswitch_5
        0x4c0cd6c -> :sswitch_4
        0x4c0cd82 -> :sswitch_3
        0x3f72bac5 -> :sswitch_2
        0x7d02b614 -> :sswitch_1
        0x7db99c8a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 16
    new-instance v0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    new-instance v1, Lcom/mergbw/android/task/SortDeviceDataTask$1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/task/SortDeviceDataTask$1;-><init>(Lcom/mergbw/android/task/SortDeviceDataTask;)V

    invoke-direct {v0, v1}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;)V

    iput-object v0, p0, Lcom/mergbw/android/task/SortDeviceDataTask;->mDeviceDataPresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    .line 46
    invoke-virtual {v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->getDeviceList2()V

    return-void
.end method
