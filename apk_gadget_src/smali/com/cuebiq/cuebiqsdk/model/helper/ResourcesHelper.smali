.class public Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;
.super Ljava/lang/Object;
.source "ResourcesHelper.java"


# static fields
.field private static instance:Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->sendRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Ljava/lang/String;Z)V

    return-void
.end method

.method public static get()Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->instance:Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;-><init>()V

    sput-object v0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->instance:Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    .line 146
    :cond_0
    sget-object v0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->instance:Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    return-object v0
.end method

.method private sendRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;
    .param p3, "googleAdvertisingID"    # Ljava/lang/String;
    .param p4, "isLimitedADTracking"    # Z

    .prologue
    .line 60
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getAuth()Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;

    move-result-object v0

    .line 61
    .local v0, "auth":Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;
    invoke-virtual {p2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getDevice()Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;

    move-result-object v1

    .line 64
    .local v1, "device":Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;
    invoke-virtual {v0, p3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Auth;->setGoogleAdvertiserID(Ljava/lang/String;)V

    .line 66
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Device;->setIsGoogleAdvIDDisabled(Ljava/lang/Boolean;)V

    .line 69
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x64

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    .line 70
    .local v4, "random":I
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getIatr()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 71
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getInstalledApps(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setInstalledApps(Ljava/util/ArrayList;)V

    .line 72
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->getPairedDevices()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setPairedDevices(Ljava/util/List;)V

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getV()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p2, v5}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->setSettingsVersion(Ljava/lang/Integer;)V

    .line 79
    :try_start_0
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/injection/Injection;->provideNetworkLayer()Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;

    move-result-object v3

    .line 80
    .local v3, "networkLayer":Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
    new-instance v5, Lcom/cuebiq/cuebiqsdk/api/BeaRequest;

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v6

    invoke-interface {v6, p1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->retrieveAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Lcom/cuebiq/cuebiqsdk/api/BeaRequest;-><init>(Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Ljava/lang/String;)V

    new-instance v6, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;-><init>(Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    invoke-virtual {v3, v5, v6}, Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;->callAsync(Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;Lokhttp3/Callback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v3    # "networkLayer":Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v2

    .line 137
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v6, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Samsung crash Android 5+: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v5, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    instance-of v8, v5, Lcom/google/gson/Gson;

    if-nez v8, :cond_1

    invoke-virtual {v5, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-direct {v6, p1, v7, v5, v2}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v6, v5}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_1
    check-cast v5, Lcom/google/gson/Gson;

    invoke-static {v5, p3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method


# virtual methods
.method public bea(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "request"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    .prologue
    .line 34
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$1;-><init>(Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    invoke-direct {v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;-><init>(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$OnGAIDListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 57
    return-void
.end method
