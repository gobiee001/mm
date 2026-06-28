.class public Lcom/chartboost/sdk/impl/am;
.super Landroid/view/TextureView;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/chartboost/sdk/impl/an$a;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:Landroid/net/Uri;

.field private c:Ljava/util/Map;
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

.field private d:I

.field private e:I

.field private f:I

.field private g:Landroid/view/Surface;

.field private h:Landroid/media/MediaPlayer;

.field private i:I

.field private j:I

.field private k:Landroid/media/MediaPlayer$OnCompletionListener;

.field private l:Landroid/media/MediaPlayer$OnPreparedListener;

.field private m:I

.field private n:Landroid/media/MediaPlayer$OnErrorListener;

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v0, "VideoTextureView"

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am;->a:Ljava/lang/String;

    .line 83
    iput v1, p0, Lcom/chartboost/sdk/impl/am;->e:I

    .line 84
    iput v1, p0, Lcom/chartboost/sdk/impl/am;->f:I

    .line 87
    iput-object v2, p0, Lcom/chartboost/sdk/impl/am;->g:Landroid/view/Surface;

    .line 88
    iput-object v2, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    .line 100
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->f()V

    .line 101
    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 352
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    .line 354
    iput v1, p0, Lcom/chartboost/sdk/impl/am;->e:I

    .line 355
    if-eqz p1, :cond_0

    .line 356
    iput v1, p0, Lcom/chartboost/sdk/impl/am;->f:I

    .line 359
    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lcom/chartboost/sdk/impl/am;->i:I

    .line 115
    iput v0, p0, Lcom/chartboost/sdk/impl/am;->j:I

    .line 116
    invoke-virtual {p0, p0}, Lcom/chartboost/sdk/impl/am;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 117
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/am;->setFocusable(Z)V

    .line 118
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/am;->setFocusableInTouchMode(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am;->requestFocus()Z

    .line 120
    iput v0, p0, Lcom/chartboost/sdk/impl/am;->e:I

    .line 121
    iput v0, p0, Lcom/chartboost/sdk/impl/am;->f:I

    .line 122
    return-void
.end method

.method private g()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 167
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->b:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->g:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    const-string v1, "command"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    invoke-direct {p0, v5}, Lcom/chartboost/sdk/impl/am;->a(Z)V

    .line 180
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->h()V

    .line 183
    :try_start_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->d:I

    .line 187
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 189
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 190
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->m:I

    .line 193
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 194
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 196
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 197
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 199
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->g:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 200
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 201
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 205
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->e:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 206
    :catch_0
    move-exception v0

    .line 207
    const-string v1, "VideoTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/am;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    iput v4, p0, Lcom/chartboost/sdk/impl/am;->e:I

    .line 209
    iput v4, p0, Lcom/chartboost/sdk/impl/am;->f:I

    .line 210
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v6, v5}, Lcom/chartboost/sdk/impl/am;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0

    .line 212
    :catch_1
    move-exception v0

    .line 213
    const-string v1, "VideoTextureView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/impl/am;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    iput v4, p0, Lcom/chartboost/sdk/impl/am;->e:I

    .line 215
    iput v4, p0, Lcom/chartboost/sdk/impl/am;->f:I

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {p0, v0, v6, v5}, Lcom/chartboost/sdk/impl/am;->onError(Landroid/media/MediaPlayer;II)Z

    goto/16 :goto_0
.end method

