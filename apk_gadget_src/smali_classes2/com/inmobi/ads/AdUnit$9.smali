.class final Lcom/inmobi/ads/AdUnit$9;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inmobi/ads/AdUnit;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1460
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$9;->c:Lcom/inmobi/ads/AdUnit;

    iput-object p2, p0, Lcom/inmobi/ads/AdUnit$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/ads/AdUnit$9;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1463
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$9;->c:Lcom/inmobi/ads/AdUnit;

    .line 2332
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 1463
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$9;->c:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1464
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1465
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->c()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1466
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1467
    const-string v1, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    const-string v1, "event-name"

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$9;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1469
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$9;->c:Lcom/inmobi/ads/AdUnit;

    .line 3320
    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 1469
    if-eqz v1, :cond_1

    .line 1470
    const-string v1, "request-id"

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$9;->c:Lcom/inmobi/ads/AdUnit;

    .line 4320
    iget-object v2, v2, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 1470
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    :goto_0
    const-string v1, "event-type"

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$9;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1475
    const-string v1, "adtype"

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$9;->c:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/inmobi/commons/a/a;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1477
    const-string v1, "im-plid"

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$9;->c:Lcom/inmobi/ads/AdUnit;

    .line 5269
    iget-wide v2, v2, Lcom/inmobi/ads/AdUnit;->b:J

    .line 1477
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1478
    const-string v1, "event-id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1479
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/a;->a()Lcom/inmobi/commons/core/utilities/b/a;

    move-result-object v1

    .line 6088
    iget-object v1, v1, Lcom/inmobi/commons/core/utilities/b/a;->b:Ljava/util/Map;

    .line 1479
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1480
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/e;->a()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1481
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/g;->a()Lcom/inmobi/commons/core/utilities/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/b/g;->c()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1484
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/d;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$9;->c:Lcom/inmobi/ads/AdUnit;

    .line 6332
    iget-object v2, v2, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 7052
    iget-object v2, v2, Lcom/inmobi/commons/core/configs/a;->q:Lcom/inmobi/commons/core/configs/a$a;

    .line 7096
    iget-object v2, v2, Lcom/inmobi/commons/core/configs/a$a;->a:Ljava/util/HashMap;

    .line 1484
    invoke-direct {v1, v2}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 1485
    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/uid/d;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1486
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$9;->c:Lcom/inmobi/ads/AdUnit;

    .line 7332
    iget-object v2, v2, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 7494
    iget-object v2, v2, Lcom/inmobi/ads/b;->f:Ljava/lang/String;

    .line 1486
    invoke-virtual {v1, v2, v0}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1488
    :cond_0
    return-void

    .line 1472
    :cond_1
    const-string v1, "request-id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
