.class Lcom/inmobi/ads/aa;
.super Lcom/inmobi/ads/br;
.source "MoatTrackedNativeVideoAd.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/inmobi/ads/ViewableAd;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/ads/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/aa;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/inmobi/ads/ay;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/inmobi/ads/ViewableAd;",
            "Lcom/inmobi/ads/ay;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p3}, Lcom/inmobi/ads/br;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/aa;->i:Z

    .line 45
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/aa;->e:Ljava/lang/ref/WeakReference;

    .line 46
    iput-object p2, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    .line 47
    iput-object p4, p0, Lcom/inmobi/ads/aa;->g:Ljava/util/Map;

    .line 48
    const-string v0, "moatTracker"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    iput-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    .line 49
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    .line 194
    return-void
.end method

.method public final a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 8

    .prologue
    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received event : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for VideoTracker("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    sget-object v0, Lcom/inmobi/ads/aa$1;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 188
    :goto_1
    return-void

    .line 4093
    :pswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 3111
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 3112
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    if-eqz v1, :cond_0

    .line 3113
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v3

    .line 3114
    iget-boolean v1, p0, Lcom/inmobi/ads/aa;->i:Z

    if-eqz v1, :cond_1

    .line 3115
    iget-object v4, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    .line 4205
    const-string v5, "level"

    const-string v6, "slicer"

    iget-object v1, p0, Lcom/inmobi/ads/aa;->g:Ljava/util/Map;

    const-string v2, "clientLevels"

    .line 4207
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/inmobi/ads/aa;->g:Ljava/util/Map;

    const-string v7, "clientSlicers"

    .line 4208
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 4205
    invoke-static {v5, v6, v1, v2}, Lcom/inmobi/ads/AdUnit$c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v2

    .line 4209
    const-string v5, "zMoatVASTIDs"

    iget-object v1, p0, Lcom/inmobi/ads/aa;->g:Ljava/util/Map;

    const-string v6, "zMoatVASTIDs"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3115
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeVideoView;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v2, v1, v0}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->trackVideoAd(Ljava/util/Map;Ljava/lang/Integer;Landroid/view/View;)Z

    .line 3117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/aa;->i:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in onAdEvent with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_1

    .line 3119
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    invoke-interface {v1, v0}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->changeTargetView(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    throw v0

    .line 137
    :pswitch_1
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 5093
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 141
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getMediaPlayer()Lcom/inmobi/ads/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->getCurrentPosition()I

    move-result v0

    .line 144
    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;Ljava/lang/Integer;)V

    .line 145
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 149
    :pswitch_3
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 152
    :pswitch_4
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 155
    :pswitch_5
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 158
    :pswitch_6
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 161
    :pswitch_7
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 164
    :pswitch_8
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 167
    :pswitch_9
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 170
    :pswitch_a
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    sget-object v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;->VOLUME_MUTED:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->setPlayerVolume(Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 173
    :pswitch_b
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    sget-object v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;->VOLUME_UNMUTED:Ljava/lang/Double;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->setPlayerVolume(Ljava/lang/Double;)V

    goto/16 :goto_0

    .line 176
    :pswitch_c
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 179
    :pswitch_d
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 3

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/aa;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1066
    iget-object v1, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v1

    .line 1531
    iget-object v1, v1, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 74
    if-eqz v0, :cond_0

    .line 2093
    iget-object v2, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 74
    instance-of v2, v2, Lcom/inmobi/ads/ay;

    if-eqz v2, :cond_0

    .line 2753
    iget-boolean v1, v1, Lcom/inmobi/ads/b$h;->i:Z

    .line 75
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/aa;->g:Ljava/util/Map;

    const-string v2, "enabled"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    if-nez v1, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    iget-object v0, p0, Lcom/inmobi/ads/aa;->g:Ljava/util/Map;

    const-string v2, "partnerCode"

    .line 79
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    invoke-static {v1, v0}, Lcom/inmobi/ads/t;->a(Landroid/app/Application;Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    .line 80
    iget-object v0, p0, Lcom/inmobi/ads/aa;->g:Ljava/util/Map;

    const-string v1, "moatTracker"

    iget-object v2, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/aa;->i:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    .line 89
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in startTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    throw v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 95
    .line 3093
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 95
    check-cast v0, Lcom/inmobi/ads/ay;

    .line 98
    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->i()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;->stopTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 107
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in stopTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 106
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->d()V

    throw v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/aa;->f:Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    .line 199
    iget-object v0, p0, Lcom/inmobi/ads/aa;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 200
    invoke-super {p0}, Lcom/inmobi/ads/br;->e()V

    .line 201
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    .line 202
    return-void
.end method
