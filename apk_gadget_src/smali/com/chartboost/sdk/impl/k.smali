.class public Lcom/chartboost/sdk/impl/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ad$a;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/j;

.field private final b:Lcom/chartboost/sdk/Libraries/f;

.field private final c:Lcom/chartboost/sdk/impl/ab;

.field private final d:Lcom/chartboost/sdk/impl/aj;

.field private final e:Lcom/chartboost/sdk/Tracking/a;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I

.field private i:J

.field private j:Lcom/chartboost/sdk/impl/ad;

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/Libraries/f;Lcom/chartboost/sdk/impl/ab;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/chartboost/sdk/impl/j;",
            "Lcom/chartboost/sdk/Libraries/f;",
            "Lcom/chartboost/sdk/impl/ab;",
            "Lcom/chartboost/sdk/impl/aj;",
            "Lcom/chartboost/sdk/Tracking/a;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/k;->g:I

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/k;->h:I

    .line 80
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/k;->i:J

    .line 81
    iput-object v2, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;

    .line 82
    iput-object v2, p0, Lcom/chartboost/sdk/impl/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    iput-object p1, p0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    .line 98
    iput-object p2, p0, Lcom/chartboost/sdk/impl/k;->b:Lcom/chartboost/sdk/Libraries/f;

    .line 99
    iput-object p3, p0, Lcom/chartboost/sdk/impl/k;->c:Lcom/chartboost/sdk/impl/ab;

    .line 100
    iput-object p4, p0, Lcom/chartboost/sdk/impl/k;->d:Lcom/chartboost/sdk/impl/aj;

    .line 101
    iput-object p5, p0, Lcom/chartboost/sdk/impl/k;->e:Lcom/chartboost/sdk/Tracking/a;

    .line 102
    iput-object p6, p0, Lcom/chartboost/sdk/impl/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 103
    return-void
.end method

