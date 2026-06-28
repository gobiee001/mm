.class Lcom/mopub/mobileads/VastVideoInterstitial;
.super Lcom/mopub/mobileads/ResponseBodyInterstitial;
.source "VastVideoInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/VastManager$VastManagerListener;


# instance fields
.field private mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private mExternalViewabilityTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVastManager:Lcom/mopub/mobileads/VastManager;

.field private mVastResponse:Ljava/lang/String;

.field private mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

.field private mVideoTrackers:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;-><init>()V

    return-void
.end method


# virtual methods
.method protected extractExtras(Ljava/util/Map;)V
    .locals 5
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
    .line 27
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "Html-Response-Body"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    .line 29
    const-string v3, "External-Video-Viewability-Trackers"

    .line 30
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 32
    .local v1, "externalViewabilityTrackers":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mExternalViewabilityTrackers:Ljava/util/Map;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    const-string v3, "Video-Trackers"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 39
    .local v2, "videoTrackers":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    :goto_1
    return-void

    .line 33
    .end local v2    # "videoTrackers":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 34
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse video viewability trackers to JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "videoTrackers":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVideoTrackers:Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 44
    :catch_1
    move-exception v0

    .line 45
    .restart local v0    # "e":Lorg/json/JSONException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse video trackers to JSON: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 46
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVideoTrackers:Lorg/json/JSONObject;

    goto :goto_1
.end method

.method public onInvalidate()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/VastManager;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/VastManager;

    invoke-virtual {v0}, Lcom/mopub/mobileads/VastManager;->cancel()V

    .line 75
    :cond_0
    invoke-super {p0}, Lcom/mopub/mobileads/ResponseBodyInterstitial;->onInvalidate()V

    .line 76
    return-void
.end method

.method public onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 2
    .param p1, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 84
    if-nez p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_DOWNLOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 86
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVideoTrackers:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->addVideoTrackers(Lorg/json/JSONObject;)V

    .line 92
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mExternalViewabilityTrackers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->addExternalViewabilityTrackers(Ljava/util/Map;)V

    .line 93
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    goto :goto_0
.end method

.method protected preRenderHtml(Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;)V
    .locals 4
    .param p1, "customEventInterstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 54
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/CacheService;->initializeDiskCache(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mCustomEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_CACHE_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 62
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/mobileads/factories/VastManagerFactory;->create(Landroid/content/Context;)Lcom/mopub/mobileads/VastManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/VastManager;

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastManager:Lcom/mopub/mobileads/VastManager;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastResponse:Ljava/lang/String;

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mAdReport:Lcom/mopub/common/AdReport;

    .line 61
    invoke-virtual {v2}, Lcom/mopub/common/AdReport;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/mopub/mobileads/VastManager;->prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/VastManager$VastManagerListener;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public showInterstitial()V
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    iget-wide v2, p0, Lcom/mopub/mobileads/VastVideoInterstitial;->mBroadcastIdentifier:J

    invoke-static {v0, v1, v2, v3}, Lcom/mopub/mobileads/MraidVideoPlayerActivity;->startVast(Landroid/content/Context;Lcom/mopub/mobileads/VastVideoConfig;J)V

    .line 67
    return-void
.end method
