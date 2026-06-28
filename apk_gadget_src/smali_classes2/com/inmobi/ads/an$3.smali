.class final Lcom/inmobi/ads/an$3;
.super Ljava/lang/Object;
.source "NativeInflater.java"

# interfaces
.implements Lcom/inmobi/ads/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/an;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/an;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/an;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Lcom/inmobi/ads/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ay;

    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->v()V

    .line 80
    :cond_0
    return-void
.end method

.method public final a(Lcom/inmobi/ads/NativeVideoView;)V
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Lcom/inmobi/ads/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ay;

    .line 2589
    iget-boolean v1, v0, Lcom/inmobi/ads/ac;->r:Z

    .line 2561
    invoke-virtual {p1, v1}, Lcom/inmobi/ads/NativeVideoView;->setIsLockScreen(Z)V

    .line 2562
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 2563
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/inmobi/ads/ay;->z:Ljava/lang/ref/WeakReference;

    .line 2564
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getMediaController()Lcom/inmobi/ads/NativeVideoController;

    move-result-object v1

    .line 2565
    if-eqz v1, :cond_0

    .line 2566
    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeVideoController;->setVideoAd(Lcom/inmobi/ads/ay;)V

    .line 45
    :cond_0
    return-void
.end method

.method public final a(Lcom/inmobi/ads/az;)V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Lcom/inmobi/ads/an;->b()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_2

    .line 85
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ay;

    .line 3532
    iget-boolean v1, v0, Lcom/inmobi/ads/ac;->i:Z

    .line 2636
    if-nez v1, :cond_2

    .line 2639
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 4363
    iget-object v2, v0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 5070
    iget-object v2, v2, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 2639
    if-ne v1, v2, :cond_1

    .line 2640
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "currentMediaVolume"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    .line 2641
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "lastMediaVolume"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 2642
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ay;->d(Lcom/inmobi/ads/az;)V

    .line 2644
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "currentMediaVolume"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 2645
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "lastMediaVolume"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_1

    .line 2646
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ay;->c(Lcom/inmobi/ads/az;)V

    .line 2650
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didStartPlaying"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2651
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didStartPlaying"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2652
    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PLAYED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 2654
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2656
    const-string v2, "isCached"

    const-string v3, "1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2657
    const-string v2, "VideoPlayed"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/ads/ay;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2660
    :cond_2
    :goto_0
    return-void

    .line 2658
    :catch_0
    move-exception v0

    .line 2659
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in submitting telemetry event : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Lcom/inmobi/ads/az;I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Lcom/inmobi/ads/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ay;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ay;->a(Lcom/inmobi/ads/az;I)V

    .line 73
    :cond_0
    return-void
.end method

.method public final b(Lcom/inmobi/ads/az;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Lcom/inmobi/ads/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ay;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ay;->a(Lcom/inmobi/ads/az;)V

    .line 94
    :cond_0
    return-void
.end method

.method public final b(Lcom/inmobi/ads/az;I)V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Lcom/inmobi/ads/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ay;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ay;->b(Lcom/inmobi/ads/az;I)V

    .line 136
    :cond_0
    return-void
.end method

.method public final c(Lcom/inmobi/ads/az;)V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Lcom/inmobi/ads/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ay;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ay;->b(Lcom/inmobi/ads/az;)V

    .line 101
    :cond_0
    return-void
.end method

.method public final d(Lcom/inmobi/ads/az;)V
    .locals 3

    .prologue
    .line 126
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Lcom/inmobi/ads/an;->b()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ay;

    .line 5703
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didSignalVideoCompleted"

    .line 5704
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 5703
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 5706
    if-nez v1, :cond_0

    .line 5710
    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->o()V

    .line 5711
    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v1

    .line 5712
    if-eqz v1, :cond_0

    .line 5713
    invoke-interface {v1}, Lcom/inmobi/ads/ac$c;->h()V

    .line 5717
    :cond_0
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 6363
    iget-object v2, v0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 7070
    iget-object v2, v2, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 5717
    if-ne v1, v2, :cond_1

    .line 5718
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ay;->b(Lcom/inmobi/ads/NativeAsset;)V

    .line 129
    :cond_1
    return-void
.end method

.method public final e(Lcom/inmobi/ads/az;)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Lcom/inmobi/ads/an;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    instance-of v0, v0, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/inmobi/ads/an$3;->a:Lcom/inmobi/ads/an;

    invoke-static {v0}, Lcom/inmobi/ads/an;->a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ay;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ay;->e(Lcom/inmobi/ads/az;)V

    .line 143
    :cond_0
    return-void
.end method
