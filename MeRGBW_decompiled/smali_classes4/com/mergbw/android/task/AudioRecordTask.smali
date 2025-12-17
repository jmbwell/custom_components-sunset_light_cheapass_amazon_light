.class public Lcom/mergbw/android/task/AudioRecordTask;
.super Ljava/lang/Object;
.source "AudioRecordTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final FFT_SIZE:I = 0x280

.field private static final TAG:Ljava/lang/String; = "AudioRecordTask"

.field private static final audioFormat:I = 0x3

.field private static final audioSource:I = 0x1

.field private static final inputChannelConfig:I = 0x10

.field private static final sampleRateInHz:I = 0x3e80


# instance fields
.field private isRecording:Z

.field private final mAudioBufferSize:I

.field private mAudioRecord:Landroid/media/AudioRecord;

.field private mAudioSensitive:I

.field private final mFFT:Lorg/jtransforms/fft/DoubleFFT_1D;

.field private mHue:F

.field private final mListener:Lcom/mergbw/android/task/IAudioRecordListener;


# direct methods
.method public constructor <init>(IFLcom/mergbw/android/task/IAudioRecordListener;)V
    .locals 6

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->isRecording:Z

    .line 41
    invoke-virtual {p0, p1}, Lcom/mergbw/android/task/AudioRecordTask;->setAudioSensitive(I)V

    .line 42
    iput p2, p0, Lcom/mergbw/android/task/AudioRecordTask;->mHue:F

    .line 43
    iput-object p3, p0, Lcom/mergbw/android/task/AudioRecordTask;->mListener:Lcom/mergbw/android/task/IAudioRecordListener;

    const/16 p1, 0x10

    const/4 p2, 0x3

    const/16 p3, 0x3e80

    .line 45
    invoke-static {p3, p1, p2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    iput v5, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioBufferSize:I

    .line 46
    new-instance p1, Landroid/media/AudioRecord;

    const/16 v3, 0x10

    const/4 v4, 0x3

    const/4 v1, 0x1

    const/16 v2, 0x3e80

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p1, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioRecord:Landroid/media/AudioRecord;

    .line 47
    new-instance p1, Lorg/jtransforms/fft/DoubleFFT_1D;

    const-wide/16 p2, 0x280

    invoke-direct {p1, p2, p3}, Lorg/jtransforms/fft/DoubleFFT_1D;-><init>(J)V

    iput-object p1, p0, Lcom/mergbw/android/task/AudioRecordTask;->mFFT:Lorg/jtransforms/fft/DoubleFFT_1D;

    return-void
.end method

.method private toHSV([B)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 80
    array-length v2, v1

    const/4 v3, 0x0

    move v6, v3

    move v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    aget-byte v8, v1, v5

    .line 81
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v6, v8

    .line 83
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 85
    :cond_0
    array-length v2, v1

    int-to-float v2, v2

    div-float/2addr v6, v2

    sub-float v2, v7, v6

    div-float/2addr v2, v7

    float-to-double v5, v2

    .line 87
    iget v7, v0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioSensitive:I

    rsub-int/lit8 v7, v7, 0x64

    int-to-double v7, v7

    const-wide v9, 0x3f264840e1719f80L    # 1.7E-4

    mul-double/2addr v7, v9

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v3, v2

    :goto_1
    const/16 v2, 0x500

    .line 94
    new-array v2, v2, [D

    .line 96
    array-length v5, v1

    const/16 v6, 0x280

    if-ge v5, v6, :cond_2

    .line 97
    array-length v6, v1

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    if-ge v5, v6, :cond_3

    mul-int/lit8 v10, v5, 0x2

    .line 100
    aget-byte v11, v1, v5

    int-to-double v11, v11

    aput-wide v11, v2, v10

    add-int/2addr v10, v9

    .line 101
    aput-wide v7, v2, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 103
    :cond_3
    iget-object v1, v0, Lcom/mergbw/android/task/AudioRecordTask;->mFFT:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    const/16 v1, 0x140

    .line 106
    new-array v5, v1, [D

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_4

    mul-int/lit8 v10, v6, 0x2

    .line 108
    aget-wide v11, v2, v10

    add-int/2addr v10, v9

    .line 109
    aget-wide v13, v2, v10

    mul-double/2addr v11, v11

    mul-double/2addr v13, v13

    add-double/2addr v11, v13

    .line 110
    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    aput-wide v10, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    move-wide v10, v7

    move-wide v12, v10

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_5

    .line 117
    aget-wide v14, v5, v2

    .line 118
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v16

    add-double v7, v7, v16

    move-object/from16 v16, v5

    .line 119
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    .line 120
    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v12

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v16

    goto :goto_4

    :cond_5
    int-to-double v1, v1

    div-double/2addr v7, v1

    sub-double/2addr v7, v10

    sub-double/2addr v12, v10

    div-double/2addr v7, v12

    .line 122
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v1, v4

    double-to-float v1, v1

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "toHSV: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "AudioRecordTask"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v2, v0, Lcom/mergbw/android/task/AudioRecordTask;->mListener:Lcom/mergbw/android/task/IAudioRecordListener;

    if-eqz v2, :cond_7

    const/4 v4, 0x3

    .line 127
    new-array v4, v4, [F

    .line 128
    iget v5, v0, Lcom/mergbw/android/task/AudioRecordTask;->mHue:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v7, v5, v7

    if-nez v7, :cond_6

    const/high16 v5, 0x43b40000    # 360.0f

    mul-float/2addr v5, v3

    const/4 v6, 0x0

    .line 129
    aput v5, v4, v6

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    .line 131
    aput v5, v4, v6

    .line 133
    :goto_5
    aput v1, v4, v9

    const/4 v1, 0x2

    .line 134
    aput v3, v4, v1

    .line 135
    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    invoke-interface {v2, v1}, Lcom/mergbw/android/task/IAudioRecordListener;->onColorResult(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 150
    iput-boolean v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->isRecording:Z

    .line 152
    iget-object v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 153
    iget-object v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method public run()V
    .locals 7

    .line 52
    :goto_0
    iget-boolean v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->isRecording:Z

    if-eqz v0, :cond_3

    .line 53
    iget-object v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v5, 0x3

    iget v6, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioBufferSize:I

    const/4 v2, 0x1

    const/16 v3, 0x3e80

    const/16 v4, 0x10

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioRecord:Landroid/media/AudioRecord;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 60
    :cond_1
    iget v0, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioBufferSize:I

    new-array v1, v0, [B

    .line 61
    iget-object v2, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioRecord:Landroid/media/AudioRecord;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-lez v0, :cond_2

    .line 65
    invoke-direct {p0, v1}, Lcom/mergbw/android/task/AudioRecordTask;->toHSV([B)V

    :cond_2
    const-wide/16 v0, 0xc8

    .line 69
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 71
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    return-void
.end method

.method public setAudioSensitive(I)V
    .locals 1

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    move p1, v0

    :cond_0
    const/16 v0, 0x5a

    if-le p1, v0, :cond_1

    move p1, v0

    .line 142
    :cond_1
    iput p1, p0, Lcom/mergbw/android/task/AudioRecordTask;->mAudioSensitive:I

    return-void
.end method

.method public setHue(F)V
    .locals 0

    .line 146
    iput p1, p0, Lcom/mergbw/android/task/AudioRecordTask;->mHue:F

    return-void
.end method
