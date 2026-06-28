.class public Lcom/mopub/network/AdRequest;
.super Lcom/mopub/volley/Request;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/network/AdRequest$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/volley/Request",
        "<",
        "Lcom/mopub/network/AdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAdFormat:Lcom/mopub/common/AdFormat;

.field private final mAdUnitId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/mopub/network/AdRequest$Listener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mopub/common/AdFormat;Ljava/lang/String;Landroid/content/Context;Lcom/mopub/network/AdRequest$Listener;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "adFormat"    # Lcom/mopub/common/AdFormat;
    .param p3, "adUnitId"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "listener"    # Lcom/mopub/network/AdRequest$Listener;

    .prologue
    const/4 v4, 0x0

    .line 63
    invoke-direct {p0, v4, p1, p5}, Lcom/mopub/volley/Request;-><init>(ILjava/lang/String;Lcom/mopub/volley/Response$ErrorListener;)V

    .line 64
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    iput-object p3, p0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    .line 68
    iput-object p2, p0, Lcom/mopub/network/AdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    .line 69
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Lcom/mopub/volley/DefaultRetryPolicy;

    const/16 v1, 0x9c4

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    .line 74
    .local v0, "retryPolicy":Lcom/mopub/volley/DefaultRetryPolicy;
    invoke-virtual {p0, v0}, Lcom/mopub/network/AdRequest;->setRetryPolicy(Lcom/mopub/volley/RetryPolicy;)Lcom/mopub/volley/Request;

    .line 75
    invoke-virtual {p0, v4}, Lcom/mopub/network/AdRequest;->setShouldCache(Z)Lcom/mopub/volley/Request;

    .line 76
    return-void
.end method

.method private eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "adType"    # Ljava/lang/String;
    .param p2, "fullAdType"    # Ljava/lang/String;

    .prologue
    .line 349
    const-string v0, "mraid"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "html"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "interstitial"

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "rewarded_video"

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "vast"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "rewarded_playable"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    .line 352
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected deliverResponse(Lcom/mopub/network/AdResponse;)V
    .locals 1
    .param p1, "adResponse"    # Lcom/mopub/network/AdResponse;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    invoke-interface {v0, p1}, Lcom/mopub/network/AdRequest$Listener;->onSuccess(Lcom/mopub/network/AdResponse;)V

    .line 369
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/mopub/network/AdResponse;

    invoke-virtual {p0, p1}, Lcom/mopub/network/AdRequest;->deliverResponse(Lcom/mopub/network/AdResponse;)V

    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 88
    .local v0, "headers":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "languageCode":Ljava/lang/String;
    iget-object v3, p0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 92
    .local v2, "userLocale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 99
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 100
    sget-object v3, Lcom/mopub/common/util/ResponseHeader;->ACCEPT_LANGUAGE:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v3}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_1
    return-object v0
.end method

.method public getListener()Lcom/mopub/network/AdRequest$Listener;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mopub/network/AdRequest;->mListener:Lcom/mopub/network/AdRequest$Listener;

    return-object v0
.end method

