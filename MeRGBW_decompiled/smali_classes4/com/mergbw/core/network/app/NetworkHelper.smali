.class public Lcom/mergbw/core/network/app/NetworkHelper;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# static fields
.field private static mHelper:Lcom/mergbw/core/network/app/NetworkHelper;

.field private static mRetrofit:Lretrofit2/Retrofit;


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;

    new-instance v1, Lcom/franmontiel/persistentcookiejar/cache/SetCookieCache;

    invoke-direct {v1}, Lcom/franmontiel/persistentcookiejar/cache/SetCookieCache;-><init>()V

    new-instance v2, Lcom/franmontiel/persistentcookiejar/persistence/SharedPrefsCookiePersistor;

    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/franmontiel/persistentcookiejar/persistence/SharedPrefsCookiePersistor;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1, v2}, Lcom/franmontiel/persistentcookiejar/PersistentCookieJar;-><init>(Lcom/franmontiel/persistentcookiejar/cache/CookieCache;Lcom/franmontiel/persistentcookiejar/persistence/CookiePersistor;)V

    .line 28
    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 29
    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 32
    new-instance v1, Lretrofit2/Retrofit$Builder;

    invoke-direct {v1}, Lretrofit2/Retrofit$Builder;-><init>()V

    .line 33
    invoke-virtual {v1, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    const-string v1, "http://47.251.33.234:7788"

    .line 34
    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 35
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 36
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v0

    sput-object v0, Lcom/mergbw/core/network/app/NetworkHelper;->mRetrofit:Lretrofit2/Retrofit;

    return-void
.end method

.method public static getInstance()Lcom/mergbw/core/network/app/NetworkHelper;
    .locals 1

    .line 20
    sget-object v0, Lcom/mergbw/core/network/app/NetworkHelper;->mHelper:Lcom/mergbw/core/network/app/NetworkHelper;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/mergbw/core/network/app/NetworkHelper;

    invoke-direct {v0}, Lcom/mergbw/core/network/app/NetworkHelper;-><init>()V

    sput-object v0, Lcom/mergbw/core/network/app/NetworkHelper;->mHelper:Lcom/mergbw/core/network/app/NetworkHelper;

    .line 23
    :cond_0
    sget-object v0, Lcom/mergbw/core/network/app/NetworkHelper;->mHelper:Lcom/mergbw/core/network/app/NetworkHelper;

    return-object v0
.end method


# virtual methods
.method public getApi()Lcom/mergbw/core/network/app/WebApi;
    .locals 2

    .line 41
    sget-object v0, Lcom/mergbw/core/network/app/NetworkHelper;->mRetrofit:Lretrofit2/Retrofit;

    const-class v1, Lcom/mergbw/core/network/app/WebApi;

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/network/app/WebApi;

    return-object v0
.end method
