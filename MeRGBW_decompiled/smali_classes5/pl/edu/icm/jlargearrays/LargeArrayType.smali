.class public enum Lpl/edu/icm/jlargearrays/LargeArrayType;
.super Ljava/lang/Enum;
.source "LargeArrayType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lpl/edu/icm/jlargearrays/LargeArrayType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum INT:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum LOGIC:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum LONG:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum OBJECT:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum SHORT:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum STRING:Lpl/edu/icm/jlargearrays/LargeArrayType;

.field public static final enum UNSIGNED_BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 37
    new-instance v0, Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-string v1, "LOGIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArrayType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->LOGIC:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 38
    new-instance v1, Lpl/edu/icm/jlargearrays/LargeArrayType$1;

    const-string v3, "BYTE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArrayType$1;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lpl/edu/icm/jlargearrays/LargeArrayType;->BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 54
    new-instance v3, Lpl/edu/icm/jlargearrays/LargeArrayType$2;

    const-string v5, "UNSIGNED_BYTE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lpl/edu/icm/jlargearrays/LargeArrayType$2;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->UNSIGNED_BYTE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 70
    new-instance v5, Lpl/edu/icm/jlargearrays/LargeArrayType$3;

    const-string v7, "SHORT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lpl/edu/icm/jlargearrays/LargeArrayType$3;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lpl/edu/icm/jlargearrays/LargeArrayType;->SHORT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 91
    new-instance v7, Lpl/edu/icm/jlargearrays/LargeArrayType$4;

    const-string v9, "INT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lpl/edu/icm/jlargearrays/LargeArrayType$4;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lpl/edu/icm/jlargearrays/LargeArrayType;->INT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 112
    new-instance v9, Lpl/edu/icm/jlargearrays/LargeArrayType$5;

    const-string v11, "LONG"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lpl/edu/icm/jlargearrays/LargeArrayType$5;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lpl/edu/icm/jlargearrays/LargeArrayType;->LONG:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 133
    new-instance v11, Lpl/edu/icm/jlargearrays/LargeArrayType$6;

    const-string v13, "FLOAT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lpl/edu/icm/jlargearrays/LargeArrayType$6;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lpl/edu/icm/jlargearrays/LargeArrayType;->FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 154
    new-instance v13, Lpl/edu/icm/jlargearrays/LargeArrayType$7;

    const-string v15, "DOUBLE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lpl/edu/icm/jlargearrays/LargeArrayType$7;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lpl/edu/icm/jlargearrays/LargeArrayType;->DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 175
    new-instance v15, Lpl/edu/icm/jlargearrays/LargeArrayType$8;

    const-string v14, "COMPLEX_FLOAT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lpl/edu/icm/jlargearrays/LargeArrayType$8;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 196
    new-instance v14, Lpl/edu/icm/jlargearrays/LargeArrayType$9;

    const-string v12, "COMPLEX_DOUBLE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lpl/edu/icm/jlargearrays/LargeArrayType$9;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 217
    new-instance v12, Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-string v10, "STRING"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lpl/edu/icm/jlargearrays/LargeArrayType;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lpl/edu/icm/jlargearrays/LargeArrayType;->STRING:Lpl/edu/icm/jlargearrays/LargeArrayType;

    .line 218
    new-instance v10, Lpl/edu/icm/jlargearrays/LargeArrayType;

    const-string v8, "OBJECT"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lpl/edu/icm/jlargearrays/LargeArrayType;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lpl/edu/icm/jlargearrays/LargeArrayType;->OBJECT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    const/16 v8, 0xc

    .line 34
    new-array v8, v8, [Lpl/edu/icm/jlargearrays/LargeArrayType;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    const/4 v0, 0x2

    aput-object v3, v8, v0

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v15, v8, v0

    const/16 v0, 0x9

    aput-object v14, v8, v0

    const/16 v0, 0xa

    aput-object v12, v8, v0

    aput-object v10, v8, v6

    sput-object v8, Lpl/edu/icm/jlargearrays/LargeArrayType;->$VALUES:[Lpl/edu/icm/jlargearrays/LargeArrayType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILpl/edu/icm/jlargearrays/LargeArrayType$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lpl/edu/icm/jlargearrays/LargeArrayType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lpl/edu/icm/jlargearrays/LargeArrayType;
    .locals 1

    .line 34
    const-class v0, Lpl/edu/icm/jlargearrays/LargeArrayType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lpl/edu/icm/jlargearrays/LargeArrayType;

    return-object p0
.end method

.method public static values()[Lpl/edu/icm/jlargearrays/LargeArrayType;
    .locals 1

    .line 34
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayType;->$VALUES:[Lpl/edu/icm/jlargearrays/LargeArrayType;

    invoke-virtual {v0}, [Lpl/edu/icm/jlargearrays/LargeArrayType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lpl/edu/icm/jlargearrays/LargeArrayType;

    return-object v0
.end method


# virtual methods
.method public isComplexNumericType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isIntegerNumericType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isNumericType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRealNumericType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sizeOf()J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method
