.class final Lcom/inmobi/ads/NativeVideoView$2;
.super Ljava/lang/Object;
.source "NativeVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeVideoView;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeVideoView;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->c(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/ap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->c(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/ap;

    move-result-object v0

    .line 1046
    const/4 v1, 0x2

    iput v1, v0, Lcom/inmobi/ads/ap;->a:I

    .line 222
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    iget-object v3, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v3}, Lcom/inmobi/ads/NativeVideoView;->d(Lcom/inmobi/ads/NativeVideoView;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/inmobi/ads/NativeVideoView;->b(Lcom/inmobi/ads/NativeVideoView;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeVideoView;->a(Lcom/inmobi/ads/NativeVideoView;Z)Z

    .line 224
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->e(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/NativeVideoController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->e(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/NativeVideoController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeVideoController;->setEnabled(Z)V

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeVideoView;->a(Lcom/inmobi/ads/NativeVideoView;I)I

    .line 229
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeVideoView;->b(Lcom/inmobi/ads/NativeVideoView;I)I

    .line 231
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 232
    if-eqz v0, :cond_3

    .line 233
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v3, "didCompleteQ4"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3, v2}, Lcom/inmobi/ads/NativeVideoView;->a(II)V

    .line 240
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v3, "placementType"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 241
    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-eq v1, v3, :cond_0

    .line 247
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 248
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;

    move-result-object v1

    sget-object v3, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PREPARED:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v1, v3}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    .line 252
    :cond_4
    if-eqz v0, :cond_9

    .line 253
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v3, "didCompleteQ4"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    .line 254
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "seekPosition"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 258
    :goto_1
    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v2}, Lcom/inmobi/ads/NativeVideoView;->a(Lcom/inmobi/ads/NativeVideoView;)I

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v2}, Lcom/inmobi/ads/NativeVideoView;->b(Lcom/inmobi/ads/NativeVideoView;)I

    move-result v2

    if-eqz v2, :cond_8

    .line 261
    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v2}, Lcom/inmobi/ads/NativeVideoView;->c(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/ap;

    move-result-object v2

    .line 1058
    iget v2, v2, Lcom/inmobi/ads/ap;->b:I

    .line 261
    if-ne v4, v2, :cond_6

    .line 262
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 263
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->start()V

    .line 265
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->e(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/NativeVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->e(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/NativeVideoController;

    move-result-object v0

    .line 1123
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoController;->a()V

    goto/16 :goto_0

    .line 268
    :cond_6
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez v1, :cond_7

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_0

    .line 269
    :cond_7
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->e(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/NativeVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->e(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/NativeVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoController;->a()V

    goto/16 :goto_0

    .line 277
    :cond_8
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v1}, Lcom/inmobi/ads/NativeVideoView;->c(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/ap;

    move-result-object v1

    .line 2058
    iget v1, v1, Lcom/inmobi/ads/ap;->b:I

    .line 277
    if-ne v4, v1, :cond_0

    .line 278
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$2;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->start()V

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto/16 :goto_1
.end method
