.class public Lcom/moat/analytics/mobile/mpub/u;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/mpub/u$b;,
        Lcom/moat/analytics/mobile/mpub/u$e;,
        Lcom/moat/analytics/mobile/mpub/u$c;,
        Lcom/moat/analytics/mobile/mpub/u$a;,
        Lcom/moat/analytics/mobile/mpub/u$d;
    }
.end annotation


# static fields
.field private static a:Lcom/moat/analytics/mobile/mpub/u;

.field private static final b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/moat/analytics/mobile/mpub/u$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Landroid/os/Handler;

.field private volatile d:Lcom/moat/analytics/mobile/mpub/u$d;

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:I

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile i:J

.field private final j:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:J

.field private m:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/u;->b:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/moat/analytics/mobile/mpub/u$d;->a:Lcom/moat/analytics/mobile/mpub/u$d;

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->d:Lcom/moat/analytics/mobile/mpub/u$d;

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/mpub/u;->e:Z

    iput-boolean v2, p0, Lcom/moat/analytics/mobile/mpub/u;->f:Z

    const/16 v0, 0xc8

    iput v0, p0, Lcom/moat/analytics/mobile/mpub/u;->g:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/moat/analytics/mobile/mpub/u;->i:J

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lcom/moat/analytics/mobile/mpub/u;->l:J

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/moat/analytics/mobile/mpub/u;->m:J

    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->c:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/u;I)I
    .locals 0

    iput p1, p0, Lcom/moat/analytics/mobile/mpub/u;->g:I

    return p1
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/u;J)J
    .locals 1

    iput-wide p1, p0, Lcom/moat/analytics/mobile/mpub/u;->i:J

    return-wide p1
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/u;)Lcom/moat/analytics/mobile/mpub/u$d;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->d:Lcom/moat/analytics/mobile/mpub/u$d;

    return-object v0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/u;Lcom/moat/analytics/mobile/mpub/u$d;)Lcom/moat/analytics/mobile/mpub/u$d;
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/u;->d:Lcom/moat/analytics/mobile/mpub/u$d;

    return-object p1
.end method

.method private a(J)V
    .locals 3

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/u;->e:Z

    if-eqz v0, :cond_1

    const-string v0, "MoatOnOff"

    const-string v1, "Performing status check."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/moat/analytics/mobile/mpub/u$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/moat/analytics/mobile/mpub/u$1;-><init>(Lcom/moat/analytics/mobile/mpub/u;J)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/u;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/mpub/u;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/mpub/u;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/mpub/u;->a(J)V

    return-void
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/mpub/u;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/u;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/moat/analytics/mobile/mpub/u;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/moat/analytics/mobile/mpub/u;->f:Z

    return p1
.end method

.method static synthetic c(Lcom/moat/analytics/mobile/mpub/u;)V
    .locals 0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/u;->h()V

    return-void
.end method

.method static synthetic d(Lcom/moat/analytics/mobile/mpub/u;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->c:Landroid/os/Handler;

    return-object v0
.end method

.method static declared-synchronized d()Lcom/moat/analytics/mobile/mpub/u;
    .locals 2

    const-class v1, Lcom/moat/analytics/mobile/mpub/u;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/moat/analytics/mobile/mpub/u;->a:Lcom/moat/analytics/mobile/mpub/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/moat/analytics/mobile/mpub/u;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/u;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/u;->a:Lcom/moat/analytics/mobile/mpub/u;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    sget-object v0, Lcom/moat/analytics/mobile/mpub/u;->a:Lcom/moat/analytics/mobile/mpub/u;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/t$e;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/t$e;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/mpub/u;->a:Lcom/moat/analytics/mobile/mpub/u;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic e(Lcom/moat/analytics/mobile/mpub/u;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic f(Lcom/moat/analytics/mobile/mpub/u;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic g()Ljava/util/Queue;
    .locals 1

    sget-object v0, Lcom/moat/analytics/mobile/mpub/u;->b:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic g(Lcom/moat/analytics/mobile/mpub/u;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic h(Lcom/moat/analytics/mobile/mpub/u;)J
    .locals 2

    iget-wide v0, p0, Lcom/moat/analytics/mobile/mpub/u;->m:J

    return-wide v0
.end method

.method private h()V
    .locals 10

    sget-object v1, Lcom/moat/analytics/mobile/mpub/u;->b:Ljava/util/Queue;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-object v0, Lcom/moat/analytics/mobile/mpub/u;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/u$c;

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/u$c;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0xea60

    cmp-long v0, v6, v8

    if-ltz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    sget-object v0, Lcom/moat/analytics/mobile/mpub/u;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v2, 0xf

    if-lt v0, v2, :cond_2

    const/4 v0, 0x0

    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    sget-object v2, Lcom/moat/analytics/mobile/mpub/u;->b:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private i()V
    .locals 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/moat/analytics/mobile/mpub/u$2;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/mpub/u$2;-><init>(Lcom/moat/analytics/mobile/mpub/u;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/u;->c:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/mpub/u$d;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->d:Lcom/moat/analytics/mobile/mpub/u$d;

    return-object v0
.end method

.method public a(Lcom/moat/analytics/mobile/mpub/u$b;)V
    .locals 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u;->d:Lcom/moat/analytics/mobile/mpub/u$d;

    sget-object v1, Lcom/moat/analytics/mobile/mpub/u$d;->b:Lcom/moat/analytics/mobile/mpub/u$d;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/moat/analytics/mobile/mpub/u$b;->b()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/u;->h()V

    sget-object v0, Lcom/moat/analytics/mobile/mpub/u;->b:Ljava/util/Queue;

    new-instance v1, Lcom/moat/analytics/mobile/mpub/u$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/moat/analytics/mobile/mpub/u$c;-><init>(Lcom/moat/analytics/mobile/mpub/u;Ljava/lang/Long;Lcom/moat/analytics/mobile/mpub/u$b;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/u;->i()V

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/u;->e:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/moat/analytics/mobile/mpub/u;->g:I

    return v0
.end method

.method e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/u;->f:Z

    return v0
.end method

.method public f()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/moat/analytics/mobile/mpub/u;->i:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/moat/analytics/mobile/mpub/u;->l:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/moat/analytics/mobile/mpub/u;->a(J)V

    :cond_0
    return-void
.end method
