.class Lcom/inmobi/signals/i;
.super Ljava/lang/Object;
.source "IceCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/signals/i$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field a:Lcom/inmobi/signals/i$a;

.field private c:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/inmobi/signals/i;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/i;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DataCollectionHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/signals/i;->c:Landroid/os/HandlerThread;

    .line 37
    iget-object v0, p0, Lcom/inmobi/signals/i;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v0, Lcom/inmobi/signals/i$a;

    iget-object v1, p0, Lcom/inmobi/signals/i;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/signals/i$a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/signals/i;->a:Lcom/inmobi/signals/i$a;

    .line 39
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/signals/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static c()Z
    .locals 3

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "signals"

    const-string v2, "android.permission.GET_TASKS"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/inmobi/signals/i;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 49
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/signals/i;->a:Lcom/inmobi/signals/i$a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/i$a;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/inmobi/signals/i;->a:Lcom/inmobi/signals/i$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/i$a;->removeMessages(I)V

    .line 51
    iget-object v0, p0, Lcom/inmobi/signals/i;->a:Lcom/inmobi/signals/i$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/i$a;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
