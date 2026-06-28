.class public Lcom/mopub/mobileads/InMobiRewardedCustomEvent;
.super Lcom/mopub/mobileads/CustomEventRewardedVideo;
.source "InMobiRewardedCustomEvent.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private accountId:Ljava/lang/String;

.field private inmobiInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

.field private isInitialized:Z

.field private placementId:Ljava/lang/String;

.field private serverParams:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventRewardedVideo;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->isInitialized:Z

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->accountId:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->placementId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected checkAndInitializeSdk(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)Z
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x1

    .line 47
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v2, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->serverParams:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->serverParams:Lorg/json/JSONObject;

    const-string v3, "accountid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->accountId:Ljava/lang/String;

    .line 55
    iget-object v2, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->serverParams:Lorg/json/JSONObject;

    const-string v3, "placementid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->placementId:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 60
    :goto_1
    iget-boolean v2, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->isInitialized:Z

    if-nez v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->accountId:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    sget-object v2, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v3, "Initialized InMobi SDK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iput-boolean v4, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->isInitialized:Z

    .line 65
    :cond_0
    return v4

    .line 48
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v3, "Could not parse server parameters"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 57
    .local v1, "e1":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method protected getAdNetworkId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->placementId:Ljava/lang/String;

    return-object v0
.end method

.method protected getLifecycleListener()Lcom/mopub/common/LifecycleListener;
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return-object v0
.end method

.method protected hasVideoAvailable()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->inmobiInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->inmobiInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected loadWithSdkInitialized(Landroid/app/Activity;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 98
    .local p2, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {p0}, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->getAdNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3, p0}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v1, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->inmobiInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "tp"

    const-string v2, "c_mopub"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v1, "tp-ver"

    const-string v2, "4.19.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->inmobiInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial;->setExtras(Ljava/util/Map;)V

    .line 122
    iget-object v1, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->inmobiInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiInterstitial;->load()V

    .line 123
    return-void
.end method

.method public onAdDismissed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 141
    sget-object v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Ad dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    iget-object v1, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->placementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClosed(Ljava/lang/Class;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onAdDisplayFailed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 225
    sget-object v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Rewarded video ad failed to display."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 147
    sget-object v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Ad displayed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    iget-object v1, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->placementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoStarted(Ljava/lang/Class;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public onAdInteraction(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Ad interaction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    iget-object v1, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->placementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoClicked(Ljava/lang/Class;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;
    .param p2, "status"    # Lcom/inmobi/ads/InMobiAdRequestStatus;

    .prologue
    .line 162
    sget-object v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad failed to load:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_0

    .line 164
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    .line 165
    invoke-virtual {p0}, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 192
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_1

    .line 168
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    .line 169
    invoke-virtual {p0}, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 171
    :cond_1
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_2

    .line 172
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    .line 173
    invoke-virtual {p0}, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_3

    .line 176
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    .line 177
    invoke-virtual {p0}, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 179
    :cond_3
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_4

    .line 180
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    .line 181
    invoke-virtual {p0}, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_5

    .line 184
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    .line 185
    invoke-virtual {p0}, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 188
    :cond_5
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    .line 189
    invoke-virtual {p0}, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->getAdNetworkId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadFailure(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 201
    sget-object v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Ad load succeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    if-eqz p1, :cond_0

    .line 203
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    iget-object v1, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->placementId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoLoadSuccess(Ljava/lang/Class;Ljava/lang/String;)V

    .line 205
    :cond_0
    return-void
.end method

.method public onAdReceived(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 196
    sget-object v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "InMobi Adserver responded with an Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    return-void
.end method

.method public onAdRewardActionCompleted(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V
    .locals 6
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "rewards":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v3, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v4, "InMobi Rewarded video onRewardActionCompleted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz p2, :cond_1

    .line 212
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 213
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    const-string v1, ""

    .local v1, "key":Ljava/lang/String;
    const-string v2, ""

    .line 214
    .local v2, "value":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 217
    const-string v3, "Rewards: "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    :cond_0
    const-class v3, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v5}, Lcom/mopub/common/MoPubReward;->success(Ljava/lang/String;I)Lcom/mopub/common/MoPubReward;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoCompleted(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/common/MoPubReward;)V

    .line 221
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onAdWillDisplay(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 230
    sget-object v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Rewarded video ad will display."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void
.end method

.method protected onInvalidate()V
    .locals 0

    .prologue
    .line 127
    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 235
    sget-object v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "User left application"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void
.end method

.method protected showVideo()V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->hasVideoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->inmobiInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->show()V

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    const-class v0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;

    iget-object v1, p0, Lcom/mopub/mobileads/InMobiRewardedCustomEvent;->placementId:Ljava/lang/String;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->VIDEO_PLAYBACK_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-static {v0, v1, v2}, Lcom/mopub/mobileads/MoPubRewardedVideoManager;->onRewardedVideoPlaybackError(Ljava/lang/Class;Ljava/lang/String;Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method
