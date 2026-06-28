.class final Lcom/inmobi/rendering/a/c$c;
.super Ljava/lang/Object;
.source "ClickManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/inmobi/rendering/a/c$d;


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/a/c$d;)V
    .locals 0

    .prologue
    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    .line 349
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/rendering/a/a;)V
    .locals 8

    .prologue
    .line 353
    :try_start_0
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v2, p1, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 355
    invoke-static {p1}, Lcom/inmobi/rendering/a/c;->b(Lcom/inmobi/rendering/a/a;)Ljava/util/HashMap;

    move-result-object v1

    .line 356
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/util/Map;)V

    .line 1078
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->t:Z

    .line 361
    iget-object v1, p1, Lcom/inmobi/rendering/a/a;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->b(Ljava/util/Map;)V

    .line 362
    iget-boolean v1, p1, Lcom/inmobi/rendering/a/a;->i:Z

    .line 1162
    iput-boolean v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->r:Z

    .line 363
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v1

    .line 1607
    iget v1, v1, Lcom/inmobi/ads/b$c;->c:I

    .line 363
    mul-int/lit16 v1, v1, 0x3e8

    .line 2174
    iput v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:I

    .line 364
    invoke-static {}, Lcom/inmobi/rendering/a/c;->c()Lcom/inmobi/ads/b$c;

    move-result-object v1

    .line 2607
    iget v1, v1, Lcom/inmobi/ads/b$c;->c:I

    .line 364
    mul-int/lit16 v1, v1, 0x3e8

    .line 3178
    iput v1, v0, Lcom/inmobi/commons/core/network/NetworkRequest;->q:I

    .line 366
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 367
    new-instance v1, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v1, v0}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 370
    :try_start_1
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v4

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->e()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/signals/n;->a(J)V

    .line 371
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v0

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->c()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/inmobi/signals/n;->b(J)V

    .line 372
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/signals/n;->c(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 378
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4078
    iget-object v0, v1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 5067
    iget-object v0, v0, Lcom/inmobi/commons/core/network/NetworkError;->a:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    .line 380
    iget-boolean v2, p1, Lcom/inmobi/rendering/a/a;->i:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->HTTP_SEE_OTHER:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    if-eq v2, v0, :cond_1

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->HTTP_MOVED_TEMP:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    if-ne v2, v0, :cond_2

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    invoke-interface {v0, p1}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;)V

    .line 396
    :goto_1
    return-void

    .line 373
    :catch_0
    move-exception v0

    .line 374
    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in setting request-response data size. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 390
    :catch_1
    move-exception v0

    .line 391
    invoke-static {}, Lcom/inmobi/rendering/a/c;->d()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in executing ping over HTTP; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 392
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    new-instance v1, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v3, "Unknown error"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lcom/inmobi/rendering/a/c$d;->b(Lcom/inmobi/rendering/a/a;)V

    goto :goto_1

    .line 385
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    .line 5078
    iget-object v1, v1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 385
    invoke-interface {v0, p1}, Lcom/inmobi/rendering/a/c$d;->b(Lcom/inmobi/rendering/a/a;)V

    goto :goto_1

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    invoke-interface {v0, p1}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
