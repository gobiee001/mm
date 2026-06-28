.class public Lcom/inmobi/ads/aq;
.super Lcom/inmobi/ads/g;
.source "NativePreLoader.java"


# static fields
.field private static final d:Ljava/lang/String;

.field private static volatile e:Lcom/inmobi/ads/aq;

.field private static final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/ads/aq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/aq;->d:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/aq;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const-string v0, "native"

    invoke-direct {p0, v0}, Lcom/inmobi/ads/g;-><init>(Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static d()Lcom/inmobi/ads/aq;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/ads/aq;->e:Lcom/inmobi/ads/aq;

    .line 28
    if-nez v0, :cond_1

    .line 29
    sget-object v1, Lcom/inmobi/ads/aq;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/aq;->e:Lcom/inmobi/ads/aq;

    .line 31
    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/inmobi/ads/aq;

    invoke-direct {v0}, Lcom/inmobi/ads/aq;-><init>()V

    .line 33
    sput-object v0, Lcom/inmobi/ads/aq;->e:Lcom/inmobi/ads/aq;

    .line 35
    :cond_0
    monitor-exit v1

    .line 37
    :cond_1
    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/inmobi/ads/aq;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/inmobi/ads/bc;)Lcom/inmobi/ads/AdUnit;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method final b(Lcom/inmobi/ads/bc;)V
    .locals 2

    .prologue
    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/aq$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/aq$1;-><init>(Lcom/inmobi/ads/aq;Lcom/inmobi/ads/bc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    return-void
.end method

.method final c(Lcom/inmobi/ads/bc;)V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/inmobi/ads/aq;->b:Lcom/inmobi/ads/b;

    iget-object v1, p0, Lcom/inmobi/ads/aq;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/b;->c(Ljava/lang/String;)Lcom/inmobi/ads/b$e;

    move-result-object v0

    .line 1771
    iget-boolean v0, v0, Lcom/inmobi/ads/b$e;->a:Z

    .line 52
    if-eqz v0, :cond_0

    .line 53
    invoke-super {p0, p1}, Lcom/inmobi/ads/g;->c(Lcom/inmobi/ads/bc;)V

    .line 55
    :cond_0
    return-void
.end method
