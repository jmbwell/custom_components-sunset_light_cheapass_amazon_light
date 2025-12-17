.class public Lcom/mergbw/core/network/factory/FactoryDataHelper;
.super Ljava/lang/Object;
.source "FactoryDataHelper.java"


# static fields
.field private static final isTestServer:Z = false

.field private static mHelper:Lcom/mergbw/core/network/factory/FactoryDataHelper;

.field private static mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 25
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 26
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 27
    invoke-static {}, Lcom/mergbw/core/network/factory/FactoryDataHelper;->getFactoryServerAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 28
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 29
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/mergbw/core/network/factory/FactoryDataHelper;->mRetrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public static getFactoryFileAddress()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "http://brand.mergbw.com"

    return-object v0
.end method

.method public static getFactoryServerAddress()Ljava/lang/String;
    .locals 1

    .line 41
    const-string v0, "http://brand.mergbw.com:8080"

    return-object v0
.end method

.method public static getInstance()Lcom/mergbw/core/network/factory/FactoryDataHelper;
    .locals 1

    .line 17
    sget-object v0, Lcom/mergbw/core/network/factory/FactoryDataHelper;->mHelper:Lcom/mergbw/core/network/factory/FactoryDataHelper;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lcom/mergbw/core/network/factory/FactoryDataHelper;

    invoke-direct {v0}, Lcom/mergbw/core/network/factory/FactoryDataHelper;-><init>()V

    sput-object v0, Lcom/mergbw/core/network/factory/FactoryDataHelper;->mHelper:Lcom/mergbw/core/network/factory/FactoryDataHelper;

    .line 20
    :cond_0
    sget-object v0, Lcom/mergbw/core/network/factory/FactoryDataHelper;->mHelper:Lcom/mergbw/core/network/factory/FactoryDataHelper;

    return-object v0
.end method


# virtual methods
.method public getApi()Lcom/mergbw/core/network/factory/FactoryDataApi;
    .locals 2

    .line 34
    sget-object v0, Lcom/mergbw/core/network/factory/FactoryDataHelper;->mRetrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/mergbw/core/network/factory/FactoryDataApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/network/factory/FactoryDataApi;

    return-object v0
.end method
