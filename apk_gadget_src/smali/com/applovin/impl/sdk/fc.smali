.class Lcom/applovin/impl/sdk/fc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/ey;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/applovin/impl/sdk/dw;

.field private final d:Lcom/applovin/impl/sdk/ez;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/ey;Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/dw;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/fc;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/impl/sdk/fc;->c:Lcom/applovin/impl/sdk/dw;

    iput-object p3, p0, Lcom/applovin/impl/sdk/fc;->d:Lcom/applovin/impl/sdk/ez;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-wide/16 v8, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Lcom/applovin/impl/sdk/ab;->a()V

    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->e()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ey;->b(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fc;->b:Ljava/lang/String;

    const-string v4, "Task started execution..."

    invoke-interface {v0, v1, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->c:Lcom/applovin/impl/sdk/dw;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/dw;->run()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v4}, Lcom/applovin/impl/sdk/ey;->b(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/fc;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Task executed successfully in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v4}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/av;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/fc;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_count"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/applovin/impl/sdk/av;->a(Ljava/lang/String;)J

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/fc;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_time"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v1}, Lcom/applovin/impl/sdk/av;->a(Ljava/lang/String;J)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fc;->d:Lcom/applovin/impl/sdk/ez;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ey;Lcom/applovin/impl/sdk/ez;)J

    move-result-wide v0

    sub-long/2addr v0, v8

    iget-object v2, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v2}, Lcom/applovin/impl/sdk/ey;->b(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "TaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/applovin/impl/sdk/fc;->d:Lcom/applovin/impl/sdk/ez;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " queue finished task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/fc;->c:Lcom/applovin/impl/sdk/dw;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/dw;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with queue size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->g()V

    :goto_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->c:Lcom/applovin/impl/sdk/dw;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/dw;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v1}, Lcom/applovin/impl/sdk/ey;->b(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    iget-object v4, p0, Lcom/applovin/impl/sdk/fc;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Task failed execution in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fc;->d:Lcom/applovin/impl/sdk/ez;

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ey;Lcom/applovin/impl/sdk/ez;)J

    move-result-wide v0

    sub-long/2addr v0, v8

    iget-object v2, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v2}, Lcom/applovin/impl/sdk/ey;->b(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "TaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/applovin/impl/sdk/fc;->d:Lcom/applovin/impl/sdk/ez;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " queue finished task "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/applovin/impl/sdk/fc;->c:Lcom/applovin/impl/sdk/dw;

    invoke-virtual {v5}, Lcom/applovin/impl/sdk/dw;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with queue size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ey;->b(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fc;->b:Ljava/lang/String;

    const-string v4, "Task not executed, SDK is disabled"

    invoke-interface {v0, v1, v4}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    iget-object v2, p0, Lcom/applovin/impl/sdk/fc;->d:Lcom/applovin/impl/sdk/ez;

    invoke-static {v1, v2}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/ey;Lcom/applovin/impl/sdk/ez;)J

    move-result-wide v2

    sub-long/2addr v2, v8

    iget-object v1, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v1}, Lcom/applovin/impl/sdk/ey;->b(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v4, "TaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/applovin/impl/sdk/fc;->d:Lcom/applovin/impl/sdk/ez;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " queue finished task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/applovin/impl/sdk/fc;->c:Lcom/applovin/impl/sdk/dw;

    invoke-virtual {v6}, Lcom/applovin/impl/sdk/dw;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with queue size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    invoke-static {v0}, Lcom/applovin/impl/sdk/ey;->b(Lcom/applovin/impl/sdk/ey;)Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/fc;->b:Ljava/lang/String;

    const-string v4, "Task re-scheduled..."

    invoke-interface {v0, v1, v4}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/fc;->a:Lcom/applovin/impl/sdk/ey;

    iget-object v1, p0, Lcom/applovin/impl/sdk/fc;->c:Lcom/applovin/impl/sdk/dw;

    iget-object v4, p0, Lcom/applovin/impl/sdk/fc;->d:Lcom/applovin/impl/sdk/ez;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v0, v1, v4, v6, v7}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
