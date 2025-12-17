.class public Lb/a;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "SourceFile"


# static fields
.field private static final w:Ljava/lang/String; = "a"


# instance fields
.field private a:Lb/c;

.field private b:La/a;

.field private c:La/b;

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:Ljava/util/List;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:I

.field private p:Z

.field private q:I

.field private r:I

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field public v:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lb/a;->d:I

    .line 10
    iput v0, p0, Lb/a;->e:I

    .line 11
    iput v0, p0, Lb/a;->f:I

    const-wide/16 v0, 0x0

    .line 12
    iput-wide v0, p0, Lb/a;->g:J

    const/4 v0, 0x3

    .line 22
    iput v0, p0, Lb/a;->m:I

    const/4 v0, -0x1

    .line 28
    iput v0, p0, Lb/a;->q:I

    .line 29
    iput v0, p0, Lb/a;->r:I

    return-void
.end method

.method private a()V
    .locals 3

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lb/a;->d:I

    .line 10
    iput v0, p0, Lb/a;->e:I

    .line 11
    iput v0, p0, Lb/a;->f:I

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lb/a;->g:J

    const/4 v1, 0x0

    .line 14
    iput-object v1, p0, Lb/a;->h:Ljava/util/List;

    const/4 v1, 0x0

    .line 16
    iput v1, p0, Lb/a;->l:F

    .line 18
    iput-boolean v0, p0, Lb/a;->p:Z

    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    .line 57
    sget-object v0, Lb/a;->w:Ljava/lang/String;

    const-string v1, "retry block:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget v0, p0, Lb/a;->o:I

    iget v1, p0, Lb/a;->m:I

    if-ge v0, v1, :cond_0

    .line 60
    iget p2, p0, Lb/a;->e:I

    iput p2, p0, Lb/a;->r:I

    .line 61
    iget p2, p0, Lb/a;->d:I

    iput p2, p0, Lb/a;->q:I

    const/4 p2, 0x1

    .line 62
    iput-boolean p2, p0, Lb/a;->s:Z

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lb/a;->f:I

    .line 65
    iget-object v0, p0, Lb/a;->b:La/a;

    invoke-virtual {v0}, La/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lb/a;->d:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c;

    invoke-virtual {v0}, La/c;->b()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lb/a;->e:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lb/a;->h:Ljava/util/List;

    .line 66
    iget v1, p0, Lb/a;->f:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;)V

    .line 68
    iget p1, p0, Lb/a;->o:I

    add-int/2addr p1, p2

    iput p1, p0, Lb/a;->o:I

    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lb/a;->a:Lb/c;

    invoke-interface {p1, p2}, Lb/c;->onError(I)V

    :goto_0
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;La/a;)V
    .locals 1

    .line 44
    iget-boolean v0, p0, Lb/a;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 48
    :cond_0
    invoke-static {p1, p2}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;La/a;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 50
    iget-object p1, p0, Lb/a;->a:Lb/c;

    const/16 p2, 0x3eb

    invoke-interface {p1, p2}, Lb/c;->onError(I)V

    :cond_1
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;La/a;IJ)V
    .locals 7

    .line 26
    iget-boolean v0, p0, Lb/a;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {p2}, La/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/c;

    .line 32
    invoke-virtual {v0}, La/c;->a()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    const-wide/32 v5, 0x11000000

    cmp-long v1, v5, v3

    if-gtz v1, :cond_1

    invoke-virtual {v0}, La/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v3

    const-wide/32 v5, 0x1107ffff

    cmp-long v1, v3, v5

    if-gtz v1, :cond_1

    .line 33
    invoke-virtual {v0}, La/c;->a()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide p4

    .line 36
    :cond_1
    iget-object v0, p0, Lb/a;->c:La/b;

    sget-object v1, La/b;->b:La/b;

    if-ne v0, v1, :cond_2

    const-wide/16 p4, 0x0

    .line 37
    iput-wide p4, p0, Lb/a;->g:J

    .line 41
    :cond_2
    invoke-static {p1, p2, p3, p4, p5}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;La/a;IJ)Z

    move-result p1

    if-nez p1, :cond_3

    .line 43
    iget-object p1, p0, Lb/a;->a:Lb/c;

    const/16 p2, 0x3eb

    invoke-interface {p1, p2}, Lb/c;->onError(I)V

    :cond_3
    return-void
