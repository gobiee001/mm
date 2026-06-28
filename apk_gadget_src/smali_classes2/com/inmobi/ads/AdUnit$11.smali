.class final Lcom/inmobi/ads/AdUnit$11;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/inmobi/ads/AdUnit;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/rendering/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1887
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$11;->d:Lcom/inmobi/ads/AdUnit;

    iput-object p2, p0, Lcom/inmobi/ads/AdUnit$11;->a:Lcom/inmobi/rendering/b;

    iput-object p3, p0, Lcom/inmobi/ads/AdUnit$11;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/inmobi/ads/AdUnit$11;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1891
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$11;->d:Lcom/inmobi/ads/AdUnit;

    .line 2316
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 1891
    if-eqz v0, :cond_1

    .line 1892
    invoke-static {}, Lcom/inmobi/ads/c;->a()Lcom/inmobi/ads/c;

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$11;->d:Lcom/inmobi/ads/AdUnit;

    .line 3316
    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 1892
    invoke-static {v0}, Lcom/inmobi/ads/c;->b(Ljava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v0

    .line 1893
    if-eqz v0, :cond_0

    .line 3493
    iget-object v0, v0, Lcom/inmobi/ads/a;->g:Ljava/lang/String;

    .line 1895
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$11;->a:Lcom/inmobi/rendering/b;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$11;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$11;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/rendering/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    .line 1912
    :goto_0
    return-void

    .line 1899
    :cond_0
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    .line 1900
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$11;->a:Lcom/inmobi/rendering/b;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$11;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$11;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/inmobi/rendering/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1908
    :catch_0
    move-exception v0

    .line 1909
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    .line 1910
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 1905
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    .line 1906
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$11;->a:Lcom/inmobi/rendering/b;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$11;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$11;->c:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, Lcom/inmobi/rendering/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
