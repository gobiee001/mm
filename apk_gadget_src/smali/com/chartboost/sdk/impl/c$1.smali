.class Lcom/chartboost/sdk/impl/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/d;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/d;

.field final synthetic b:J

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcom/chartboost/sdk/impl/c;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/c;Lcom/chartboost/sdk/impl/d;JZZ)V
    .locals 1

    .prologue
    .line 386
    iput-object p1, p0, Lcom/chartboost/sdk/impl/c$1;->e:Lcom/chartboost/sdk/impl/c;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/c$1;->a:Lcom/chartboost/sdk/impl/d;

    iput-wide p3, p0, Lcom/chartboost/sdk/impl/c$1;->b:J

    iput-boolean p5, p0, Lcom/chartboost/sdk/impl/c$1;->c:Z

    iput-boolean p6, p0, Lcom/chartboost/sdk/impl/c$1;->d:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ad;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$1;->e:Lcom/chartboost/sdk/impl/c;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c$1;->a:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v0, v1, p2}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError;)V

    .line 411
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/ad;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 390
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$1;->a:Lcom/chartboost/sdk/impl/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c$1;->e:Lcom/chartboost/sdk/impl/c;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/c;)Lcom/chartboost/sdk/Libraries/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/i;->b()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/chartboost/sdk/impl/c$1;->b:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/d;->p:Ljava/lang/Integer;

    .line 391
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$1;->a:Lcom/chartboost/sdk/impl/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p1, Lcom/chartboost/sdk/impl/ad;->h:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/d;->q:Ljava/lang/Integer;

    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$1;->a:Lcom/chartboost/sdk/impl/d;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p1, Lcom/chartboost/sdk/impl/ad;->i:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/chartboost/sdk/impl/d;->r:Ljava/lang/Integer;

    .line 394
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/c$1;->c:Z

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p2, v2}, Lcom/chartboost/sdk/Model/a;-><init>(ILorg/json/JSONObject;Z)V

    .line 401
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/c$1;->e:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c$1;->a:Lcom/chartboost/sdk/impl/d;

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/a;)V

    .line 406
    :goto_1
    return-void

    .line 396
    :cond_0
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/c$1;->d:Z

    if-eqz v0, :cond_1

    .line 397
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/chartboost/sdk/Model/a;-><init>(ILorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    .line 403
    const-class v1, Lcom/chartboost/sdk/impl/c;

    const-string v2, "sendAdGetRequest.onSuccess"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c$1;->e:Lcom/chartboost/sdk/impl/c;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/c$1;->a:Lcom/chartboost/sdk/impl/d;

    new-instance v2, Lcom/chartboost/sdk/Model/CBError;

    sget-object v3, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    const-string v4, "Response conversion failure"

    invoke-direct {v2, v3, v4}, Lcom/chartboost/sdk/Model/CBError;-><init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/c;->a(Lcom/chartboost/sdk/impl/d;Lcom/chartboost/sdk/Model/CBError;)V

    goto :goto_1

    .line 399
    :cond_1
    :try_start_1
    new-instance v0, Lcom/chartboost/sdk/Model/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p2, v2}, Lcom/chartboost/sdk/Model/a;-><init>(ILorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
