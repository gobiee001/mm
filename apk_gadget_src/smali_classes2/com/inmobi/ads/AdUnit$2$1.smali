.class final Lcom/inmobi/ads/AdUnit$2$1;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ai;

.field final synthetic b:Lcom/inmobi/ads/AdUnit$2;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit$2;Lcom/inmobi/ads/ai;)V
    .locals 0

    .prologue
    .line 1924
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iput-object p2, p0, Lcom/inmobi/ads/AdUnit$2$1;->a:Lcom/inmobi/ads/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 1928
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$2$1;->a:Lcom/inmobi/ads/ai;

    .line 2301
    iget-object v0, v0, Lcom/inmobi/ads/ai;->k:Lcom/inmobi/ads/ba;

    .line 1930
    if-eqz v0, :cond_1

    .line 1931
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    new-instance v2, Lcom/inmobi/rendering/RenderView;

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v3, v3, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    iget-object v5, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v5, v5, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    .line 1932
    invoke-virtual {v5}, Lcom/inmobi/ads/AdUnit;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    iget-object v5, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v5, v5, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    .line 1933
    invoke-static {v5}, Lcom/inmobi/ads/AdUnit;->f(Lcom/inmobi/ads/AdUnit;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v6, v6, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    .line 2316
    iget-object v6, v6, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 1933
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Ljava/util/Set;Ljava/lang/String;)V

    .line 1931
    invoke-static {v1, v2}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView;

    .line 1935
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-static {v1}, Lcom/inmobi/ads/AdUnit;->h(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v2, v2, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-static {v2}, Lcom/inmobi/ads/AdUnit;->g(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/rendering/RenderView$a;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v3, v3, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    .line 2332
    iget-object v3, v3, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 1935
    invoke-virtual {v1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/b;)V

    .line 1936
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-static {v1}, Lcom/inmobi/ads/AdUnit;->h(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    .line 2423
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/rendering/RenderView;->j:Z

    .line 1937
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-static {v1}, Lcom/inmobi/ads/AdUnit;->h(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v2, v2, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/RenderView;->setBlobProvider(Lcom/inmobi/rendering/a;)V

    .line 1938
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-static {v1}, Lcom/inmobi/ads/AdUnit;->h(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/RenderView;->setIsPreload(Z)V

    .line 1940
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    .line 3337
    iget v1, v1, Lcom/inmobi/ads/AdUnit;->q:I

    .line 1940
    if-nez v1, :cond_0

    .line 1941
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v3, v3, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-static {v3}, Lcom/inmobi/ads/AdUnit;->h(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/rendering/RenderView;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/ads/AdUnit;->a(ZLcom/inmobi/rendering/RenderView;)V

    .line 1943
    :cond_0
    sget-object v1, Lcom/inmobi/ads/ba$a;->b:Lcom/inmobi/ads/ba$a;

    .line 4036
    iget-object v2, v0, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    .line 1943
    if-ne v1, v2, :cond_2

    .line 1944
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-static {v1}, Lcom/inmobi/ads/AdUnit;->h(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inmobi/ads/ba;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 1949
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->y()V

    .line 1956
    :goto_1
    return-void

    .line 1946
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-static {v1}, Lcom/inmobi/ads/AdUnit;->h(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inmobi/ads/ba;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1950
    :catch_0
    move-exception v0

    .line 1951
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    .line 1952
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 4328
    iput-object v2, v1, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1953
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2$1;->b:Lcom/inmobi/ads/AdUnit$2;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 1954
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method
