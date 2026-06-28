.class public Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "AppLovinCustomEventInterstitial.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdClickListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# static fields
.field private static final GLOBAL_INTERSTITIAL_ADS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Queue",
            "<",
            "Lcom/applovin/sdk/AppLovinAd;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final GLOBAL_INTERSTITIAL_ADS_LOCK:Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field private zoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    return-void
.end method

.method private createInterstitial(Landroid/content/Context;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sdk"    # Lcom/applovin/sdk/AppLovinSdk;

    .prologue
    .line 248
    const/4 v2, 0x0

    .line 253
    .local v2, "inter":Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    :try_start_0
    const-class v1, Landroid/content/Context;

    .line 254
    .local v1, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Lcom/applovin/adview/AppLovinInterstitialAd;

    const-string v6, "create"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Lcom/applovin/sdk/AppLovinSdk;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 256
    .local v3, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    .end local v1    # "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v2

    .line 258
    :catch_0
    move-exception v4

    .line 260
    .local v4, "th":Ljava/lang/Throwable;
    const/4 v5, 0x6

    const-string v6, "Unable to create AppLovinInterstitialAd."

    invoke-static {v5, v6}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 261
    iget-object v5, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v6, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v5, v6}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method private static dequeueAd(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAd;
    .locals 5
    .param p0, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 217
    sget-object v4, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS_LOCK:Ljava/lang/Object;

    monitor-enter v4

    .line 219
    const/4 v1, 0x0

    .line 221
    .local v1, "preloadedAd":Lcom/applovin/sdk/AppLovinAd;
    :try_start_0
    sget-object v3, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Queue;

    .line 222
    .local v2, "preloadedAds":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/applovin/sdk/AppLovinAd;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 224
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/applovin/sdk/AppLovinAd;

    move-object v1, v0

    .line 227
    :cond_0
    monitor-exit v4

    return-object v1

    .line 228
    .end local v2    # "preloadedAds":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/applovin/sdk/AppLovinAd;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static enqueueAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 3
    .param p0, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 233
    sget-object v2, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 235
    :try_start_0
    sget-object v1, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    .line 236
    .local v0, "preloadedAds":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/applovin/sdk/AppLovinAd;>;"
    if-nez v0, :cond_0

    .line 238
    new-instance v0, Ljava/util/LinkedList;

    .end local v0    # "preloadedAds":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/applovin/sdk/AppLovinAd;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 239
    .restart local v0    # "preloadedAds":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/applovin/sdk/AppLovinAd;>;"
    sget-object v1, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->GLOBAL_INTERSTITIAL_ADS:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 243
    monitor-exit v2

    .line 244
    return-void

    .line 243
    .end local v0    # "preloadedAds":Ljava/util/Queue;, "Ljava/util/Queue<Lcom/applovin/sdk/AppLovinAd;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static log(ILjava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 271
    const-string v0, "AppLovinInterstitial"

    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 273
    return-void
.end method

.method private static toMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 1
    .param p0, "applovinErrorCode"    # I

    .prologue
    .line 277
    const/16 v0, 0xcc

    if-ne p0, v0, :cond_0

    .line 279
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 295
    :goto_0
    return-object v0

    .line 281
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 283
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 285
    :cond_1
    const/16 v0, -0x67

    if-ne p0, v0, :cond_2

    .line 287
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 289
    :cond_2
    const/16 v0, -0x66

    if-ne p0, v0, :cond_3

    .line 291
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 295
    :cond_3
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 191
    const/4 v0, 0x3

    const-string v1, "Interstitial clicked"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onLeaveApplication()V

    .line 193
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 173
    const/4 v0, 0x3

    const-string v1, "Interstitial displayed"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 175
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "appLovinAd"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 180
    const/4 v0, 0x3

    const-string v1, "Interstitial dismissed"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 182
    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 4
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 150
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial did load ad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/applovin/sdk/AppLovinAd;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->enqueueAd(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 155
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .prologue
    .line 160
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial failed to load with error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-static {p1}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->toMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 164
    return-void
.end method

.method public loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
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
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v7, 0x3

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Requesting AppLovin interstitial with localExtras: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 77
    iput-object p2, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 78
    iput-object p1, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->context:Landroid/content/Context;

    .line 80
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    .line 81
    .local v2, "sdk":Lcom/applovin/sdk/AppLovinSdk;
    const-string v5, "MoPub-2.1.0"

    invoke-virtual {v2, v5}, Lcom/applovin/sdk/AppLovinSdk;->setPluginVersion(Ljava/lang/String;)V

    .line 84
    if-eqz p4, :cond_0

    const-string v5, "zone_id"

    invoke-interface {p4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v3, v5

    .line 85
    .local v3, "serverExtrasZoneId":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .end local v3    # "serverExtrasZoneId":Ljava/lang/String;
    :goto_1
    iput-object v3, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    .line 88
    iget-object v5, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-static {v5}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->dequeueAd(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    .line 89
    .local v1, "preloadedAd":Lcom/applovin/sdk/AppLovinAd;
    if-eqz v1, :cond_2

    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found preloaded ad for zone: {"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "}"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 92
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    .line 117
    :goto_2
    return-void

    .line 84
    .end local v1    # "preloadedAd":Lcom/applovin/sdk/AppLovinAd;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 85
    .restart local v3    # "serverExtrasZoneId":Ljava/lang/String;
    :cond_1
    const-string v3, ""

    goto :goto_1

    .line 97
    .end local v3    # "serverExtrasZoneId":Ljava/lang/String;
    .restart local v1    # "preloadedAd":Lcom/applovin/sdk/AppLovinAd;
    :cond_2
    const-string v5, ""

    iget-object v6, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v5

    sget-object v6, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v5, v6, p0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_2

    .line 107
    :cond_3
    :try_start_0
    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "loadNextAdForZoneId"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Lcom/applovin/sdk/AppLovinAdLoadListener;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 108
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p0, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 110
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 112
    .local v4, "th":Ljava/lang/Throwable;
    const/4 v5, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to load ad for zone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 113
    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v5}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_2
.end method

.method public onInvalidate()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method public showInterstitial()V
    .locals 5

    .prologue
    .line 122
    iget-object v3, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->zoneId:Ljava/lang/String;

    invoke-static {v3}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->dequeueAd(Ljava/lang/String;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v1

    .line 123
    .local v1, "preloadedAd":Lcom/applovin/sdk/AppLovinAd;
    if-eqz v1, :cond_0

    .line 125
    iget-object v3, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    .line 127
    .local v2, "sdk":Lcom/applovin/sdk/AppLovinSdk;
    iget-object v3, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->context:Landroid/content/Context;

    invoke-direct {p0, v3, v2}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->createInterstitial(Landroid/content/Context;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    .line 128
    .local v0, "interstitialAd":Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    invoke-interface {v0, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 129
    invoke-interface {v0, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 130
    invoke-interface {v0, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 131
    invoke-interface {v0, v1}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lcom/applovin/sdk/AppLovinAd;)V

    .line 138
    .end local v0    # "interstitialAd":Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    .end local v2    # "sdk":Lcom/applovin/sdk/AppLovinSdk;
    :goto_0
    return-void

    .line 135
    :cond_0
    const/4 v3, 0x6

    const-string v4, "Failed to show an AppLovin interstitial before one was loaded"

    invoke-static {v3, v4}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->listener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v3, v4}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public videoPlaybackBegan(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 202
    const/4 v0, 0x3

    const-string v1, "Interstitial video playback began"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 203
    return-void
.end method

.method public videoPlaybackEnded(Lcom/applovin/sdk/AppLovinAd;DZ)V
    .locals 4
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;
    .param p2, "percentViewed"    # D
    .param p4, "fullyWatched"    # Z

    .prologue
    .line 208
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial video playback ended at playback percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mopub/mobileads/AppLovinCustomEventInterstitial;->log(ILjava/lang/String;)V

    .line 209
    return-void
.end method
