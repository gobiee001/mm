.class public Lcom/mopub/mobileads/VastXmlManagerAggregator;
.super Landroid/os/AsyncTask;
.source "VastXmlManagerAggregator.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;,
        Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADS_BY_AD_SLOT_ID:Ljava/lang/String; = "adsBy"

.field public static final SOCIAL_ACTIONS_AD_SLOT_ID:Ljava/lang/String; = "socialActions"

.field private static final VIDEO_MIME_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private final mContext:Landroid/content/Context;

.field private final mScreenAreaDp:I

.field private final mScreenAspectRatio:D

.field private mTimesFollowedVastRedirect:I

.field private final mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 76
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video/mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video/3gpp"

    aput-object v2, v0, v1

    .line 77
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->VIDEO_MIME_TYPES:Ljava/util/List;

    .line 76
    return-void
.end method

.method constructor <init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;DILandroid/content/Context;)V
    .locals 2
    .param p1, "vastXmlManagerAggregatorListener"    # Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    .param p2, "screenAspectRatio"    # D
    .param p4, "screenAreaDp"    # I
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 100
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    .line 102
    iput-wide p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    .line 103
    iput p4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAreaDp:I

    .line 104
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method private calculateFitness(II)D
    .locals 16
    .param p1, "widthDp"    # I
    .param p2, "heightDp"    # I

    .prologue
    .line 789
    move/from16 v0, p1

    int-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    div-double v8, v10, v12

    .line 790
    .local v8, "mediaAspectRatio":D
    mul-int v6, p1, p2

    .line 791
    .local v6, "mediaAreaDp":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    div-double v4, v8, v10

    .line 792
    .local v4, "aspectRatioRatio":D
    int-to-double v10, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAreaDp:I

    int-to-double v12, v7

    div-double v2, v10, v12

    .line 793
    .local v2, "areaRatio":D
    const-wide v10, 0x4051800000000000L    # 70.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    .line 794
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 793
    return-wide v10
.end method