.end method

.method private a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;)V
    .locals 1

    .line 19
    iget-boolean v0, p0, Lb/a;->p:Z

    if-eqz v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-static {p1, p2}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 25
    iget-object p1, p0, Lb/a;->a:Lb/c;

    const/16 p2, 0x3ea

    invoke-interface {p1, p2}, Lb/c;->onError(I)V

    :cond_1
    return-void
.end method

.method private b(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 2

    .line 2
    sget-object v0, Lb/a;->w:Ljava/lang/String;

    const-string v1, "retryCmd: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget v0, p0, Lb/a;->n:I

    iget v1, p0, Lb/a;->m:I

    if-ge v0, v1, :cond_0

    .line 5
    iget-object p2, p0, Lb/a;->h:Ljava/util/List;

    iget v0, p0, Lb/a;->f:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;)V

    .line 7
    iget p1, p0, Lb/a;->n:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/a;->n:I

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lb/a;->a:Lb/c;

    invoke-interface {p1, p2}, Lb/c;->onError(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 8
    iput p1, p0, Lb/a;->m:I

    return-void
.end method

.method public a(La/a;La/b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lb/a;->b:La/a;

    .line 3
    iput-object p2, p0, Lb/a;->c:La/b;

    .line 5
    invoke-virtual {p1}, La/a;->b()J

    move-result-wide p1

    long-to-float p1, p1

    iput p1, p0, Lb/a;->k:F

    .line 7
    invoke-direct {p0}, Lb/a;->a()V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGatt;)V
    .locals 4

    .line 51
    invoke-static {}, Lc/b;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/a;->t:Ljava/lang/String;

    .line 52
    iget-object v1, p0, Lb/a;->v:Ljava/lang/String;

    invoke-static {v0, v1}, Lc/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {p1}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "06"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "05"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v2}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method

