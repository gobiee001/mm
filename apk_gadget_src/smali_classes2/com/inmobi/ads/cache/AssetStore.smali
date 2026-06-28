.class public final Lcom/inmobi/ads/cache/AssetStore;
.super Ljava/lang/Object;
.source "AssetStore.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/cache/AssetStore$a;,
        Lcom/inmobi/ads/cache/AssetStore$PicassoCallback;
    }
.end annotation


# static fields
.field public static final e:Ljava/lang/Object;

.field private static final f:Ljava/lang/String;

.field private static o:Lcom/inmobi/ads/cache/AssetStore;

.field private static final p:Ljava/lang/Object;


# instance fields
.field public a:Lcom/inmobi/ads/cache/d;

.field public b:Lcom/inmobi/ads/b$a;

.field public c:Ljava/util/concurrent/ExecutorService;

.field public d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private g:Lcom/inmobi/ads/b$g;

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Lcom/inmobi/ads/cache/AssetStore$a;

.field private j:Landroid/os/HandlerThread;

.field private k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/cache/a;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/inmobi/commons/core/utilities/f$b;

.field private n:Lcom/inmobi/commons/core/utilities/f$b;

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/cache/b;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/inmobi/ads/cache/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/inmobi/ads/cache/AssetStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/cache/AssetStore;->f:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/cache/AssetStore;->p:Ljava/lang/Object;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/cache/AssetStore;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    .line 64
    new-instance v0, Lcom/inmobi/ads/cache/AssetStore$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/cache/AssetStore$1;-><init>(Lcom/inmobi/ads/cache/AssetStore;)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->r:Lcom/inmobi/ads/cache/e;

    .line 118
    new-instance v0, Lcom/inmobi/ads/b;

    invoke-direct {v0}, Lcom/inmobi/ads/b;-><init>()V

    .line 119
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 1560
    iget-object v1, v0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 120
    iput-object v1, p0, Lcom/inmobi/ads/cache/AssetStore;->b:Lcom/inmobi/ads/b$a;

    .line 2556
    iget-object v0, v0, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 121
    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->g:Lcom/inmobi/ads/b$g;

    .line 122
    invoke-static {}, Lcom/inmobi/ads/cache/d;->a()Lcom/inmobi/ads/cache/d;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->a:Lcom/inmobi/ads/cache/d;

    .line 123
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->c:Ljava/util/concurrent/ExecutorService;

    .line 124
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->h:Ljava/util/concurrent/ExecutorService;

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "assetFetcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    .line 126
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v0, Lcom/inmobi/ads/cache/AssetStore$a;

    iget-object v1, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/inmobi/ads/cache/AssetStore$a;-><init>(Landroid/os/Looper;Lcom/inmobi/ads/cache/AssetStore;)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->i:Lcom/inmobi/ads/cache/AssetStore$a;

    .line 128
    new-instance v0, Lcom/inmobi/ads/cache/AssetStore$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/cache/AssetStore$2;-><init>(Lcom/inmobi/ads/cache/AssetStore;)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->m:Lcom/inmobi/commons/core/utilities/f$b;

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 139
    new-instance v0, Lcom/inmobi/ads/cache/AssetStore$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/cache/AssetStore$3;-><init>(Lcom/inmobi/ads/cache/AssetStore;)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->n:Lcom/inmobi/commons/core/utilities/f$b;

    .line 150
    :cond_0
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const v1, 0x3f666666    # 0.9f

    invoke-direct {v0, v2, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/b$a;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->b:Lcom/inmobi/ads/b$a;

    return-object v0
.end method

.method public static a()Lcom/inmobi/ads/cache/AssetStore;
    .locals 2

    .prologue
    .line 154
    sget-object v0, Lcom/inmobi/ads/cache/AssetStore;->o:Lcom/inmobi/ads/cache/AssetStore;

    .line 155
    if-nez v0, :cond_1

    .line 156
    sget-object v1, Lcom/inmobi/ads/cache/AssetStore;->p:Ljava/lang/Object;

    monitor-enter v1

    .line 157
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/cache/AssetStore;->o:Lcom/inmobi/ads/cache/AssetStore;

    .line 158
    if-nez v0, :cond_0

    .line 159
    new-instance v0, Lcom/inmobi/ads/cache/AssetStore;

    invoke-direct {v0}, Lcom/inmobi/ads/cache/AssetStore;-><init>()V

    .line 160
    sput-object v0, Lcom/inmobi/ads/cache/AssetStore;->o:Lcom/inmobi/ads/cache/AssetStore;

    .line 162
    :cond_0
    monitor-exit v1

    .line 165
    :cond_1
    return-object v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/inmobi/ads/cache/AssetStore;->c(Lcom/inmobi/ads/cache/a;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Z)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/a;Z)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/b;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/inmobi/ads/cache/AssetStore;->b(Lcom/inmobi/ads/cache/b;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/cache/AssetStore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/inmobi/ads/cache/AssetStore;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/cache/AssetStore;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 38605
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 38606
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38609
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/commons/core/a/a;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v3

    .line 38610
    invoke-virtual {v3, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v3

    new-instance v4, Lcom/inmobi/ads/cache/AssetStore$PicassoCallback;

    invoke-direct {v4, p0, v1, v0}, Lcom/inmobi/ads/cache/AssetStore$PicassoCallback;-><init>(Lcom/inmobi/ads/cache/AssetStore;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/RequestCreator;->fetch(Lcom/squareup/picasso/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38612
    :catch_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 38616
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 38620
    :goto_1
    return-void

    .line 39
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static a(Lcom/inmobi/ads/cache/a;)V
    .locals 2

    .prologue
    .line 447
    invoke-static {p0}, Lcom/inmobi/ads/cache/d;->c(Lcom/inmobi/ads/cache/a;)V

    .line 448
    new-instance v0, Ljava/io/File;

    .line 31228
    iget-object v1, p0, Lcom/inmobi/ads/cache/a;->e:Ljava/lang/String;

    .line 448
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 451
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 453
    :cond_0
    return-void
.end method

.method private declared-synchronized a(Lcom/inmobi/ads/cache/a;Z)V
    .locals 1

    .prologue
    .line 259
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/cache/AssetStore;->b(Lcom/inmobi/ads/cache/a;)V

    .line 26232
    iget-object v0, p1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 260
    invoke-direct {p0, v0}, Lcom/inmobi/ads/cache/AssetStore;->c(Ljava/lang/String;)V

    .line 261
    if-eqz p2, :cond_0

    .line 27232
    iget-object v0, p1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 262
    invoke-direct {p0, v0}, Lcom/inmobi/ads/cache/AssetStore;->a(Ljava/lang/String;)V

    .line 263
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :goto_0
    monitor-exit p0

    return-void

    .line 28232
    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 266
    invoke-direct {p0, v0}, Lcom/inmobi/ads/cache/AssetStore;->b(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 183
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/cache/b;

    .line 4053
    iget-object v2, v0, Lcom/inmobi/ads/cache/b;->b:Ljava/util/Set;

    .line 4057
    iget-object v3, v0, Lcom/inmobi/ads/cache/b;->c:Ljava/util/Set;

    .line 187
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5057
    iget-object v2, v0, Lcom/inmobi/ads/cache/b;->c:Ljava/util/Set;

    .line 188
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5065
    iget v2, v0, Lcom/inmobi/ads/cache/b;->d:I

    .line 189
    add-int/lit8 v2, v2, 0x1

    .line 5073
    iput v2, v0, Lcom/inmobi/ads/cache/b;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 192
    :cond_1
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/cache/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 233
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 234
    iget-object v2, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 232
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/a;Lcom/inmobi/ads/cache/e;)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/a;Lcom/inmobi/ads/cache/e;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/inmobi/ads/cache/a;Lcom/inmobi/ads/cache/e;)Z
    .locals 18

    .prologue
    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/ads/cache/AssetStore;->l:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9232
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/cache/a;

    .line 241
    if-nez v2, :cond_a

    .line 242
    new-instance v14, Lcom/inmobi/ads/cache/c;

    move-object/from16 v0, p2

    invoke-direct {v14, v0}, Lcom/inmobi/ads/cache/c;-><init>(Lcom/inmobi/ads/cache/e;)V

    .line 10175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/ads/cache/AssetStore;->g:Lcom/inmobi/ads/b$g;

    .line 10803
    iget-wide v10, v2, Lcom/inmobi/ads/b$g;->c:J

    .line 11175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/ads/cache/AssetStore;->g:Lcom/inmobi/ads/b$g;

    .line 11807
    iget-object v2, v2, Lcom/inmobi/ads/b$g;->d:Ljava/util/ArrayList;

    .line 12060
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fetching asset ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12232
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 12060
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12062
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12305
    const/16 v2, 0x8

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12064
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V

    .line 244
    :goto_0
    const/4 v2, 0x1

    .line 247
    :goto_1
    return v2

    .line 13232
    :cond_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 12068
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 14232
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 12068
    invoke-static {v3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 14305
    :cond_1
    const/4 v2, 0x3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12070
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V

    goto :goto_0

    .line 12075
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, [Ljava/lang/String;

    .line 12078
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 12080
    new-instance v5, Ljava/net/URL;

    .line 15232
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 12080
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 12081
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 12083
    const-string v5, "GET"

    invoke-virtual {v8, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 12084
    const v5, 0xea60

    invoke-virtual {v8, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 12085
    const v5, 0xea60

    invoke-virtual {v8, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 12087
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 12089
    const/16 v6, 0x190

    if-ge v5, v6, :cond_4

    .line 12090
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 12093
    const/4 v5, 0x0

    .line 12094
    array-length v9, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v9, :cond_b

    aget-object v12, v4, v6

    .line 12096
    if-eqz v7, :cond_3

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 12097
    const/4 v4, 0x1

    .line 12102
    :goto_3
    if-nez v4, :cond_4

    .line 15305
    const/4 v2, 0x6

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12104
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->c:I

    .line 12105
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    goto/16 :goto_0

    .line 12164
    :catch_0
    move-exception v2

    .line 20305
    const/4 v2, 0x4

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12165
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V

    goto/16 :goto_0

    .line 12094
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 12109
    :cond_4
    :try_start_1
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v4

    int-to-long v4, v4

    .line 12110
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_5

    .line 12111
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ContentSize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " max size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 12112
    cmp-long v4, v4, v10

    if-lez v4, :cond_5

    .line 16305
    const/4 v2, 0x7

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12114
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->c:I

    .line 12115
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto/16 :goto_0

    .line 12168
    :catch_1
    move-exception v2

    .line 21305
    const/4 v2, 0x4

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12169
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V

    goto/16 :goto_0

    .line 12120
    :cond_5
    :try_start_2
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 17232
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 12121
    invoke-static {v4}, Lcom/inmobi/commons/a/a;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 12124
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 12125
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 12127
    :cond_6
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 12128
    new-instance v7, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v7, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 12130
    const/16 v4, 0x400

    new-array v12, v4, [B

    .line 12132
    const-wide/16 v4, 0x0

    .line 12134
    :goto_4
    invoke-virtual {v6, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_9

    .line 12135
    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v4, v4, v16

    .line 12136
    cmp-long v15, v4, v10

    if-lez v15, :cond_8

    .line 17305
    const/4 v6, 0x7

    move-object/from16 v0, p1

    iput v6, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12138
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput v6, v0, Lcom/inmobi/ads/cache/a;->c:I
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 18218
    :try_start_3
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 18219
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 18222
    :cond_7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 18223
    invoke-static {v7}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 12140
    :goto_5
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/inmobi/ads/cache/c;->a(JJJ)V

    .line 12141
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_0

    .line 12172
    :catch_2
    move-exception v2

    .line 22305
    const/4 v2, 0x3

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12173
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V

    goto/16 :goto_0

    .line 18224
    :catch_3
    move-exception v6

    .line 18225
    :try_start_5
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v7

    new-instance v8, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v8, v6}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_5

    .line 12176
    :catch_4
    move-exception v2

    .line 23305
    const/16 v2, 0x8

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12177
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V

    goto/16 :goto_0

    .line 12144
    :cond_8
    const/4 v15, 0x0

    :try_start_6
    invoke-virtual {v7, v12, v15, v13}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    .line 12180
    :catch_5
    move-exception v2

    .line 24305
    const/16 v2, 0x8

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12181
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V

    goto/16 :goto_0

    .line 12147
    :cond_9
    :try_start_7
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    .line 12148
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 12149
    invoke-static {v7}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/io/Closeable;)V

    .line 12151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 12153
    invoke-static/range {v2 .. v7}, Lcom/inmobi/ads/cache/c;->a(JJJ)V

    .line 12155
    new-instance v4, Lcom/inmobi/commons/core/network/c;

    invoke-direct {v4}, Lcom/inmobi/commons/core/network/c;-><init>()V

    .line 12156
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v5

    .line 19074
    iput-object v5, v4, Lcom/inmobi/commons/core/network/c;->c:Ljava/util/Map;

    move-object/from16 v8, p1

    move-wide v10, v2

    move-wide v12, v6

    .line 12158
    invoke-static/range {v8 .. v13}, Lcom/inmobi/ads/cache/c;->a(Lcom/inmobi/ads/cache/a;Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v5

    .line 19297
    move-object/from16 v0, p1

    iput-object v5, v0, Lcom/inmobi/ads/cache/a;->k:Ljava/lang/String;

    .line 12159
    sub-long v2, v6, v2

    .line 20265
    move-object/from16 v0, p1

    iput-wide v2, v0, Lcom/inmobi/ads/cache/a;->a:J

    .line 12160
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-interface {v2, v4, v3, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/commons/core/network/c;Ljava/lang/String;Lcom/inmobi/ads/cache/a;)V
    :try_end_7
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_0

    .line 12184
    :catch_6
    move-exception v2

    .line 25305
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput v2, v0, Lcom/inmobi/ads/cache/a;->l:I

    .line 12185
    iget-object v2, v14, Lcom/inmobi/ads/cache/c;->a:Lcom/inmobi/ads/cache/e;

    move-object/from16 v0, p1

    invoke-interface {v2, v0}, Lcom/inmobi/ads/cache/e;->a(Lcom/inmobi/ads/cache/a;)V

    goto/16 :goto_0

    .line 247
    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_b
    move v4, v5

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/d;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->a:Lcom/inmobi/ads/cache/d;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/ads/cache/AssetStore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/inmobi/ads/cache/AssetStore;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/ads/cache/AssetStore;Ljava/util/List;)V
    .locals 2

    .prologue
    .line 38624
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 38625
    invoke-direct {p0, v0}, Lcom/inmobi/ads/cache/AssetStore;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method private declared-synchronized b(Lcom/inmobi/ads/cache/a;)V
    .locals 4

    .prologue
    .line 212
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/cache/b;

    .line 7053
    iget-object v2, v0, Lcom/inmobi/ads/cache/b;->b:Ljava/util/Set;

    .line 7232
    iget-object v3, p1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 215
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8049
    iget-object v2, v0, Lcom/inmobi/ads/cache/b;->a:Ljava/util/List;

    .line 217
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9049
    iget-object v0, v0, Lcom/inmobi/ads/cache/b;->a:Ljava/util/List;

    .line 218
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 222
    :cond_1
    monitor-exit p0

    return-void

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Lcom/inmobi/ads/cache/b;)V
    .locals 1

    .prologue
    .line 225
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_0
    monitor-exit p0

    return-void

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 199
    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/cache/b;

    .line 6053
    iget-object v2, v0, Lcom/inmobi/ads/cache/b;->b:Ljava/util/Set;

    .line 202
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6077
    iget v2, v0, Lcom/inmobi/ads/cache/b;->e:I

    .line 203
    add-int/lit8 v2, v2, 0x1

    .line 6081
    iput v2, v0, Lcom/inmobi/ads/cache/b;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 206
    :cond_1
    monitor-exit p0

    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(Lcom/inmobi/ads/cache/AssetStore;)V
    .locals 1

    .prologue
    .line 39
    .line 38320
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 38321
    invoke-virtual {p0}, Lcom/inmobi/ads/cache/AssetStore;->b()V

    .line 39
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/inmobi/ads/cache/AssetStore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/inmobi/ads/cache/AssetStore;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/inmobi/ads/cache/a;)V
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 578
    new-instance v1, Ljava/io/File;

    .line 32228
    iget-object v0, p1, Lcom/inmobi/ads/cache/a;->e:Ljava/lang/String;

    .line 578
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 32280
    iget-wide v4, p1, Lcom/inmobi/ads/cache/a;->h:J

    .line 32288
    iget-wide v6, p1, Lcom/inmobi/ads/cache/a;->f:J

    .line 580
    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->b:Lcom/inmobi/ads/b$a;

    .line 32831
    iget-wide v8, v0, Lcom/inmobi/ads/b$a;->e:J

    .line 581
    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 582
    new-instance v0, Lcom/inmobi/ads/cache/a$a;

    invoke-direct {v0}, Lcom/inmobi/ads/cache/a$a;-><init>()V

    .line 33232
    iget-object v4, p1, Lcom/inmobi/ads/cache/a;->d:Ljava/lang/String;

    .line 34228
    iget-object v5, p1, Lcom/inmobi/ads/cache/a;->e:Ljava/lang/String;

    .line 584
    iget-object v6, p0, Lcom/inmobi/ads/cache/AssetStore;->b:Lcom/inmobi/ads/b$a;

    .line 34819
    iget v6, v6, Lcom/inmobi/ads/b$a;->a:I

    .line 35284
    iget-wide v8, p1, Lcom/inmobi/ads/cache/a;->i:J

    .line 36057
    iput-object v4, v0, Lcom/inmobi/ads/cache/a$a;->c:Ljava/lang/String;

    .line 36058
    iput-object v5, v0, Lcom/inmobi/ads/cache/a$a;->d:Ljava/lang/String;

    .line 36059
    iput v6, v0, Lcom/inmobi/ads/cache/a$a;->b:I

    .line 36060
    iput-wide v2, v0, Lcom/inmobi/ads/cache/a$a;->g:J

    .line 36061
    iput-wide v8, v0, Lcom/inmobi/ads/cache/a$a;->h:J

    .line 587
    invoke-virtual {v0}, Lcom/inmobi/ads/cache/a$a;->a()Lcom/inmobi/ads/cache/a;

    move-result-object v6

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v6, Lcom/inmobi/ads/cache/a;->f:J

    .line 589
    invoke-static {v6}, Lcom/inmobi/ads/cache/d;->b(Lcom/inmobi/ads/cache/a;)I

    .line 590
    iget-wide v2, p1, Lcom/inmobi/ads/cache/a;->f:J

    iget-wide v4, p1, Lcom/inmobi/ads/cache/a;->f:J

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/ads/cache/c;->a(Lcom/inmobi/ads/cache/a;Ljava/io/File;JJ)Ljava/lang/String;

    move-result-object v0

    .line 36297
    iput-object v0, v6, Lcom/inmobi/ads/cache/a;->k:Ljava/lang/String;

    .line 37272
    iput-boolean v10, v6, Lcom/inmobi/ads/cache/a;->j:Z

    .line 593
    invoke-direct {p0, v6, v10}, Lcom/inmobi/ads/cache/AssetStore;->a(Lcom/inmobi/ads/cache/a;Z)V

    .line 594
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/inmobi/ads/cache/AssetStore;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/ads/cache/AssetStore;)V
    .locals 0

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/inmobi/ads/cache/AssetStore;->c()V

    return-void
.end method

.method static synthetic d(Lcom/inmobi/ads/cache/AssetStore;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/inmobi/ads/cache/AssetStore;->b(Ljava/lang/String;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 529
    invoke-static {p1}, Lcom/inmobi/ads/cache/d;->a(Ljava/lang/String;)Lcom/inmobi/ads/cache/a;

    move-result-object v0

    .line 530
    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lcom/inmobi/ads/cache/a;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cache hit; file exists location on disk ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/inmobi/ads/cache/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    invoke-direct {p0, v0}, Lcom/inmobi/ads/cache/AssetStore;->c(Lcom/inmobi/ads/cache/a;)V

    .line 539
    :goto_0
    return-void

    .line 31542
    :cond_0
    new-instance v0, Lcom/inmobi/ads/cache/a$a;

    invoke-direct {v0}, Lcom/inmobi/ads/cache/a$a;-><init>()V

    .line 31543
    iget-object v1, p0, Lcom/inmobi/ads/cache/AssetStore;->b:Lcom/inmobi/ads/b$a;

    .line 31819
    iget v1, v1, Lcom/inmobi/ads/b$a;->a:I

    .line 31545
    iget-object v2, p0, Lcom/inmobi/ads/cache/AssetStore;->b:Lcom/inmobi/ads/b$a;

    .line 31831
    iget-wide v2, v2, Lcom/inmobi/ads/b$a;->e:J

    .line 31544
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/inmobi/ads/cache/a$a;->a(Ljava/lang/String;IJ)Lcom/inmobi/ads/cache/a$a;

    move-result-object v0

    .line 31547
    invoke-virtual {v0}, Lcom/inmobi/ads/cache/a$a;->a()Lcom/inmobi/ads/cache/a;

    move-result-object v0

    .line 31548
    invoke-static {p1}, Lcom/inmobi/ads/cache/d;->a(Ljava/lang/String;)Lcom/inmobi/ads/cache/a;

    move-result-object v1

    .line 31549
    if-nez v1, :cond_1

    .line 31550
    iget-object v1, p0, Lcom/inmobi/ads/cache/AssetStore;->a:Lcom/inmobi/ads/cache/d;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/cache/d;->a(Lcom/inmobi/ads/cache/a;)V

    .line 31552
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/ads/cache/AssetStore$6;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/cache/AssetStore$6;-><init>(Lcom/inmobi/ads/cache/AssetStore;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private declared-synchronized e()V
    .locals 5

    .prologue
    .line 275
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 276
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/cache/b;

    .line 29065
    iget v3, v0, Lcom/inmobi/ads/cache/b;->d:I

    .line 30061
    iget-object v4, v0, Lcom/inmobi/ads/cache/b;->b:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 278
    if-ne v3, v4, :cond_1

    .line 280
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/ads/cache/b;->a()Lcom/inmobi/ads/cache/f;

    move-result-object v3

    .line 281
    if-eqz v3, :cond_0

    .line 282
    invoke-interface {v3, v0}, Lcom/inmobi/ads/cache/f;->b(Lcom/inmobi/ads/cache/b;)V

    .line 284
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Encountered unexpected error in onAssetFetchSucceeded handler: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 275
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 292
    :cond_2
    :try_start_3
    invoke-direct {p0, v2}, Lcom/inmobi/ads/cache/AssetStore;->a(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 293
    monitor-exit p0

    return-void
.end method

.method static synthetic e(Lcom/inmobi/ads/cache/AssetStore;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore;->e()V

    return-void
.end method

.method private declared-synchronized f()V
    .locals 5

    .prologue
    .line 300
    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 301
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->q:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/cache/b;

    .line 30077
    iget v3, v0, Lcom/inmobi/ads/cache/b;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    if-lez v3, :cond_1

    .line 305
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/ads/cache/b;->a()Lcom/inmobi/ads/cache/f;

    move-result-object v3

    .line 306
    if-eqz v3, :cond_0

    .line 307
    invoke-interface {v3, v0}, Lcom/inmobi/ads/cache/f;->a(Lcom/inmobi/ads/cache/b;)V

    .line 309
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :cond_1
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 310
    :catch_0
    move-exception v0

    .line 311
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Encountered unexpected error in onAssetFetchFailed handler: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 300
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 316
    :cond_2
    :try_start_3
    invoke-direct {p0, v2}, Lcom/inmobi/ads/cache/AssetStore;->a(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 317
    monitor-exit p0

    return-void
.end method

.method static synthetic f(Lcom/inmobi/ads/cache/AssetStore;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore;->f()V

    return-void
.end method

.method static synthetic g(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/e;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->r:Lcom/inmobi/ads/cache/e;

    return-object v0
.end method

.method private g()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 654
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->m:Lcom/inmobi/commons/core/utilities/f$b;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/f;->a(Lcom/inmobi/commons/core/utilities/f$b;Ljava/lang/String;)V

    .line 655
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 656
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->n:Lcom/inmobi/commons/core/utilities/f$b;

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/f;->a(Lcom/inmobi/commons/core/utilities/f$b;Ljava/lang/String;)V

    .line 658
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/b$a;
    .locals 1

    .prologue
    .line 39
    .line 38684
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->b:Lcom/inmobi/ads/b$a;

    .line 39
    return-object v0
.end method

.method private h()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 663
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    iget-object v1, p0, Lcom/inmobi/ads/cache/AssetStore;->m:Lcom/inmobi/commons/core/utilities/f$b;

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/f;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/f$b;)V

    .line 664
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 665
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    iget-object v1, p0, Lcom/inmobi/ads/cache/AssetStore;->n:Lcom/inmobi/commons/core/utilities/f$b;

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/f;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/f$b;)V

    .line 667
    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/inmobi/ads/cache/AssetStore;)Lcom/inmobi/ads/cache/d;
    .locals 1

    .prologue
    .line 39
    .line 38688
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->a:Lcom/inmobi/ads/cache/d;

    .line 39
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/inmobi/ads/cache/b;)V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/ads/cache/AssetStore$5;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/cache/AssetStore$5;-><init>(Lcom/inmobi/ads/cache/AssetStore;Lcom/inmobi/ads/cache/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 519
    return-void
.end method

.method public final a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 1

    .prologue
    .line 170
    move-object v0, p1

    check-cast v0, Lcom/inmobi/ads/b;

    .line 2560
    iget-object v0, v0, Lcom/inmobi/ads/b;->p:Lcom/inmobi/ads/b$a;

    .line 170
    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->b:Lcom/inmobi/ads/b$a;

    .line 171
    check-cast p1, Lcom/inmobi/ads/b;

    .line 3556
    iget-object v0, p1, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 171
    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->g:Lcom/inmobi/ads/b$g;

    .line 172
    return-void
.end method

.method public final b()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 330
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 331
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore;->g()V

    .line 335
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore;->h()V

    .line 375
    :goto_0
    return-void

    .line 338
    :cond_0
    sget-object v1, Lcom/inmobi/ads/cache/AssetStore;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 339
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 340
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 341
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "assetFetcher"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    .line 342
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->i:Lcom/inmobi/ads/cache/AssetStore$a;

    if-nez v0, :cond_2

    .line 345
    new-instance v0, Lcom/inmobi/ads/cache/AssetStore$a;

    iget-object v2, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/inmobi/ads/cache/AssetStore$a;-><init>(Landroid/os/Looper;Lcom/inmobi/ads/cache/AssetStore;)V

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->i:Lcom/inmobi/ads/cache/AssetStore$a;

    .line 348
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->b:Lcom/inmobi/ads/b$a;

    .line 30823
    iget v0, v0, Lcom/inmobi/ads/b$a;->b:I

    .line 349
    invoke-static {v0}, Lcom/inmobi/ads/cache/d;->a(I)Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 352
    invoke-virtual {p0}, Lcom/inmobi/ads/cache/AssetStore;->c()V

    .line 353
    monitor-exit v1

    goto :goto_0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 356
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/cache/a;

    .line 357
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/inmobi/ads/cache/a;->a()Z

    move-result v4

    if-nez v4, :cond_4

    .line 358
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 365
    invoke-virtual {p0}, Lcom/inmobi/ads/cache/AssetStore;->c()V

    .line 375
    :cond_6
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 369
    :cond_7
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore;->g()V

    .line 371
    invoke-direct {p0}, Lcom/inmobi/ads/cache/AssetStore;->h()V

    .line 372
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->i:Lcom/inmobi/ads/cache/AssetStore$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/cache/AssetStore$a;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 670
    sget-object v1, Lcom/inmobi/ads/cache/AssetStore;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 671
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38255
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->l:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 673
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 675
    iget-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    .line 676
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 677
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->j:Landroid/os/HandlerThread;

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/cache/AssetStore;->i:Lcom/inmobi/ads/cache/AssetStore$a;

    .line 680
    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
