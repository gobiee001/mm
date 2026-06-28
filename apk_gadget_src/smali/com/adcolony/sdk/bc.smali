.class Lcom/adcolony/sdk/bc;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field a:F

.field b:I

.field private c:Lcom/adcolony/sdk/c;

.field private d:Lcom/adcolony/sdk/c;

.field private e:Lcom/adcolony/sdk/e;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Landroid/widget/ImageView;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/adcolony/sdk/af;Lcom/adcolony/sdk/e;)V
    .locals 3

    .prologue
    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bc;->m:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bc;->n:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bc;->o:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/bc;->p:Ljava/lang/String;

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/adcolony/sdk/bc;->a:F

    .line 51
    const/4 v0, 0x2

    iput v0, p0, Lcom/adcolony/sdk/bc;->b:I

    .line 53
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bc;->q:Ljava/util/concurrent/ExecutorService;

    .line 57
    iput-object p3, p0, Lcom/adcolony/sdk/bc;->e:Lcom/adcolony/sdk/e;

    .line 58
    iget-object v0, p3, Lcom/adcolony/sdk/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/adcolony/sdk/bc;->p:Ljava/lang/String;

    .line 59
    invoke-virtual {p2}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/bc;->f:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v1, "Retrieving container tied to ad session id: "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 61
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->b()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    iput-object v0, p0, Lcom/adcolony/sdk/bc;->c:Lcom/adcolony/sdk/c;

    .line 62
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/adcolony/sdk/bc;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->q()I

    move-result v1

    iget-object v2, p0, Lcom/adcolony/sdk/bc;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v2}, Lcom/adcolony/sdk/c;->p()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bc;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/bc;->addView(Landroid/view/View;)V

    .line 64
    invoke-direct {p0}, Lcom/adcolony/sdk/bc;->d()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/bc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/bc;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/adcolony/sdk/bc;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/adcolony/sdk/bc;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/adcolony/sdk/bc;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/bc;Z)Z
    .locals 0

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/adcolony/sdk/bc;->h:Z

    return p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/bc;)Lcom/adcolony/sdk/c;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->c:Lcom/adcolony/sdk/c;

    return-object v0
.end method

.method private d()V
    .locals 4

    .prologue
    .line 249
    new-instance v0, Lcom/adcolony/sdk/bc$1;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/bc$1;-><init>(Lcom/adcolony/sdk/bc;)V

    .line 292
    :try_start_0
    iget-object v1, p0, Lcom/adcolony/sdk/bc;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 296
    const-string v1, "id"

    iget-object v2, p0, Lcom/adcolony/sdk/bc;->f:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 298
    new-instance v1, Lcom/adcolony/sdk/af;

    const-string v2, "AdSession.on_error"

    iget-object v3, p0, Lcom/adcolony/sdk/bc;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v3}, Lcom/adcolony/sdk/c;->c()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/adcolony/sdk/bc;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/adcolony/sdk/bc;->k:Z

    return v0
.end method

.method static synthetic e(Lcom/adcolony/sdk/bc;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/adcolony/sdk/bc;->h:Z

    return v0
.end method

.method static synthetic f(Lcom/adcolony/sdk/bc;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/adcolony/sdk/bc;->j:Z

    return v0
.end method


# virtual methods
.method a()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 105
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v2

    .line 108
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->c:Lcom/adcolony/sdk/c;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    .line 109
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->d:Lcom/adcolony/sdk/c;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->d:Lcom/adcolony/sdk/c;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    .line 114
    :cond_0
    invoke-virtual {v2}, Lcom/adcolony/sdk/d;->g()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 115
    if-eqz v0, :cond_3

    .line 116
    invoke-virtual {v0}, Lcom/adcolony/sdk/f;->c()Lcom/adcolony/sdk/ae;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/ae;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 117
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 120
    :cond_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0

    .line 122
    :cond_2
    invoke-virtual {v0}, Lcom/adcolony/sdk/f;->d()Lcom/adcolony/sdk/aq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/aq;->a()Landroid/media/SoundPool;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/SoundPool;->autoPause()V

    .line 123
    invoke-virtual {v0}, Lcom/adcolony/sdk/f;->d()Lcom/adcolony/sdk/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/aq;->a()Landroid/media/SoundPool;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 127
    :cond_3
    invoke-virtual {v2}, Lcom/adcolony/sdk/d;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/bc;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    iput-object v5, p0, Lcom/adcolony/sdk/bc;->c:Lcom/adcolony/sdk/c;

    .line 129
    iput-object v5, p0, Lcom/adcolony/sdk/bc;->e:Lcom/adcolony/sdk/e;

    .line 130
    invoke-virtual {p0}, Lcom/adcolony/sdk/bc;->removeAllViews()V

    .line 131
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->q:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method b()Z
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->g:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    return v0

    .line 236
    :cond_1
    new-instance v0, Landroid/widget/ImageView;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/bc;->l:Landroid/widget/ImageView;

    .line 237
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->l:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/adcolony/sdk/bc;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 239
    const/4 v0, 0x1

    goto :goto_0
.end method

.method c()Z
    .locals 1

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/adcolony/sdk/bc;->i:Z

    return v0
.end method

.method getAdSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->f:Ljava/lang/String;

    return-object v0
.end method

.method getAdvertiserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->m:Ljava/lang/String;

    return-object v0
.end method

.method getContainer()Lcom/adcolony/sdk/c;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->c:Lcom/adcolony/sdk/c;

    return-object v0
.end method

.method getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->o:Ljava/lang/String;

    return-object v0
.end method

.method getExpandedContainer()Lcom/adcolony/sdk/c;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->d:Lcom/adcolony/sdk/c;

    return-object v0
.end method

.method getIcon()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method getListener()Lcom/adcolony/sdk/e;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->e:Lcom/adcolony/sdk/e;

    return-object v0
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getZoneID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/adcolony/sdk/bc;->i:Z

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/adcolony/sdk/aa;->e:Lcom/adcolony/sdk/aa;

    const-string v1, "Ignoring call to getZoneID() as view has been destroyed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 188
    const-string v0, ""

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/bc;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method setAdvertiserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "advertiserName"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/adcolony/sdk/bc;->m:Ljava/lang/String;

    .line 308
    return-void
.end method

.method setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/adcolony/sdk/bc;->o:Ljava/lang/String;

    .line 316
    return-void
.end method

.method setExpandedContainer(Lcom/adcolony/sdk/c;)V
    .locals 0
    .param p1, "expandedContainer"    # Lcom/adcolony/sdk/c;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/adcolony/sdk/bc;->d:Lcom/adcolony/sdk/c;

    .line 324
    return-void
.end method

.method setImageFilepath(Ljava/lang/String;)V
    .locals 0
    .param p1, "imageFilepath"    # Ljava/lang/String;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/adcolony/sdk/bc;->g:Ljava/lang/String;

    .line 320
    return-void
.end method

.method setNative(Z)V
    .locals 0
    .param p1, "isNative"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/adcolony/sdk/bc;->j:Z

    .line 304
    return-void
.end method

.method setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/adcolony/sdk/bc;->n:Ljava/lang/String;

    .line 312
    return-void
.end method