.method getRequestId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "failUrl"    # Ljava/lang/String;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 374
    if-nez p1, :cond_0

    .line 375
    const/4 v1, 0x0

    .line 386
    :goto_0
    return-object v1

    .line 378
    :cond_0
    const/4 v1, 0x0

    .line 379
    .local v1, "requestId":Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 381
    .local v2, "uri":Landroid/net/Uri;
    :try_start_0
    const-string v3, "request_id"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/UnsupportedOperationException;
    const-string v3, "Unable to obtain request id from fail url."

    invoke-static {v3}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method logScribeEvent(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V
    .locals 6
    .param p1, "adResponse"    # Lcom/mopub/network/AdResponse;
    .param p2, "networkResponse"    # Lcom/mopub/volley/NetworkResponse;
    .param p3, "location"    # Landroid/location/Location;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 392
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 393
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 395
    new-instance v0, Lcom/mopub/common/event/Event$Builder;

    sget-object v2, Lcom/mopub/common/event/BaseEvent$Name;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$Name;

    sget-object v3, Lcom/mopub/common/event/BaseEvent$Category;->REQUESTS:Lcom/mopub/common/event/BaseEvent$Category;

    sget-object v4, Lcom/mopub/common/event/BaseEvent$SamplingRate;->AD_REQUEST:Lcom/mopub/common/event/BaseEvent$SamplingRate;

    .line 397
    invoke-virtual {v4}, Lcom/mopub/common/event/BaseEvent$SamplingRate;->getSamplingRate()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mopub/common/event/Event$Builder;-><init>(Lcom/mopub/common/event/BaseEvent$Name;Lcom/mopub/common/event/BaseEvent$Category;D)V

    iget-object v2, p0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    .line 398
    invoke-virtual {v0, v2}, Lcom/mopub/common/event/Event$Builder;->withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 399
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getDspCreativeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 400
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getAdType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdType(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdNetworkType(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    .line 402
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 403
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getWidth()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 402
    :goto_0
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdWidthPx(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    .line 405
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 405
    :goto_1
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withAdHeightPx(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    if-eqz p3, :cond_3

    .line 408
    invoke-virtual {p3}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoLat(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v2

    if-eqz p3, :cond_4

    .line 409
    invoke-virtual {p3}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v0}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoLon(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    if-eqz p3, :cond_0

    .line 410
    invoke-virtual {p3}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withGeoAccuracy(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    iget-wide v2, p2, Lcom/mopub/volley/NetworkResponse;->networkTimeMs:J

    long-to-double v2, v2

    .line 411
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withPerformanceDurationMs(Ljava/lang/Double;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 412
    invoke-virtual {p1}, Lcom/mopub/network/AdResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestId(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    iget v1, p2, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    .line 413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestStatusCode(Ljava/lang/Integer;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 414
    invoke-virtual {p0}, Lcom/mopub/network/AdRequest;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/BaseEvent$Builder;->withRequestUri(Ljava/lang/String;)Lcom/mopub/common/event/BaseEvent$Builder;

    move-result-object v0

    .line 415
    invoke-virtual {v0}, Lcom/mopub/common/event/BaseEvent$Builder;->build()Lcom/mopub/common/event/BaseEvent;

    move-result-object v0

    .line 395
    invoke-static {v0}, Lcom/mopub/common/event/MoPubEvents;->log(Lcom/mopub/common/event/BaseEvent;)V

    .line 417
    return-void

    :cond_1
    move-object v0, v1

    .line 403
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 406
    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 408
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 409
    goto :goto_3
.end method

.method protected parseNetworkResponse(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Response;
    .locals 44
    .param p1, "networkResponse"    # Lcom/mopub/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/volley/NetworkResponse;",
            ")",
            "Lcom/mopub/volley/Response",
            "<",
            "Lcom/mopub/network/AdResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    move-object/from16 v18, v0

    .line 113
    .local v18, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->WARMUP:Lcom/mopub/common/util/ResponseHeader;

    const/16 v41, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v40

    if-eqz v40, :cond_0

    .line 114
    new-instance v40, Lcom/mopub/network/MoPubNetworkError;

    const-string v41, "Ad Unit is warming up."

    sget-object v42, Lcom/mopub/network/MoPubNetworkError$Reason;->WARMING_UP:Lcom/mopub/network/MoPubNetworkError$Reason;

    invoke-direct/range {v40 .. v42}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v40 .. v40}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v40

    .line 343
    :goto_0
    return-object v40

    .line 118
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mContext:Landroid/content/Context;

    move-object/from16 v40, v0

    .line 119
    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationPrecision()I

    move-result v41

    .line 120
    invoke-static {}, Lcom/mopub/common/MoPub;->getLocationAwareness()Lcom/mopub/common/MoPub$LocationAwareness;

    move-result-object v42

    .line 118
    invoke-static/range {v40 .. v42}, Lcom/mopub/common/LocationService;->getLastKnownLocation(Landroid/content/Context;ILcom/mopub/common/MoPub$LocationAwareness;)Landroid/location/Location;

    move-result-object v24

    .line 122
    .local v24, "location":Landroid/location/Location;
    new-instance v8, Lcom/mopub/network/AdResponse$Builder;

    invoke-direct {v8}, Lcom/mopub/network/AdResponse$Builder;-><init>()V

    .line 123
    .local v8, "builder":Lcom/mopub/network/AdResponse$Builder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setAdUnitId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 125
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v6

    .line 126
    .local v6, "adTypeString":Ljava/lang/String;
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->FULL_AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v17

    .line 127
    .local v17, "fullAdTypeString":Ljava/lang/String;
    invoke-virtual {v8, v6}, Lcom/mopub/network/AdResponse$Builder;->setAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 128
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setFullAdType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 132
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v28

    .line 134
    .local v28, "refreshTimeSeconds":Ljava/lang/Integer;
    if-nez v28, :cond_1

    const/16 v27, 0x0

    .line 137
    .local v27, "refreshTimeMilliseconds":Ljava/lang/Integer;
    :goto_1
    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRefreshTimeMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 139
    const-string v40, "clear"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 140
    invoke-virtual {v8}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v4

    .line 141
    .local v4, "adResponse":Lcom/mopub/network/AdResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/mopub/network/AdRequest;->logScribeEvent(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V

    .line 142
    new-instance v40, Lcom/mopub/network/MoPubNetworkError;

    const-string v41, "No ads found for ad unit."

    sget-object v42, Lcom/mopub/network/MoPubNetworkError$Reason;->NO_FILL:Lcom/mopub/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Lcom/mopub/network/MoPubNetworkError$Reason;Ljava/lang/Integer;)V

    invoke-static/range {v40 .. v40}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v40

    goto :goto_0

    .line 136
    .end local v4    # "adResponse":Lcom/mopub/network/AdResponse;
    .end local v27    # "refreshTimeMilliseconds":Ljava/lang/Integer;
    :cond_1
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v40

    move/from16 v0, v40

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    goto :goto_1

    .line 151
    .restart local v27    # "refreshTimeMilliseconds":Ljava/lang/Integer;
    :cond_2
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v14

    .line 152
    .local v14, "dspCreativeId":Ljava/lang/String;
    invoke-virtual {v8, v14}, Lcom/mopub/network/AdResponse$Builder;->setDspCreativeId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 154
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v25

    .line 155
    .local v25, "networkType":Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setNetworkType(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 157
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->REDIRECT_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v26

    .line 158
    .local v26, "redirectUrl":Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRedirectUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 162
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->CLICK_TRACKING_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v9

    .line 163
    .local v9, "clickTrackingUrl":Ljava/lang/String;
    invoke-virtual {v8, v9}, Lcom/mopub/network/AdResponse$Builder;->setClickTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 165
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setImpressionTrackingUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 167
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v16

    .line 168
    .local v16, "failUrl":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setFailoverUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 170
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mopub/network/AdRequest;->getRequestId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 171
    .local v29, "requestId":Ljava/lang/String;
    move-object/from16 v0, v29

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRequestId(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 173
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->SCROLLABLE:Lcom/mopub/common/util/ResponseHeader;

    const/16 v41, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v23

    .line 174
    .local v23, "isScrollable":Z
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setScrollable(Ljava/lang/Boolean;)Lcom/mopub/network/AdResponse$Builder;

    .line 176
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v39

    .line 177
    .local v39, "width":Ljava/lang/Integer;
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v19

    .line 178
    .local v19, "height":Ljava/lang/Integer;
    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lcom/mopub/network/AdResponse$Builder;->setDimensions(Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 180
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v5

    .line 181
    .local v5, "adTimeoutDelaySeconds":Ljava/lang/Integer;
    if-nez v5, :cond_15

    const/16 v40, 0x0

    :goto_2
    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setAdTimeoutDelayMilliseconds(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 187
    invoke-virtual/range {p0 .. p1}, Lcom/mopub/network/AdRequest;->parseStringBody(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;

    move-result-object v30

    .line 188
    .local v30, "responseBody":Ljava/lang/String;
    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setResponseBody(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 189
    const-string v40, "json"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_3

    const-string v40, "json_video"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 191
    :cond_3
    :try_start_0
    new-instance v40, Lorg/json/JSONObject;

    invoke-static/range {v30 .. v30}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setJsonBody(Lorg/json/JSONObject;)Lcom/mopub/network/AdResponse$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    move-object/from16 v40, v0

    move-object/from16 v0, v40

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v6, v1, v2}, Lcom/mopub/mobileads/AdTypeTranslator;->getCustomEventName(Lcom/mopub/common/AdFormat;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 202
    .local v10, "customEventClassName":Ljava/lang/String;
    invoke-virtual {v8, v10}, Lcom/mopub/network/AdResponse$Builder;->setCustomEventClassName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 205
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->BROWSER_AGENT:Lcom/mopub/common/util/ResponseHeader;

    .line 206
    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v40

    .line 205
    invoke-static/range {v40 .. v40}, Lcom/mopub/common/MoPub$BrowserAgent;->fromHeader(Ljava/lang/Integer;)Lcom/mopub/common/MoPub$BrowserAgent;

    move-result-object v7

    .line 207
    .local v7, "browserAgent":Lcom/mopub/common/MoPub$BrowserAgent;
    invoke-static {v7}, Lcom/mopub/common/MoPub;->setBrowserAgentFromAdServer(Lcom/mopub/common/MoPub$BrowserAgent;)V

    .line 208
    invoke-virtual {v8, v7}, Lcom/mopub/network/AdResponse$Builder;->setBrowserAgent(Lcom/mopub/common/MoPub$BrowserAgent;)Lcom/mopub/network/AdResponse$Builder;

    .line 211
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->CUSTOM_EVENT_DATA:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v11

    .line 214
    .local v11, "customEventData":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-eqz v40, :cond_5

    .line 215
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->NATIVE_PARAMS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v11

    .line 220
    :cond_5
    :try_start_1
    invoke-static {v11}, Lcom/mopub/common/util/Json;->jsonStringToMap(Ljava/lang/String;)Ljava/util/Map;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v36

    .line 227
    .local v36, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v26, :cond_6

    .line 228
    const-string v40, "Redirect-Url"

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :cond_6
    if-eqz v9, :cond_7

    .line 233
    const-string v40, "Clickthrough-Url"

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v6, v1}, Lcom/mopub/network/AdRequest;->eventDataIsInResponseBody(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v40

    if-eqz v40, :cond_8

    .line 237
    const-string v40, "Html-Response-Body"

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v40, "Scrollable"

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v40, "com_mopub_orientation"

    sget-object v41, Lcom/mopub/common/util/ResponseHeader;->ORIENTATION:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    :cond_8
    const-string v40, "json"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_9

    const-string v40, "json_video"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_c

    .line 242
    :cond_9
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v20

    .line 244
    .local v20, "impressionMinVisiblePercent":Ljava/lang/String;
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v22

    .line 246
    .local v22, "impressionVisibleMS":Ljava/lang/String;
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_MIN_VISIBLE_PX:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v21

    .line 248
    .local v21, "impressionMinVisiblePx":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_a

    .line 249
    const-string v40, "Impression-Min-Visible-Percent"

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_a
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_b

    .line 253
    const-string v40, "Impression-Visible-Ms"

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_b
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_c

    .line 256
    const-string v40, "Impression-Min-Visible-Px"

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .end local v20    # "impressionMinVisiblePercent":Ljava/lang/String;
    .end local v21    # "impressionMinVisiblePx":Ljava/lang/String;
    .end local v22    # "impressionVisibleMS":Ljava/lang/String;
    :cond_c
    const-string v40, "json_video"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_d

    .line 260
    const-string v40, "Play-Visible-Percent"

    sget-object v41, Lcom/mopub/common/util/ResponseHeader;->PLAY_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 261
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v41

    .line 260
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v40, "Pause-Visible-Percent"

    sget-object v41, Lcom/mopub/common/util/ResponseHeader;->PAUSE_VISIBLE_PERCENT:Lcom/mopub/common/util/ResponseHeader;

    .line 263
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractPercentHeaderString(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v41

    .line 262
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v40, "Max-Buffer-Ms"

    sget-object v41, Lcom/mopub/common/util/ResponseHeader;->MAX_BUFFER_MS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v41

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    new-instance v40, Lcom/mopub/common/event/EventDetails$Builder;

    invoke-direct/range {v40 .. v40}, Lcom/mopub/common/event/EventDetails$Builder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mAdUnitId:Ljava/lang/String;

    move-object/from16 v41, v0

    .line 268
    invoke-virtual/range {v40 .. v41}, Lcom/mopub/common/event/EventDetails$Builder;->adUnitId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v40

    .line 269
    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Lcom/mopub/common/event/EventDetails$Builder;->adType(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v40

    .line 270
    move-object/from16 v0, v40

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->adNetworkType(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v40

    .line 271
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->adWidthPx(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v40

    .line 272
    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->adHeightPx(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v40

    .line 273
    move-object/from16 v0, v40

    invoke-virtual {v0, v14}, Lcom/mopub/common/event/EventDetails$Builder;->dspCreativeId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v41

    if-nez v24, :cond_16

    const/16 v40, 0x0

    .line 274
    :goto_3
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->geoLatitude(Ljava/lang/Double;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v41

    if-nez v24, :cond_17

    const/16 v40, 0x0

    .line 275
    :goto_4
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->geoLongitude(Ljava/lang/Double;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v41

    if-nez v24, :cond_18

    const/16 v40, 0x0

    .line 276
    :goto_5
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->geoAccuracy(Ljava/lang/Float;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v40

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/mopub/volley/NetworkResponse;->networkTimeMs:J

    move-wide/from16 v42, v0

    .line 277
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/mopub/common/event/EventDetails$Builder;->performanceDurationMs(Ljava/lang/Long;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v40

    .line 278
    move-object/from16 v0, v40

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/mopub/common/event/EventDetails$Builder;->requestId(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v40

    move-object/from16 v0, p1

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    move/from16 v41, v0

    .line 279
    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/mopub/common/event/EventDetails$Builder;->requestStatusCode(Ljava/lang/Integer;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v40

    .line 280
    invoke-virtual/range {p0 .. p0}, Lcom/mopub/network/AdRequest;->getUrl()Ljava/lang/String;

    move-result-object v41

    invoke-virtual/range {v40 .. v41}, Lcom/mopub/common/event/EventDetails$Builder;->requestUri(Ljava/lang/String;)Lcom/mopub/common/event/EventDetails$Builder;

    move-result-object v40

    .line 281
    invoke-virtual/range {v40 .. v40}, Lcom/mopub/common/event/EventDetails$Builder;->build()Lcom/mopub/common/event/EventDetails;

    move-result-object v40

    .line 267
    move-object/from16 v0, v40

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setEventDetails(Lcom/mopub/common/event/EventDetails;)Lcom/mopub/network/AdResponse$Builder;

    .line 286
    :cond_d
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->VIDEO_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v38

    .line 287
    .local v38, "videoTrackers":Ljava/lang/String;
    if-eqz v38, :cond_e

    .line 288
    const-string v40, "Video-Trackers"

    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_e
    const-string v40, "rewarded_video"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_f

    const-string v40, "interstitial"

    .line 291
    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_10

    const-string v40, "vast"

    .line 292
    move-object/from16 v0, v40

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_10

    .line 293
    :cond_f
    const-string v40, "External-Video-Viewability-Trackers"

    sget-object v41, Lcom/mopub/common/util/ResponseHeader;->VIDEO_VIEWABILITY_TRACKERS:Lcom/mopub/common/util/ResponseHeader;

    .line 294
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v41

    .line 293
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_10
    sget-object v40, Lcom/mopub/common/AdFormat;->BANNER:Lcom/mopub/common/AdFormat;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/network/AdRequest;->mAdFormat:Lcom/mopub/common/AdFormat;

    move-object/from16 v41, v0

    invoke-virtual/range {v40 .. v41}, Lcom/mopub/common/AdFormat;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_11

    .line 299
    const-string v40, "Banner-Impression-Min-Ms"

    sget-object v41, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_MS:Lcom/mopub/common/util/ResponseHeader;

    .line 300
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v41

    .line 299
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v40, "Banner-Impression-Min-Pixels"

    sget-object v41, Lcom/mopub/common/util/ResponseHeader;->BANNER_IMPRESSION_MIN_VISIBLE_DIPS:Lcom/mopub/common/util/ResponseHeader;

    .line 302
    move-object/from16 v0, v18

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v41

    .line 301
    move-object/from16 v0, v36

    move-object/from16 v1, v40

    move-object/from16 v2, v41

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    :cond_11
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->DISABLE_VIEWABILITY:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v13

    .line 308
    .local v13, "disabledViewabilityVendors":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v40

    if-nez v40, :cond_12

    .line 310
    invoke-static {v13}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->fromKey(Ljava/lang/String;)Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;

    move-result-object v12

    .line 311
    .local v12, "disabledVendors":Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;
    if-eqz v12, :cond_12

    .line 312
    invoke-virtual {v12}, Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;->disable()V

    .line 316
    .end local v12    # "disabledVendors":Lcom/mopub/common/ExternalViewabilitySessionManager$ViewabilityVendor;
    :cond_12
    move-object/from16 v0, v36

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setServerExtras(Ljava/util/Map;)Lcom/mopub/network/AdResponse$Builder;

    .line 318
    const-string v40, "rewarded_video"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_13

    const-string v40, "custom"

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_13

    const-string v40, "rewarded_playable"

    .line 319
    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_14

    .line 320
    :cond_13
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_NAME:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v35

    .line 322
    .local v35, "rewardedVideoCurrencyName":Ljava/lang/String;
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_CURRENCY_AMOUNT:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v34

    .line 324
    .local v34, "rewardedVideoCurrencyAmount":Ljava/lang/String;
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->REWARDED_CURRENCIES:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v31

    .line 326
    .local v31, "rewardedCurrencies":Ljava/lang/String;
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->REWARDED_VIDEO_COMPLETION_URL:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v33

    .line 328
    .local v33, "rewardedVideoCompletionUrl":Ljava/lang/String;
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->REWARDED_DURATION:Lcom/mopub/common/util/ResponseHeader;

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Lcom/mopub/network/HeaderUtils;->extractIntegerHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v32

    .line 330
    .local v32, "rewardedDuration":Ljava/lang/Integer;
    sget-object v40, Lcom/mopub/common/util/ResponseHeader;->SHOULD_REWARD_ON_CLICK:Lcom/mopub/common/util/ResponseHeader;

    const/16 v41, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v2}, Lcom/mopub/network/HeaderUtils;->extractBooleanHeader(Ljava/util/Map;Lcom/mopub/common/util/ResponseHeader;Z)Z

    move-result v37

    .line 332
    .local v37, "shouldRewardOnClick":Z
    move-object/from16 v0, v35

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyName(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 333
    move-object/from16 v0, v34

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCurrencyAmount(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 334
    move-object/from16 v0, v31

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedCurrencies(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 335
    move-object/from16 v0, v33

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedVideoCompletionUrl(Ljava/lang/String;)Lcom/mopub/network/AdResponse$Builder;

    .line 336
    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setRewardedDuration(Ljava/lang/Integer;)Lcom/mopub/network/AdResponse$Builder;

    .line 337
    move/from16 v0, v37

    invoke-virtual {v8, v0}, Lcom/mopub/network/AdResponse$Builder;->setShouldRewardOnClick(Z)Lcom/mopub/network/AdResponse$Builder;

    .line 340
    .end local v31    # "rewardedCurrencies":Ljava/lang/String;
    .end local v32    # "rewardedDuration":Ljava/lang/Integer;
    .end local v33    # "rewardedVideoCompletionUrl":Ljava/lang/String;
    .end local v34    # "rewardedVideoCurrencyAmount":Ljava/lang/String;
    .end local v35    # "rewardedVideoCurrencyName":Ljava/lang/String;
    .end local v37    # "shouldRewardOnClick":Z
    :cond_14
    invoke-virtual {v8}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v4

    .line 341
    .restart local v4    # "adResponse":Lcom/mopub/network/AdResponse;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-virtual {v0, v4, v1, v2}, Lcom/mopub/network/AdRequest;->logScribeEvent(Lcom/mopub/network/AdResponse;Lcom/mopub/volley/NetworkResponse;Landroid/location/Location;)V

    .line 343
    invoke-virtual {v8}, Lcom/mopub/network/AdResponse$Builder;->build()Lcom/mopub/network/AdResponse;

    move-result-object v40

    .line 344
    invoke-static/range {p1 .. p1}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/mopub/volley/NetworkResponse;)Lcom/mopub/volley/Cache$Entry;

    move-result-object v41

    .line 343
    invoke-static/range {v40 .. v41}, Lcom/mopub/volley/Response;->success(Ljava/lang/Object;Lcom/mopub/volley/Cache$Entry;)Lcom/mopub/volley/Response;

    move-result-object v40

    goto/16 :goto_0

    .line 184
    .end local v4    # "adResponse":Lcom/mopub/network/AdResponse;
    .end local v7    # "browserAgent":Lcom/mopub/common/MoPub$BrowserAgent;
    .end local v10    # "customEventClassName":Ljava/lang/String;
    .end local v11    # "customEventData":Ljava/lang/String;
    .end local v13    # "disabledViewabilityVendors":Ljava/lang/String;
    .end local v30    # "responseBody":Ljava/lang/String;
    .end local v36    # "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v38    # "videoTrackers":Ljava/lang/String;
    :cond_15
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v40

    move/from16 v0, v40

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    goto/16 :goto_2

    .line 192
    .restart local v30    # "responseBody":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 193
    .local v15, "e":Lorg/json/JSONException;
    new-instance v40, Lcom/mopub/network/MoPubNetworkError;

    const-string v41, "Failed to decode body JSON for native ad format"

    sget-object v42, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_BODY:Lcom/mopub/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v40 .. v40}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v40

    goto/16 :goto_0

    .line 221
    .end local v15    # "e":Lorg/json/JSONException;
    .restart local v7    # "browserAgent":Lcom/mopub/common/MoPub$BrowserAgent;
    .restart local v10    # "customEventClassName":Ljava/lang/String;
    .restart local v11    # "customEventData":Ljava/lang/String;
    :catch_1
    move-exception v15

    .line 222
    .restart local v15    # "e":Lorg/json/JSONException;
    new-instance v40, Lcom/mopub/network/MoPubNetworkError;

    const-string v41, "Failed to decode server extras for custom event data."

    sget-object v42, Lcom/mopub/network/MoPubNetworkError$Reason;->BAD_HEADER_DATA:Lcom/mopub/network/MoPubNetworkError$Reason;

    move-object/from16 v0, v40

    move-object/from16 v1, v41

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v15, v2}, Lcom/mopub/network/MoPubNetworkError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lcom/mopub/network/MoPubNetworkError$Reason;)V

    invoke-static/range {v40 .. v40}, Lcom/mopub/volley/Response;->error(Lcom/mopub/volley/VolleyError;)Lcom/mopub/volley/Response;

    move-result-object v40

    goto/16 :goto_0

    .line 274
    .end local v15    # "e":Lorg/json/JSONException;
    .restart local v36    # "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_16
    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->getLatitude()D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    goto/16 :goto_3

    .line 275
    :cond_17
    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->getLongitude()D

    move-result-wide v42

    invoke-static/range {v42 .. v43}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    goto/16 :goto_4

    .line 276
    :cond_18
    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->getAccuracy()F

    move-result v40

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v40

    goto/16 :goto_5
.end method

.method protected parseStringBody(Lcom/mopub/volley/NetworkResponse;)Ljava/lang/String;
    .locals 4
    .param p1, "response"    # Lcom/mopub/volley/NetworkResponse;

    .prologue
    .line 359
    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    iget-object v3, p1, Lcom/mopub/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v3}, Lcom/mopub/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    .local v1, "parsed":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 360
    .end local v1    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 361
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/String;

    iget-object v2, p1, Lcom/mopub/volley/NetworkResponse;->data:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    .restart local v1    # "parsed":Ljava/lang/String;
    goto :goto_0
.end method
