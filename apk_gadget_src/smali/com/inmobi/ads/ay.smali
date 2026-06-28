.class public Lcom/inmobi/ads/ay;
.super Lcom/inmobi/ads/ac;
.source "NativeVideoAdContainer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation


# static fields
.field private static final B:Ljava/lang/String;


# instance fields
.field A:Lcom/inmobi/ads/ad$a;

.field private final C:Lcom/inmobi/ads/AdContainer$a;

.field z:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/inmobi/ads/ay;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ay;->B:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/ai;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/AdContainer$RenderingProperties;",
            "Lcom/inmobi/ads/ai;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bj;",
            ">;",
            "Lcom/inmobi/ads/b;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    invoke-direct/range {p0 .. p7}, Lcom/inmobi/ads/ac;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/ai;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/b;)V

    .line 90
    new-instance v0, Lcom/inmobi/ads/ay$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ay$1;-><init>(Lcom/inmobi/ads/ay;)V

    iput-object v0, p0, Lcom/inmobi/ads/ay;->C:Lcom/inmobi/ads/AdContainer$a;

    .line 171
    new-instance v0, Lcom/inmobi/ads/ay$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ay$2;-><init>(Lcom/inmobi/ads/ay;)V

    iput-object v0, p0, Lcom/inmobi/ads/ay;->A:Lcom/inmobi/ads/ad$a;

    .line 232
    iput-object p3, p0, Lcom/inmobi/ads/ay;->a:Lcom/inmobi/ads/ai;

    .line 233
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ay;Lcom/inmobi/ads/az;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/ads/ay;Landroid/view/View;Z)V
    .locals 4

    .prologue
    .line 31180
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoView;

    .line 31181
    if-eqz v0, :cond_0

    .line 31182
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/az;

    .line 31183
    if-eqz v1, :cond_0

    .line 31189
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/inmobi/ads/ay$3;

    invoke-direct {v3, p0, v1, p2, v0}, Lcom/inmobi/ads/ay$3;-><init>(Lcom/inmobi/ads/ay;Lcom/inmobi/ads/az;ZLcom/inmobi/ads/NativeVideoView;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 83
    :cond_0
    return-void
.end method

.method private f(Lcom/inmobi/ads/az;)V
    .locals 6

    .prologue
    .line 271
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didImpressionFire"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->f()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v2

    .line 275
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTracker;

    .line 277
    sget-object v4, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_VIDEO_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 5301
    iget-object v5, v0, Lcom/inmobi/ads/NativeTracker;->b:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 277
    if-ne v4, v5, :cond_2

    .line 6293
    iget-object v1, v0, Lcom/inmobi/ads/NativeTracker;->a:Ljava/lang/String;

    .line 278
    const-string v4, "http"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 279
    invoke-static {v0, v2}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker;Ljava/util/Map;)V

    .line 7107
    :cond_3
    iget-object v0, v0, Lcom/inmobi/ads/NativeTracker;->d:Ljava/util/Map;

    .line 282
    const-string v1, "referencedEvents"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 283
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 284
    invoke-virtual {p1, v0, v2}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    goto :goto_1

    .line 289
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 290
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_PLAY:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 291
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CREATIVE_VIEW:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 292
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 295
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/ay;->a:Lcom/inmobi/ads/ai;

    .line 7305
    iget-object v0, v0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 295
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 296
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v2

    .line 295
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ag;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 298
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didImpressionFire"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_IMPRESSION_RECORDED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 7363
    iget-object v0, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 8070
    iget-object v0, v0, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 301
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v0, v1, :cond_6

    .line 302
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 303
    const-string v1, "type"

    const-string v2, "native"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v1, "clientRequestId"

    .line 8385
    iget-object v2, p0, Lcom/inmobi/ads/ac;->e:Ljava/lang/String;

    .line 304
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v1, "impId"

    .line 8596
    iget-object v2, p0, Lcom/inmobi/ads/ac;->d:Ljava/lang/String;

    .line 305
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v1, "AdRendered"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ay;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 309
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->d()V

    goto/16 :goto_0
.end method

