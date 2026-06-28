.class public Lcom/inmobi/ads/x;
.super Lcom/inmobi/ads/g;
.source "InterstitialPreLoader.java"


# static fields
.field private static final d:Ljava/lang/String;

.field private static volatile e:Lcom/inmobi/ads/x;

.field private static final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/inmobi/ads/x;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/x;->d:Ljava/lang/String;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/x;->f:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "int"

    invoke-direct {p0, v0}, Lcom/inmobi/ads/g;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/x;)V
    .locals 8

    .prologue
    .line 6124
    sget-object v0, Lcom/inmobi/ads/x;->b:Lcom/inmobi/ads/b;

    iget-object v1, p0, Lcom/inmobi/ads/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/b;->c(Ljava/lang/String;)Lcom/inmobi/ads/b$e;

    move-result-object v0

    .line 6771
    iget-boolean v0, v0, Lcom/inmobi/ads/b$e;->a:Z

    .line 6124
    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/ads/x;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6125
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sget-object v1, Lcom/inmobi/ads/x;->b:Lcom/inmobi/ads/b;

    iget-object v2, p0, Lcom/inmobi/ads/x;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/b;->c(Ljava/lang/String;)Lcom/inmobi/ads/b$e;

    move-result-object v1

    .line 6775
    iget v1, v1, Lcom/inmobi/ads/b$e;->c:I

    .line 6125
    if-lt v0, v1, :cond_1

    .line 6126
    invoke-static {}, Lcom/inmobi/ads/bd;->a()Lcom/inmobi/ads/bd;

    iget-object v0, p0, Lcom/inmobi/ads/x;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/ads/bd;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6127
    sget-object v1, Lcom/inmobi/ads/x;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 6129
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6130
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 6132
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6133
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/ads/AdUnit;->r()V

    .line 6134
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 6135
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Removing extra ad unit from ad unit cache. Pid:"

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6136
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/bc;

    .line 7057
    iget-wide v6, v2, Lcom/inmobi/ads/bc;->a:J

    .line 6136
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " tp:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bc;

    .line 7061
    iget-object v1, v1, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 6136
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method public static d()Lcom/inmobi/ads/x;
    .locals 2

    .prologue
    .line 30
    sget-object v0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/x;

    .line 32
    if-nez v0, :cond_1

    .line 33
    sget-object v1, Lcom/inmobi/ads/x;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 34
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/x;

    .line 35
    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/inmobi/ads/x;

    invoke-direct {v0}, Lcom/inmobi/ads/x;-><init>()V

    .line 37
    sput-object v0, Lcom/inmobi/ads/x;->e:Lcom/inmobi/ads/x;

    .line 39
    :cond_0
    monitor-exit v1

    .line 41
    :cond_1
    return-object v0

    .line 39
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/inmobi/ads/x;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method final a(Lcom/inmobi/ads/bc;)Lcom/inmobi/ads/AdUnit;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 50
    sget-object v0, Lcom/inmobi/ads/x;->b:Lcom/inmobi/ads/b;

    iget-object v2, p0, Lcom/inmobi/ads/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/b;->c(Ljava/lang/String;)Lcom/inmobi/ads/b$e;

    move-result-object v0

    .line 1771
    iget-boolean v0, v0, Lcom/inmobi/ads/b$e;->a:Z

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No cached ad unit found as config is disabled. pid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2057
    iget-wide v2, p1, Lcom/inmobi/ads/bc;->a:J

    .line 52
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " tp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2061
    iget-object v2, p1, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 77
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/x;->c(Lcom/inmobi/ads/bc;)V

    .line 57
    sget-object v0, Lcom/inmobi/ads/x;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit;

    .line 58
    if-nez v0, :cond_1

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No cached ad unit found for pid:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3057
    iget-wide v2, p1, Lcom/inmobi/ads/bc;->a:J

    .line 59
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " tp:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3061
    iget-object v2, p1, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expired cached ad unit found for pid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4057
    iget-wide v4, p1, Lcom/inmobi/ads/bc;->a:J

    .line 66
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4061
    iget-object v3, p1, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->r()V

    .line 69
    sget-object v2, Lcom/inmobi/ads/x;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v2, "AdUnitExpired"

    .line 4151
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 4152
    const-string v4, "errorCode"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4153
    const-string v2, "type"

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4154
    const-string v2, "plId"

    .line 4269
    iget-wide v4, v0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 4154
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4155
    const-string v2, "clientRequestId"

    .line 4320
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 4155
    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cached ad unit found for pid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5057
    iget-wide v2, p1, Lcom/inmobi/ads/bc;->a:J

    .line 73
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5061
    iget-object v2, p1, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    sget-object v1, Lcom/inmobi/ads/x;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/AdUnit;

    .line 5143
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5144
    const-string v3, "type"

    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5145
    const-string v3, "plId"

    .line 5269
    iget-wide v4, v1, Lcom/inmobi/ads/AdUnit;->b:J

    .line 5145
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5146
    const-string v3, "clientRequestId"

    .line 5320
    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 5146
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method final b(Lcom/inmobi/ads/bc;)V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/inmobi/ads/x;->b:Lcom/inmobi/ads/b;

    iget-object v1, p0, Lcom/inmobi/ads/x;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/b;->c(Ljava/lang/String;)Lcom/inmobi/ads/b$e;

    move-result-object v0

    .line 5771
    iget-boolean v0, v0, Lcom/inmobi/ads/b$e;->a:Z

    .line 83
    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/x$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/x$1;-><init>(Lcom/inmobi/ads/x;Lcom/inmobi/ads/bc;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
