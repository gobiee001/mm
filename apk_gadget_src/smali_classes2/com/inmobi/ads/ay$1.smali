.class final Lcom/inmobi/ads/ay$1;
.super Ljava/lang/Object;
.source "NativeVideoAdContainer.java"

# interfaces
.implements Lcom/inmobi/ads/AdContainer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ay;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ay;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/inmobi/ads/ay;->w()Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->a()V

    .line 98
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 102
    iget-object v0, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->l()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    check-cast p1, Lcom/inmobi/ads/az;

    .line 107
    invoke-static {}, Lcom/inmobi/ads/ay;->w()Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "shouldAutoPlay"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    iget-object v0, p1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 116
    if-eqz v0, :cond_2

    .line 2275
    iget-object v0, p1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 118
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3275
    iget-object v0, p1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 119
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4275
    iget-object v0, p1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 120
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "shouldAutoPlay"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_2
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    .line 4363
    iget-object v1, v1, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 5070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 123
    if-ne v0, v1, :cond_3

    .line 124
    iget-object v0, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_ENTER_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 130
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    iget-object v1, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    .line 131
    invoke-static {v1, p1}, Lcom/inmobi/ads/ay;->a(Lcom/inmobi/ads/ay;Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    .line 130
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 133
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->b()V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 141
    invoke-static {}, Lcom/inmobi/ads/ay;->w()Ljava/lang/String;

    .line 143
    check-cast p1, Lcom/inmobi/ads/az;

    .line 145
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5275
    iget-object v0, p1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 147
    if-eqz v0, :cond_0

    .line 6275
    iget-object v0, p1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 148
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7275
    iget-object v0, p1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 149
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8275
    iget-object v0, p1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 9271
    iput-object v4, v0, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 10271
    :cond_0
    iput-object v4, p1, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 154
    iget-object v0, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    .line 10363
    iget-object v0, v0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 11070
    iget-object v0, v0, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 154
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v0, v1, :cond_3

    .line 155
    iget-object v0, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_EXIT_FULLSCREEN:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 156
    iget-object v0, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    .line 11391
    iget-object v0, v0, Lcom/inmobi/ads/ac;->k:Lcom/inmobi/ads/ac;

    .line 156
    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    .line 12391
    iget-object v0, v0, Lcom/inmobi/ads/ac;->k:Lcom/inmobi/ads/ac;

    .line 157
    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_RESUME_INLINE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 159
    :cond_1
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_EXIT_FULLSCREEN:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    iget-object v1, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    .line 160
    invoke-static {v1, p1}, Lcom/inmobi/ads/ay;->a(Lcom/inmobi/ads/ay;Lcom/inmobi/ads/az;)Ljava/util/Map;

    move-result-object v1

    .line 159
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_2

    .line 166
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->f()V

    .line 168
    :cond_2
    return-void

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/ay$1;->a:Lcom/inmobi/ads/ay;

    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_CLOSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method