.method public a(Lb/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a;->a:Lb/c;

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a;->p:Z

    return-void
.end method

.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    invoke-static {v1}, Lc/d;->b([B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lb/a;->j:Ljava/lang/String;

    .line 3
    const-string v1, "5833ff03-9b8b-5191-6142-22a4536ef123"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 4
    sget-object v0, Lb/a;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6536\u5230\u7279\u5f81\u503c:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    invoke-static {p2}, Lc/d;->b([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lb/a;->i:Z

    .line 8
    iget-object v1, p0, Lb/a;->j:Ljava/lang/String;

    const-string v2, "0087"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 9
    iget v0, p0, Lb/a;->o:I

    if-lez v0, :cond_0

    .line 10
    iput v2, p0, Lb/a;->o:I

    .line 12
    :cond_0
    iget v0, p0, Lb/a;->e:I

    add-int/2addr v0, p2

    iput v0, p0, Lb/a;->e:I

    .line 13
    iput v2, p0, Lb/a;->f:I

    .line 14
    iget-object p2, p0, Lb/a;->b:La/a;

    invoke-virtual {p2}, La/a;->c()Ljava/util/ArrayList;

    move-result-object p2

    iget v1, p0, Lb/a;->d:I

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La/c;

    invoke-virtual {p2}, La/c;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v0, p2, :cond_14

    .line 15
    iget-object p2, p0, Lb/a;->b:La/a;

    invoke-virtual {p2}, La/a;->c()Ljava/util/ArrayList;

    move-result-object p2

    iget v0, p0, Lb/a;->d:I

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La/c;

    invoke-virtual {p2}, La/c;->b()Ljava/util/List;

    move-result-object p2

    iget v0, p0, Lb/a;->e:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lb/a;->h:Ljava/util/List;

    .line 16
    iget v0, p0, Lb/a;->f:I

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 19
    :cond_1
    iget-object v1, p0, Lb/a;->j:Ljava/lang/String;

    const-string v3, "0085"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 20
    iget v0, p0, Lb/a;->d:I

    add-int/2addr v0, p2

    iput v0, p0, Lb/a;->d:I

    .line 21
    iput v2, p0, Lb/a;->e:I

    .line 22
    iget-object v1, p0, Lb/a;->b:La/a;

    invoke-virtual {v1}, La/a;->c()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_14

    .line 23
    iget-object v0, p0, Lb/a;->c:La/b;

    sget-object v1, La/b;->a:La/b;

    if-eq v0, v1, :cond_2

    sget-object v1, La/b;->c:La/b;

    if-ne v0, v1, :cond_5

    .line 25
    :cond_2
    iget-object v0, p0, Lb/a;->b:La/a;

    invoke-virtual {v0}, La/a;->c()Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lb/a;->d:I

    sub-int/2addr v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La/c;

    .line 27
    invoke-virtual {p2}, La/c;->a()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/32 v4, 0x11000000

    cmp-long v0, v4, v2

    if-gtz v0, :cond_3

    invoke-virtual {p2}, La/c;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/32 v2, 0x1107ffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_5

    .line 28
    :cond_3
    iget-object v0, p0, Lb/a;->b:La/a;

    invoke-virtual {v0}, La/a;->d()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hexe16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 29
    iget-wide v0, p0, Lb/a;->g:J

    invoke-virtual {p2}, La/c;->d()I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/a;->g:J

    goto :goto_0

    .line 31
    :cond_4
    iget-wide v0, p0, Lb/a;->g:J

    invoke-virtual {p2}, La/c;->d()I

    move-result p2

    int-to-long v2, p2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lb/a;->g:J

    .line 36
    :cond_5
    :goto_0
    iget-object v4, p0, Lb/a;->b:La/a;

    iget v5, p0, Lb/a;->d:I

    iget-wide v6, p0, Lb/a;->g:J

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;La/a;IJ)V

    goto/16 :goto_2

    .line 39
    :cond_6
    iget-object p2, p0, Lb/a;->j:Ljava/lang/String;

    const-string v1, "0083"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 40
    iget-object p1, p0, Lb/a;->c:La/b;

    sget-object p2, La/b;->a:La/b;

    if-eq p1, p2, :cond_8

    sget-object p2, La/b;->c:La/b;

    if-ne p1, p2, :cond_7

    goto :goto_1

    .line 42
    :cond_7
    sget-object p2, La/b;->b:La/b;

    if-ne p1, p2, :cond_14

    .line 43
    iget-object p1, p0, Lb/a;->a:Lb/c;

    invoke-interface {p1}, Lb/c;->onResourceFinish()V

    goto/16 :goto_2

    .line 44
    :cond_8
    :goto_1
    iget-object p1, p0, Lb/a;->a:Lb/c;

    invoke-interface {p1}, Lb/c;->onOTAFinish()V

    goto/16 :goto_2

    .line 49
    :cond_9
    iget-object p2, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v1, "008a"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 50
    iget-object p1, p0, Lb/a;->a:Lb/c;

    invoke-interface {p1}, Lb/c;->a()V

    goto/16 :goto_2

    .line 53
    :cond_a
    iget-object p2, p0, Lb/a;->j:Ljava/lang/String;

    const-string v1, "00"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 54
    const-string p1, "========111111"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 59
    :cond_b
    iget-object p2, p0, Lb/a;->j:Ljava/lang/String;

    const-string v1, "6887"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v1, 0x3ed

    if-eqz p2, :cond_c

    .line 60
    iget-boolean p2, p0, Lb/a;->p:Z

    if-nez p2, :cond_14

    .line 61
    invoke-direct {p0, p1, v1}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;I)V

    goto/16 :goto_2

    .line 63
    :cond_c
    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    const-string p2, "0081"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    const-string p2, "0084"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    const-string p2, "0089"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    goto/16 :goto_2

    .line 65
    :cond_d
    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 p2, 0x22

    if-ne p1, p2, :cond_e

    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    const-string v2, "71"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 66
    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a;->u:Ljava/lang/String;

    goto/16 :goto_2

    .line 69
    :cond_e
    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, p2, :cond_f

    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    const-string v2, "72"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_2

    .line 71
    :cond_f
    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, p2, :cond_10

    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    const-string v2, "73"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    goto :goto_2

    .line 73
    :cond_10
    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, p2, :cond_11

    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    const-string v2, "8B"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_2

    .line 75
    :cond_11
    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, p2, :cond_12

    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    const-string v2, "8C"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_2

    .line 77
    :cond_12
    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-ne p1, p2, :cond_13

    iget-object p1, p0, Lb/a;->j:Ljava/lang/String;

    const-string p2, "8D"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_13

    goto :goto_2

    .line 80
    :cond_13
    iget-object p1, p0, Lb/a;->a:Lb/c;

    invoke-interface {p1, v1}, Lb/c;->onError(I)V

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "error:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_2
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 10

    .line 1
    sget-object v0, Lb/a;->w:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCharacteristicWrite: \u6570\u636e\u53d1\u9001\u6210\u529f\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5833ff02-9b8b-5191-6142-22a4536ef123"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_10

    .line 4
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v1, "0081"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lb/a;->i:Z

    if-eqz p3, :cond_2

    .line 6
    iget-object p3, p0, Lb/a;->c:La/b;

    sget-object v1, La/b;->a:La/b;

    if-eq p3, v1, :cond_1

    sget-object v1, La/b;->c:La/b;

    if-ne p3, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    sget-object v1, La/b;->b:La/b;

    if-ne p3, v1, :cond_4

    .line 10
    iget-object p3, p0, Lb/a;->b:La/a;

    invoke-direct {p0, p1, p3}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;La/a;)V

    goto :goto_1

    .line 11
    :cond_1
    :goto_0
    iget-object v6, p0, Lb/a;->b:La/a;

    iget v7, p0, Lb/a;->d:I

    iget-wide v8, p0, Lb/a;->g:J

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;La/a;IJ)V

    .line 12
    iput v3, p0, Lb/a;->e:I

    goto :goto_1

    .line 19
    :cond_2
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v1, "0084"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-boolean p3, p0, Lb/a;->i:Z

    if-eqz p3, :cond_3

    .line 20
    iput v3, p0, Lb/a;->f:I

    .line 22
    iget-object p3, p0, Lb/a;->b:La/a;

    invoke-virtual {p3}, La/a;->c()Ljava/util/ArrayList;

    move-result-object p3

    iget v1, p0, Lb/a;->d:I

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, La/c;

    invoke-virtual {p3}, La/c;->b()Ljava/util/List;

    move-result-object p3

    iget v1, p0, Lb/a;->e:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    iput-object p3, p0, Lb/a;->h:Ljava/util/List;

    .line 24
    iget v1, p0, Lb/a;->f:I

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_3
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v1, "0089"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 26
    iget-object v6, p0, Lb/a;->b:La/a;

    iget v7, p0, Lb/a;->d:I

    iget-wide v8, p0, Lb/a;->g:J

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;La/a;IJ)V

    .line 27
    iput v3, p0, Lb/a;->e:I

    .line 29
    :cond_4
    :goto_1
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v1, "0102"

    const/4 v4, 0x2

    const/16 v5, 0x22

    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, v5, :cond_5

    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v6, "71"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 30
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lb/a;->u:Ljava/lang/String;

    .line 31
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v4, "06"

    invoke-direct {p3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lb/a;->t:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v2}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 32
    :cond_5
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v6, "07"

    const-string v7, "responseSecurity: AES\u52a0\u5bc6\u9a8c\u8bc1\u5931\u8d25"

    const-string v8, "OTAUtils"

    if-eqz p3, :cond_7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, v5, :cond_7

    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v9, "72"

    invoke-virtual {p3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 33
    iget-object p3, p0, Lb/a;->u:Ljava/lang/String;

    iget-object v5, p0, Lb/a;->v:Ljava/lang/String;

    invoke-static {p3, v5}, Lc/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 34
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "onCharacteristicWrite: "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " :"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v5, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 36
    iget-object v4, p0, Lb/a;->t:Ljava/lang/String;

    invoke-static {p3, v4}, Lc/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 37
    iget-object v4, p0, Lb/a;->v:Ljava/lang/String;

    invoke-static {p3, v4}, Lc/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 38
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v2}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 40
    :cond_6
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 42
    :cond_7
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, v5, :cond_8

    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v9, "73"

    invoke-virtual {p3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 43
    invoke-static {p1, v1, v2}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    .line 44
    iput-object v1, p0, Lb/a;->j:Ljava/lang/String;

    goto/16 :goto_2

    .line 45
    :cond_8
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, v5, :cond_9

    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v9, "8B"

    invoke-virtual {p3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 46
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lb/a;->u:Ljava/lang/String;

    .line 47
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lb/a;->t:Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v2}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    goto/16 :goto_2

    .line 48
    :cond_9
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    if-eqz p3, :cond_b

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, v5, :cond_b

    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v6, "8C"

    invoke-virtual {p3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 49
    iget-object p3, p0, Lb/a;->u:Ljava/lang/String;

    iget-object v5, p0, Lb/a;->v:Ljava/lang/String;

    invoke-static {p3, v5}, Lc/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 50
    iget-object v5, p0, Lb/a;->j:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 51
    iget-object v4, p0, Lb/a;->t:Ljava/lang/String;

    invoke-static {p3, v4}, Lc/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 52
    iget-object v4, p0, Lb/a;->v:Ljava/lang/String;

    invoke-static {p3, v4}, Lc/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "08"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, v2}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    goto :goto_2

    .line 55
    :cond_a
    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 57
    :cond_b
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ne p3, v5, :cond_c

    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    const-string v2, "8D"

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 58
    iget-object p1, p0, Lb/a;->a:Lb/c;

    invoke-interface {p1}, Lb/c;->onStartSecurityData()V

    goto :goto_2

    .line 59
    :cond_c
    iget-object p3, p0, Lb/a;->j:Ljava/lang/String;

    if-eqz p3, :cond_d

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_d

    .line 60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 63
    :cond_d
    :goto_2
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lc/d;->b([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 64
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lc/d;->b([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0103"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 66
    :cond_e
    const-string p1, "start ota or resource"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_f
    iput-boolean v3, p0, Lb/a;->i:Z

    goto :goto_4

    .line 71
    :cond_10
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "5833ff04-9b8b-5191-6142-22a4536ef123"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-nez p3, :cond_14

    .line 75
    iget p3, p0, Lb/a;->n:I

    if-lez p3, :cond_11

    .line 76
    iput v3, p0, Lb/a;->n:I

    .line 79
    :cond_11
    iget p3, p0, Lb/a;->q:I

    iget v0, p0, Lb/a;->d:I

    if-ne p3, v0, :cond_12

    iget p3, p0, Lb/a;->r:I

    iget v0, p0, Lb/a;->e:I

    if-ne p3, v0, :cond_12

    goto :goto_3

    .line 82
    :cond_12
    iget-boolean p3, p0, Lb/a;->s:Z

    if-eqz p3, :cond_13

    .line 83
    iput-boolean v3, p0, Lb/a;->s:Z

    const/4 p3, -0x1

    .line 84
    iput p3, p0, Lb/a;->q:I

    .line 85
    iput p3, p0, Lb/a;->r:I

    .line 87
    :cond_13
    iget p3, p0, Lb/a;->l:F

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p2

    array-length p2, p2

    int-to-float p2, p2

    add-float/2addr p3, p2

    iput p3, p0, Lb/a;->l:F

    .line 88
    iget-object p2, p0, Lb/a;->a:Lb/c;

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p3, v0

    iget v0, p0, Lb/a;->k:F

    div-float/2addr p3, v0

    invoke-interface {p2, p3}, Lb/c;->onProcess(F)V

    .line 91
    :goto_3
    iget p2, p0, Lb/a;->f:I

    add-int/2addr p2, v2

    iput p2, p0, Lb/a;->f:I

    .line 92
    iget-object p3, p0, Lb/a;->h:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_15

    .line 93
    iget-object p2, p0, Lb/a;->h:Ljava/util/List;

    iget p3, p0, Lb/a;->f:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lb/a;->a(Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;)V

    goto :goto_4

    :cond_14
    const/16 p2, 0x3ec

    .line 97
    invoke-direct {p0, p1, p2}, Lb/a;->b(Landroid/bluetooth/BluetoothGatt;I)V

    :cond_15
    :goto_4
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    .line 1
    sget-object p2, Lb/a;->w:Ljava/lang/String;

    const-string p3, "onConnectionStateChange:\u8fde\u63a5\u6210\u529f "

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x200

    .line 3
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    goto :goto_0

    :cond_0
    if-nez p3, :cond_2

    .line 8
    sget-object p2, Lb/a;->w:Ljava/lang/String;

    const-string p3, "onConnectionStateChange:\u65ad\u5f00\u8fde\u63a5 "

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->close()V

    .line 12
    :cond_1
    iget-object p1, p0, Lb/a;->a:Lb/c;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lb/c;->a(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDescriptorWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattDescriptor;I)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattDescriptor;->getUuid()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    .line 4
    iget-object p1, p0, Lb/a;->a:Lb/c;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lb/c;->a(Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMtuChanged(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 0

    if-nez p3, :cond_0

    .line 1
    sput p2, Lcom/ota66/sdk/OTAUtils;->MTU_SIZE:I

    goto :goto_0

    :cond_0
    const/16 p2, 0x17

    .line 3
    sput p2, Lcom/ota66/sdk/OTAUtils;->MTU_SIZE:I

    .line 5
    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    return-void
.end method

.method public onPhyUpdate(Landroid/bluetooth/BluetoothGatt;III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a;->a:Lb/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lb/c;->a(Landroid/bluetooth/BluetoothGatt;III)V

    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 3

    if-nez p2, :cond_2

    .line 1
    sget-object p2, Lb/a;->w:Ljava/lang/String;

    const-string v0, "onServicesDiscovered: success"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-static {p1}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 7
    const-string v0, "onServicesDiscovered: \u8fde\u63a5OTA\u6a21\u5f0f"

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p1}, Lc/b;->b(Landroid/bluetooth/BluetoothGatt;)Z

    move-result p2

    .line 9
    iget-object v0, p0, Lb/a;->a:Lb/c;

    invoke-interface {v0, v1}, Lb/c;->a(Z)V

    goto :goto_1

    .line 11
    :cond_0
    invoke-static {p1}, Lc/b;->b(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    .line 13
    const-string v2, "onServicesDiscovered: \u9996\u9875\u8fde\u63a5\u5e94\u7528\u6a21\u5f0f"

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 15
    iget-object p2, p0, Lb/a;->a:Lb/c;

    invoke-interface {p2, v1}, Lb/c;->a(Z)V

    goto :goto_0

    .line 17
    :cond_1
    const-string v1, "\u5f00\u542f\u901a\u77e5\u5c5e\u6027\u5f02\u5e38"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move p2, v0

    :goto_1
    if-nez p2, :cond_3

    .line 22
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    goto :goto_2

    .line 26
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    :cond_3
    :goto_2
    return-void
.end method
