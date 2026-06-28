.class final Lcom/inmobi/ads/s$1;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"

# interfaces
.implements Lcom/inmobi/ads/bv$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/s;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/inmobi/ads/bv;Landroid/os/Handler;Lcom/inmobi/ads/b$h;Lcom/inmobi/ads/s$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/s;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/s;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/inmobi/ads/s$1;->a:Lcom/inmobi/ads/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 102
    iget-object v1, p0, Lcom/inmobi/ads/s$1;->a:Lcom/inmobi/ads/s;

    invoke-static {v1}, Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/s;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/s$b;

    .line 103
    if-nez v1, :cond_1

    .line 104
    iget-object v1, p0, Lcom/inmobi/ads/s$1;->a:Lcom/inmobi/ads/s;

    invoke-static {v1, v0}, Lcom/inmobi/ads/s;->a(Lcom/inmobi/ads/s;Landroid/view/View;)V

    goto :goto_0

    .line 109
    :cond_1
    iget-object v2, p0, Lcom/inmobi/ads/s$1;->a:Lcom/inmobi/ads/s;

    invoke-static {v2}, Lcom/inmobi/ads/s;->b(Lcom/inmobi/ads/s;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/s$b;

    .line 110
    if-eqz v2, :cond_2

    iget-object v4, v1, Lcom/inmobi/ads/s$b;->a:Ljava/lang/Object;

    iget-object v2, v2, Lcom/inmobi/ads/s$b;->a:Ljava/lang/Object;

    .line 111
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1073
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/inmobi/ads/s$b;->d:J

    .line 116
    iget-object v2, p0, Lcom/inmobi/ads/s$1;->a:Lcom/inmobi/ads/s;

    invoke-static {v2}, Lcom/inmobi/ads/s;->b(Lcom/inmobi/ads/s;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 120
    iget-object v2, p0, Lcom/inmobi/ads/s$1;->a:Lcom/inmobi/ads/s;

    invoke-static {v2}, Lcom/inmobi/ads/s;->b(Lcom/inmobi/ads/s;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 122
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/s$1;->a:Lcom/inmobi/ads/s;

    invoke-static {v0}, Lcom/inmobi/ads/s;->c(Lcom/inmobi/ads/s;)V

    .line 123
    return-void
.end method
