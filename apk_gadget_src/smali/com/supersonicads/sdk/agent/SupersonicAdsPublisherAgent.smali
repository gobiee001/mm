.class public final Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
.super Ljava/lang/Object;
.source "SupersonicAdsPublisherAgent.java"

# interfaces
.implements Lcom/supersonicads/sdk/SSAPublisher;
.implements Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;


# static fields
.field private static mutableContextWrapper:Landroid/content/MutableContextWrapper;

.field private static sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;


# instance fields
.field private mDemandSourceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/supersonicads/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation
.end field

.field private session:Lcom/supersonicads/sdk/data/SSASession;

.field private wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method private constructor <init>(Landroid/app/Activity;I)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "debugMode"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mDemandSourceMap:Ljava/util/Map;

    .line 53
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getDebugMode()I

    move-result v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/Logger;->enableLogging(I)V

    .line 55
    const-string v0, "SupersonicAdsPublisherAgent"

    const-string v1, "C\'tor"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Landroid/content/MutableContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    .line 59
    new-instance v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent$1;-><init>(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 67
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->startSession(Landroid/content/Context;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;)Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 1
    .param p0, "x0"    # Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;Lcom/supersonicads/sdk/controller/SupersonicWebView;)Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 0
    .param p0, "x0"    # Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    .param p1, "x1"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object p1
.end method

.method static synthetic access$100()Landroid/content/MutableContextWrapper;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    return-object v0
.end method

.method private endSession()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/SSASession;->endSession()V

    .line 121
    invoke-static {}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->addSession(Lcom/supersonicads/sdk/data/SSASession;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    .line 124
    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    const-class v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getInstance(Landroid/app/Activity;I)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/app/Activity;I)Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "debugMode"    # I

    .prologue
    .line 84
    const-class v1, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    monitor-enter v1

    :try_start_0
    const-string v0, "SupersonicAdsPublisherAgent"

    const-string v2, "getInstance()"

    invoke-static {v0, v2}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    invoke-direct {v0, p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;-><init>(Landroid/app/Activity;I)V

    sput-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;

    .line 96
    :goto_0
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->sInstance:Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :cond_0
    :try_start_1
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private startSession(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 111
    new-instance v0, Lcom/supersonicads/sdk/data/SSASession;

    sget-object v1, Lcom/supersonicads/sdk/data/SSASession$SessionType;->launched:Lcom/supersonicads/sdk/data/SSASession$SessionType;

    invoke-direct {v0, p1, v1}, Lcom/supersonicads/sdk/data/SSASession;-><init>(Landroid/content/Context;Lcom/supersonicads/sdk/data/SSASession$SessionType;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    .line 112
    return-void
.end method


# virtual methods
.method public getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;
    .locals 1
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 367
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const/4 v0, 0x0

    .line 370
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mDemandSourceMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonicads/sdk/data/DemandSource;

    goto :goto_0
.end method

.method public getDemandSources()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/supersonicads/sdk/data/DemandSource;",
            ">;"
        }
    .end annotation

    .prologue
    .line 362
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mDemandSourceMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 1
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/supersonicads/sdk/listeners/OnOfferWallListener;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 166
    return-void
.end method

.method public getWebViewController()Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    return-object v0
.end method

.method public initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V
    .locals 1
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnInterstitialListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 177
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initInterstitial(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnInterstitialListener;)V

    .line 178
    return-void
.end method

.method public initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V
    .locals 1
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnOfferWallListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 155
    .local p3, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initOfferWall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 156
    return-void
.end method

.method public initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V
    .locals 2
    .param p1, "applicationKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "demandSourceName"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 137
    .local p4, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/supersonicads/sdk/data/DemandSource;

    invoke-direct {v0, p3, p4, p5}, Lcom/supersonicads/sdk/data/DemandSource;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;)V

    .line 138
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mDemandSourceMap:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v1, p1, p2, p3, p0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->initRewardedVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/DSRewardedVideoListener;)V

    .line 141
    return-void
.end method

.method public isInterstitialAdAvailable()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->isInterstitialAdAvailable()Z

    move-result v0

    return v0
.end method

.method public loadInterstitial()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->loadInterstitial()V

    .line 183
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 222
    :try_start_0
    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->enterBackground()V

    .line 226
    iget-object v1, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v1, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->unregisterConnectionReceiver(Landroid/content/Context;)V

    .line 228
    invoke-direct {p0}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->endSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    return-void

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 231
    new-instance v1, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v1}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onRVAdClosed(Ljava/lang/String;)V
    .locals 2
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 330
    invoke-virtual {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;

    move-result-object v0

    .line 331
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getListener()Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 333
    .local v1, "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_0

    .line 334
    invoke-interface {v1}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVAdClosed()V

    .line 337
    .end local v1    # "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    :cond_0
    return-void
.end method

.method public onRVAdCredited(ILjava/lang/String;)V
    .locals 2
    .param p1, "credits"    # I
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 319
    invoke-virtual {p0, p2}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;

    move-result-object v0

    .line 320
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getListener()Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 322
    .local v1, "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_0

    .line 323
    invoke-interface {v1, p1}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVAdCredited(I)V

    .line 326
    .end local v1    # "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    :cond_0
    return-void
.end method

.method public onRVAdOpened(Ljava/lang/String;)V
    .locals 2
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 341
    invoke-virtual {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;

    move-result-object v0

    .line 342
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getListener()Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 344
    .local v1, "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_0

    .line 345
    invoke-interface {v1}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVAdOpened()V

    .line 348
    .end local v1    # "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    :cond_0
    return-void
.end method

.method public onRVInitFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 296
    invoke-virtual {p0, p2}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;

    move-result-object v0

    .line 297
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    if-eqz v0, :cond_0

    .line 298
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 299
    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getListener()Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 300
    .local v1, "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_0

    .line 301
    invoke-interface {v1, p1}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVInitFail(Ljava/lang/String;)V

    .line 304
    .end local v1    # "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    :cond_0
    return-void
.end method

.method public onRVInitSuccess(Lcom/supersonicads/sdk/data/AdUnitsReady;Ljava/lang/String;)V
    .locals 3
    .param p1, "adUnitsReady"    # Lcom/supersonicads/sdk/data/AdUnitsReady;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0, p2}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;

    move-result-object v0

    .line 285
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    if-eqz v0, :cond_0

    .line 286
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/supersonicads/sdk/data/DemandSource;->setDemandSourceInitState(I)V

    .line 287
    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getListener()Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 288
    .local v1, "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_0

    .line 289
    invoke-interface {v1, p1}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVInitSuccess(Lcom/supersonicads/sdk/data/AdUnitsReady;)V

    .line 292
    .end local v1    # "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    :cond_0
    return-void
.end method

.method public onRVNoMoreOffers(Ljava/lang/String;)V
    .locals 2
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 308
    invoke-virtual {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;

    move-result-object v0

    .line 309
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getListener()Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 311
    .local v1, "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_0

    .line 312
    invoke-interface {v1}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVNoMoreOffers()V

    .line 315
    .end local v1    # "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    :cond_0
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 352
    invoke-virtual {p0, p2}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->getDemandSourceByName(Ljava/lang/String;)Lcom/supersonicads/sdk/data/DemandSource;

    move-result-object v0

    .line 353
    .local v0, "demandSource":Lcom/supersonicads/sdk/data/DemandSource;
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/supersonicads/sdk/data/DemandSource;->getListener()Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;

    move-result-object v1

    .line 355
    .local v1, "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    if-eqz v1, :cond_0

    .line 356
    invoke-interface {v1, p1}, Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;->onRVShowFail(Ljava/lang/String;)V

    .line 359
    .end local v1    # "listener":Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 206
    sget-object v0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->mutableContextWrapper:Landroid/content/MutableContextWrapper;

    invoke-virtual {v0, p1}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    .line 208
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->enterForeground()V

    .line 212
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->registerConnectionReceiver(Landroid/content/Context;)V

    .line 214
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0, p1}, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->resumeSession(Landroid/content/Context;)V

    .line 217
    :cond_0
    return-void
.end method

.method public resumeSession(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    new-instance v0, Lcom/supersonicads/sdk/data/SSASession;

    sget-object v1, Lcom/supersonicads/sdk/data/SSASession$SessionType;->backFromBG:Lcom/supersonicads/sdk/data/SSASession$SessionType;

    invoke-direct {v0, p1, v1}, Lcom/supersonicads/sdk/data/SSASession;-><init>(Landroid/content/Context;Lcom/supersonicads/sdk/data/SSASession$SessionType;)V

    iput-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->session:Lcom/supersonicads/sdk/data/SSASession;

    .line 116
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showInterstitial()V

    .line 194
    return-void
.end method

.method public showOfferWall(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "extraParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showOfferWall(Ljava/util/Map;)V

    .line 160
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 1
    .param p1, "demandSourceName"    # Ljava/lang/String;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/supersonicads/sdk/agent/SupersonicAdsPublisherAgent;->wvc:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->showRewardedVideo(Ljava/lang/String;)V

    .line 146
    return-void
.end method
