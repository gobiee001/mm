.class public Lcom/mopub/mobileads/InMobiBannerCustomEvent;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "InMobiBannerCustomEvent.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiBanner$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static isAppIntialize:Z


# instance fields
.field private final BANNER:Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;

.field private final MEDIUM_RECTANGLE:Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;

.field private accountId:Ljava/lang/String;

.field private adHeight:I

.field private adWidth:I

.field private imbanner:Lcom/inmobi/ads/InMobiBanner;

.field private localParmas:Lorg/json/JSONObject;

.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

.field private placementId:J

.field private serverParams:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->isAppIntialize:Z

    .line 40
    const-class v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->accountId:Ljava/lang/String;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->placementId:J

    .line 41
    iput v2, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->adWidth:I

    .line 42
    iput v2, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->adHeight:I

    .line 44
    new-instance v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;

    const/16 v1, 0x140

    const/16 v2, 0x32

    invoke-direct {v0, p0, v1, v2}, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;-><init>(Lcom/mopub/mobileads/InMobiBannerCustomEvent;II)V

    iput-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->BANNER:Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;

    .line 45
    new-instance v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;

    const/16 v1, 0x12c

    const/16 v2, 0xfa

    invoke-direct {v0, p0, v1, v2}, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;-><init>(Lcom/mopub/mobileads/InMobiBannerCustomEvent;II)V

    iput-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->MEDIUM_RECTANGLE:Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;

    .line 207
    return-void
.end method

.method private calculateAdSize(II)Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 192
    const/16 v0, 0x140

    if-gt p1, v0, :cond_0

    const/16 v0, 0x32

    if-gt p2, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->BANNER:Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;

    .line 197
    :goto_0
    return-object v0

    .line 194
    :cond_0
    const/16 v0, 0x12c

    if-gt p1, v0, :cond_1

    const/16 v0, 0xfa

    if-gt p2, v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->MEDIUM_RECTANGLE:Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;

    goto :goto_0

    .line 197
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 14
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
    .line 122
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 126
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p4

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->serverParams:Lorg/json/JSONObject;

    .line 127
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->serverParams:Lorg/json/JSONObject;

    const-string v10, "accountid"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->accountId:Ljava/lang/String;

    .line 128
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->serverParams:Lorg/json/JSONObject;

    const-string v10, "placementid"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->placementId:J

    .line 130
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->localParmas:Lorg/json/JSONObject;

    .line 131
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->localParmas:Lorg/json/JSONObject;

    const-string v10, "com_mopub_ad_width"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->adWidth:I

    .line 132
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->localParmas:Lorg/json/JSONObject;

    const-string v10, "com_mopub_ad_height"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    iput v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->adHeight:I

    .line 133
    sget-object v9, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->TAG:Ljava/lang/String;

    iget-wide v10, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->placementId:J

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    sget-object v9, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->TAG:Ljava/lang/String;

    iget-object v10, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->accountId:Ljava/lang/String;

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    sget-boolean v9, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->isAppIntialize:Z

    if-nez v9, :cond_0

    .line 142
    :try_start_1
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->accountId:Ljava/lang/String;

    invoke-static {p1, v9}, Lcom/inmobi/sdk/InMobiSdk;->init(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :goto_1
    const/4 v9, 0x1

    sput-boolean v9, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->isAppIntialize:Z

    .line 164
    :cond_0
    new-instance v9, Lcom/inmobi/ads/InMobiBanner;

    iget-wide v10, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->placementId:J

    invoke-direct {v9, p1, v10, v11}, Lcom/inmobi/ads/InMobiBanner;-><init>(Landroid/content/Context;J)V

    iput-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->imbanner:Lcom/inmobi/ads/InMobiBanner;

    .line 165
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->imbanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v9, p0}, Lcom/inmobi/ads/InMobiBanner;->setListener(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    .line 166
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->imbanner:Lcom/inmobi/ads/InMobiBanner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/inmobi/ads/InMobiBanner;->setEnableAutoRefresh(Z)V

    .line 167
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->imbanner:Lcom/inmobi/ads/InMobiBanner;

    sget-object v10, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ANIMATION_OFF:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    invoke-virtual {v9, v10}, Lcom/inmobi/ads/InMobiBanner;->setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V

    .line 169
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 170
    .local v4, "dm":Landroid/util/DisplayMetrics;
    const-string v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .line 171
    .local v8, "wm":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 172
    .local v3, "display":Landroid/view/Display;
    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 173
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 174
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v9, "tp"

    const-string v10, "c_mopub"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v9, "tp-ver"

    const-string v10, "4.19.0"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->imbanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v9, v7}, Lcom/inmobi/ads/InMobiBanner;->setExtras(Ljava/util/Map;)V

    .line 177
    iget v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->adWidth:I

    iget v10, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->adHeight:I

    invoke-direct {p0, v9, v10}, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->calculateAdSize(II)Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;

    move-result-object v2

    .line 179
    .local v2, "adSize":Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;
    if-nez v2, :cond_1

    .line 180
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v10, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v9, v10}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 187
    :goto_2
    return-void

    .line 136
    .end local v2    # "adSize":Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "dm":Landroid/util/DisplayMetrics;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v6

    .line 137
    .local v6, "e1":Lorg/json/JSONException;
    invoke-virtual {v6}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 143
    .end local v6    # "e1":Lorg/json/JSONException;
    :catch_1
    move-exception v5

    .line 144
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 184
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "adSize":Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;
    .restart local v3    # "display":Landroid/view/Display;
    .restart local v4    # "dm":Landroid/util/DisplayMetrics;
    .restart local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v8    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->imbanner:Lcom/inmobi/ads/InMobiBanner;

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2}, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;->getWidth()I

    move-result v11

    int-to-float v11, v11

    iget v12, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 185
    invoke-virtual {v2}, Lcom/mopub/mobileads/InMobiBannerCustomEvent$AdSize;->getHeight()I

    move-result v12

    int-to-float v12, v12

    iget v13, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-direct {v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 184
    invoke-virtual {v9, v10}, Lcom/inmobi/ads/InMobiBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    iget-object v9, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->imbanner:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v9}, Lcom/inmobi/ads/InMobiBanner;->load()V

    goto :goto_2
.end method

.method public onAdDismissed(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 49
    sget-object v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Ad Dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 54
    sget-object v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Ad displayed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-void
.end method

.method public onAdInteraction(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiBanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Ad interaction"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerClicked()V

    .line 61
    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiBanner;
    .param p2, "inMobiAdRequestStatus"    # Lcom/inmobi/ads/InMobiAdRequestStatus;

    .prologue
    .line 65
    sget-object v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Ad failed to load"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_1

    .line 70
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 71
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_2

    .line 73
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 74
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 77
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_4

    .line 79
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NO_FILL:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 80
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_5

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_TIMEOUT:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 83
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 84
    :cond_5
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_6

    .line 85
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->SERVER_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 86
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 88
    :cond_6
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 89
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 97
    sget-object v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "InMobi banner ad loaded successfully."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 99
    if-eqz p1, :cond_1

    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerLoaded(Landroid/view/View;)V

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->NETWORK_INVALID_STATE:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 103
    invoke-interface {v0, v1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method public onAdRewardActionCompleted(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiBanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p2, "rewards":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "Ad rewarded"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method protected onInvalidate()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 2
    .param p1, "ad"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 115
    sget-object v0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->TAG:Ljava/lang/String;

    const-string v1, "User left applicaton"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/InMobiBannerCustomEvent;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onLeaveApplication()V

    .line 117
    return-void
.end method
