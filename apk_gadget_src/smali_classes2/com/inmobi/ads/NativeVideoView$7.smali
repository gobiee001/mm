.class final Lcom/inmobi/ads/NativeVideoView$7;
.super Ljava/lang/Object;
.source "NativeVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


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
    .line 403
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeVideoView;->a(Lcom/inmobi/ads/NativeVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 409
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->i(Lcom/inmobi/ads/NativeVideoView;)V

    .line 410
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->j(Lcom/inmobi/ads/NativeVideoView;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->j(Lcom/inmobi/ads/NativeVideoView;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 433
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeVideoView;->a(Lcom/inmobi/ads/NativeVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->e(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/NativeVideoController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeVideoView;->e(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/NativeVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoController;->b()V

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->c()V

    .line 437
    const/4 v0, 0x1

    return v0
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 415
    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v2}, Lcom/inmobi/ads/NativeVideoView;->c(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/ap;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v2}, Lcom/inmobi/ads/NativeVideoView;->c(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/ap;

    move-result-object v2

    .line 1058
    iget v2, v2, Lcom/inmobi/ads/ap;->b:I

    .line 415
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v2, v0

    .line 416
    :goto_0
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 417
    :goto_1
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-static {v1}, Lcom/inmobi/ads/NativeVideoView;->c(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/ap;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 420
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "seekPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 421
    if-eqz v0, :cond_0

    .line 422
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeVideoView;->a(I)V

    .line 425
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView$7;->a:Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->start()V

    .line 427
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 415
    goto :goto_0

    :cond_3
    move v0, v1

    .line 416
    goto :goto_1
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 443
    return-void
.end method
