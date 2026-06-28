.class Lcom/moat/analytics/mobile/mpub/u$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/mpub/u$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/mpub/u$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/mpub/u$1;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/mpub/u$1;)V
    .locals 0

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/u$1$1;->a:Lcom/moat/analytics/mobile/mpub/u$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/moat/analytics/mobile/mpub/k;)V
    .locals 5

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->g()Ljava/util/Queue;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u$1$1;->a:Lcom/moat/analytics/mobile/mpub/u$1;

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/u$1;->b:Lcom/moat/analytics/mobile/mpub/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/u;->a(Lcom/moat/analytics/mobile/mpub/u;)Lcom/moat/analytics/mobile/mpub/u$d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/mpub/k;->d()Lcom/moat/analytics/mobile/mpub/u$d;

    move-result-object v2

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u$1$1;->a:Lcom/moat/analytics/mobile/mpub/u$1;

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/u$1;->b:Lcom/moat/analytics/mobile/mpub/u;

    invoke-virtual {p1}, Lcom/moat/analytics/mobile/mpub/k;->d()Lcom/moat/analytics/mobile/mpub/u$d;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/moat/analytics/mobile/mpub/u;->a(Lcom/moat/analytics/mobile/mpub/u;Lcom/moat/analytics/mobile/mpub/u$d;)Lcom/moat/analytics/mobile/mpub/u$d;

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u$1$1;->a:Lcom/moat/analytics/mobile/mpub/u$1;

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/u$1;->b:Lcom/moat/analytics/mobile/mpub/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/u;->a(Lcom/moat/analytics/mobile/mpub/u;)Lcom/moat/analytics/mobile/mpub/u$d;

    move-result-object v0

    sget-object v2, Lcom/moat/analytics/mobile/mpub/u$d;->b:Lcom/moat/analytics/mobile/mpub/u$d;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u$1$1;->a:Lcom/moat/analytics/mobile/mpub/u$1;

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/u$1;->b:Lcom/moat/analytics/mobile/mpub/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/u;->b(Lcom/moat/analytics/mobile/mpub/u;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MoatOnOff"

    const-string v2, "Moat enabled - Version 2.1.0"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->g()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/u$c;

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/u$1$1;->a:Lcom/moat/analytics/mobile/mpub/u$1;

    iget-object v3, v3, Lcom/moat/analytics/mobile/mpub/u$1;->b:Lcom/moat/analytics/mobile/mpub/u;

    invoke-static {v3}, Lcom/moat/analytics/mobile/mpub/u;->a(Lcom/moat/analytics/mobile/mpub/u;)Lcom/moat/analytics/mobile/mpub/u$d;

    move-result-object v3

    sget-object v4, Lcom/moat/analytics/mobile/mpub/u$d;->b:Lcom/moat/analytics/mobile/mpub/u$d;

    if-ne v3, v4, :cond_1

    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/u$c;->b:Lcom/moat/analytics/mobile/mpub/u$b;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/mpub/u$b;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, v0, Lcom/moat/analytics/mobile/mpub/u$c;->b:Lcom/moat/analytics/mobile/mpub/u$b;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/mpub/u$b;->c()V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->g()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->g()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
