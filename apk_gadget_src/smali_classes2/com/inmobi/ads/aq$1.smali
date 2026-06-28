.class final Lcom/inmobi/ads/aq$1;
.super Ljava/lang/Object;
.source "NativePreLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/aq;->b(Lcom/inmobi/ads/bc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/bc;

.field final synthetic b:Lcom/inmobi/ads/aq;

.field private c:Lcom/inmobi/ads/AdUnit$d;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/aq;Lcom/inmobi/ads/bc;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/inmobi/ads/aq$1;->b:Lcom/inmobi/ads/aq;

    iput-object p2, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 67
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 68
    if-nez v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    invoke-static {}, Lcom/inmobi/ads/aq;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "preLoadAdUnit. pid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    .line 2057
    iget-wide v2, v2, Lcom/inmobi/ads/bc;->a:J

    .line 70
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    .line 2061
    iget-object v2, v2, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    .line 3049
    iget-object v1, v1, Lcom/inmobi/ads/bc;->c:Ljava/util/Map;

    .line 75
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    .line 3061
    iget-object v1, v1, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 75
    if-eqz v1, :cond_2

    .line 76
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v2, "tp"

    iget-object v3, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    .line 4061
    iget-object v3, v3, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 77
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v2, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    .line 5041
    iput-object v1, v2, Lcom/inmobi/ads/bc;->c:Ljava/util/Map;

    .line 81
    :cond_2
    new-instance v1, Lcom/inmobi/ads/g$b;

    iget-object v2, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/g$b;-><init>(Lcom/inmobi/ads/bc;)V

    iput-object v1, p0, Lcom/inmobi/ads/aq$1;->c:Lcom/inmobi/ads/AdUnit$d;

    .line 82
    iget-object v1, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/ads/ae$a;->a(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/AdUnit$b;I)Lcom/inmobi/ads/ae;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    .line 5053
    iget-object v1, v1, Lcom/inmobi/ads/bc;->d:Ljava/lang/String;

    .line 5728
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 87
    iget-object v1, p0, Lcom/inmobi/ads/aq$1;->a:Lcom/inmobi/ads/bc;

    .line 6049
    iget-object v1, v1, Lcom/inmobi/ads/bc;->c:Ljava/util/Map;

    .line 6744
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 6964
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 89
    iget-object v1, p0, Lcom/inmobi/ads/aq$1;->c:Lcom/inmobi/ads/AdUnit$d;

    .line 7807
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 90
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    invoke-static {}, Lcom/inmobi/ads/aq;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered an unexpected error preloading ad units; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0
.end method
