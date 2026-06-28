.class final Lcom/inmobi/rendering/mraid/MediaRenderView$1;
.super Ljava/lang/Object;
.source "MediaRenderView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/mraid/MediaRenderView;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/MediaRenderView;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/mraid/MediaRenderView;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    .prologue
    .line 135
    invoke-static {}, Lcom/inmobi/rendering/mraid/MediaRenderView;->b()Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->a(Lcom/inmobi/rendering/mraid/MediaRenderView;)Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    new-instance v1, Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-virtual {v2}, Lcom/inmobi/rendering/mraid/MediaRenderView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->a(Lcom/inmobi/rendering/mraid/MediaRenderView;Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;)Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    .line 138
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->a(Lcom/inmobi/rendering/mraid/MediaRenderView;)Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;->setAnchorView(Landroid/view/View;)V

    .line 139
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->a(Lcom/inmobi/rendering/mraid/MediaRenderView;)Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setMediaController(Landroid/widget/MediaController;)V

    .line 140
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->requestLayout()V

    .line 141
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->requestFocus()Z

    .line 143
    :cond_0
    return-void
.end method
