.class public Lcom/inmobi/ads/NativeVideoView;
.super Landroid/view/TextureView;
.source "NativeVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeVideoView$c;,
        Lcom/inmobi/ads/NativeVideoView$a;,
        Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;,
        Lcom/inmobi/ads/NativeVideoView$b;
    }
.end annotation


# static fields
.field private static final m:Ljava/lang/String;


# instance fields
.field private A:Landroid/media/MediaPlayer$OnInfoListener;

.field private B:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private C:Landroid/media/MediaPlayer$OnErrorListener;

.field a:Landroid/net/Uri;

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/inmobi/ads/ap;

.field d:I

.field e:I

.field f:I

.field g:Lcom/inmobi/ads/NativeVideoView$c;

.field h:Landroid/os/Handler;

.field i:Z

.field j:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field k:Landroid/media/MediaPlayer$OnPreparedListener;

.field final l:Landroid/view/TextureView$SurfaceTextureListener;

.field private n:Landroid/view/Surface;

.field private o:I

.field private p:I

.field private q:Lcom/inmobi/ads/NativeVideoView$b;

.field private r:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;

.field private s:Lcom/inmobi/ads/NativeVideoView$a;

.field private t:Z

.field private u:Lcom/inmobi/ads/NativeVideoController;

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Landroid/media/MediaPlayer$OnCompletionListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/inmobi/ads/NativeVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeVideoView;->m:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 73
    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->n:Landroid/view/Surface;

    .line 74
    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/NativeVideoView;->p:I

    .line 201
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeVideoView$1;-><init>(Lcom/inmobi/ads/NativeVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->j:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 212
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeVideoView$2;-><init>(Lcom/inmobi/ads/NativeVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->k:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 286
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeVideoView$3;-><init>(Lcom/inmobi/ads/NativeVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->z:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 348
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeVideoView$4;-><init>(Lcom/inmobi/ads/NativeVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->A:Landroid/media/MediaPlayer$OnInfoListener;

    .line 359
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeVideoView$5;-><init>(Lcom/inmobi/ads/NativeVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->B:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 365
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$6;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeVideoView$6;-><init>(Lcom/inmobi/ads/NativeVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->C:Landroid/media/MediaPlayer$OnErrorListener;

    .line 403
    new-instance v0, Lcom/inmobi/ads/NativeVideoView$7;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeVideoView$7;-><init>(Lcom/inmobi/ads/NativeVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->l:Landroid/view/TextureView$SurfaceTextureListener;

    .line 448
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->requestLayout()V

    .line 449
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->invalidate()V

    .line 450
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeVideoView;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    return v0
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeVideoView;I)I
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeVideoView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoView;->n:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeVideoView;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/inmobi/ads/NativeVideoView;->w:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/NativeVideoView;)I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/NativeVideoView;I)I
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/NativeVideoView;Z)Z
    .locals 0

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/inmobi/ads/NativeVideoView;->x:Z

    return p1
.end method

.method static synthetic c(Lcom/inmobi/ads/NativeVideoView;I)I
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/inmobi/ads/NativeVideoView;->v:I

    return p1
.end method

.method static synthetic c(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/ap;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/ads/NativeVideoView;)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeVideoView;->y:Z

    return v0
.end method

.method static synthetic e(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/NativeVideoController;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/inmobi/ads/NativeVideoView;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/inmobi/ads/NativeVideoView;)V
    .locals 6

    .prologue
    const/4 v1, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 67
    .line 13300
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_0

    .line 13301
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 14046
    iput v1, v0, Lcom/inmobi/ads/ap;->a:I

    .line 13302
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 14054
    iput v1, v0, Lcom/inmobi/ads/ap;->b:I

    .line 13304
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    if-eqz v0, :cond_1

    .line 13305
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoController;->b()V

    .line 13307
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->g:Lcom/inmobi/ads/NativeVideoView$c;

    if-eqz v0, :cond_2

    .line 13308
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->g:Lcom/inmobi/ads/NativeVideoView$c;

    invoke-virtual {v0, v5}, Lcom/inmobi/ads/NativeVideoView$c;->removeMessages(I)V

    .line 13311
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 13312
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 13313
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ4"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 13314
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ4"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13315
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getQuartileCompletedListener()Lcom/inmobi/ads/NativeVideoView$b;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 13316
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getQuartileCompletedListener()Lcom/inmobi/ads/NativeVideoView$b;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/inmobi/ads/NativeVideoView$b;->a(I)V

    .line 13320
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didSignalVideoCompleted"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14338
    if-eqz v0, :cond_4

    .line 14339
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ1"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14340
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ2"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14341
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ3"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14342
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didPause"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14343
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didStartPlaying"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14344
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didQ4Fire"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15202
    :cond_4
    iget-boolean v1, v0, Lcom/inmobi/ads/az;->C:Z

    .line 13327
    if-eqz v1, :cond_6

    .line 13328
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->start()V

    :cond_5
    :goto_0
    return-void

    .line 13330
    :cond_6
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13331
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v4}, Lcom/inmobi/ads/NativeVideoView;->a(II)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/inmobi/ads/NativeVideoView;)Lcom/inmobi/ads/NativeVideoView$a;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->s:Lcom/inmobi/ads/NativeVideoView$a;

    return-object v0
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 822
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->n:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-nez v0, :cond_2

    .line 828
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 829
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 830
    if-eqz v0, :cond_7

    .line 832
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "placementType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 834
    :goto_1
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v1, v0, :cond_4

    new-instance v0, Lcom/inmobi/ads/ap;

    invoke-direct {v0}, Lcom/inmobi/ads/ap;-><init>()V

    .line 836
    :goto_2
    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 837
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->d:I

    if-eqz v0, :cond_5

    .line 838
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    iget v1, p0, Lcom/inmobi/ads/NativeVideoView;->d:I

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ap;->setAudioSessionId(I)V

    .line 844
    :goto_3
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/inmobi/ads/NativeVideoView;->b:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/ap;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 852
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 853
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView;->k:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ap;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 854
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView;->j:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ap;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 855
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView;->z:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ap;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 856
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView;->C:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ap;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 857
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView;->A:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ap;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 858
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView;->B:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ap;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 859
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView;->n:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ap;->setSurface(Landroid/view/Surface;)V

    .line 860
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ap;->setAudioStreamType(I)V

    .line 861
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v1}, Lcom/inmobi/ads/ap;->prepareAsync()V

    .line 862
    const/4 v1, 0x0

    iput v1, p0, Lcom/inmobi/ads/NativeVideoView;->v:I

    .line 863
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 10046
    const/4 v2, 0x1

    iput v2, v1, Lcom/inmobi/ads/ap;->a:I

    .line 865
    invoke-direct {p0}, Lcom/inmobi/ads/NativeVideoView;->h()V

    .line 866
    if-eqz v0, :cond_6

    .line 868
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "shouldAutoPlay"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 869
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 10054
    const/4 v2, 0x3

    iput v2, v1, Lcom/inmobi/ads/ap;->b:I

    .line 872
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didCompleteQ4"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 873
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/NativeVideoView;->a(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 879
    :catch_0
    move-exception v0

    .line 880
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 11046
    iput v5, v1, Lcom/inmobi/ads/ap;->a:I

    .line 881
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 11054
    iput v5, v1, Lcom/inmobi/ads/ap;->b:I

    .line 882
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->C:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-interface {v1, v2, v6, v4}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 883
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 836
    :cond_4
    invoke-static {}, Lcom/inmobi/ads/ap;->a()Lcom/inmobi/ads/ap;

    move-result-object v0

    goto/16 :goto_2

    .line 840
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/NativeVideoView;->d:I

    goto/16 :goto_3

    .line 846
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 9046
    iput v5, v0, Lcom/inmobi/ads/ap;->a:I

    .line 847
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 9054
    iput v5, v0, Lcom/inmobi/ads/ap;->b:I

    goto/16 :goto_0

    .line 878
    :cond_6
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/NativeVideoView;->a(II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private h()V
    .locals 2

    .prologue
    .line 962
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    if-eqz v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/NativeVideoController;->setMediaPlayer(Lcom/inmobi/ads/NativeVideoView;)V

    .line 964
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeVideoController;->setEnabled(Z)V

    .line 965
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    .line 13123
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoController;->a()V

    .line 967
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/inmobi/ads/NativeVideoView;)V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 15389
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->a:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 15390
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 15391
    invoke-static {}, Lcom/inmobi/ads/cache/d;->a()Lcom/inmobi/ads/cache/d;

    .line 16170
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 16171
    const-string v1, "asset"

    sget-object v2, Lcom/inmobi/ads/cache/d;->a:[Ljava/lang/String;

    const-string v3, "disk_uri=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "created_ts DESC "

    const-string v8, "1"

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 16173
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 16175
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v9

    .line 15392
    :goto_0
    new-instance v1, Lcom/inmobi/ads/cache/a$a;

    invoke-direct {v1}, Lcom/inmobi/ads/cache/a$a;-><init>()V

    .line 15393
    if-eqz v0, :cond_0

    .line 16232
    iget-object v0, v0, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 15394
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/inmobi/ads/cache/a$a;->a(Ljava/lang/String;IJ)Lcom/inmobi/ads/cache/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/cache/a$a;->a()Lcom/inmobi/ads/cache/a;

    move-result-object v0

    .line 15395
    invoke-static {}, Lcom/inmobi/ads/cache/d;->a()Lcom/inmobi/ads/cache/d;

    invoke-static {v0}, Lcom/inmobi/ads/cache/d;->b(Lcom/inmobi/ads/cache/a;)I

    .line 15400
    :cond_0
    :goto_1
    return-void

    .line 16175
    :cond_1
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-static {v0}, Lcom/inmobi/ads/cache/d;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/cache/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic i(Lcom/inmobi/ads/NativeVideoView;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/inmobi/ads/NativeVideoView;->g()V

    return-void
.end method

.method static synthetic j(Lcom/inmobi/ads/NativeVideoView;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->n:Landroid/view/Surface;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->n:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->n:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->n:Landroid/view/Surface;

    .line 503
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->c()V

    .line 504
    return-void
.end method

.method final a(I)V
    .locals 1

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ap;->seekTo(I)V

    .line 762
    :cond_0
    return-void
.end method

.method final a(II)V
    .locals 2

    .prologue
    .line 970
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_0

    .line 971
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 972
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getPoster()Landroid/widget/ImageView;

    move-result-object v0

    .line 973
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 974
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 976
    :cond_0
    return-void
.end method

.method final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 594
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 2050
    iget v1, v1, Lcom/inmobi/ads/ap;->a:I

    .line 595
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 3050
    iget v1, v1, Lcom/inmobi/ads/ap;->a:I

    .line 596
    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 4050
    iget v1, v1, Lcom/inmobi/ads/ap;->a:I

    .line 597
    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 594
    goto :goto_0
.end method

.method final c()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 888
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_3

    .line 889
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->g:Lcom/inmobi/ads/NativeVideoView$c;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->g:Lcom/inmobi/ads/NativeVideoView$c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeVideoView$c;->removeMessages(I)V

    .line 893
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 894
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 895
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "seekPosition"

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 12046
    iput v4, v0, Lcom/inmobi/ads/ap;->a:I

    .line 899
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 12054
    iput v4, v0, Lcom/inmobi/ads/ap;->b:I

    .line 901
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->reset()V

    .line 12924
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/ap;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 12925
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/ap;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 12926
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/ap;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 12927
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/ap;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 12928
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/ap;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 12929
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/ap;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 903
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 904
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 905
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v2, "placementType"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_2

    .line 906
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->b()V

    .line 911
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 912
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 914
    iput-object v3, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 916
    :cond_3
    return-void

    .line 909
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->b()V

    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 783
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeVideoView;->w:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeVideoView;->x:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeVideoView;->y:Z

    return v0
.end method

.method public final d()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 933
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_0

    .line 934
    iput v2, p0, Lcom/inmobi/ads/NativeVideoView;->o:I

    .line 935
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0, v1, v1}, Lcom/inmobi/ads/ap;->setVolume(FF)V

    .line 936
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 938
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "currentMediaVolume"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 944
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_0

    .line 945
    const/4 v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/NativeVideoView;->o:I

    .line 946
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0, v1, v1}, Lcom/inmobi/ads/ap;->setVolume(FF)V

    .line 947
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 949
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "currentMediaVolume"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    :cond_0
    return-void
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 797
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->d:I

    if-nez v0, :cond_0

    .line 798
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 799
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/inmobi/ads/NativeVideoView;->d:I

    .line 800
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 802
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->d:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 775
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_0

    .line 776
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->v:I

    .line 778
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->getCurrentPosition()I

    move-result v0

    .line 755
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 743
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->getDuration()I

    move-result v0

    .line 747
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getMediaController()Lcom/inmobi/ads/NativeVideoController;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    return-object v0
.end method

.method public getMediaPlayer()Lcom/inmobi/ads/ap;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    return-object v0
.end method

.method public getPlaybackEventListener()Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->r:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;

    return-object v0
.end method

.method public getQuartileCompletedListener()Lcom/inmobi/ads/NativeVideoView$b;
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->q:Lcom/inmobi/ads/NativeVideoView$b;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 1050
    iget v0, v0, Lcom/inmobi/ads/ap;->a:I

    .line 523
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 955
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->o:I

    .line 958
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 770
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    .line 529
    :try_start_0
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    invoke-static {v0, p1}, Lcom/inmobi/ads/NativeVideoView;->getDefaultSize(II)I

    move-result v1

    .line 530
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    invoke-static {v0, p2}, Lcom/inmobi/ads/NativeVideoView;->getDefaultSize(II)I

    move-result v0

    .line 531
    iget v2, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    if-lez v2, :cond_0

    .line 533
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 534
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 535
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 536
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 538
    if-ne v4, v3, :cond_2

    if-ne v5, v3, :cond_2

    .line 542
    iget v1, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_1

    .line 544
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    div-int/2addr v0, v1

    move v1, v2

    .line 581
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeVideoView;->setMeasuredDimension(II)V

    .line 586
    :goto_1
    return-void

    .line 545
    :cond_1
    iget v1, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_7

    .line 547
    iget v1, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    div-int/2addr v1, v2

    goto :goto_0

    .line 549
    :cond_2
    if-ne v4, v3, :cond_3

    .line 552
    iget v1, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    div-int/2addr v1, v3

    .line 553
    if-ne v5, v6, :cond_6

    if-le v1, v0, :cond_6

    move v1, v2

    .line 555
    goto :goto_0

    .line 557
    :cond_3
    if-ne v5, v3, :cond_4

    .line 560
    iget v1, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    div-int/2addr v1, v3

    .line 561
    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    .line 563
    goto :goto_0

    .line 567
    :cond_4
    iget v3, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    .line 568
    iget v1, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    .line 569
    if-ne v5, v6, :cond_5

    if-le v1, v0, :cond_5

    .line 572
    iget v1, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    div-int/2addr v1, v3

    .line 574
    :goto_2
    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    .line 577
    iget v0, p0, Lcom/inmobi/ads/NativeVideoView;->f:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/inmobi/ads/NativeVideoView;->e:I

    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    .line 582
    :catch_0
    move-exception v0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling the onMeasure event; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 584
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    move v0, v1

    move v1, v3

    goto :goto_2

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public pause()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 704
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 705
    :goto_0
    if-eqz v0, :cond_1

    .line 706
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->pause()V

    .line 707
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 8046
    iput v5, v0, Lcom/inmobi/ads/ap;->a:I

    .line 708
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 710
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v3

    const-string v4, "didPause"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "seekPosition"

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getCurrentPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PAUSE:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    .line 715
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_2

    .line 716
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 8054
    iput v5, v0, Lcom/inmobi/ads/ap;->b:I

    .line 718
    :cond_2
    iput-boolean v2, p0, Lcom/inmobi/ads/NativeVideoView;->i:Z

    .line 719
    return-void

    :cond_3
    move v0, v2

    .line 704
    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 0

    .prologue
    .line 766
    return-void
.end method

.method public setIsLockScreen(Z)V
    .locals 0

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/inmobi/ads/NativeVideoView;->t:Z

    .line 602
    return-void
.end method

.method public setMediaController(Lcom/inmobi/ads/NativeVideoController;)V
    .locals 0

    .prologue
    .line 979
    if-eqz p1, :cond_0

    .line 980
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    .line 981
    invoke-direct {p0}, Lcom/inmobi/ads/NativeVideoView;->h()V

    .line 983
    :cond_0
    return-void
.end method

.method public setMediaErrorListener(Lcom/inmobi/ads/NativeVideoView$a;)V
    .locals 0

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoView;->s:Lcom/inmobi/ads/NativeVideoView$a;

    .line 1003
    return-void
.end method

.method public setPlaybackEventListener(Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;)V
    .locals 0

    .prologue
    .line 998
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoView;->r:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;

    .line 999
    return-void
.end method

.method public setQuartileCompletedListener(Lcom/inmobi/ads/NativeVideoView$b;)V
    .locals 0

    .prologue
    .line 990
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoView;->q:Lcom/inmobi/ads/NativeVideoView$b;

    .line 991
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 806
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 807
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 810
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/ads/NativeVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 811
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 814
    iput-object p1, p0, Lcom/inmobi/ads/NativeVideoView;->a:Landroid/net/Uri;

    .line 815
    iput-object p2, p0, Lcom/inmobi/ads/NativeVideoView;->b:Ljava/util/Map;

    .line 816
    invoke-direct {p0}, Lcom/inmobi/ads/NativeVideoView;->g()V

    .line 817
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->requestLayout()V

    .line 818
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->invalidate()V

    .line 819
    return-void
.end method

.method public start()V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    const/4 v9, 0x3

    const/16 v8, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 615
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 616
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 617
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v5

    .line 618
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_7

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    move v2, v0

    .line 620
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->b()Z

    move-result v6

    .line 622
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 623
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v7, "shouldAutoPlay"

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_0
    move v1, v4

    .line 627
    :goto_1
    if-eqz v6, :cond_1

    if-nez v1, :cond_1

    .line 628
    invoke-virtual {p0, v8, v3}, Lcom/inmobi/ads/NativeVideoView;->a(II)V

    .line 630
    :cond_1
    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v2}, Lcom/inmobi/ads/ap;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/inmobi/ads/NativeVideoView;->t:Z

    if-nez v1, :cond_2

    if-nez v5, :cond_5

    .line 633
    :cond_2
    if-eqz v0, :cond_a

    .line 634
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ4"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_a

    .line 635
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "seekPosition"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 638
    :goto_2
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->d()V

    .line 639
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/NativeVideoView;->a(I)V

    .line 640
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    invoke-virtual {v1}, Lcom/inmobi/ads/ap;->start()V

    .line 641
    iget-object v1, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 5046
    iput v9, v1, Lcom/inmobi/ads/ap;->a:I

    .line 642
    invoke-virtual {p0, v8, v8}, Lcom/inmobi/ads/NativeVideoView;->a(II)V

    .line 644
    if-eqz v0, :cond_4

    .line 645
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ4"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5194
    iget-boolean v1, v0, Lcom/inmobi/ads/az;->A:Z

    .line 646
    if-eqz v1, :cond_3

    .line 647
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->e()V

    .line 649
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didPause"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 650
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_RESUME:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v1, v2}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    .line 651
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didPause"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 655
    :goto_3
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->g:Lcom/inmobi/ads/NativeVideoView$c;

    if-eqz v0, :cond_4

    .line 656
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->g:Lcom/inmobi/ads/NativeVideoView$c;

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/NativeVideoView$c;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 657
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->g:Lcom/inmobi/ads/NativeVideoView$c;

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/NativeVideoView$c;->sendEmptyMessage(I)Z

    .line 661
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    if-eqz v0, :cond_5

    .line 662
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->u:Lcom/inmobi/ads/NativeVideoController;

    .line 6123
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoController;->a()V

    .line 667
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_6

    .line 668
    iget-object v0, p0, Lcom/inmobi/ads/NativeVideoView;->c:Lcom/inmobi/ads/ap;

    .line 7054
    iput v9, v0, Lcom/inmobi/ads/ap;->b:I

    .line 670
    :cond_6
    return-void

    .line 619
    :cond_7
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    move v2, v0

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 624
    goto/16 :goto_1

    .line 653
    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PLAY:Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    goto :goto_3

    :cond_a
    move v1, v3

    goto/16 :goto_2
.end method
