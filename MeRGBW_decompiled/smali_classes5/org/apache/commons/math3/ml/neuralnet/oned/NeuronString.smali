.class public Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;
.super Ljava/lang/Object;
.source "NeuronString.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final identifiers:[J

.field private final network:Lorg/apache/commons/math3/ml/neuralnet/Network;

.field private final size:I

.field private final wrap:Z


# direct methods
.method public constructor <init>(IZ[Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)V
    .locals 6

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    if-lt p1, v0, :cond_2

    .line 107
    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    .line 108
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->wrap:Z

    .line 109
    new-array p2, p1, [J

    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->identifiers:[J

    .line 111
    array-length p2, p3

    .line 112
    new-instance v0, Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p2}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 116
    new-array v2, p2, [D

    move v3, v0

    :goto_1
    if-ge v3, p2, :cond_0

    .line 118
    aget-object v4, p3, v3

    invoke-interface {v4}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;->value()D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->identifiers:[J

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNeuron([D)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->createLinks()V

    return-void

    .line 104
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    invoke-direct {p2, p1, p3, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method constructor <init>(Z[[D)V
    .locals 5

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    array-length v0, p2

    iput v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 66
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->wrap:Z

    const/4 p1, 0x0

    .line 68
    aget-object v1, p2, p1

    array-length v1, v1

    .line 69
    new-instance v2, Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v3, 0x0

    invoke-direct {v2, v3, v4, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    iput-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    .line 70
    new-array v0, v0, [J

    iput-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->identifiers:[J

    .line 73
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    if-ge p1, v0, :cond_0

    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->identifiers:[J

    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    aget-object v2, p2, p1

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNeuron([D)J

    move-result-wide v1

    aput-wide v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->createLinks()V

    return-void

    .line 63
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p1, p2, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method private createLinks()V
    .locals 7

    const/4 v0, 0x0

    .line 170
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    .line 171
    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    add-int/lit8 v0, v0, 0x1

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-lez v1, :cond_1

    .line 174
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    add-int/lit8 v4, v1, -0x1

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 176
    :cond_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->wrap:Z

    if-eqz v0, :cond_2

    .line 177
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget v5, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    add-int/lit8 v5, v5, -0x1

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V

    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v4, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V

    :cond_2
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 188
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 3

    .line 197
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    new-array v0, v0, [[D

    const/4 v1, 0x0

    .line 198
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    if-ge v1, v2, :cond_0

    .line 199
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->getFeatures(I)[D

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 202
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString$SerializationProxy;

    iget-boolean v2, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->wrap:Z

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString$SerializationProxy;-><init>(Z[[D)V

    return-object v1
.end method


# virtual methods
.method public getFeatures(I)[D
    .locals 4

    if-ltz p1, :cond_0

    .line 158
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    if-ge p1, v0, :cond_0

    .line 163
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->identifiers:[J

    aget-wide v2, v1, p1

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object p1

    return-object p1

    .line 160
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 146
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/oned/NeuronString;->size:I

    return v0
.end method
