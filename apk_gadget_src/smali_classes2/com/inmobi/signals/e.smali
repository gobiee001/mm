.class public Lcom/inmobi/signals/e;
.super Ljava/lang/Object;
.source "CarbNetworkClient.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/inmobi/signals/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/inmobi/signals/b;)Lcom/inmobi/signals/c;
    .locals 8

    .prologue
    .line 21
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 22
    new-instance v2, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v2, p0}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 24
    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v2

    .line 25
    new-instance v3, Lcom/inmobi/signals/c;

    invoke-direct {v3, v2}, Lcom/inmobi/signals/c;-><init>(Lcom/inmobi/commons/core/network/c;)V

    .line 28
    :try_start_0
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v4

    invoke-virtual {p0}, Lcom/inmobi/signals/b;->e()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/signals/n;->a(J)V

    .line 29
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v4

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/c;->c()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/signals/n;->b(J)V

    .line 30
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v4, v0

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/signals/n;->c(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1078
    :goto_0
    iget-boolean v0, v3, Lcom/inmobi/signals/c;->a:Z

    .line 40
    return-object v3

    .line 31
    :catch_0
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in setting request-response data size. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static a(Lcom/inmobi/signals/f;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 44
    move v0, v1

    .line 2043
    :goto_0
    iget v2, p0, Lcom/inmobi/signals/f;->a:I

    .line 47
    if-gt v0, v2, :cond_1

    .line 50
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 51
    new-instance v4, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v4, p0}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 52
    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v4

    .line 55
    :try_start_0
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v5

    invoke-virtual {p0}, Lcom/inmobi/signals/f;->e()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/inmobi/signals/n;->a(J)V

    .line 56
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v5

    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/c;->c()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/inmobi/signals/n;->b(J)V

    .line 57
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v5, v2, v3}, Lcom/inmobi/signals/n;->c(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :goto_1
    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 3043
    iget v2, p0, Lcom/inmobi/signals/f;->a:I

    .line 66
    if-gt v0, v2, :cond_1

    .line 3047
    :try_start_1
    iget v2, p0, Lcom/inmobi/signals/f;->b:I

    .line 70
    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    :catch_0
    move-exception v2

    goto :goto_0

    .line 58
    :catch_1
    move-exception v2

    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Error in setting request-response data size. "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 76
    :cond_0
    const/4 v1, 0x1

    .line 80
    :cond_1
    if-nez v1, :cond_2

    .line 82
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    new-instance v2, Lcom/inmobi/commons/core/d/g;

    const-string v3, "signals"

    const-string v4, "CarbUploadDiscarded"

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/d/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 88
    :cond_2
    :goto_2
    return v1

    .line 83
    :catch_2
    move-exception v0

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in submitting telemetry event : ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
