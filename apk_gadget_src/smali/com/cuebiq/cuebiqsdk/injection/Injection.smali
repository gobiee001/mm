.class public Lcom/cuebiq/cuebiqsdk/injection/Injection;
.super Ljava/lang/Object;
.source "Injection.java"


# static fields
.field private static mGson:Lcom/google/gson/Gson;

.field private static mNetworkLayer:Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;

.field private static mOkHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideGson()Lcom/google/gson/Gson;
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/cuebiq/cuebiqsdk/injection/Injection;->mGson:Lcom/google/gson/Gson;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 41
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/AuthSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/AuthSerializer;-><init>()V

    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/DeviceSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/DeviceSerializer;-><init>()V

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Event;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/EventSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/EventSerializer;-><init>()V

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Geo;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/GeoSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/GeoSerializer;-><init>()V

    .line 45
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/InformationSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/InformationSerializer;-><init>()V

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/RequestSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/RequestSerializer;-><init>()V

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/Wifi;

    new-instance v2, Lcom/cuebiq/cuebiqsdk/model/listener/WifiSerializer;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/model/listener/WifiSerializer;-><init>()V

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    sput-object v0, Lcom/cuebiq/cuebiqsdk/injection/Injection;->mGson:Lcom/google/gson/Gson;

    .line 51
    :cond_0
    sget-object v0, Lcom/cuebiq/cuebiqsdk/injection/Injection;->mGson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public static provideHttpClient()Lokhttp3/OkHttpClient;
    .locals 4

    .prologue
    .line 62
    sget-object v1, Lcom/cuebiq/cuebiqsdk/injection/Injection;->mOkHttpClient:Lokhttp3/OkHttpClient;

    if-nez v1, :cond_0

    .line 63
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 64
    .local v0, "httpBuilder":Lokhttp3/OkHttpClient$Builder;
    new-instance v1, Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/api/GzipRequestInterceptor;-><init>()V

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 65
    new-instance v2, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor;

    invoke-direct {v2}, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor;-><init>()V

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/ApiConfiguration;->workingEnvironment:Lcom/cuebiq/cuebiqsdk/api/Environment;

    sget-object v3, Lcom/cuebiq/cuebiqsdk/api/Environment;->PRODUCTION:Lcom/cuebiq/cuebiqsdk/api/Environment;

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->NONE:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor;->setLevel(Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;)Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 66
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    sput-object v1, Lcom/cuebiq/cuebiqsdk/injection/Injection;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 68
    :cond_0
    sget-object v1, Lcom/cuebiq/cuebiqsdk/injection/Injection;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object v1

    .line 65
    :cond_1
    sget-object v1, Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;->BODY:Lcom/cuebiq/cuebiqsdk/api/HttpLoggingInterceptor$Level;

    goto :goto_0
.end method

.method public static provideNetworkLayer()Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/cuebiq/cuebiqsdk/injection/Injection;->mNetworkLayer:Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/injection/Injection;->provideHttpClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;-><init>(Lokhttp3/OkHttpClient;)V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/injection/Injection;->mNetworkLayer:Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;

    .line 58
    :cond_0
    sget-object v0, Lcom/cuebiq/cuebiqsdk/injection/Injection;->mNetworkLayer:Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;

    return-object v0
.end method
