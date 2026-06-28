.class final Lcom/inmobi/ads/ac$7;
.super Ljava/lang/Object;
.source "NativeAdContainer.java"

# interfaces
.implements Lcom/inmobi/rendering/RenderView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ac;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ac;)V
    .locals 0

    .prologue
    .line 1799
    iput-object p1, p0, Lcom/inmobi/ads/ac$7;->a:Lcom/inmobi/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 1813
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1854
    return-void
.end method

.method public final b(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 1818
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/inmobi/ads/ac$7;->a:Lcom/inmobi/ads/ac;

    invoke-static {v0, p1, p2, p3}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ac;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1875
    return-void
.end method

.method public final b(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/inmobi/ads/ac$7;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 1859
    if-eqz v0, :cond_0

    .line 1860
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->e()V

    .line 1862
    :cond_0
    return-void
.end method

.method public final c(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 1831
    iget-object v0, p0, Lcom/inmobi/ads/ac$7;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 1832
    if-eqz v0, :cond_0

    .line 1833
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->b()V

    .line 1835
    :cond_0
    return-void
.end method

.method public final d(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 1840
    iget-object v0, p0, Lcom/inmobi/ads/ac$7;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 1841
    if-eqz v0, :cond_0

    .line 1842
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->f()V

    .line 1844
    :cond_0
    return-void
.end method

.method public final s()V
    .locals 0

    .prologue
    .line 1803
    return-void
.end method

.method public final u()V
    .locals 0

    .prologue
    .line 1808
    return-void
.end method

.method public final w()V
    .locals 1

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/inmobi/ads/ac$7;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 1823
    if-eqz v0, :cond_0

    .line 1824
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->a()V

    .line 1826
    :cond_0
    return-void
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 1866
    iget-object v0, p0, Lcom/inmobi/ads/ac$7;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->e()Lcom/inmobi/ads/ac$c;

    move-result-object v0

    .line 1867
    if-eqz v0, :cond_0

    .line 1868
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->g()V

    .line 1870
    :cond_0
    return-void
.end method
