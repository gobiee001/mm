.class public final Lcom/inmobi/rendering/mraid/MediaRenderView;
.super Landroid/widget/VideoView;
.source "MediaRenderView.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;,
        Lcom/inmobi/rendering/mraid/MediaRenderView$a;
    }
.end annotation


# static fields
.field private static final l:Ljava/lang/String;


# instance fields
.field public a:Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

.field public b:Landroid/graphics/Bitmap;

.field public c:Landroid/view/ViewGroup;

.field public d:Lcom/inmobi/rendering/mraid/MediaRenderView$a;

.field e:I

.field f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field i:Z

.field j:I

.field k:I

.field private m:Z

.field private n:Landroid/media/MediaPlayer;

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/MediaRenderView;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->m:Z

    .line 69
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setZOrderOnTop(Z)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setFocusable(Z)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setFocusableInTouchMode(Z)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setDrawingCacheEnabled(Z)V

    .line 73
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->e:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->j:I

    .line 75
    iput v1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->k:I

    .line 76
    iput-boolean v1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->f:Z

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->o:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MediaRenderView;)Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->a:Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MediaRenderView;Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;)Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->a:Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 248
    const-string v1, ""

    .line 249
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    array-length v5, v3

    move v0, v2

    :goto_0
    if-ge v0, v5, :cond_1

    aget-byte v6, v3, v0

    .line 253
    and-int/lit16 v7, v6, 0x80

    if-lez v7, :cond_0

    .line 254
    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1285
    const/16 v8, 0x10

    new-array v8, v8, [C

    fill-array-data v8, :array_0

    .line 1287
    const/4 v9, 0x2

    new-array v9, v9, [C

    shr-int/lit8 v10, v6, 0x4

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v8, v10

    aput-char v10, v9, v2

    const/4 v10, 0x1

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v8, v6

    aput-char v6, v9, v10

    .line 1288
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v9}, Ljava/lang/String;-><init>([C)V

    .line 254
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 261
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_2

    .line 1285
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public static b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 270
    :try_start_0
    const-string v0, "android.media.ThumbnailUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 271
    const-string v2, "createVideoThumbnail"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 272
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 280
    :goto_0
    return-object v0

    .line 274
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 276
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 278
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 280
    :catch_3
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/inmobi/rendering/mraid/MediaRenderView;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->stopPlayback()V

    .line 1231
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->c:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 1232
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1233
    if-eqz v0, :cond_0

    .line 1234
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1237
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1238
    if-eqz v0, :cond_1

    .line 1239
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1242
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setBackgroundColor(I)V

    .line 1243
    iput-object v2, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->c:Landroid/view/ViewGroup;

    .line 207
    :cond_2
    invoke-super {p0, v2}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 208
    iput-object v2, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->a:Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    .line 209
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->d:Lcom/inmobi/rendering/mraid/MediaRenderView$a;

    if-eqz v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->d:Lcom/inmobi/rendering/mraid/MediaRenderView$a;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/mraid/MediaRenderView$a;->a(Lcom/inmobi/rendering/mraid/MediaRenderView;)V

    .line 212
    :cond_3
    return-void
.end method

.method public final getViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->c:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 394
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->m:Z

    .line 358
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->start()V

    .line 360
    :cond_0
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 375
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->m:Z

    .line 377
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->k:I

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->pause()V

    .line 383
    :cond_1
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">>> onError ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->a()V

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 89
    invoke-super/range {p0 .. p5}, Landroid/widget/VideoView;->onLayout(ZIIII)V

    .line 90
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 91
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->n:Landroid/media/MediaPlayer;

    .line 132
    new-instance v0, Lcom/inmobi/rendering/mraid/MediaRenderView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/MediaRenderView$1;-><init>(Lcom/inmobi/rendering/mraid/MediaRenderView;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 146
    iget v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->k:I

    .line 1197
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->getDuration()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1198
    iput v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->k:I

    .line 1199
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->seekTo(I)V

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->i:Z

    .line 148
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->d:Lcom/inmobi/rendering/mraid/MediaRenderView$a;

    invoke-interface {v0}, Lcom/inmobi/rendering/mraid/MediaRenderView$a;->a()V

    .line 149
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->start()V

    .line 150
    return-void
.end method

.method protected final onVisibilityChanged(Landroid/view/View;I)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">>> onVisibilityChanged ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    if-nez p2, :cond_0

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 101
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->b:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->b:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected final onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ">>> onWindowVisibilityChanged ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    return-void
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 175
    return-void
.end method

.method public final setListener(Lcom/inmobi/rendering/mraid/MediaRenderView$a;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->d:Lcom/inmobi/rendering/mraid/MediaRenderView$a;

    .line 224
    return-void
.end method

.method public final setPlaybackData(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 153
    invoke-static {p1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->h:Ljava/lang/String;

    .line 154
    const-string v0, "anonymous"

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->g:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->b:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->b:Landroid/graphics/Bitmap;

    .line 158
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->b:Landroid/graphics/Bitmap;

    .line 160
    :cond_0
    return-void
.end method

.method public final setViewContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->c:Landroid/view/ViewGroup;

    .line 220
    return-void
.end method

.method public final start()V
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/MediaRenderView;->m:Z

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method