.method private a(Lcom/chartboost/sdk/Model/e;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 217
    iget-boolean v3, p1, Lcom/chartboost/sdk/Model/e;->y:Z

    .line 218
    if-nez v3, :cond_3

    iget-boolean v0, p1, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 220
    :goto_0
    iget v4, p0, Lcom/chartboost/sdk/impl/k;->h:I

    if-ne v4, v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/chartboost/sdk/impl/k;->h:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    if-nez v3, :cond_4

    :cond_1
    move v0, v1

    .line 224
    :goto_1
    if-eqz v0, :cond_2

    .line 225
    const-string v0, "Prefetcher"

    const-string v3, "Change state to IDLE"

    invoke-static {v0, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iput v1, p0, Lcom/chartboost/sdk/impl/k;->g:I

    .line 227
    iput v2, p0, Lcom/chartboost/sdk/impl/k;->h:I

    .line 228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/impl/k;->i:J

    .line 229
    iput-object v5, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;

    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 231
    iput-object v5, p0, Lcom/chartboost/sdk/impl/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 232
    if-eqz v0, :cond_2

    .line 233
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/j;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 235
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 218
    goto :goto_0

    :cond_4
    move v0, v2

    .line 220
    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 10

    .prologue
    const/4 v4, 0x4

    const/4 v6, 0x1

    const/4 v9, 0x2

    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    move-object v8, v0

    .line 118
    invoke-direct {p0, v8}, Lcom/chartboost/sdk/impl/k;->a(Lcom/chartboost/sdk/Model/e;)V

    .line 120
    iget-boolean v2, v8, Lcom/chartboost/sdk/Model/e;->c:Z

    if-nez v2, :cond_0

    iget-boolean v2, v8, Lcom/chartboost/sdk/Model/e;->b:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/chartboost/sdk/i;->v:Z

    if-nez v2, :cond_2

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/k;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 131
    :cond_2
    :try_start_1
    iget v2, p0, Lcom/chartboost/sdk/impl/k;->g:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 132
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-gtz v2, :cond_1

    .line 135
    const-string v2, "Prefetcher"

    const-string v3, "Change state to COOLDOWN"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v2, 0x4

    iput v2, p0, Lcom/chartboost/sdk/impl/k;->g:I

    .line 137
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/chartboost/sdk/impl/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 140
    :cond_3
    iget v2, p0, Lcom/chartboost/sdk/impl/k;->g:I

    if-ne v2, v4, :cond_6

    .line 141
    iget-wide v2, p0, Lcom/chartboost/sdk/impl/k;->i:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 142
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 143
    const-string v2, "Prefetcher"

    const-string v3, "Prefetch session is still active. Won\'t be making any new prefetch until the prefetch session expires"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 192
    :catch_0
    move-exception v2

    .line 196
    :try_start_2
    iget v3, p0, Lcom/chartboost/sdk/impl/k;->g:I

    if-ne v3, v9, :cond_4

    .line 197
    const-string v3, "Prefetcher"

    const-string v4, "Change state to COOLDOWN"

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v3, 0x4

    iput v3, p0, Lcom/chartboost/sdk/impl/k;->g:I

    .line 199
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;

    .line 201
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "prefetch"

    invoke-static {v3, v4, v2}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 146
    :cond_5
    :try_start_3
    const-string v2, "Prefetcher"

    const-string v3, "Change state to IDLE"

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v2, 0x1

    iput v2, p0, Lcom/chartboost/sdk/impl/k;->g:I

    .line 148
    const/4 v2, 0x0

    iput v2, p0, Lcom/chartboost/sdk/impl/k;->h:I

    .line 149
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/chartboost/sdk/impl/k;->i:J

    .line 152
    :cond_6
    iget v2, p0, Lcom/chartboost/sdk/impl/k;->g:I

    if-ne v2, v6, :cond_1

    .line 155
    iget-boolean v2, v8, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v2, :cond_7

    .line 156
    new-instance v2, Lcom/chartboost/sdk/impl/ag;

    iget-object v3, v8, Lcom/chartboost/sdk/Model/e;->H:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/k;->d:Lcom/chartboost/sdk/impl/aj;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/k;->e:Lcom/chartboost/sdk/Tracking/a;

    const/4 v6, 0x2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/ag;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 162
    iget-object v3, p0, Lcom/chartboost/sdk/impl/k;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/f;->c()Lorg/json/JSONObject;

    move-result-object v3

    .line 163
    const-string v4, "cache_assets"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/chartboost/sdk/impl/ag;->a(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 164
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/chartboost/sdk/impl/ag;->l:Z

    .line 166
    const-string v3, "Prefetcher"

    const-string v4, "Change state to AWAIT_PREFETCH_RESPONSE"

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const/4 v3, 0x2

    iput v3, p0, Lcom/chartboost/sdk/impl/k;->g:I

    .line 168
    const/4 v3, 0x2

    iput v3, p0, Lcom/chartboost/sdk/impl/k;->h:I

    .line 169
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v6, v8, Lcom/chartboost/sdk/Model/e;->D:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/chartboost/sdk/impl/k;->i:J

    .line 170
    iput-object v2, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;

    .line 191
    :goto_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/k;->c:Lcom/chartboost/sdk/impl/ab;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/ab;->a(Lcom/chartboost/sdk/impl/x;)V

    goto/16 :goto_0

    .line 171
    :cond_7
    iget-boolean v2, v8, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v2, :cond_8

    .line 173
    new-instance v2, Lcom/chartboost/sdk/impl/ad;

    const-string v3, "/api/video-prefetch"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/k;->d:Lcom/chartboost/sdk/impl/aj;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/k;->e:Lcom/chartboost/sdk/Tracking/a;

    const/4 v6, 0x2

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/chartboost/sdk/impl/ad;-><init>(Ljava/lang/String;Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Tracking/a;ILcom/chartboost/sdk/impl/ad$a;)V

    .line 178
    const-string v3, "local-videos"

    iget-object v4, p0, Lcom/chartboost/sdk/impl/k;->b:Lcom/chartboost/sdk/Libraries/f;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/f;->b()Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/chartboost/sdk/impl/ad;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/chartboost/sdk/impl/ad;->l:Z

    .line 181
    const-string v3, "Prefetcher"

    const-string v4, "Change state to AWAIT_PREFETCH_RESPONSE"

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const/4 v3, 0x2

    iput v3, p0, Lcom/chartboost/sdk/impl/k;->g:I

    .line 183
    const/4 v3, 0x1

    iput v3, p0, Lcom/chartboost/sdk/impl/k;->h:I

    .line 184
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    iget v6, v8, Lcom/chartboost/sdk/Model/e;->i:I

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/chartboost/sdk/impl/k;->i:J

    .line 185
    iput-object v2, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;

    goto :goto_1

    .line 187
    :cond_8
    const-string v2, "Prefetcher"

    const-string v3, "Did not prefetch because neither native nor webview are enabled."

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized a(Lcom/chartboost/sdk/impl/ad;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 2

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/k;->g:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 305
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;

    if-ne p1, v0, :cond_0

    .line 309
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;

    .line 310
    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/k;->g:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/chartboost/sdk/impl/ad;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v3, 0x2

    .line 265
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/k;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v3, :cond_1

    .line 295
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 269
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;

    if-ne p1, v0, :cond_0

    .line 273
    const-string v0, "Prefetcher"

    const-string v1, "Change state to DOWNLOAD_ASSETS"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const/4 v0, 0x3

    iput v0, p0, Lcom/chartboost/sdk/impl/k;->g:I

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;

    .line 276
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 278
    if-eqz p2, :cond_0

    .line 279
    const-string v0, "Prefetcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Asset list for Prefetch from server :)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget v0, p0, Lcom/chartboost/sdk/impl/k;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 281
    invoke-static {p2}, Lcom/chartboost/sdk/Model/b;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 282
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/chartboost/sdk/impl/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/chartboost/sdk/impl/j;->a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/f;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 289
    :catch_0
    move-exception v0

    .line 293
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "onSuccess"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 283
    :cond_2
    :try_start_3
    iget v0, p0, Lcom/chartboost/sdk/impl/k;->h:I

    if-ne v0, v3, :cond_0

    .line 284
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/e;

    iget v0, v0, Lcom/chartboost/sdk/Model/e;->v:I

    invoke-static {p2, v0}, Lcom/chartboost/sdk/Model/b;->a(Lorg/json/JSONObject;I)Ljava/util/Map;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/chartboost/sdk/impl/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/chartboost/sdk/impl/j;->a(ILjava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/chartboost/sdk/impl/f;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 243
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/chartboost/sdk/impl/k;->g:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 244
    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/k;->g:I

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/k;->j:Lcom/chartboost/sdk/impl/ad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 247
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/chartboost/sdk/impl/k;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 248
    const-string v0, "Prefetcher"

    const-string v1, "Change state to COOLDOWN"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/4 v0, 0x4

    iput v0, p0, Lcom/chartboost/sdk/impl/k;->g:I

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/impl/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 251
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/chartboost/sdk/impl/k;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 252
    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/chartboost/sdk/impl/k;->a:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/j;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
