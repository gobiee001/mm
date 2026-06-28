.class final Lcom/inmobi/ads/x$1;
.super Ljava/lang/Object;
.source "InterstitialPreLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/x;->b(Lcom/inmobi/ads/bc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/bc;

.field final synthetic b:Lcom/inmobi/ads/x;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/x;Lcom/inmobi/ads/bc;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/inmobi/ads/x$1;->b:Lcom/inmobi/ads/x;

    iput-object p2, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/x$1;->b:Lcom/inmobi/ads/x;

    invoke-static {v0}, Lcom/inmobi/ads/x;->a(Lcom/inmobi/ads/x;)V

    .line 91
    sget-object v0, Lcom/inmobi/ads/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    invoke-static {}, Lcom/inmobi/ads/x;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "preLoadAdUnit. pid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    .line 1057
    iget-wide v2, v1, Lcom/inmobi/ads/bc;->a:J

    .line 92
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    .line 1061
    iget-object v1, v1, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v0, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    .line 2049
    iget-object v0, v0, Lcom/inmobi/ads/bc;->c:Ljava/util/Map;

    .line 97
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    .line 2061
    iget-object v0, v0, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 97
    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 99
    const-string v1, "tp"

    iget-object v2, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    .line 3061
    iget-object v2, v2, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 99
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v1, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    .line 4041
    iput-object v0, v1, Lcom/inmobi/ads/bc;->c:Ljava/util/Map;

    .line 103
    :cond_0
    new-instance v0, Lcom/inmobi/ads/g$a;

    iget-object v1, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/g$a;-><init>(Lcom/inmobi/ads/bc;)V

    .line 105
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    invoke-static {v1, v2, v0}, Lcom/inmobi/ads/w$a;->a(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/AdUnit$b;)Lcom/inmobi/ads/w;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    .line 4053
    iget-object v2, v2, Lcom/inmobi/ads/bc;->d:Ljava/lang/String;

    .line 4728
    iput-object v2, v1, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 107
    iget-object v2, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    .line 5049
    iget-object v2, v2, Lcom/inmobi/ads/bc;->c:Ljava/util/Map;

    .line 5744
    iput-object v2, v1, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 5964
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 109
    sget-object v2, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_OTHER:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 110
    sget-object v2, Lcom/inmobi/ads/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/inmobi/ads/x$1;->a:Lcom/inmobi/ads/bc;

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-virtual {v1, v0}, Lcom/inmobi/ads/w;->d(Lcom/inmobi/ads/AdUnit$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    invoke-static {}, Lcom/inmobi/ads/x;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered an unexpected error preloading ad units; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
