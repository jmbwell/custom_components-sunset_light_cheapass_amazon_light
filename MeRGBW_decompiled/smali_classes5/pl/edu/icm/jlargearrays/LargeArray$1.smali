.class Lpl/edu/icm/jlargearrays/LargeArray$1;
.super Ljava/lang/Object;
.source "LargeArray.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArray;->zeroNativeMemory(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/edu/icm/jlargearrays/LargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$ptrf:J


# direct methods
.method constructor <init>(Lpl/edu/icm/jlargearrays/LargeArray;JJJ)V
    .locals 0

    .line 969
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->this$0:Lpl/edu/icm/jlargearrays/LargeArray;

    iput-wide p2, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$firstIdx:J

    iput-wide p4, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$lastIdx:J

    iput-wide p6, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$ptrf:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 973
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArray$2;->$SwitchMap$pl$edu$icm$jlargearrays$LargeArrayType:[I

    iget-object v1, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->this$0:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v1, v1, Lpl/edu/icm/jlargearrays/LargeArray;->type:Lpl/edu/icm/jlargearrays/LargeArrayType;

    invoke-virtual {v1}, Lpl/edu/icm/jlargearrays/LargeArrayType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const-wide/16 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 1009
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid array type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1004
    :pswitch_0
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$firstIdx:J

    :goto_0
    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$lastIdx:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 1005
    sget-object v4, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$ptrf:J

    iget-object v7, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->this$0:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-wide v7, v7, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    mul-long/2addr v7, v0

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lsun/misc/Unsafe;->putDouble(JD)V

    add-long/2addr v0, v2

    goto :goto_0

    .line 999
    :pswitch_1
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$firstIdx:J

    :goto_1
    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$lastIdx:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 1000
    sget-object v4, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$ptrf:J

    iget-object v7, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->this$0:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-wide v7, v7, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    mul-long/2addr v7, v0

    add-long/2addr v5, v7

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lsun/misc/Unsafe;->putFloat(JF)V

    add-long/2addr v0, v2

    goto :goto_1

    .line 994
    :pswitch_2
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$firstIdx:J

    :goto_2
    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$lastIdx:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_0

    .line 995
    sget-object v4, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v5, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$ptrf:J

    iget-object v7, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->this$0:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-wide v7, v7, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    mul-long/2addr v7, v0

    add-long/2addr v5, v7

    const-wide/16 v7, 0x0

    invoke-virtual {v4, v5, v6, v7, v8}, Lsun/misc/Unsafe;->putLong(JJ)V

    add-long/2addr v0, v2

    goto :goto_2

    .line 989
    :pswitch_3
    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$firstIdx:J

    :goto_3
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$lastIdx:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 990
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$ptrf:J

    iget-object v8, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->this$0:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-wide v8, v8, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7, v1}, Lsun/misc/Unsafe;->putInt(JI)V

    add-long/2addr v4, v2

    goto :goto_3

    .line 984
    :pswitch_4
    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$firstIdx:J

    :goto_4
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$lastIdx:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 985
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$ptrf:J

    iget-object v8, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->this$0:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-wide v8, v8, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7, v1}, Lsun/misc/Unsafe;->putShort(JS)V

    add-long/2addr v4, v2

    goto :goto_4

    .line 979
    :pswitch_5
    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$firstIdx:J

    :goto_5
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$lastIdx:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    .line 980
    sget-object v0, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->UNSAFE:Lsun/misc/Unsafe;

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->val$ptrf:J

    iget-object v8, p0, Lpl/edu/icm/jlargearrays/LargeArray$1;->this$0:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-wide v8, v8, Lpl/edu/icm/jlargearrays/LargeArray;->sizeof:J

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    invoke-virtual {v0, v6, v7, v1}, Lsun/misc/Unsafe;->putByte(JB)V

    add-long/2addr v4, v2

    goto :goto_5

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