.method private evaluateInLineXmlManager(Lcom/mopub/mobileads/VastInLineXmlManager;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 7
    .param p1, "vastInLineXmlManager"    # Lcom/mopub/mobileads/VastInLineXmlManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/VastInLineXmlManager;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    .prologue
    .line 301
    .local p2, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 302
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 305
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getLinearXmlManagers()Ljava/util/List;

    move-result-object v3

    .line 307
    .local v3, "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastLinearXmlManager;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastLinearXmlManager;

    .line 308
    .local v2, "linearXmlManager":Lcom/mopub/mobileads/VastLinearXmlManager;
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastLinearXmlManager;->getMediaXmlManagers()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "bestMediaFileUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 311
    new-instance v4, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v4}, Lcom/mopub/mobileads/VastVideoConfig;-><init>()V

    .line 312
    .local v4, "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 313
    invoke-direct {p0, v2, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 318
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastLinearXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/VastVideoConfig;->setClickThroughUrl(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v4, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object v1

    .line 323
    .local v1, "companionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    sget-object v5, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 324
    invoke-virtual {p0, v1, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v5

    sget-object v6, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 326
    invoke-virtual {p0, v1, v6}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v6

    .line 323
    invoke-virtual {v4, v5, v6}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    .line 329
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getSocialActionsCompanionAds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 328
    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/VastVideoConfig;->setSocialActionsCompanionAds(Ljava/util/Map;)V

    .line 330
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getErrorTrackers()Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 331
    invoke-virtual {v4, p2}, Lcom/mopub/mobileads/VastVideoConfig;->addErrorTrackers(Ljava/util/List;)V

    .line 332
    invoke-direct {p0, p1, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 333
    invoke-direct {p0, p1, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateViewabilityMetadata(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 339
    .end local v0    # "bestMediaFileUrl":Ljava/lang/String;
    .end local v1    # "companionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    .end local v2    # "linearXmlManager":Lcom/mopub/mobileads/VastLinearXmlManager;
    .end local v4    # "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private evaluateWrapperRedirect(Lcom/mopub/mobileads/VastWrapperXmlManager;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "vastWrapperXmlManager"    # Lcom/mopub/mobileads/VastWrapperXmlManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/VastWrapperXmlManager;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "wrapperErrorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const/4 v3, 0x0

    .line 397
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getVastAdTagURI()Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "vastAdTagUri":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 413
    :cond_0
    :goto_0
    return-object v2

    .line 402
    :cond_1
    const/4 v2, 0x0

    .line 404
    .local v2, "vastRedirectXml":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->followVastRedirect(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Failed to follow VAST redirect"

    invoke-static {v4, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 407
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 408
    sget-object v4, Lcom/mopub/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v5, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p2, v4, v3, v3, v5}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private fireErrorTrackerIfNoAds(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManager;Landroid/content/Context;)Z
    .locals 3
    .param p2, "xmlManager"    # Lcom/mopub/mobileads/VastXmlManager;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastAdXmlManager;",
            ">;",
            "Lcom/mopub/mobileads/VastXmlManager;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAdXmlManager;>;"
    const/4 v2, 0x0

    .line 497
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastXmlManager;->getErrorTracker()Lcom/mopub/mobileads/VastTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastXmlManager;->getErrorTracker()Lcom/mopub/mobileads/VastTracker;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

    .line 499
    :goto_0
    invoke-static {v1, v0, v2, v2, p3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 505
    const/4 v0, 0x1

    .line 507
    :goto_1
    return v0

    .line 500
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    goto :goto_0

    .line 507
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private followVastRedirect(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "redirectUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 825
    iget v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 826
    iget v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    .line 828
    const/4 v2, 0x0

    .line 829
    .local v2, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v0, 0x0

    .line 831
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 832
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/mopub/common/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 836
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 837
    if-eqz v2, :cond_0

    .line 838
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 843
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_0
    return-object v3

    .line 836
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 837
    if-eqz v2, :cond_1

    .line 838
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v3

    .line 843
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 836
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method static isValidSequenceNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "sequence"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 808
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 817
    :cond_0
    :goto_0
    return v2

    .line 812
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 813
    .local v1, "sequenceInt":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 814
    .end local v1    # "sequenceInt":I
    :catch_0
    move-exception v0

    .line 817
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1
    .param p1, "linearXmlManager"    # Lcom/mopub/mobileads/VastLinearXmlManager;
    .param p2, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 426
    const-string v0, "linearXmlManager cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 427
    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getAbsoluteProgressTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 431
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getFractionalProgressTrackers()Ljava/util/List;

    move-result-object v0

    .line 430
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    .line 432
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getPauseTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addPauseTrackers(Ljava/util/List;)V

    .line 433
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getResumeTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addResumeTrackers(Ljava/util/List;)V

    .line 434
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoCompleteTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    .line 435
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoCloseTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCloseTrackers(Ljava/util/List;)V

    .line 436
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoSkipTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addSkipTrackers(Ljava/util/List;)V

    .line 437
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addClickTrackers(Ljava/util/List;)V

    .line 440
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 441
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setSkipOffset(Ljava/lang/String;)V

    .line 445
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 446
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getIconXmlManagers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestIcon(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V

    .line 448
    :cond_1
    return-void
.end method

.method private populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1
    .param p1, "xmlManager"    # Lcom/mopub/mobileads/VastXmlManager;
    .param p2, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 461
    const-string v0, "xmlManager cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getMoPubImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 466
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 467
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCtaText(Ljava/lang/String;)V

    .line 469
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 470
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomSkipText(Ljava/lang/String;)V

    .line 472
    :cond_1
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 473
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCloseIconUrl(Ljava/lang/String;)V

    .line 475
    :cond_2
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->isCustomForceOrientationSet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 476
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomForceOrientation(Lcom/mopub/common/util/DeviceUtils$ForceOrientation;)V

    .line 478
    :cond_3
    return-void
.end method

.method private populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 6
    .param p1, "vastInLineXmlManager"    # Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;
    .param p2, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 345
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 346
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 348
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->getVastExtensionParentXmlManager()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object v0

    .line 354
    .local v0, "vastExtensionParentXmlManager":Lcom/mopub/mobileads/VastExtensionParentXmlManager;
    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->getVastExtensionXmlManagers()Ljava/util/List;

    move-result-object v2

    .line 357
    .local v2, "vastExtensionXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastExtensionXmlManager;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/VastExtensionXmlManager;

    .line 358
    .local v1, "vastExtensionXmlManager":Lcom/mopub/mobileads/VastExtensionXmlManager;
    const-string v4, "MoPub"

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 360
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v3

    .line 359
    invoke-virtual {p2, v3}, Lcom/mopub/mobileads/VastVideoConfig;->setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V

    goto :goto_0
.end method

.method private populateViewabilityMetadata(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 7
    .param p1, "vastInLineXmlManager"    # Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;
    .param p2, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 370
    .line 371
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->getVastExtensionParentXmlManager()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object v2

    .line 372
    .local v2, "vastExtensionParentXmlManager":Lcom/mopub/mobileads/VastExtensionParentXmlManager;
    if-eqz v2, :cond_1

    .line 374
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->getVastExtensionXmlManagers()Ljava/util/List;

    move-result-object v4

    .line 375
    .local v4, "vastExtensionXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastExtensionXmlManager;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mopub/mobileads/VastExtensionXmlManager;

    .line 376
    .local v3, "vastExtensionXmlManager":Lcom/mopub/mobileads/VastExtensionXmlManager;
    if-eqz v3, :cond_0

    .line 377
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getAvidJavaScriptResources()Ljava/util/Set;

    move-result-object v0

    .line 378
    .local v0, "avid":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAvidJavascriptResources(Ljava/util/Set;)V

    .line 380
    invoke-virtual {v3}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getMoatImpressionPixels()Ljava/util/Set;

    move-result-object v1

    .line 381
    .local v1, "moat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->addMoatImpressionPixels(Ljava/util/Set;)V

    goto :goto_0

    .line 385
    .end local v0    # "avid":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "moat":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "vastExtensionXmlManager":Lcom/mopub/mobileads/VastExtensionXmlManager;
    .end local v4    # "vastExtensionXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastExtensionXmlManager;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 5
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 116
    if-eqz p1, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    aget-object v3, p1, v4

    if-nez v3, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-object v2

    .line 121
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    aget-object v1, p1, v3

    .line 122
    .local v1, "vastXml":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 123
    .end local v1    # "vastXml":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Unable to generate VastVideoConfig."

    invoke-static {v3, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "VastXmlManagerAggregator#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "VastXmlManagerAggregator#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 24
    .param p1, "vastXml"    # Ljava/lang/String;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v20, "vastXml cannot be null"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    const-string v20, "errorTrackers cannot be null"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    new-instance v19, Lcom/mopub/mobileads/VastXmlManager;

    invoke-direct/range {v19 .. v19}, Lcom/mopub/mobileads/VastXmlManager;-><init>()V

    .line 172
    .local v19, "xmlManager":Lcom/mopub/mobileads/VastXmlManager;
    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastXmlManager;->parseVastXml(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    invoke-virtual/range {v19 .. v19}, Lcom/mopub/mobileads/VastXmlManager;->getAdXmlManagers()Ljava/util/List;

    move-result-object v13

    .line 183
    .local v13, "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAdXmlManager;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v13, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->fireErrorTrackerIfNoAds(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManager;Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 184
    const/16 v16, 0x0

    .line 283
    .end local v13    # "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAdXmlManager;>;"
    :goto_0
    return-object v16

    .line 173
    :catch_0
    move-exception v7

    .line 174
    .local v7, "e":Ljava/lang/Exception;
    const-string v20, "Failed to parse VAST XML"

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    sget-object v20, Lcom/mopub/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 177
    const/16 v16, 0x0

    goto :goto_0

    .line 187
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v13    # "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAdXmlManager;>;"
    :cond_0
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mopub/mobileads/VastAdXmlManager;

    .line 188
    .local v12, "vastAdXmlManager":Lcom/mopub/mobileads/VastAdXmlManager;
    invoke-virtual {v12}, Lcom/mopub/mobileads/VastAdXmlManager;->getSequence()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->isValidSequenceNumber(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 194
    invoke-virtual {v12}, Lcom/mopub/mobileads/VastAdXmlManager;->getInLineXmlManager()Lcom/mopub/mobileads/VastInLineXmlManager;

    move-result-object v14

    .line 195
    .local v14, "vastInLineXmlManager":Lcom/mopub/mobileads/VastInLineXmlManager;
    if-eqz v14, :cond_2

    .line 196
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateInLineXmlManager(Lcom/mopub/mobileads/VastInLineXmlManager;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v16

    .line 199
    .local v16, "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    if-eqz v16, :cond_2

    .line 200
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0

    .line 207
    .end local v16    # "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    :cond_2
    invoke-virtual {v12}, Lcom/mopub/mobileads/VastAdXmlManager;->getWrapperXmlManager()Lcom/mopub/mobileads/VastWrapperXmlManager;

    move-result-object v17

    .line 208
    .local v17, "vastWrapperXmlManager":Lcom/mopub/mobileads/VastWrapperXmlManager;
    if-eqz v17, :cond_1

    .line 209
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 210
    .local v18, "wrapperErrorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getErrorTrackers()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateWrapperRedirect(Lcom/mopub/mobileads/VastWrapperXmlManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 213
    .local v15, "vastRedirectXml":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 217
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v16

    .line 224
    .restart local v16    # "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    if-eqz v16, :cond_1

    .line 231
    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v20

    .line 230
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 233
    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getLinearXmlManagers()Ljava/util/List;

    move-result-object v10

    .line 234
    .local v10, "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastLinearXmlManager;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mopub/mobileads/VastLinearXmlManager;

    .line 235
    .local v9, "linearXmlManager":Lcom/mopub/mobileads/VastLinearXmlManager;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_1

    .line 237
    .end local v9    # "linearXmlManager":Lcom/mopub/mobileads/VastLinearXmlManager;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 238
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateViewabilityMetadata(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 241
    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object v6

    .line 244
    .local v6, "companionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result v20

    if-nez v20, :cond_6

    .line 245
    sget-object v20, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v20

    sget-object v21, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v21

    .line 245
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    .line 272
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/mopub/mobileads/VastVideoConfig;->getSocialActionsCompanionAds()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 274
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getSocialActionsCompanionAds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v20

    .line 273
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setSocialActionsCompanionAds(Ljava/util/Map;)V

    .line 277
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto/16 :goto_0

    .line 252
    :cond_6
    const/16 v20, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v8

    .line 254
    .local v8, "landscapeCompanionAd":Lcom/mopub/mobileads/VastCompanionAdConfig;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v11

    .line 256
    .local v11, "portraitCompanionAd":Lcom/mopub/mobileads/VastCompanionAdConfig;
    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    .line 257
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_7
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 258
    .local v5, "companionAdXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->hasResources()Z

    move-result v21

    if-nez v21, :cond_7

    .line 260
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v21

    .line 259
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 262
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v21

    .line 261
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    .line 264
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v21

    .line 263
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 266
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v21

    .line 265
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    goto :goto_2

    .line 283
    .end local v5    # "companionAdXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    .end local v6    # "companionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    .end local v8    # "landscapeCompanionAd":Lcom/mopub/mobileads/VastCompanionAdConfig;
    .end local v10    # "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastLinearXmlManager;>;"
    .end local v11    # "portraitCompanionAd":Lcom/mopub/mobileads/VastCompanionAdConfig;
    .end local v12    # "vastAdXmlManager":Lcom/mopub/mobileads/VastAdXmlManager;
    .end local v14    # "vastInLineXmlManager":Lcom/mopub/mobileads/VastInLineXmlManager;
    .end local v15    # "vastRedirectXml":Ljava/lang/String;
    .end local v16    # "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    .end local v17    # "vastWrapperXmlManager":Lcom/mopub/mobileads/VastWrapperXmlManager;
    .end local v18    # "wrapperErrorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 25
    .param p2, "orientation"    # Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastCompanionAdXmlManager;",
            ">;",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;",
            ")",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    const-string v4, "managers cannot be null"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 551
    const-string v4, "orientation cannot be null"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 555
    .local v18, "companionXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 556
    .local v12, "bestCompanionFitness":D
    const/4 v11, 0x0

    .line 557
    .local v11, "bestCompanionXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    const/4 v7, 0x0

    .line 558
    .local v7, "bestVastResource":Lcom/mopub/mobileads/VastResource;
    const/4 v14, 0x0

    .line 561
    .local v14, "bestVastScaledDimensions":Landroid/graphics/Point;
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v20, v5, v4

    .line 563
    .local v20, "type":Lcom/mopub/mobileads/VastResource$Type;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 564
    .local v24, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    :cond_0
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 565
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 567
    .local v15, "companionXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    invoke-virtual {v15}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v23

    .line 568
    .local v23, "width":Ljava/lang/Integer;
    invoke-virtual {v15}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v19

    .line 569
    .local v19, "height":Ljava/lang/Integer;
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x12c

    if-lt v8, v9, :cond_0

    if-eqz v19, :cond_0

    .line 570
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xfa

    if-lt v8, v9, :cond_0

    .line 574
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getScaledDimensions(IILcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Landroid/graphics/Point;

    move-result-object v22

    .line 576
    .local v22, "vastScaledDimensions":Landroid/graphics/Point;
    invoke-virtual {v15}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v8

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Point;->y:I

    .line 575
    move-object/from16 v0, v20

    invoke-static {v8, v0, v9, v10}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v21

    .line 578
    .local v21, "vastResource":Lcom/mopub/mobileads/VastResource;
    if-eqz v21, :cond_0

    .line 583
    sget-object v8, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    move-object/from16 v0, p2

    if-ne v8, v0, :cond_1

    .line 584
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v16

    .line 588
    .local v16, "companionFitness":D
    :goto_2
    cmpg-double v8, v16, v12

    if-gez v8, :cond_0

    .line 589
    move-wide/from16 v12, v16

    .line 590
    move-object v11, v15

    .line 591
    move-object/from16 v7, v21

    .line 592
    move-object/from16 v14, v22

    goto :goto_1

    .line 586
    .end local v16    # "companionFitness":D
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v16

    .restart local v16    # "companionFitness":D
    goto :goto_2

    .line 595
    .end local v15    # "companionXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    .end local v16    # "companionFitness":D
    .end local v19    # "height":Ljava/lang/Integer;
    .end local v21    # "vastResource":Lcom/mopub/mobileads/VastResource;
    .end local v22    # "vastScaledDimensions":Landroid/graphics/Point;
    .end local v23    # "width":Ljava/lang/Integer;
    :cond_2
    if-eqz v11, :cond_4

    .line 600
    .end local v20    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .end local v24    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    :cond_3
    if-eqz v11, :cond_5

    .line 601
    new-instance v4, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget v5, v14, Landroid/graphics/Point;->x:I

    iget v6, v14, Landroid/graphics/Point;->y:I

    .line 605
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v8

    .line 606
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v9

    .line 607
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 610
    :goto_3
    return-object v4

    .line 561
    .restart local v20    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .restart local v24    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 610
    .end local v20    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .end local v24    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method getBestIcon(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;
    .locals 16
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastIconXmlManager;",
            ">;)",
            "Lcom/mopub/mobileads/VastIconConfig;"
        }
    .end annotation

    .prologue
    .line 739
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    const-string v1, "managers cannot be null"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 740
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 743
    .local v12, "iconXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v13, v2, v1

    .line 744
    .local v13, "type":Lcom/mopub/mobileads/VastResource$Type;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 745
    .local v15, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 746
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mopub/mobileads/VastIconXmlManager;

    .line 748
    .local v11, "iconXmlManager":Lcom/mopub/mobileads/VastIconXmlManager;
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v14

    .line 749
    .local v14, "width":Ljava/lang/Integer;
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v10

    .line 752
    .local v10, "height":Ljava/lang/Integer;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_0

    if-eqz v10, :cond_0

    .line 753
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_0

    .line 758
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 757
    invoke-static {v4, v13, v5, v7}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v6

    .line 760
    .local v6, "vastResource":Lcom/mopub/mobileads/VastResource;
    if-eqz v6, :cond_0

    .line 764
    new-instance v1, Lcom/mopub/mobileads/VastIconConfig;

    .line 765
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 766
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 767
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getOffsetMS()Ljava/lang/Integer;

    move-result-object v4

    .line 768
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getDurationMS()Ljava/lang/Integer;

    move-result-object v5

    .line 770
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getClickTrackingUris()Ljava/util/List;

    move-result-object v7

    .line 771
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getClickThroughUri()Ljava/lang/String;

    move-result-object v8

    .line 772
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getViewTrackingUris()Ljava/util/List;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/mopub/mobileads/VastIconConfig;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 776
    .end local v6    # "vastResource":Lcom/mopub/mobileads/VastResource;
    .end local v10    # "height":Ljava/lang/Integer;
    .end local v11    # "iconXmlManager":Lcom/mopub/mobileads/VastIconXmlManager;
    .end local v13    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .end local v14    # "width":Ljava/lang/Integer;
    .end local v15    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    :goto_1
    return-object v1

    .line 743
    .restart local v13    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .restart local v15    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 776
    .end local v13    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .end local v15    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastMediaXmlManager;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastMediaXmlManager;>;"
    const-string v12, "managers cannot be null"

    invoke-static {p1, v12}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 515
    .local v10, "mediaXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastMediaXmlManager;>;"
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 516
    .local v2, "bestMediaFitness":D
    const/4 v0, 0x0

    .line 518
    .local v0, "bestMediaFileUrl":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 519
    .local v11, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastMediaXmlManager;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 520
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mopub/mobileads/VastMediaXmlManager;

    .line 522
    .local v9, "mediaXmlManager":Lcom/mopub/mobileads/VastMediaXmlManager;
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastMediaXmlManager;->getType()Ljava/lang/String;

    move-result-object v6

    .line 523
    .local v6, "mediaType":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastMediaXmlManager;->getMediaUrl()Ljava/lang/String;

    move-result-object v7

    .line 524
    .local v7, "mediaUrl":Ljava/lang/String;
    sget-object v12, Lcom/mopub/mobileads/VastXmlManagerAggregator;->VIDEO_MIME_TYPES:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v7, :cond_2

    .line 525
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastMediaXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v8

    .line 530
    .local v8, "mediaWidth":Ljava/lang/Integer;
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastMediaXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    .line 531
    .local v1, "mediaHeight":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_0

    .line 535
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v4

    .line 536
    .local v4, "mediaFitness":D
    cmpg-double v12, v4, v2

    if-gez v12, :cond_0

    .line 537
    move-wide v2, v4

    .line 538
    move-object v0, v7

    goto :goto_0

    .line 542
    .end local v1    # "mediaHeight":Ljava/lang/Integer;
    .end local v4    # "mediaFitness":D
    .end local v6    # "mediaType":Ljava/lang/String;
    .end local v7    # "mediaUrl":Ljava/lang/String;
    .end local v8    # "mediaWidth":Ljava/lang/Integer;
    .end local v9    # "mediaXmlManager":Lcom/mopub/mobileads/VastMediaXmlManager;
    :cond_3
    return-object v0
.end method

.method getScaledDimensions(IILcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Landroid/graphics/Point;
    .locals 14
    .param p1, "widthDp"    # I
    .param p2, "heightDp"    # I
    .param p3, "type"    # Lcom/mopub/mobileads/VastResource$Type;
    .param p4, "orientation"    # Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 682
    new-instance v1, Landroid/graphics/Point;

    move/from16 v0, p2

    invoke-direct {v1, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 683
    .local v1, "defaultPoint":Landroid/graphics/Point;
    iget-object v12, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 684
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 685
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 686
    .local v10, "x":I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 688
    .local v11, "y":I
    int-to-float v12, p1

    iget-object v13, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    .line 689
    .local v8, "widthPx":I
    move/from16 v0, p2

    int-to-float v12, v0

    iget-object v13, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 692
    .local v3, "heightPx":I
    sget-object v12, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    move-object/from16 v0, p4

    if-ne v12, v0, :cond_1

    .line 693
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 694
    .local v7, "screenWidthPx":I
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 701
    .local v6, "screenHeightPx":I
    :goto_0
    add-int/lit8 v12, v7, -0x10

    if-gt v8, v12, :cond_2

    add-int/lit8 v12, v6, -0x10

    if-gt v3, v12, :cond_2

    .line 733
    .end local v1    # "defaultPoint":Landroid/graphics/Point;
    :cond_0
    :goto_1
    return-object v1

    .line 696
    .end local v6    # "screenHeightPx":I
    .end local v7    # "screenWidthPx":I
    .restart local v1    # "defaultPoint":Landroid/graphics/Point;
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 697
    .restart local v7    # "screenWidthPx":I
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6    # "screenHeightPx":I
    goto :goto_0

    .line 706
    :cond_2
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 707
    .local v5, "point":Landroid/graphics/Point;
    sget-object v12, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    move-object/from16 v0, p3

    if-ne v12, v0, :cond_3

    .line 708
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, v5, Landroid/graphics/Point;->x:I

    .line 709
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, v5, Landroid/graphics/Point;->y:I

    .line 723
    :goto_2
    iget v12, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v12, v12, -0x10

    iput v12, v5, Landroid/graphics/Point;->x:I

    .line 724
    iget v12, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, -0x10

    iput v12, v5, Landroid/graphics/Point;->y:I

    .line 726
    iget v12, v5, Landroid/graphics/Point;->x:I

    if-ltz v12, :cond_0

    iget v12, v5, Landroid/graphics/Point;->y:I

    if-ltz v12, :cond_0

    .line 730
    iget v12, v5, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v12

    iput v12, v5, Landroid/graphics/Point;->x:I

    .line 731
    iget v12, v5, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v12

    iput v12, v5, Landroid/graphics/Point;->y:I

    move-object v1, v5

    .line 733
    goto :goto_1

    .line 711
    :cond_3
    int-to-float v12, v8

    int-to-float v13, v7

    div-float v9, v12, v13

    .line 712
    .local v9, "widthRatio":F
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v4, v12, v13

    .line 714
    .local v4, "heightRatio":F
    cmpl-float v12, v9, v4

    if-ltz v12, :cond_4

    .line 715
    iput v7, v5, Landroid/graphics/Point;->x:I

    .line 716
    int-to-float v12, v3

    div-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v5, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 718
    :cond_4
    int-to-float v12, v8

    div-float/2addr v12, v4

    float-to-int v12, v12

    iput v12, v5, Landroid/graphics/Point;->x:I

    .line 719
    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_2
.end method

.method getSocialActionsCompanionAds(Ljava/util/List;)Ljava/util/Map;
    .locals 13
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastCompanionAdXmlManager;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    const-string v0, "managers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 619
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 622
    .local v10, "socialActionsCompanionAds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mopub/mobileads/VastCompanionAdConfig;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 623
    .local v8, "companionXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v11

    .line 624
    .local v11, "width":Ljava/lang/Integer;
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v9

    .line 625
    .local v9, "height":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    if-eqz v9, :cond_0

    .line 629
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getAdSlotId()Ljava/lang/String;

    move-result-object v7

    .line 630
    .local v7, "adSlotId":Ljava/lang/String;
    const-string v0, "adsBy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 632
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x4b

    if-gt v0, v1, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    .line 646
    :cond_1
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    .line 647
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 645
    invoke-static {v0, v1, v2, v4}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v3

    .line 648
    .local v3, "vastResource":Lcom/mopub/mobileads/VastResource;
    if-eqz v3, :cond_0

    .line 652
    new-instance v0, Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 654
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 655
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 657
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v4

    .line 658
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v5

    .line 659
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 652
    invoke-interface {v10, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 635
    .end local v3    # "vastResource":Lcom/mopub/mobileads/VastResource;
    :cond_2
    const-string v0, "socialActions"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x96

    if-gt v0, v1, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    goto/16 :goto_0

    .line 662
    .end local v7    # "adSlotId":Ljava/lang/String;
    .end local v8    # "companionXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    .end local v9    # "height":Ljava/lang/Integer;
    .end local v11    # "width":Ljava/lang/Integer;
    :cond_3
    return-object v10
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    .line 140
    .local v0, "listener":Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    if-eqz v0, :cond_0

    .line 141
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 143
    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 2
    .param p1, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    .line 132
    .local v0, "listener":Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 135
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "VastXmlManagerAggregator#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :goto_0
    check-cast p1, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->onPostExecute(Lcom/mopub/mobileads/VastVideoConfig;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "VastXmlManagerAggregator#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 112
    return-void
.end method
