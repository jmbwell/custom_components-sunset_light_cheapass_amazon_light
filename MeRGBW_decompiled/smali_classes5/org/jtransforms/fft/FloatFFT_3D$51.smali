.class Lorg/jtransforms/fft/FloatFFT_3D$51;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[F

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIII[FZ)V
    .locals 0

    .line 5109
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$nthreads:I

    iput p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$icr:I

    iput-object p7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    iput-boolean p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 5113
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$ntf:I

    new-array v0, v0, [F

    .line 5114
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v2, :cond_9

    .line 5115
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 5116
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    .line 5117
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$icr:I

    if-nez v6, :cond_0

    move v6, v4

    .line 5118
    :goto_1
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 5119
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v2

    invoke-virtual {v7, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v4

    .line 5122
    :goto_2
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 5123
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v2

    invoke-virtual {v7, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 5126
    :cond_1
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-le v6, v3, :cond_4

    move v6, v4

    .line 5127
    :goto_3
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_8

    move v7, v4

    .line 5128
    :goto_4
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 5129
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 5131
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 5132
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 5133
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 5134
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v14, v13, v8

    aput v14, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v14, v8, 0x1

    .line 5135
    aget v14, v13, v14

    aput v14, v0, v9

    add-int/lit8 v9, v8, 0x2

    .line 5136
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v8, 0x3

    .line 5137
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v9, v8, 0x4

    .line 5138
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v8, 0x5

    .line 5139
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v9, v8, 0x6

    .line 5140
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x7

    .line 5141
    aget v8, v13, v8

    aput v8, v0, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 5143
    :cond_2
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5144
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    invoke-virtual {v7, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5145
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v3

    invoke-virtual {v7, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5146
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    invoke-virtual {v7, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v7, v4

    .line 5147
    :goto_5
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 5148
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 5150
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 5151
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 5152
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 5153
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v14, v0, v9

    aput v14, v13, v8

    add-int/lit8 v14, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5154
    aget v9, v0, v9

    aput v9, v13, v14

    add-int/lit8 v9, v8, 0x2

    .line 5155
    aget v14, v0, v10

    aput v14, v13, v9

    add-int/lit8 v9, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 5156
    aget v10, v0, v10

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x4

    .line 5157
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v11, v11, 0x1

    .line 5158
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x6

    .line 5159
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v8, v8, 0x7

    add-int/lit8 v12, v12, 0x1

    .line 5160
    aget v9, v0, v12

    aput v9, v13, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v6, 0x8

    goto/16 :goto_3

    .line 5163
    :cond_4
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ne v6, v3, :cond_6

    move v6, v4

    .line 5164
    :goto_6
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 5165
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5167
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 5168
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v11, v10, v7

    aput v11, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v7, 0x1

    .line 5169
    aget v11, v10, v11

    aput v11, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 5170
    aget v8, v10, v8

    aput v8, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x3

    .line 5171
    aget v7, v10, v7

    aput v7, v0, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 5173
    :cond_5
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5174
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v5

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v6, v4

    .line 5175
    :goto_7
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 5176
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5178
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 5179
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v11, v0, v8

    aput v11, v10, v7

    add-int/lit8 v11, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5180
    aget v8, v0, v8

    aput v8, v10, v11

    add-int/lit8 v8, v7, 0x2

    .line 5181
    aget v11, v0, v9

    aput v11, v10, v8

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v9, v9, 0x1

    .line 5182
    aget v8, v0, v9

    aput v8, v10, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 5184
    :cond_6
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ne v6, v5, :cond_8

    move v6, v4

    .line 5185
    :goto_8
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 5186
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5188
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v10, v9, v7

    aput v10, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 5189
    aget v7, v9, v7

    aput v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 5191
    :cond_7
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v6, v4

    .line 5192
    :goto_9
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 5193
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5195
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v10, v0, v8

    aput v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5196
    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 5115
    :cond_8
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 5202
    :cond_9
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$n0:I

    :goto_a
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 5203
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    .line 5204
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$icr:I

    if-nez v6, :cond_a

    move v6, v4

    .line 5205
    :goto_b
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_a

    .line 5206
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v2

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$scale:Z

    invoke-virtual {v7, v8, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    .line 5209
    :cond_a
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-le v6, v3, :cond_d

    move v6, v4

    .line 5210
    :goto_c
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_11

    move v7, v4

    .line 5211
    :goto_d
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 5212
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 5214
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 5215
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 5216
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 5217
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v14, v13, v8

    aput v14, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v14, v8, 0x1

    .line 5218
    aget v14, v13, v14

    aput v14, v0, v9

    add-int/lit8 v9, v8, 0x2

    .line 5219
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v8, 0x3

    .line 5220
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v9, v8, 0x4

    .line 5221
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v8, 0x5

    .line 5222
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v9, v8, 0x6

    .line 5223
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x7

    .line 5224
    aget v8, v13, v8

    aput v8, v0, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    .line 5226
    :cond_b
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$scale:Z

    invoke-virtual {v7, v0, v4, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5227
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$scale:Z

    invoke-virtual {v7, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5228
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v3

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$scale:Z

    invoke-virtual {v7, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5229
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$scale:Z

    invoke-virtual {v7, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v7, v4

    .line 5230
    :goto_e
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 5231
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 5233
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 5234
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 5235
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 5236
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v14, v0, v9

    aput v14, v13, v8

    add-int/lit8 v14, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5237
    aget v9, v0, v9

    aput v9, v13, v14

    add-int/lit8 v9, v8, 0x2

    .line 5238
    aget v14, v0, v10

    aput v14, v13, v9

    add-int/lit8 v9, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 5239
    aget v10, v0, v10

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x4

    .line 5240
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v11, v11, 0x1

    .line 5241
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x6

    .line 5242
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v8, v8, 0x7

    add-int/lit8 v12, v12, 0x1

    .line 5243
    aget v9, v0, v12

    aput v9, v13, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v6, v6, 0x8

    goto/16 :goto_c

    .line 5246
    :cond_d
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ne v6, v3, :cond_f

    move v6, v4

    .line 5247
    :goto_f
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_e

    .line 5248
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5250
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 5251
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v11, v10, v7

    aput v11, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v7, 0x1

    .line 5252
    aget v11, v10, v11

    aput v11, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 5253
    aget v8, v10, v8

    aput v8, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x3

    .line 5254
    aget v7, v10, v7

    aput v7, v0, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_f

    .line 5256
    :cond_e
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$scale:Z

    invoke-virtual {v6, v0, v4, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5257
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v5

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v6, v4

    .line 5258
    :goto_10
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 5259
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5261
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 5262
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v11, v0, v8

    aput v11, v10, v7

    add-int/lit8 v11, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5263
    aget v8, v0, v8

    aput v8, v10, v11

    add-int/lit8 v8, v7, 0x2

    .line 5264
    aget v11, v0, v9

    aput v11, v10, v8

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v9, v9, 0x1

    .line 5265
    aget v8, v0, v9

    aput v8, v10, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 5267
    :cond_f
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ne v6, v5, :cond_11

    move v6, v4

    .line 5268
    :goto_11
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_10

    .line 5269
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5271
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v10, v9, v7

    aput v10, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 5272
    aget v7, v9, v7

    aput v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 5274
    :cond_10
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$scale:Z

    invoke-virtual {v6, v0, v4, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v6, v4

    .line 5275
    :goto_12
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 5276
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5278
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    aget v10, v0, v8

    aput v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5279
    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 5282
    :cond_11
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$icr:I

    if-eqz v6, :cond_12

    move v6, v4

    .line 5283
    :goto_13
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_12

    .line 5284
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$a:[F

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v2

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$scale:Z

    invoke-virtual {v7, v8, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse([FIZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 5202
    :cond_12
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$51;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_a

    :cond_13
    return-void
.end method
