.class public Lcom/applovin/impl/sdk/g;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/q;

.field private final b:J

.field private final c:Lcom/applovin/impl/sdk/c;

.field private final d:Lcom/applovin/impl/sdk/av;

.field private final e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final f:Ljava/lang/Object;

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method public constructor <init>(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/g;->f:Ljava/lang/Object;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p2, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->a()Lcom/applovin/impl/sdk/av;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/g;->d:Lcom/applovin/impl/sdk/av;

    iput-object p2, p0, Lcom/applovin/impl/sdk/g;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    instance-of v0, p1, Lcom/applovin/impl/sdk/q;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/applovin/impl/sdk/q;

    iput-object p1, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    iget-object v0, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/q;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/g;->b:J

    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/applovin/impl/sdk/g;->b:J

    goto :goto_0
.end method

.method static a(JLcom/applovin/impl/sdk/q;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/b;->a:Lcom/applovin/impl/sdk/b;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    :cond_0
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/b;)V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/sdk/g;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/applovin/impl/sdk/g;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/applovin/impl/sdk/g;->g:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    iget-object v4, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

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

.method static a(Lcom/applovin/impl/sdk/q;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 4

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/q;->r()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/c;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/b;->b:Lcom/applovin/impl/sdk/b;

    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/q;->s()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/c;

    move-result-object v2

    sget-object v3, Lcom/applovin/impl/sdk/b;->c:Lcom/applovin/impl/sdk/b;

    invoke-virtual {v2, v3, v0, v1, p0}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    :cond_0
    return-void
.end method

.method static a(Lcom/applovin/impl/sdk/z;Lcom/applovin/impl/sdk/q;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/b;->d:Lcom/applovin/impl/sdk/b;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/z;->a()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->b()Lcom/applovin/impl/sdk/c;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/b;->e:Lcom/applovin/impl/sdk/b;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/z;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/applovin/impl/sdk/g;->d:Lcom/applovin/impl/sdk/av;

    const-string v3, "ad_imp"

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/av;->a(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    sget-object v5, Lcom/applovin/impl/sdk/b;->i:Lcom/applovin/impl/sdk/b;

    iget-object v6, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/g;->d:Lcom/applovin/impl/sdk/av;

    const-string v3, "ad_imp_session"

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/av;->a(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    sget-object v5, Lcom/applovin/impl/sdk/b;->h:Lcom/applovin/impl/sdk/b;

    iget-object v6, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v4, v5, v2, v3, v6}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    iget-object v2, p0, Lcom/applovin/impl/sdk/g;->f:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-wide v4, p0, Lcom/applovin/impl/sdk/g;->b:J

    cmp-long v3, v4, v0

    if-lez v3, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/applovin/impl/sdk/g;->g:J

    iget-wide v4, p0, Lcom/applovin/impl/sdk/g;->g:J

    iget-object v3, p0, Lcom/applovin/impl/sdk/g;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getInitializedTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v3, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    sget-object v6, Lcom/applovin/impl/sdk/b;->g:Lcom/applovin/impl/sdk/b;

    iget-object v7, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    iget-wide v4, p0, Lcom/applovin/impl/sdk/g;->g:J

    iget-wide v6, p0, Lcom/applovin/impl/sdk/g;->b:J

    sub-long/2addr v4, v6

    iget-object v3, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    sget-object v6, Lcom/applovin/impl/sdk/b;->f:Lcom/applovin/impl/sdk/b;

    iget-object v7, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v3, v6, v4, v5, v7}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/g;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/g;->e:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v3, v4}, Lcom/applovin/impl/sdk/af;->a(Landroid/content/Context;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    iget-object v3, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    sget-object v4, Lcom/applovin/impl/sdk/b;->o:Lcom/applovin/impl/sdk/b;

    iget-object v5, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v3, v4, v0, v1, v5}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    sget-object v1, Lcom/applovin/impl/sdk/b;->p:Lcom/applovin/impl/sdk/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    return-void
.end method

.method public b()V
    .locals 6

    iget-object v1, p0, Lcom/applovin/impl/sdk/g;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/applovin/impl/sdk/g;->h:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/applovin/impl/sdk/g;->h:J

    iget-wide v2, p0, Lcom/applovin/impl/sdk/g;->g:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-wide v2, p0, Lcom/applovin/impl/sdk/g;->h:J

    iget-wide v4, p0, Lcom/applovin/impl/sdk/g;->g:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    sget-object v4, Lcom/applovin/impl/sdk/b;->l:Lcom/applovin/impl/sdk/b;

    iget-object v5, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

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

.method public b(J)V
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    sget-object v1, Lcom/applovin/impl/sdk/b;->q:Lcom/applovin/impl/sdk/b;

    iget-object v2, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

    return-void
.end method

.method public c()V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/b;->j:Lcom/applovin/impl/sdk/b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b;)V

    return-void
.end method

.method public c(J)V
    .locals 7

    iget-object v1, p0, Lcom/applovin/impl/sdk/g;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/applovin/impl/sdk/g;->i:J

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/applovin/impl/sdk/g;->i:J

    iget-object v0, p0, Lcom/applovin/impl/sdk/g;->c:Lcom/applovin/impl/sdk/c;

    sget-object v2, Lcom/applovin/impl/sdk/b;->r:Lcom/applovin/impl/sdk/b;

    iget-object v3, p0, Lcom/applovin/impl/sdk/g;->a:Lcom/applovin/impl/sdk/q;

    invoke-virtual {v0, v2, p1, p2, v3}, Lcom/applovin/impl/sdk/c;->a(Lcom/applovin/impl/sdk/b;JLcom/applovin/impl/sdk/q;)V

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

.method public d()V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/b;->m:Lcom/applovin/impl/sdk/b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b;)V

    return-void
.end method

.method public e()V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/b;->n:Lcom/applovin/impl/sdk/b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b;)V

    return-void
.end method

.method public f()V
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/b;->k:Lcom/applovin/impl/sdk/b;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/g;->a(Lcom/applovin/impl/sdk/b;)V

    return-void
.end method
