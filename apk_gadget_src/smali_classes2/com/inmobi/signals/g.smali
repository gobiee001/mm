.class public Lcom/inmobi/signals/g;
.super Ljava/lang/Object;
.source "CarbWorker.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/signals/p$a;

.field private c:Z

.field private d:Lcom/inmobi/signals/a;

.field private e:Lcom/inmobi/signals/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/inmobi/signals/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/g;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/signals/g;->c:Z

    .line 25
    new-instance v0, Lcom/inmobi/signals/a;

    invoke-direct {v0}, Lcom/inmobi/signals/a;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/g;->d:Lcom/inmobi/signals/a;

    .line 26
    new-instance v0, Lcom/inmobi/signals/e;

    invoke-direct {v0}, Lcom/inmobi/signals/e;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/g;->e:Lcom/inmobi/signals/e;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/inmobi/signals/g;)Lcom/inmobi/signals/c;
    .locals 5

    .prologue
    .line 3075
    new-instance v0, Lcom/inmobi/signals/b;

    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 3287
    iget-object v1, v1, Lcom/inmobi/signals/p$a;->b:Ljava/lang/String;

    .line 3075
    iget-object v2, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 3299
    iget v2, v2, Lcom/inmobi/signals/p$a;->e:I

    .line 3075
    iget-object v3, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 3303
    iget v3, v3, Lcom/inmobi/signals/p$a;->f:I

    .line 3075
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/signals/o;->d()Lcom/inmobi/commons/core/utilities/uid/d;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/signals/b;-><init>(Ljava/lang/String;IILcom/inmobi/commons/core/utilities/uid/d;)V

    .line 3076
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 3311
    iget-wide v2, v1, Lcom/inmobi/signals/p$a;->h:J

    .line 4066
    iput-wide v2, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->u:J

    .line 3077
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 4307
    iget v1, v1, Lcom/inmobi/signals/p$a;->g:I

    .line 3077
    mul-int/lit16 v1, v1, 0x3e8

    .line 5174
    iput v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:I

    .line 3078
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 5307
    iget v1, v1, Lcom/inmobi/signals/p$a;->g:I

    .line 3078
    mul-int/lit16 v1, v1, 0x3e8

    .line 6178
    iput v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->q:I

    .line 3079
    invoke-static {v0}, Lcom/inmobi/signals/e;->a(Lcom/inmobi/signals/b;)Lcom/inmobi/signals/c;

    move-result-object v0

    .line 15
    return-object v0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    .line 7083
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7085
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7086
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/signals/d;

    .line 8017
    iget-object v0, v0, Lcom/inmobi/signals/d;->a:Ljava/lang/String;

    .line 7086
    invoke-static {v0}, Lcom/inmobi/signals/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 7087
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7085
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 15
    :cond_1
    return-object v2
.end method

.method static synthetic a(Lcom/inmobi/signals/g;Lcom/inmobi/signals/c;Ljava/util/List;)V
    .locals 7

    .prologue
    .line 8109
    new-instance v0, Lcom/inmobi/signals/f;

    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 8291
    iget-object v1, v1, Lcom/inmobi/signals/p$a;->c:Ljava/lang/String;

    .line 8109
    iget-object v2, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 8299
    iget v2, v2, Lcom/inmobi/signals/p$a;->e:I

    .line 8109
    iget-object v3, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 8303
    iget v3, v3, Lcom/inmobi/signals/p$a;->f:I

    .line 8109
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/signals/o;->d()Lcom/inmobi/commons/core/utilities/uid/d;

    move-result-object v4

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/signals/f;-><init>(Ljava/lang/String;IILcom/inmobi/commons/core/utilities/uid/d;Ljava/util/List;Lcom/inmobi/signals/c;)V

    .line 8111
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 8307
    iget v1, v1, Lcom/inmobi/signals/p$a;->g:I

    .line 8111
    mul-int/lit16 v1, v1, 0x3e8

    .line 9174
    iput v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:I

    .line 8112
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 9307
    iget v1, v1, Lcom/inmobi/signals/p$a;->g:I

    .line 8112
    mul-int/lit16 v1, v1, 0x3e8

    .line 10178
    iput v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->q:I

    .line 8113
    invoke-static {v0}, Lcom/inmobi/signals/e;->a(Lcom/inmobi/signals/f;)Z

    .line 15
    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    .line 95
    if-nez v1, :cond_0

    .line 105
    :goto_0
    return v0

    .line 99
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 100
    const/16 v2, 0x100

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 103
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/signals/g;)Lcom/inmobi/signals/a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/inmobi/signals/g;->d:Lcom/inmobi/signals/a;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/signals/g;)Z
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/signals/g;->c:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/inmobi/signals/p$a;)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 30
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 32
    iget-boolean v1, p0, Lcom/inmobi/signals/g;->c:Z

    if-nez v1, :cond_1

    .line 1042
    iget-object v1, p0, Lcom/inmobi/signals/g;->d:Lcom/inmobi/signals/a;

    .line 2024
    iget-object v1, v1, Lcom/inmobi/signals/a;->a:Lcom/inmobi/commons/core/c/c;

    const-string v2, "carb_last_update_ts"

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/c/c;->e(Ljava/lang/String;)J

    move-result-wide v2

    .line 1044
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 32
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/signals/g;->c:Z

    .line 3056
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/signals/g$1;

    invoke-direct {v1, p0}, Lcom/inmobi/signals/g$1;-><init>(Lcom/inmobi/signals/g;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 3071
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    monitor-exit p0

    return-void

    .line 1047
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 1048
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 2295
    iget v1, v1, Lcom/inmobi/signals/p$a;->d:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1048
    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1052
    const/4 v0, 0x0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