.method private g(Lcom/inmobi/ads/az;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/az;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    .line 790
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->u()Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ag;

    .line 791
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v8}, Ljava/util/HashMap;-><init>(I)V

    .line 792
    iget-object v1, p0, Lcom/inmobi/ads/ay;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 793
    if-eqz v1, :cond_0

    .line 794
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v1

    .line 795
    const-string v3, "$MD"

    .line 796
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getDuration()I

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 795
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    :cond_0
    const-string v1, "[ERRORCODE]"

    const-string v3, "405"

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v3, "[CONTENTPLAYHEAD]"

    .line 803
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v4, "seekPosition"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 802
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 28836
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d:%02d:%02d.%03d"

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v1

    .line 28837
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v1

    .line 28838
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v1

    .line 28839
    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 28838
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v10, v1

    .line 28840
    invoke-virtual {v8, v10, v11}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v1

    .line 28841
    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    sub-long/2addr v8, v10

    .line 28840
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    int-to-long v8, v1

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v12, v1

    .line 28842
    invoke-virtual {v10, v12, v13}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v7

    .line 28836
    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string v1, "[CACHEBUSTING]"

    .line 805
    invoke-static {}, Lcom/inmobi/ads/ay;->x()Ljava/lang/String;

    move-result-object v3

    .line 804
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    const-string v1, "[ASSETURI]"

    .line 807
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v3

    invoke-interface {v3}, Lcom/inmobi/ads/bq;->b()Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 808
    const-string v1, "$TS"

    .line 809
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 808
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v1, "$LTS"

    iget-object v3, p0, Lcom/inmobi/ads/ay;->a:Lcom/inmobi/ads/ai;

    .line 29305
    iget-object v3, v3, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 30045
    iget-wide v4, v3, Lcom/inmobi/ads/ag;->z:J

    .line 811
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 810
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 812
    if-eqz v0, :cond_1

    .line 813
    const-string v1, "$STS"

    .line 31045
    iget-wide v4, v0, Lcom/inmobi/ads/ag;->z:J

    .line 814
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    :cond_1
    return-object v2
.end method

.method static synthetic w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/inmobi/ads/ay;->B:Ljava/lang/String;

    return-object v0
.end method