.method private h()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 224
    :try_start_0
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 226
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    .line 227
    const/16 v1, 0x13

    .line 228
    invoke-virtual {v0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 229
    const/16 v2, 0x12

    .line 230
    invoke-virtual {v0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/chartboost/sdk/impl/am;->j:I

    .line 232
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->i:I

    .line 241
    :goto_0
    return-void

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->i:I

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->j:I

    .line 236
    const-string v0, "play video"

    const-string v1, "Unable to determine video height and width.  Supported on >= ICE_CREAM_SANDWICH only."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string v1, "play video"

    const-string v2, "read size error"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private i()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 420
    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/am;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/am;->e:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/chartboost/sdk/impl/am;->e:I

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 362
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 364
    iput v1, p0, Lcom/chartboost/sdk/impl/am;->e:I

    .line 366
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/am;->f:I

    .line 367
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 402
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->o:I

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    iput p1, p0, Lcom/chartboost/sdk/impl/am;->o:I

    goto :goto_0
.end method

.method public a(II)V
    .locals 6

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 133
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/am;->j:I

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    int-to-float v0, p1

    iget v1, p0, Lcom/chartboost/sdk/impl/am;->i:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    int-to-float v1, p2

    iget v2, p0, Lcom/chartboost/sdk/impl/am;->j:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 136
    iget v1, p0, Lcom/chartboost/sdk/impl/am;->i:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/chartboost/sdk/impl/am;->j:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 138
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 139
    int-to-float v3, p1

    div-float/2addr v1, v3

    int-to-float v3, p2

    div-float/2addr v0, v3

    int-to-float v3, p1

    div-float/2addr v3, v5

    int-to-float v4, p2

    div-float/2addr v4, v5

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 141
    invoke-virtual {p0, v2}, Lcom/chartboost/sdk/impl/am;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/chartboost/sdk/impl/am;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 332
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/chartboost/sdk/impl/am;->n:Landroid/media/MediaPlayer$OnErrorListener;

    .line 344
    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/chartboost/sdk/impl/am;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 321
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/am;->a(Landroid/net/Uri;Ljava/util/Map;)V

    .line 130
    return-void
.end method

.method public a(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
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
    .line 148
    iput-object p1, p0, Lcom/chartboost/sdk/impl/am;->b:Landroid/net/Uri;

    .line 149
    iput-object p2, p0, Lcom/chartboost/sdk/impl/am;->c:Ljava/util/Map;

    .line 150
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->o:I

    .line 151
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->g()V

    .line 152
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am;->requestLayout()V

    .line 153
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am;->invalidate()V

    .line 154
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 370
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 373
    iput v1, p0, Lcom/chartboost/sdk/impl/am;->e:I

    .line 376
    :cond_0
    iput v1, p0, Lcom/chartboost/sdk/impl/am;->f:I

    .line 377
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 381
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->d:I

    if-lez v0, :cond_0

    .line 383
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->d:I

    .line 389
    :goto_0
    return v0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->d:I

    .line 386
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->d:I

    goto :goto_0

    .line 388
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->d:I

    .line 389
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->d:I

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 393
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 396
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 309
    iput p2, p0, Lcom/chartboost/sdk/impl/am;->m:I

    .line 310
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 275
    iput v1, p0, Lcom/chartboost/sdk/impl/am;->f:I

    .line 276
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->e:I

    if-eq v0, v1, :cond_0

    .line 277
    iput v1, p0, Lcom/chartboost/sdk/impl/am;->e:I

    .line 278
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->k:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 282
    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "framework_err"    # I
    .param p3, "impl_err"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 286
    const-string v0, "VideoTextureView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->g()V

    .line 304
    :cond_0
    :goto_0
    return v3

    .line 294
    :cond_1
    iput v4, p0, Lcom/chartboost/sdk/impl/am;->e:I

    .line 295
    iput v4, p0, Lcom/chartboost/sdk/impl/am;->f:I

    .line 299
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->n:Landroid/media/MediaPlayer$OnErrorListener;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->n:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 254
    const/4 v0, 0x2

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->e:I

    .line 256
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->i:I

    .line 257
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->j:I

    .line 258
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/chartboost/sdk/impl/am;->l:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 262
    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->o:I

    .line 265
    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/am;->a(I)V

    .line 268
    :cond_1
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am;->a()V

    .line 271
    :cond_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 425
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am;->g:Landroid/view/Surface;

    .line 426
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/am;->g()V

    .line 427
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v1, 0x1

    .line 432
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/am;->g:Landroid/view/Surface;

    .line 433
    invoke-direct {p0, v1}, Lcom/chartboost/sdk/impl/am;->a(Z)V

    .line 434
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 439
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    .line 440
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/am;->h:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 441
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->o:I

    if-eqz v0, :cond_0

    .line 442
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->o:I

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/am;->a(I)V

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am;->a()V

    .line 446
    :cond_1
    return-void

    .line 439
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 451
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->i:I

    .line 246
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v0

    iput v0, p0, Lcom/chartboost/sdk/impl/am;->j:I

    .line 247
    iget v0, p0, Lcom/chartboost/sdk/impl/am;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/chartboost/sdk/impl/am;->j:I

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/am;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/am;->a(II)V

    .line 250
    :cond_0
    return-void
.end method
