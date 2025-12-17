.class Lorg/jtransforms/fft/DoubleFFT_3D$51;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(II[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[D

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[DZ)V
    .locals 0

    .line 5102
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$nthreads:I

    iput p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$icr:I

    iput-object p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    iput-boolean p8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 5106
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$ntf:I

    new-array v1, v1, [D

    .line 5107
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$isgn:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v2, v3, :cond_9

    .line 5108
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$n0:I

    :goto_0
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 5109
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v2

    .line 5110
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$icr:I

    if-nez v7, :cond_0

    move v7, v5

    .line 5111
    :goto_1
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 5112
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v3

    invoke-virtual {v8, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v5

    .line 5115
    :goto_2
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 5116
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v3

    invoke-virtual {v8, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5119
    :cond_1
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-le v7, v4, :cond_4

    move v7, v5

    .line 5120
    :goto_3
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_8

    move v8, v5

    .line 5121
    :goto_4
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 5122
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 5124
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 5125
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 5126
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 5127
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v15, v14, v9

    aput-wide v15, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v9, 0x1

    .line 5128
    aget-wide v15, v14, v15

    aput-wide v15, v1, v10

    add-int/lit8 v10, v9, 0x2

    .line 5129
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v9, 0x3

    .line 5130
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v10, v9, 0x4

    .line 5131
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v9, 0x5

    .line 5132
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v10, v9, 0x6

    .line 5133
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x7

    .line 5134
    aget-wide v9, v14, v9

    aput-wide v9, v1, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 5136
    :cond_2
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5137
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    invoke-virtual {v8, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5138
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    invoke-virtual {v8, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5139
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    invoke-virtual {v8, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v8, v5

    .line 5140
    :goto_5
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 5141
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 5143
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 5144
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 5145
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 5146
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v15, v1, v10

    aput-wide v15, v14, v9

    add-int/lit8 v15, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 5147
    aget-wide v16, v1, v10

    aput-wide v16, v14, v15

    add-int/lit8 v10, v9, 0x2

    .line 5148
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, v11, 0x1

    .line 5149
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x4

    .line 5150
    aget-wide v15, v1, v12

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x5

    add-int/lit8 v12, v12, 0x1

    .line 5151
    aget-wide v11, v1, v12

    aput-wide v11, v14, v10

    add-int/lit8 v10, v9, 0x6

    .line 5152
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v9, v9, 0x7

    add-int/lit8 v13, v13, 0x1

    .line 5153
    aget-wide v10, v1, v13

    aput-wide v10, v14, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_3

    .line 5156
    :cond_4
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ne v7, v4, :cond_6

    move v7, v5

    .line 5157
    :goto_6
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 5158
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5160
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 5161
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v12, v11, v8

    aput-wide v12, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v8, 0x1

    .line 5162
    aget-wide v12, v11, v12

    aput-wide v12, v1, v9

    add-int/lit8 v9, v8, 0x2

    .line 5163
    aget-wide v12, v11, v9

    aput-wide v12, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x3

    .line 5164
    aget-wide v8, v11, v8

    aput-wide v8, v1, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 5166
    :cond_5
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5167
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    invoke-virtual {v7, v1, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v7, v5

    .line 5168
    :goto_7
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 5169
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5171
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 5172
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v12, v1, v9

    aput-wide v12, v11, v8

    add-int/lit8 v12, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5173
    aget-wide v13, v1, v9

    aput-wide v13, v11, v12

    add-int/lit8 v9, v8, 0x2

    .line 5174
    aget-wide v12, v1, v10

    aput-wide v12, v11, v9

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 5175
    aget-wide v9, v1, v10

    aput-wide v9, v11, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 5177
    :cond_6
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ne v7, v6, :cond_8

    move v7, v5

    .line 5178
    :goto_8
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 5179
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5181
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5182
    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 5184
    :cond_7
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v7, v5

    .line 5185
    :goto_9
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 5186
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5188
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5189
    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 5108
    :cond_8
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 5195
    :cond_9
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$n0:I

    :goto_a
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 5196
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v2

    .line 5197
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$icr:I

    if-nez v7, :cond_a

    move v7, v5

    .line 5198
    :goto_b
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 5199
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v3

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$scale:Z

    invoke-virtual {v8, v9, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 5202
    :cond_a
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-le v7, v4, :cond_d

    move v7, v5

    .line 5203
    :goto_c
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_11

    move v8, v5

    .line 5204
    :goto_d
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 5205
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 5207
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 5208
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 5209
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 5210
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v15, v14, v9

    aput-wide v15, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v9, 0x1

    .line 5211
    aget-wide v15, v14, v15

    aput-wide v15, v1, v10

    add-int/lit8 v10, v9, 0x2

    .line 5212
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v9, 0x3

    .line 5213
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v10, v9, 0x4

    .line 5214
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v9, 0x5

    .line 5215
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v10, v9, 0x6

    .line 5216
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x7

    .line 5217
    aget-wide v9, v14, v9

    aput-wide v9, v1, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 5219
    :cond_b
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$scale:Z

    invoke-virtual {v8, v1, v5, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5220
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$scale:Z

    invoke-virtual {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5221
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$scale:Z

    invoke-virtual {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5222
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$scale:Z

    invoke-virtual {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v8, v5

    .line 5223
    :goto_e
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 5224
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 5226
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 5227
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 5228
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 5229
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v15, v1, v10

    aput-wide v15, v14, v9

    add-int/lit8 v15, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 5230
    aget-wide v16, v1, v10

    aput-wide v16, v14, v15

    add-int/lit8 v10, v9, 0x2

    .line 5231
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, v11, 0x1

    .line 5232
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x4

    .line 5233
    aget-wide v15, v1, v12

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x5

    add-int/lit8 v12, v12, 0x1

    .line 5234
    aget-wide v11, v1, v12

    aput-wide v11, v14, v10

    add-int/lit8 v10, v9, 0x6

    .line 5235
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v9, v9, 0x7

    add-int/lit8 v13, v13, 0x1

    .line 5236
    aget-wide v10, v1, v13

    aput-wide v10, v14, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_c

    .line 5239
    :cond_d
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ne v7, v4, :cond_f

    move v7, v5

    .line 5240
    :goto_f
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_e

    .line 5241
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5243
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 5244
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v12, v11, v8

    aput-wide v12, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v8, 0x1

    .line 5245
    aget-wide v12, v11, v12

    aput-wide v12, v1, v9

    add-int/lit8 v9, v8, 0x2

    .line 5246
    aget-wide v12, v11, v9

    aput-wide v12, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x3

    .line 5247
    aget-wide v8, v11, v8

    aput-wide v8, v1, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    .line 5249
    :cond_e
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    iget-boolean v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$scale:Z

    invoke-virtual {v7, v1, v5, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5250
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$scale:Z

    invoke-virtual {v7, v1, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v7, v5

    .line 5251
    :goto_10
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_11

    .line 5252
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5254
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 5255
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v12, v1, v9

    aput-wide v12, v11, v8

    add-int/lit8 v12, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5256
    aget-wide v13, v1, v9

    aput-wide v13, v11, v12

    add-int/lit8 v9, v8, 0x2

    .line 5257
    aget-wide v12, v1, v10

    aput-wide v12, v11, v9

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 5258
    aget-wide v9, v1, v10

    aput-wide v9, v11, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 5260
    :cond_f
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ne v7, v6, :cond_11

    move v7, v5

    .line 5261
    :goto_11
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_10

    .line 5262
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5264
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5265
    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 5267
    :cond_10
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    iget-boolean v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$scale:Z

    invoke-virtual {v7, v1, v5, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v7, v5

    .line 5268
    :goto_12
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_11

    .line 5269
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5271
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5272
    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 5275
    :cond_11
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$icr:I

    if-eqz v7, :cond_12

    move v7, v5

    .line 5276
    :goto_13
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_12

    .line 5277
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$a:[D

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v3

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$scale:Z

    invoke-virtual {v8, v9, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse([DIZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 5195
    :cond_12
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$51;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_a

    :cond_13
    return-void
.end method