.method private static x()Ljava/lang/String;
    .locals 5

    .prologue
    const v4, 0x7fffffff

    .line 821
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 823
    const/4 v0, 0x0

    .line 824
    :goto_0
    if-nez v0, :cond_0

    .line 825
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/2addr v0, v4

    rem-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 827
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 828
    const/4 v0, 0x1

    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 829
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    and-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 828
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 831
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 251
    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/inmobi/ads/NativeVideoView;

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    check-cast p1, Lcom/inmobi/ads/NativeVideoView;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ay;->h:Z

    .line 259
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 260
    const-string v2, "type"

    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 261
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v3

    .line 4070
    iget-object v3, v3, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 261
    if-ne v0, v3, :cond_2

    const-string v0, "int"

    .line 260
    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v0, "clientRequestId"

    .line 4385
    iget-object v2, p0, Lcom/inmobi/ads/ac;->e:Ljava/lang/String;

    .line 263
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    const-string v0, "impId"

    .line 4596
    iget-object v2, p0, Lcom/inmobi/ads/ac;->d:Ljava/lang/String;

    .line 264
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "ads"

    const-string v2, "ViewableBeaconFired"

    invoke-static {v0, v2, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 267
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/ay;->f(Lcom/inmobi/ads/az;)V

    goto :goto_0

    .line 261
    :cond_2
    const-string v0, "native"

    goto :goto_1
.end method

.method protected final a(Lcom/inmobi/ads/NativeAsset;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 409
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->k()I

    move-result v0

    .line 410
    packed-switch v0, :pswitch_data_0

    .line 416
    :pswitch_0
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 13363
    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 14070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 416
    if-ne v0, v1, :cond_0

    .line 418
    invoke-super {p0, p1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;)V

    .line 419
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action 2 not valid for asset of type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18572
    :cond_0
    :goto_0
    :pswitch_1
    return-void

    .line 425
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 426
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->d()V

    .line 432
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v1

    .line 14722
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14723
    iget-object v0, v1, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->pause()V

    .line 14724
    iget-object v0, v1, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/ap;->seekTo(I)V

    .line 14725
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14727
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 14728
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "didPause"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14729
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "seekPosition"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14730
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v2, "didCompleteQ4"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14733
    :cond_2
    iget-object v0, v1, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 15046
    const/4 v2, 0x4

    iput v2, v0, Lcom/inmobi/ads/ap;->a:I

    .line 14734
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;

    move-result-object v0

    sget-object v2, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_STOP:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v0, v2}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    .line 14736
    :cond_3
    iget-object v0, v1, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_0

    .line 14737
    iget-object v0, v1, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 15054
    const/4 v1, 0x4

    iput v1, v0, Lcom/inmobi/ads/ap;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 437
    :catch_0
    move-exception v0

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Action 2 not valid for asset of type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 440
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 15606
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 447
    if-eqz v0, :cond_4

    .line 16606
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 17003
    const-string v1, "window.imraid.broadcastEvent(\'replay\');"

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 451
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 452
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->f()Landroid/view/View;

    move-result-object v1

    .line 17113
    invoke-static {v1}, Lcom/inmobi/ads/ac;->b(Landroid/view/View;)Lcom/inmobi/ads/NativeTimerView;

    move-result-object v0

    .line 17114
    if-eqz v0, :cond_5

    .line 17115
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeTimerView;->a()V

    .line 454
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 455
    if-eqz v0, :cond_6

    .line 456
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 460
    :cond_6
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v1

    if-eq v0, v1, :cond_7

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action 3 not valid for asset of type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 473
    :catch_1
    move-exception v0

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in handling replay action on video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in replaying video"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 466
    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 467
    if-eqz v0, :cond_0

    .line 470
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->e()V

    .line 471
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 483
    :pswitch_3
    invoke-super {p0, p1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;)V

    goto/16 :goto_0

    .line 487
    :pswitch_4
    :try_start_3
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 17363
    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 18070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 487
    if-ne v0, v1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 489
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v2

    .line 491
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 492
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->getState()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v1

    if-eq v1, v3, :cond_0

    .line 19532
    :try_start_4
    iget-boolean v1, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 18572
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/ay;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 18574
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v3, "didRequestFullScreen"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 18575
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v3, "didRequestFullScreen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18576
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v3, "seekPosition"

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->getCurrentPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18577
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v3, "lastMediaVolume"

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->getVolume()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18582
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->getMediaPlayer()Lcom/inmobi/ads/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/ap;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 18583
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->getMediaPlayer()Lcom/inmobi/ads/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/ap;->pause()V

    .line 18591
    :cond_8
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->getMediaPlayer()Lcom/inmobi/ads/ap;

    move-result-object v1

    .line 20046
    const/4 v3, 0x4

    iput v3, v1, Lcom/inmobi/ads/ap;->a:I

    .line 18592
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v3, "isFullScreen"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18593
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "seekPosition"

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->getMediaPlayer()Lcom/inmobi/ads/ap;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/ap;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18594
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->m()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 495
    :catch_2
    move-exception v0

    .line 496
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling the onVideoRequestedFullScreen event; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 505
    :catch_3
    move-exception v0

    .line 506
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in handling fullscreen action on video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in expanding video to fullscreen"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 516
    :pswitch_5
    :try_start_6
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 517
    if-eqz v0, :cond_0

    .line 518
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/az;

    .line 519
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v2

    const-string v3, "shouldAutoPlay"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20275
    iget-object v2, v1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 520
    if-eqz v2, :cond_9

    .line 21275
    iget-object v1, v1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 521
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "shouldAutoPlay"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_9
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->start()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_0

    .line 525
    :catch_4
    move-exception v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in handling play action on video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in playing video"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method final a(Lcom/inmobi/ads/az;)V
    .locals 2

    .prologue
    .line 665
    .line 22532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 665
    if-eqz v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 666
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->f()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/ay;->c(Landroid/view/View;)V

    .line 667
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_PAUSE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 669
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PAUSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method

.method final a(Lcom/inmobi/ads/az;I)V
    .locals 3

    .prologue
    .line 617
    .line 21532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 617
    if-eqz v0, :cond_0

    .line 629
    :goto_0
    return-void

    .line 619
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 620
    const-string v1, "errorCode"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v1, "reason"

    const-string v2, "Video Player Error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/bq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v1, "VideoError"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ay;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 626
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_ERROR:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 628
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_ERROR:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method

.method final b(Lcom/inmobi/ads/az;)V
    .locals 2

    .prologue
    .line 673
    .line 23532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 673
    if-eqz v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->f()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/ay;->d(Landroid/view/View;)V

    .line 675
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RESUME:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 677
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_RESUMED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method

.method final b(Lcom/inmobi/ads/az;I)V
    .locals 3

    .prologue
    .line 723
    .line 26532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 723
    if-eqz v0, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 726
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q1:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 727
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 728
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/bq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v1, "isCached"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v1, "VideoQ1Completed"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ay;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 732
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_1:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0

    .line 736
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q2:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 737
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 738
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/bq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    const-string v1, "isCached"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v1, "VideoQ2Completed"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ay;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 742
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_2:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0

    .line 746
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q3:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 747
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 748
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/bq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v1, "isCached"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    const-string v1, "VideoQ3Completed"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ay;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 752
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_3:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto/16 :goto_0

    .line 756
    :pswitch_3
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didQ4Fire"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/ay;->e(Lcom/inmobi/ads/az;)V

    goto/16 :goto_0

    .line 724
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method final c(Lcom/inmobi/ads/az;)V
    .locals 3

    .prologue
    .line 681
    .line 24532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 681
    if-eqz v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 682
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lastMediaVolume"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_MUTE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 685
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_MUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method

.method final d(Lcom/inmobi/ads/az;)V
    .locals 3

    .prologue
    .line 689
    .line 25532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 689
    if-eqz v0, :cond_0

    .line 694
    :goto_0
    return-void

    .line 690
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lastMediaVolume"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_UNMUTE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 693
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_UNMUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 237
    .line 2532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 237
    if-eqz v0, :cond_0

    .line 247
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 242
    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->c()V

    .line 246
    :cond_1
    invoke-super {p0}, Lcom/inmobi/ads/ac;->destroy()V

    goto :goto_0
.end method

.method final e(Lcom/inmobi/ads/az;)V
    .locals 3

    .prologue
    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Firing Q4 beacons for completion at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27210
    iget v1, p1, Lcom/inmobi/ads/az;->E:I

    .line 765
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didQ4Fire"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_Q4:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/ay;->g(Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 768
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PLAY_COMPLETED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 771
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/bq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v1, "isCached"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v1, "completeAfter"

    .line 28210
    iget v2, p1, Lcom/inmobi/ads/az;->E:I

    .line 773
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v1, "VideoQ4Completed"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ay;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 776
    return-void
.end method

.method public getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/inmobi/ads/ay;->C:Lcom/inmobi/ads/AdContainer$a;

    return-object v0
.end method

.method public getVideoContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/inmobi/ads/ay;->z:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ay;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getViewableAd()Lcom/inmobi/ads/ViewableAd;
    .locals 9

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->j()Landroid/content/Context;

    move-result-object v0

    .line 345
    iget-object v1, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->g()V

    .line 347
    new-instance v1, Lcom/inmobi/ads/v;

    new-instance v2, Lcom/inmobi/ads/bu;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/bu;-><init>(Lcom/inmobi/ads/ay;)V

    invoke-direct {v1, p0, v2}, Lcom/inmobi/ads/v;-><init>(Lcom/inmobi/ads/ay;Lcom/inmobi/ads/ViewableAd;)V

    iput-object v1, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    .line 348
    iget-object v1, p0, Lcom/inmobi/ads/ay;->f:Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 349
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_5

    .line 351
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    .line 352
    iget-object v1, p0, Lcom/inmobi/ads/ay;->f:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bj;

    .line 353
    sget-object v3, Lcom/inmobi/ads/ay$4;->a:[I

    iget-object v4, v1, Lcom/inmobi/ads/bj;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-virtual {v4}, Lcom/inmobi/ads/AdUnit$AdTrackerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 355
    :pswitch_0
    iget-object v1, v1, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v3, "avidAdSession"

    .line 356
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    .line 357
    if-eqz v1, :cond_0

    .line 358
    new-instance v3, Lcom/inmobi/ads/q;

    iget-object v4, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-direct {v3, v0, v4, p0, v1}, Lcom/inmobi/ads/q;-><init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/inmobi/ads/ay;Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;)V

    iput-object v3, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception occurred while creating the video viewable ad : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 387
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    return-object v0

    .line 366
    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    iget-object v4, v1, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    .line 10327
    iget-object v1, p0, Lcom/inmobi/ads/ay;->a:Lcom/inmobi/ads/ai;

    sget-object v5, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    .line 10328
    invoke-virtual {v1, v5}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeAsset$AssetType;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/az;

    .line 10329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 10330
    invoke-virtual {v1}, Lcom/inmobi/ads/az;->f()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeTracker;

    .line 10331
    sget-object v7, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_MOAT:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 11301
    iget-object v8, v1, Lcom/inmobi/ads/NativeTracker;->b:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 10331
    if-ne v7, v8, :cond_2

    .line 12293
    iget-object v1, v1, Lcom/inmobi/ads/NativeTracker;->a:Ljava/lang/String;

    .line 10332
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 10335
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 10336
    const-string v1, "zMoatVASTIDs"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10339
    :cond_4
    new-instance v1, Lcom/inmobi/ads/aa;

    invoke-direct {v1, v0, v3, p0, v4}, Lcom/inmobi/ads/aa;-><init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/inmobi/ads/ay;Ljava/util/Map;)V

    .line 366
    iput-object v1, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 380
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 381
    const-string v1, "type"

    const-string v2, "native"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v1, "impId"

    .line 12381
    iget-object v2, p0, Lcom/inmobi/ads/ac;->d:Ljava/lang/String;

    .line 382
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v1, "ads"

    const-string v2, "TrackersForService"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final i()Z
    .locals 2

    .prologue
    .line 321
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 9363
    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 10070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 322
    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->l()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 321
    goto :goto_0
.end method

.method final n()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/inmobi/ads/ay;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final q()V
    .locals 1

    .prologue
    .line 780
    invoke-super {p0}, Lcom/inmobi/ads/ac;->q()V

    .line 782
    invoke-virtual {p0}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 783
    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v0

    .line 785
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->pause()V

    .line 787
    :cond_0
    return-void
.end method

.method final v()V
    .locals 2

    .prologue
    .line 632
    iget-object v0, p0, Lcom/inmobi/ads/ay;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PREPARED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 633
    return-void
.end method
