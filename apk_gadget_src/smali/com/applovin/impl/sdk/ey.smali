.class public Lcom/applovin/impl/sdk/ey;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final c:Lcom/applovin/sdk/AppLovinLogger;

.field private final d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private final f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "TaskManager"

    iput-object v0, p0, Lcom/applovin/impl/sdk/ey;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/applovin/impl/sdk/ey;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ey;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v0, "main"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ey;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ey;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "back"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ey;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ey;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const-string v0, "postbacks"

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ey;->a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ey;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ey;Lcom/applovin/impl/sdk/ez;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ez;)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/applovin/impl/sdk/ez;)J
    .locals 4

    sget-object v0, Lcom/applovin/impl/sdk/ez;->a:Lcom/applovin/impl/sdk/ez;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ey;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/ey;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/ez;->b:Lcom/applovin/impl/sdk/ez;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ey;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/ey;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/ez;->c:Lcom/applovin/impl/sdk/ez;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ey;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getTaskCount()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/ey;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ey;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 3

    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    new-instance v2, Lcom/applovin/impl/sdk/fa;

    invoke-direct {v2, p0, p1}, Lcom/applovin/impl/sdk/fa;-><init>(Lcom/applovin/impl/sdk/ey;Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method

.method private static a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p3, p0, p1, p2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :goto_0
    return-void

    :cond_0
    invoke-interface {p3, p0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ey;->c:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method


# virtual methods
.method a(Lcom/applovin/impl/sdk/dw;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ey;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/dw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " immediately..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/dw;->run()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ey;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "TaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/dw;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " finished executing..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ey;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "TaskManager"

    const-string v3, "Task failed execution"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ey;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "TaskManager"

    const-string v2, "Attempted to execute null task immediately"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;J)V

    return-void
.end method

.method a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;J)V
    .locals 7

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No task specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid delay specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/ez;->a:Lcom/applovin/impl/sdk/ez;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/applovin/impl/sdk/ez;->b:Lcom/applovin/impl/sdk/ez;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/applovin/impl/sdk/ez;->c:Lcom/applovin/impl/sdk/ez;

    if-eq p2, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid queue specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0, p2}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ez;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/applovin/impl/sdk/ey;->c:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "TaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/applovin/impl/sdk/dw;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " queue in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms with new queue size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/applovin/impl/sdk/fc;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/sdk/fc;-><init>(Lcom/applovin/impl/sdk/ey;Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;)V

    sget-object v1, Lcom/applovin/impl/sdk/ez;->a:Lcom/applovin/impl/sdk/ez;

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/sdk/ey;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v0, p3, p4, v1}, Lcom/applovin/impl/sdk/ey;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-object v1, Lcom/applovin/impl/sdk/ez;->b:Lcom/applovin/impl/sdk/ez;

    if-ne p2, v1, :cond_5

    iget-object v1, p0, Lcom/applovin/impl/sdk/ey;->e:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v0, p3, p4, v1}, Lcom/applovin/impl/sdk/ey;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/applovin/impl/sdk/ez;->c:Lcom/applovin/impl/sdk/ez;

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/sdk/ey;->f:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v0, p3, p4, v1}, Lcom/applovin/impl/sdk/ey;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;)V

    goto :goto_0
.end method

.method a(Lcom/applovin/impl/sdk/ew;J)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No task specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ey;->d:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {p1, p2, p3, v0}, Lcom/applovin/impl/sdk/ey;->a(Ljava/lang/Runnable;JLjava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method
