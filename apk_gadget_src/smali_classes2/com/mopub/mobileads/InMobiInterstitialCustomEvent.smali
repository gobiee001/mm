.class public Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "InMobiInterstitialCustomEvent.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isAppIntialize:Z


# instance fields
.field private accountId:Ljava/lang/String;

.field private iMInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

.field private mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private placementId:J

.field private serverParams:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->isAppIntialize:Z

    .line 30
    const-class v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->accountId:Ljava/lang/String;

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->placementId:J

    return-void
.end method


# virtual methods
.method protected loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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

    .prologue
    .line 36
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 39
    if-eqz p1, :cond_1

    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 40
    check-cast v0, Landroid/app/Activity;

    .line 48
    .local v0, "activity":Landroid/app/Activity;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v4, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->serverParams:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :goto_0
    :try_start_1
    iget-object v4, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->serverParams:Lorg/json/JSONObject;

    const-string v5, "accountid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->accountId:Ljava/lang/String;

    .line 56
    iget-object v4, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->serverParams:Lorg/json/JSONObject;

    const-string v5, "placementid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->placementId:J
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    :goto_1
    sget-boolean v4, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->isAppIntialize:Z

    if-nez v4, :cond_0

    .line 62
    iget-object v4, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->accountId:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    const/4 v4, 0x1

    sput-boolean v4, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->isAppIntialize:Z

    .line 72
    :cond_0
    new-instance v4, Lcom/inmobi/ads/InMobiInterstitial;

    iget-wide v6, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->placementId:J

    invoke-direct {v4, v0, v6, v7, p0}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v4, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->iMInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    .line 89
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "tp"

    const-string v5, "c_mopub"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v4, "tp-ver"

    const-string v5, "4.19.0"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    iget-object v4, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->iMInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v4, v3}, Lcom/inmobi/ads/InMobiInterstitial;->setExtras(Ljava/util/Map;)V

    .line 93
    iget-object v4, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->iMInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v4}, Lcom/inmobi/ads/InMobiInterstitial;->load()V

    .line 94
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 42
    :cond_1
    sget-object v4, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v5, "Context not an Activity. Returning error!"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v4, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v4, v5}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_2

    .line 49
    .restart local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v5, "Could not parse server parameters"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 58
    .local v2, "e1":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onAdDismissed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 114
    sget-object v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "InMobi interstitial ad dismissed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 118
    :cond_0
    return-void
.end method

.method public onAdDisplayFailed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 190
    sget-object v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Interstitial ad failed to display."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 122
    sget-object v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "InMobi interstitial show on screen."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 126
    :cond_0
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
    .line 207
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "InMobi interstitial interaction happening."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 211
    :cond_0
    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;
    .param p2, "status"    # Lcom/inmobi/ads/InMobiAdRequestStatus;

    .prologue
    .line 131
    sget-object v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "InMobi interstitial ad failed to load."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 136
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_2

    .line 138
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 139
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_3

    .line 141
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 142
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 143
    :cond_3
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_4

    .line 144
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 145
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 146
    :cond_4
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_5

    .line 147
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 148
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_6

    .line 150
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 151
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 154
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 167
    sget-object v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "InMobi interstitial ad loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 171
    :cond_0
    return-void
.end method

.method public onAdReceived(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 162
    sget-object v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "InMobi Adserver responded with an Ad"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
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
    .line 176
    .local p2, "rewards":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v3, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v4, "InMobi interstitial onRewardActionCompleted."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    if-eqz p2, :cond_0

    .line 179
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 180
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "key":Ljava/lang/String;
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "value":Ljava/lang/String;
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

    .line 186
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Object;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onAdWillDisplay(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 195
    sget-object v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Interstitial ad will display."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method

.method public onInvalidate()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 200
    sget-object v0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "InMobi interstitial ad leaving application."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->mInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onLeaveApplication()V

    .line 202
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->iMInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->iMInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    .line 103
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiInterstitialCustomEvent;->iMInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->show()V

    .line 106
    :cond_0
    return-void
.end method
