.class Lcom/moat/analytics/mobile/mpub/j;
.super Lcom/moat/analytics/mobile/mpub/MoatAnalytics;

# interfaces
.implements Lcom/moat/analytics/mobile/mpub/u$b;


# instance fields
.field a:Lcom/moat/analytics/mobile/mpub/f;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/MoatAnalytics;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->c:Z

    return-void
.end method

.method private a(Lcom/moat/analytics/mobile/mpub/MoatOptions;Landroid/app/Application;)V
    .locals 3

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->d()Lcom/moat/analytics/mobile/mpub/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/u;->f()V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->c:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const-string v1, "MoatAnalytics"

    const-string v2, "Moat SDK has already been started."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->b:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->c:Z

    invoke-static {p2}, Lcom/moat/analytics/mobile/mpub/a;->a(Landroid/app/Application;)V

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->d()Lcom/moat/analytics/mobile/mpub/u;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/mpub/u;->a(Lcom/moat/analytics/mobile/mpub/u$b;)V

    iget-boolean v0, p1, Lcom/moat/analytics/mobile/mpub/MoatOptions;->disableAdIdCollection:Z

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/moat/analytics/mobile/mpub/p;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->a:Lcom/moat/analytics/mobile/mpub/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/moat/analytics/mobile/mpub/f;

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/a;->a()Landroid/app/Application;

    move-result-object v1

    sget-object v2, Lcom/moat/analytics/mobile/mpub/f$a;->a:Lcom/moat/analytics/mobile/mpub/f$a;

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/mpub/f;-><init>(Landroid/content/Context;Lcom/moat/analytics/mobile/mpub/f$a;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->a:Lcom/moat/analytics/mobile/mpub/f;

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->a:Lcom/moat/analytics/mobile/mpub/f;

    iget-object v1, p0, Lcom/moat/analytics/mobile/mpub/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/mpub/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "MoatAnalytics"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Preparing native display tracking with partner code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/moat/analytics/mobile/mpub/j;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/mpub/j;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/mpub/j;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public prepareNativeDisplayTracking(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/mpub/j;->d:Ljava/lang/String;

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/u;->d()Lcom/moat/analytics/mobile/mpub/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/u;->a()Lcom/moat/analytics/mobile/mpub/u$d;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/mpub/u$d;->a:Lcom/moat/analytics/mobile/mpub/u$d;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/j;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public start(Landroid/app/Application;)V
    .locals 1

    new-instance v0, Lcom/moat/analytics/mobile/mpub/MoatOptions;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/MoatOptions;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/moat/analytics/mobile/mpub/j;->start(Lcom/moat/analytics/mobile/mpub/MoatOptions;Landroid/app/Application;)V

    return-void
.end method

.method public start(Lcom/moat/analytics/mobile/mpub/MoatOptions;Landroid/app/Application;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/mpub/j;->a(Lcom/moat/analytics/mobile/mpub/MoatOptions;Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
