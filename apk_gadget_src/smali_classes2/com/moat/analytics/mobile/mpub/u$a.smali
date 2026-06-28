.class Lcom/moat/analytics/mobile/mpub/u$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/mpub/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/mpub/u;

.field private final b:Landroid/os/Handler;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/moat/analytics/mobile/mpub/u$e;


# direct methods
.method private constructor <init>(Lcom/moat/analytics/mobile/mpub/u;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/mpub/u$e;)V
    .locals 4

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/u$a;->a:Lcom/moat/analytics/mobile/mpub/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/moat/analytics/mobile/mpub/u$a;->d:Lcom/moat/analytics/mobile/mpub/u$e;

    iput-object p3, p0, Lcom/moat/analytics/mobile/mpub/u$a;->b:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://sejs.moatads.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4981cd50c959e33b894dd4ade34d0115f830973f"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/status.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/u$a;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/moat/analytics/mobile/mpub/u;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/mpub/u$e;Lcom/moat/analytics/mobile/mpub/u$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/moat/analytics/mobile/mpub/u$a;-><init>(Lcom/moat/analytics/mobile/mpub/u;Ljava/lang/String;Landroid/os/Handler;Lcom/moat/analytics/mobile/mpub/u$e;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/mpub/u$a;)Lcom/moat/analytics/mobile/mpub/u$e;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u$a;->d:Lcom/moat/analytics/mobile/mpub/u$e;

    return-object v0
.end method

.method private a()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/u$a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/mpub/k;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/mpub/k;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/u$a;->a:Lcom/moat/analytics/mobile/mpub/u;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/mpub/k;->a()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/moat/analytics/mobile/mpub/u;->a(Lcom/moat/analytics/mobile/mpub/u;Z)Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/u$a;->a:Lcom/moat/analytics/mobile/mpub/u;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/mpub/k;->b()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/moat/analytics/mobile/mpub/u;->b(Lcom/moat/analytics/mobile/mpub/u;Z)Z

    iget-object v2, p0, Lcom/moat/analytics/mobile/mpub/u$a;->a:Lcom/moat/analytics/mobile/mpub/u;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/mpub/k;->c()I

    move-result v3

    invoke-static {v2, v3}, Lcom/moat/analytics/mobile/mpub/u;->a(Lcom/moat/analytics/mobile/mpub/u;I)I

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/moat/analytics/mobile/mpub/u$a$1;

    invoke-direct {v2, p0, v1}, Lcom/moat/analytics/mobile/mpub/u$a$1;-><init>(Lcom/moat/analytics/mobile/mpub/u$a;Lcom/moat/analytics/mobile/mpub/k;)V

    invoke-virtual {v3, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/u$a;->a:Lcom/moat/analytics/mobile/mpub/u;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/moat/analytics/mobile/mpub/u;->a(Lcom/moat/analytics/mobile/mpub/u;J)J

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/u$a;->a:Lcom/moat/analytics/mobile/mpub/u;

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/u;->f(Lcom/moat/analytics/mobile/mpub/u;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u$a;->a:Lcom/moat/analytics/mobile/mpub/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/u;->g(Lcom/moat/analytics/mobile/mpub/u;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u$a;->a:Lcom/moat/analytics/mobile/mpub/u;

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/u$a;->a:Lcom/moat/analytics/mobile/mpub/u;

    invoke-static {v1}, Lcom/moat/analytics/mobile/mpub/u;->h(Lcom/moat/analytics/mobile/mpub/u;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/moat/analytics/mobile/mpub/u;->b(Lcom/moat/analytics/mobile/mpub/u;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u$a;->a:Lcom/moat/analytics/mobile/mpub/u;

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/u;->g(Lcom/moat/analytics/mobile/mpub/u;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0
.end method

.method private b()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/u$a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "2.1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/o;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/mpub/a/b/a;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/a/b/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/u$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/u$a;->b:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
