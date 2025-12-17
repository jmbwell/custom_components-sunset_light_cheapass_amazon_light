.class Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;
.super Lcom/alibaba/fastjson/JSONValidator;
.source "JSONValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UTF8Validator"
.end annotation


# instance fields
.field private final bytes:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 341
    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONValidator;-><init>()V

    .line 342
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->bytes:[B

    .line 343
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->next()V

    .line 344
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->skipWhiteSpace()V

    return-void
.end method


# virtual methods
.method next()V
    .locals 4

    .line 348
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->pos:I

    .line 350
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->pos:I

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->bytes:[B

    array-length v3, v2

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    .line 351
    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->ch:C

    .line 352
    iput-boolean v1, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->eof:Z

    goto :goto_0

    .line 354
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->pos:I

    aget-byte v0, v2, v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONValidator$UTF8Validator;->ch:C

    :goto_0
    return-void
.end method
