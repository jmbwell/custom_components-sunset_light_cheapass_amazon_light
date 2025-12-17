.class public final enum Lcom/mergbw/core/track/TrackConstants$Page;
.super Ljava/lang/Enum;
.source "TrackConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mergbw/core/track/TrackConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Page"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mergbw/core/track/TrackConstants$Page;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mergbw/core/track/TrackConstants$Page;

.field public static final enum ADD_DEVICE_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

.field public static final enum ALARM_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

.field public static final enum APPLICATION:Lcom/mergbw/core/track/TrackConstants$Page;

.field public static final enum DEVICE_DETAIL_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

.field public static final enum DEVICE_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

.field public static final enum GROUP_DETAIL_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

.field public static final enum GROUP_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

.field public static final enum MAIN_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;


# instance fields
.field public final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/mergbw/core/track/TrackConstants$Page;
    .locals 3

    const/16 v0, 0x8

    .line 23
    new-array v0, v0, [Lcom/mergbw/core/track/TrackConstants$Page;

    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->APPLICATION:Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->MAIN_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->ADD_DEVICE_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->DEVICE_DETAIL_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->ALARM_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->DEVICE_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->GROUP_DETAIL_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->GROUP_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v1, 0x0

    const-string v2, "application"

    const-string v3, "APPLICATION"

    invoke-direct {v0, v3, v1, v2}, Lcom/mergbw/core/track/TrackConstants$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$Page;->APPLICATION:Lcom/mergbw/core/track/TrackConstants$Page;

    .line 25
    new-instance v0, Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v1, 0x1

    const-string v2, "main_page"

    const-string v3, "MAIN_PAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mergbw/core/track/TrackConstants$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$Page;->MAIN_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    .line 26
    new-instance v0, Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v1, 0x2

    const-string v2, "add_device_page"

    const-string v3, "ADD_DEVICE_PAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mergbw/core/track/TrackConstants$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$Page;->ADD_DEVICE_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    .line 27
    new-instance v0, Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v1, 0x3

    const-string v2, "device_detail_page"

    const-string v3, "DEVICE_DETAIL_PAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mergbw/core/track/TrackConstants$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$Page;->DEVICE_DETAIL_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    .line 28
    new-instance v0, Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v1, 0x4

    const-string v2, "alarm_setting_page"

    const-string v3, "ALARM_SETTING_PAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mergbw/core/track/TrackConstants$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$Page;->ALARM_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    .line 29
    new-instance v0, Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v1, 0x5

    const-string v2, "device_setting_page"

    const-string v3, "DEVICE_SETTING_PAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mergbw/core/track/TrackConstants$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$Page;->DEVICE_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    .line 30
    new-instance v0, Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v1, 0x6

    const-string v2, "group_detail_page"

    const-string v3, "GROUP_DETAIL_PAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mergbw/core/track/TrackConstants$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$Page;->GROUP_DETAIL_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    .line 31
    new-instance v0, Lcom/mergbw/core/track/TrackConstants$Page;

    const/4 v1, 0x7

    const-string v2, "group_setting_page"

    const-string v3, "GROUP_SETTING_PAGE"

    invoke-direct {v0, v3, v1, v2}, Lcom/mergbw/core/track/TrackConstants$Page;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$Page;->GROUP_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    .line 23
    invoke-static {}, Lcom/mergbw/core/track/TrackConstants$Page;->$values()[Lcom/mergbw/core/track/TrackConstants$Page;

    move-result-object v0

    sput-object v0, Lcom/mergbw/core/track/TrackConstants$Page;->$VALUES:[Lcom/mergbw/core/track/TrackConstants$Page;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mergbw/core/track/TrackConstants$Page;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 23
    const-class v0, Lcom/mergbw/core/track/TrackConstants$Page;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mergbw/core/track/TrackConstants$Page;

    return-object p0
.end method

.method public static values()[Lcom/mergbw/core/track/TrackConstants$Page;
    .locals 1

    .line 23
    sget-object v0, Lcom/mergbw/core/track/TrackConstants$Page;->$VALUES:[Lcom/mergbw/core/track/TrackConstants$Page;

    invoke-virtual {v0}, [Lcom/mergbw/core/track/TrackConstants$Page;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mergbw/core/track/TrackConstants$Page;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    return-object v0
.end method
