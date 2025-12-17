.class public Lorg/apache/commons/math3/linear/ArrayFieldVector;
.super Ljava/lang/Object;
.source "ArrayFieldVector.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldVector;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldVector<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a23d1792027468aL


# instance fields
.field private data:[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 83
    invoke-interface {p2}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 84
    iget-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 73
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/FieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 122
    invoke-virtual {p2}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/FieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 213
    array-length v0, p2

    add-int v1, p3, p4

    if-lt v0, v1, :cond_0

    .line 216
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 217
    invoke-static {p1, p4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/FieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    const/4 v0, 0x0

    .line 218
    invoke-static {p2, p3, p1, v0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 214
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p4, 0x1

    invoke-direct {p1, p3, p2, p4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    if-eqz p3, :cond_0

    .line 175
    invoke-virtual {p2}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [Lorg/apache/commons/math3/FieldElement;

    :cond_0
    iput-object p2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[TT;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 417
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 418
    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 421
    array-length v0, p2

    array-length v2, p3

    add-int/2addr v0, v2

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 422
    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length p2, p2

    array-length v2, p3

    invoke-static {p3, v1, v0, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    return-void

    .line 419
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p3, v1, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 245
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 246
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 247
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p1}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/FieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 277
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/FieldVector;Lorg/apache/commons/math3/linear/FieldVector;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 261
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 262
    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/FieldElement;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 315
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/FieldVector;[Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 230
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 231
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    const/4 v0, 0x0

    .line 232
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 233
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldVector;Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 292
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 293
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 294
    instance-of v1, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    .line 296
    :goto_0
    instance-of v1, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v1, :cond_1

    check-cast p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object p2, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    goto :goto_1

    :cond_1
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object p2

    .line 298
    :goto_1
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 299
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldVector;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 330
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 331
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 332
    instance-of v1, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    .line 334
    :goto_0
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 335
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 336
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 103
    :try_start_0
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 104
    invoke-virtual {p1}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/FieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 106
    :catch_0
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 191
    array-length v0, p1

    add-int v1, p2, p3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 194
    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 195
    invoke-static {v1, p3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 196
    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 192
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p2, p3, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 351
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>([Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/FieldVector;)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 366
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 367
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 368
    instance-of v1, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    if-eqz v1, :cond_0

    check-cast p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object p2, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object p2

    .line 370
    :goto_0
    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 371
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 372
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    array-length v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 152
    aget-object v0, p1, v1

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    if-eqz p2, :cond_0

    .line 153
    invoke-virtual {p1}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lorg/apache/commons/math3/FieldElement;

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    return-void

    .line 150
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 393
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 394
    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 397
    aget-object v0, p1, v1

    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    array-length v2, p1

    array-length v3, p2

    add-int/2addr v2, v3

    invoke-static {v0, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    .line 398
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length p1, p1

    array-length v2, p2

    invoke-static {p2, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    iget-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object p1, p1, v1

    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    return-void

    .line 395
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VECTOR_MUST_HAVE_AT_LEAST_ONE_ELEMENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private checkIndex(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1115
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 1116
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method private checkIndices(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1132
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    .line 1134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_1

    if-ge p2, v0, :cond_1

    if-lt p2, p1, :cond_0

    return-void

    .line 1142
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_ROW_AFTER_FINAL_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v2, p2, p1, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 1138
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, p2, v2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 1134
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, v1, p1, v2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 461
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 462
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 463
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 464
    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public add(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 441
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->add(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 443
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 444
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 445
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 446
    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public append(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 796
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V

    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 802
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 803
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    aput-object p1, v0, v1

    .line 804
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v1, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public append(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 784
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->append(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 786
    :catch_0
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/FieldVector;)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Lorg/apache/commons/math3/linear/ArrayFieldVector;)V

    return-object v0
.end method

.method protected checkVectorDimensions(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 894
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    if-ne v0, p1, :cond_0

    return-void

    .line 895
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method protected checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 882
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 434
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/linear/ArrayFieldVector;Z)V

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 711
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 712
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    .line 713
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 714
    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 691
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 693
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 694
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    .line 695
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 696
    aget-object v2, v2, v1

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 661
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 662
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 663
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 665
    :try_start_0
    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 667
    :catch_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-direct {p1, v0, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 670
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 636
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->ebeDivide(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 638
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 639
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 640
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 642
    :try_start_1
    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2
    :try_end_1
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 644
    :catch_1
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    invoke-direct {p1, v0, v3}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 647
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 624
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 625
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 626
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 627
    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 629
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 604
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->ebeMultiply(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 606
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 607
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 608
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 609
    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 1077
    :cond_1
    :try_start_0
    check-cast p1, Lorg/apache/commons/math3/linear/FieldVector;

    .line 1078
    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move v2, v1

    .line 1082
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_4

    .line 1083
    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_3

    return v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v0

    :catch_0
    return v1
.end method

.method public getData()[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public getDataRef()[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 684
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public getDimension()I
    .locals 1

    .line 778
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    return v0
.end method

.method public getEntry(I)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 773
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    return-object v0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p2, :cond_0

    .line 813
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v0, v1, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    .line 815
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v2, v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 817
    :catch_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    .line 818
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    :goto_0
    return-object v0

    .line 811
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method

.method public hashCode()I
    .locals 5

    .line 1102
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v0

    const/16 v2, 0xdd6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 1103
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public mapAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 503
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 504
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 505
    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public mapAddToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 512
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 513
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapDivide(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 555
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 556
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 557
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 558
    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 560
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public mapDivideToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 566
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 567
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 568
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapInv()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 575
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 576
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x0

    move v3, v2

    .line 577
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v5, v4

    if-ge v3, v5, :cond_0

    .line 579
    :try_start_0
    aget-object v4, v4, v3

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v0, v3
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 581
    :catch_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 584
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v3, v0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v1
.end method

.method public mapInvToSelf()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 589
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 590
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 592
    :try_start_0
    aget-object v4, v3, v2

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v3, v2
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MathArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 594
    :catch_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v1

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method public mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 537
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 538
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 539
    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public mapMultiplyToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 546
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 547
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapSubtract(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 521
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 522
    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 524
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public mapSubtractToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 529
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 530
    aget-object v2, v1, v0

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 760
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    .line 761
    iget-object v1, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    .line 762
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 765
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v4

    iget-object v7, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v5

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v4, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 740
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->outerProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 742
    :catch_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    .line 743
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    .line 744
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v2, v3, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 747
    iget-object v6, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v4

    invoke-interface {p1, v5}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v4, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public projection(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 734
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    return-object p1
.end method

.method public projection(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 722
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-interface {p1, p1}, Lorg/apache/commons/math3/linear/FieldVector;->dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/FieldVector;->mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p1

    return-object p1
.end method

.method public set(ILorg/apache/commons/math3/linear/ArrayFieldVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 857
    :try_start_0
    iget-object v0, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 859
    :catch_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 860
    iget-object p2, p2, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    :goto_0
    return-void
.end method

.method public set(Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 866
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setEntry(ILorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .line 826
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aput-object p2, v0, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 828
    :catch_0
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    :goto_0
    return-void
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 836
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->set(ILorg/apache/commons/math3/linear/ArrayFieldVector;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move v0, p1

    .line 838
    :goto_0
    :try_start_1
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    add-int/2addr v1, p1

    if-ge v0, v1, :cond_0

    .line 839
    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    sub-int v2, v0, p1

    invoke-interface {p2, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 843
    :catch_1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    .line 844
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndex(I)V

    :cond_0
    :goto_1
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/ArrayFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 493
    iget-object v0, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v0, v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(I)V

    .line 494
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 495
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 496
    aget-object v3, v3, v2

    iget-object v4, p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 498
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 473
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->subtract(Lorg/apache/commons/math3/linear/ArrayFieldVector;)Lorg/apache/commons/math3/linear/ArrayFieldVector;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 475
    :catch_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/FieldVector;)V

    .line 476
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 477
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 478
    aget-object v3, v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public toArray()[Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lorg/apache/commons/math3/linear/ArrayFieldVector;->data:[Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 990
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    .line 991
    invoke-interface {p1, v0, v2, v1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->start(III)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 993
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 995
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1014
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndices(II)V

    .line 1015
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 1017
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1019
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 910
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    .line 911
    invoke-interface {p1, v0, v2, v1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->start(III)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 913
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 915
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 934
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->checkIndices(II)V

    .line 935
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDimension()I

    move-result v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 937
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 939
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1035
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1056
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 955
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 976
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method
