.class final Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;
.super Ljava/lang/Object;
.source "LargeArrayUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayUtils;->convert(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$out:Lpl/edu/icm/jlargearrays/LargeArray;

.field final synthetic val$src:Lpl/edu/icm/jlargearrays/LargeArray;

.field final synthetic val$type:Lpl/edu/icm/jlargearrays/LargeArrayType;


# direct methods
.method constructor <init>(Lpl/edu/icm/jlargearrays/LargeArrayType;JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V
    .locals 0

    .line 2296
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    iput-wide p2, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    iput-wide p4, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    iput-object p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iput-object p7, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2300
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$28;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 2369
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid array type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2307
    :pswitch_0
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_0
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2308
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->getUnsignedByte(J)S

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/LargeArray;->setUnsignedByte(JS)V

    add-long/2addr v3, v1

    goto :goto_0

    .line 2364
    :pswitch_1
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_1
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2365
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/LargeArray;->set(JLjava/lang/Object;)V

    add-long/2addr v3, v1

    goto :goto_1

    .line 2359
    :pswitch_2
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_2
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2360
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/LargeArray;->set(JLjava/lang/Object;)V

    add-long/2addr v3, v1

    goto :goto_2

    .line 2348
    :pswitch_3
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_FLOAT:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_0

    .line 2349
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_3
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2350
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    check-cast v5, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexFloat(J[F)V

    add-long/2addr v3, v1

    goto :goto_3

    .line 2353
    :cond_0
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_4
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2354
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v3, v1

    goto :goto_4

    .line 2337
    :pswitch_4
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v0}, Lpl/edu/icm/jlargearrays/LargeArray;->getType()Lpl/edu/icm/jlargearrays/LargeArrayType;

    move-result-object v0

    sget-object v3, Lpl/edu/icm/jlargearrays/LargeArrayType;->COMPLEX_DOUBLE:Lpl/edu/icm/jlargearrays/LargeArrayType;

    if-ne v0, v3, :cond_1

    .line 2338
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_5
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2339
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    check-cast v0, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    check-cast v5, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexDouble(J[D)V

    add-long/2addr v3, v1

    goto :goto_5

    .line 2342
    :cond_1
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_6
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2343
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long/2addr v3, v1

    goto :goto_6

    .line 2332
    :pswitch_5
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_7
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2333
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/LargeArray;->setDouble(JD)V

    add-long/2addr v3, v1

    goto :goto_7

    .line 2327
    :pswitch_6
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_8
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2328
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/LargeArray;->setFloat(JF)V

    add-long/2addr v3, v1

    goto :goto_8

    .line 2322
    :pswitch_7
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_9
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2323
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->getLong(J)J

    move-result-wide v5

    invoke-virtual {v0, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/LargeArray;->setLong(JJ)V

    add-long/2addr v3, v1

    goto :goto_9

    .line 2317
    :pswitch_8
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_a
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2318
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->getInt(J)I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/LargeArray;->setInt(JI)V

    add-long/2addr v3, v1

    goto :goto_a

    .line 2312
    :pswitch_9
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_b
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2313
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->getShort(J)S

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/LargeArray;->setShort(JS)V

    add-long/2addr v3, v1

    goto :goto_b

    .line 2302
    :pswitch_a
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$firstIdx:J

    :goto_c
    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$lastIdx:J

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    .line 2303
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$out:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$26;->val$src:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v5, v3, v4}, Lpl/edu/icm/jlargearrays/LargeArray;->getByte(J)B

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    add-long/2addr v3, v1

    goto :goto_c

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
