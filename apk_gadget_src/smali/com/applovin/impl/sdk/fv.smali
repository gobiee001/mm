.class public Lcom/applovin/impl/sdk/fv;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private b:Ljava/util/Timer;

.field private c:J

.field private d:J

.field private final e:Ljava/lang/Runnable;

.field private f:J

.field private final g:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/Runnable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/fv;->g:Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/sdk/fv;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object p2, p0, Lcom/applovin/impl/sdk/fv;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public static a(JLcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/fv;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create a scheduled timer. Invalid fire time passed in: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create a scheduled timer. Runnable is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/fv;

    invoke-direct {v0, p2, p3}, Lcom/applovin/impl/sdk/fv;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/Runnable;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/applovin/impl/sdk/fv;->c:J

    iput-wide p0, v0, Lcom/applovin/impl/sdk/fv;->d:J

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, v0, Lcom/applovin/impl/sdk/fv;->b:Ljava/util/Timer;

    iget-object v1, v0, Lcom/applovin/impl/sdk/fv;->b:Ljava/util/Timer;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/fv;->c()Ljava/util/TimerTask;

    move-result-object v2

    invoke-virtual {v1, v2, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/fv;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fv;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/fv;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/fv;->b:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/fv;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fv;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/fv;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fv;->g:Ljava/lang/Object;

    return-object v0
.end method

.method private c()Ljava/util/TimerTask;
    .locals 1

    new-instance v0, Lcom/applovin/impl/sdk/fw;

    invoke-direct {v0, p0}, Lcom/applovin/impl/sdk/fw;-><init>(Lcom/applovin/impl/sdk/fv;)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/sdk/fv;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/fv;->b:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/fv;->b:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/applovin/impl/sdk/fv;->c:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/applovin/impl/sdk/fv;->f:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lcom/applovin/impl/sdk/fv;->b:Ljava/util/Timer;

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/applovin/impl/sdk/fv;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/fv;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "Encountered error while pausing timer"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/applovin/impl/sdk/fv;->b:Ljava/util/Timer;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v2, 0x0

    :try_start_5
    iput-object v2, p0, Lcom/applovin/impl/sdk/fv;->b:Ljava/util/Timer;

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public b()V
    .locals 8

    const-wide/16 v6, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fv;->g:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/applovin/impl/sdk/fv;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    :try_start_1
    iget-wide v2, p0, Lcom/applovin/impl/sdk/fv;->d:J

    iget-wide v4, p0, Lcom/applovin/impl/sdk/fv;->f:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/applovin/impl/sdk/fv;->d:J

    iget-wide v2, p0, Lcom/applovin/impl/sdk/fv;->d:J

    cmp-long v0, v2, v6

    if-gez v0, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/applovin/impl/sdk/fv;->d:J

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/fv;->b:Ljava/util/Timer;

    iget-object v0, p0, Lcom/applovin/impl/sdk/fv;->b:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/fv;->c()Ljava/util/TimerTask;

    move-result-object v2

    iget-wide v4, p0, Lcom/applovin/impl/sdk/fv;->d:J

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/applovin/impl/sdk/fv;->c:J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v2, 0x0

    :try_start_2
    iput-wide v2, p0, Lcom/applovin/impl/sdk/fv;->f:J

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    iget-object v2, p0, Lcom/applovin/impl/sdk/fv;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/applovin/impl/sdk/fv;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "Timer"

    const-string v4, "Encountered error while resuming timer"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    const-wide/16 v2, 0x0

    :try_start_4
    iput-wide v2, p0, Lcom/applovin/impl/sdk/fv;->f:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const-wide/16 v2, 0x0

    :try_start_5
    iput-wide v2, p0, Lcom/applovin/impl/sdk/fv;->f:J

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method
