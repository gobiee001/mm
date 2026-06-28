.class public Lcom/mopub/mobileads/AppLovinCustomEventBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "AppLovinCustomEventBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/AppLovinCustomEventBanner$AppLovinAdViewEventListenerProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    .line 265
    return-void
.end method

.method static synthetic access$000(ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(I)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 37
    invoke-static {p0}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->toMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;

    move-result-object v0

    return-object v0
.end method

.method private appLovinAdSizeFromLocalExtras(Ljava/util/Map;)Lcom/applovin/sdk/AppLovinAdSize;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/applovin/sdk/AppLovinAdSize;"
        }
    .end annotation

    .prologue
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    const/4 v8, 0x6

    .line 144
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    :cond_0
    const-string v4, "No serverExtras provided"

    invoke-static {v8, v4}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    move-object v4, v5

    .line 186
    :goto_0
    return-object v4

    .line 152
    :cond_1
    :try_start_0
    const-string v4, "com_mopub_ad_width"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 153
    .local v3, "width":I
    const-string v4, "com_mopub_ad_height"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 156
    .local v0, "height":I
    if-lez v3, :cond_4

    if-lez v0, :cond_4

    .line 158
    const/4 v4, 0x3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Valid width ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") and height ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") provided"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    .line 161
    rsub-int/lit8 v4, v0, 0x32

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 163
    .local v1, "offset":I
    const/16 v4, 0xa

    if-gt v1, v4, :cond_2

    .line 165
    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->BANNER:Lcom/applovin/sdk/AppLovinAdSize;

    goto :goto_0

    .line 167
    :cond_2
    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v4}, Lcom/applovin/sdk/AppLovinAdSize;->getHeight()I

    move-result v4

    if-gt v0, v4, :cond_3

    .line 169
    sget-object v4, Lcom/applovin/sdk/AppLovinAdSize;->MREC:Lcom/applovin/sdk/AppLovinAdSize;

    goto :goto_0

    .line 173
    :cond_3
    const/4 v4, 0x6

    const-string v6, "Provided dimensions does not meet the dimensions required of banner or mrec ads"

    invoke-static {v4, v6}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    .end local v0    # "height":I
    .end local v1    # "offset":I
    .end local v3    # "width":I
    :goto_1
    move-object v4, v5

    .line 186
    goto :goto_0

    .line 178
    .restart local v0    # "height":I
    .restart local v3    # "width":I
    :cond_4
    const/4 v4, 0x6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid width ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") and height ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") provided"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 181
    .end local v0    # "height":I
    .end local v3    # "width":I
    :catch_0
    move-exception v2

    .line 183
    .local v2, "th":Ljava/lang/Throwable;
    const-string v4, "Encountered error while parsing width and height from serverExtras"

    invoke-static {v8, v4, v2}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private createAdView(Lcom/applovin/sdk/AppLovinAdSize;Ljava/util/Map;Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)Lcom/applovin/adview/AppLovinAdView;
    .locals 9
    .param p1, "size"    # Lcom/applovin/sdk/AppLovinAdSize;
    .param p3, "parentContext"    # Landroid/content/Context;
    .param p4, "customEventBannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/sdk/AppLovinAdSize;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
            ")",
            "Lcom/applovin/adview/AppLovinAdView;"
        }
    .end annotation

    .prologue
    .line 195
    .local p2, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 200
    .local v1, "adView":Lcom/applovin/adview/AppLovinAdView;
    :try_start_0
    const-class v3, Landroid/content/Context;

    .line 204
    .local v3, "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_0

    const-string v5, "zone_id"

    invoke-interface {p2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 207
    const-class v5, Lcom/applovin/adview/AppLovinAdView;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/applovin/sdk/AppLovinAdSize;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 208
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, "zone_id"

    invoke-interface {p2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    move-object v1, v0

    .line 222
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-object v1

    .line 212
    .restart local v3    # "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const-class v5, Lcom/applovin/adview/AppLovinAdView;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Lcom/applovin/sdk/AppLovinAdSize;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 213
    .restart local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/applovin/adview/AppLovinAdView;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 216
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "contextClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v4

    .line 218
    .local v4, "th":Ljava/lang/Throwable;
    const/4 v5, 0x6

    const-string v6, "Unable to get create AppLovinAdView."

    invoke-static {v5, v6}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    .line 219
    sget-object v5, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p4, v5}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method private static log(ILjava/lang/String;)V
    .locals 1
    .param p0, "priority"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 228
    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p0, "priority"    # I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 234
    const-string v1, "AppLovinBanner"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p2, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 236
    return-void

    .line 234
    :cond_0
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static toMoPubErrorCode(I)Lcom/mopub/mobileads/MoPubErrorCode;
    .locals 1
    .param p0, "applovinErrorCode"    # I

    .prologue
    .line 240
    const/16 v0, 0xcc

    if-ne p0, v0, :cond_0

    .line 242
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 258
    :goto_0
    return-object v0

    .line 244
    :cond_0
    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    .line 246
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 248
    :cond_1
    const/16 v0, -0x67

    if-ne p0, v0, :cond_2

    .line 250
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NO_CONNECTION:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 252
    :cond_2
    const/16 v0, -0x66

    if-ne p0, v0, :cond_3

    .line 254
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0

    .line 258
    :cond_3
    sget-object v0, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    goto :goto_0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventBannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
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
    .line 64
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requesting AppLovin banner with localExtras: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    .line 66
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->appLovinAdSizeFromLocalExtras(Ljava/util/Map;)Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    .line 67
    .local v0, "adSize":Lcom/applovin/sdk/AppLovinAdSize;
    if-eqz v0, :cond_0

    .line 69
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    .line 70
    .local v2, "sdk":Lcom/applovin/sdk/AppLovinSdk;
    const-string v3, "MoPub-2.1.0"

    invoke-virtual {v2, v3}, Lcom/applovin/sdk/AppLovinSdk;->setPluginVersion(Ljava/lang/String;)V

    .line 72
    invoke-direct {p0, v0, p4, p1, p2}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->createAdView(Lcom/applovin/sdk/AppLovinAdSize;Ljava/util/Map;Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)Lcom/applovin/adview/AppLovinAdView;

    move-result-object v1

    .line 74
    .local v1, "adView":Lcom/applovin/adview/AppLovinAdView;
    new-instance v3, Lcom/mopub/mobileads/AppLovinCustomEventBanner$1;

    invoke-direct {v3, p0, p2, v1}, Lcom/mopub/mobileads/AppLovinCustomEventBanner$1;-><init>(Lcom/mopub/mobileads/AppLovinCustomEventBanner;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Lcom/applovin/adview/AppLovinAdView;)V

    invoke-virtual {v1, v3}, Lcom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 92
    new-instance v3, Lcom/mopub/mobileads/AppLovinCustomEventBanner$2;

    invoke-direct {v3, p0}, Lcom/mopub/mobileads/AppLovinCustomEventBanner$2;-><init>(Lcom/mopub/mobileads/AppLovinCustomEventBanner;)V

    invoke-virtual {v1, v3}, Lcom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 106
    new-instance v3, Lcom/mopub/mobileads/AppLovinCustomEventBanner$3;

    invoke-direct {v3, p0, p2}, Lcom/mopub/mobileads/AppLovinCustomEventBanner$3;-><init>(Lcom/mopub/mobileads/AppLovinCustomEventBanner;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)V

    invoke-virtual {v1, v3}, Lcom/applovin/adview/AppLovinAdView;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 121
    invoke-static {p2}, Lcom/mopub/mobileads/AppLovinCustomEventBanner$AppLovinAdViewEventListenerProxy;->access$200(Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/applovin/adview/AppLovinAdViewEventListener;

    invoke-virtual {v1, v3}, Lcom/applovin/adview/AppLovinAdView;->setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V

    .line 124
    invoke-virtual {v1}, Lcom/applovin/adview/AppLovinAdView;->loadNextAd()V

    .line 132
    .end local v1    # "adView":Lcom/applovin/adview/AppLovinAdView;
    .end local v2    # "sdk":Lcom/applovin/sdk/AppLovinSdk;
    :goto_0
    return-void

    .line 128
    :cond_0
    const/4 v3, 0x6

    const-string v4, "Unable to request AppLovin banner"

    invoke-static {v3, v4}, Lcom/mopub/mobileads/AppLovinCustomEventBanner;->log(ILjava/lang/String;)V

    .line 130
    sget-object v3, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v3}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method
