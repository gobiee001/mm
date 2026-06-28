.class final Lcom/inmobi/ads/AdUnit$3;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Lcom/inmobi/rendering/RenderView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;)V
    .locals 0

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 2020
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/AdUnit$3$3;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$3$3;-><init>(Lcom/inmobi/ads/AdUnit$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2028
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
    .line 2063
    return-void
.end method

.method public final b(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 2032
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .line 2075
    return-void
.end method

.method public final b(Ljava/util/HashMap;)V
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
    .line 2067
    return-void
.end method

.method public final c(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 2040
    return-void
.end method

.method public final d(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 2044
    return-void
.end method

.method public final s()V
    .locals 2

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/AdUnit$3$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$3$1;-><init>(Lcom/inmobi/ads/AdUnit$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2003
    return-void
.end method

.method public final u()V
    .locals 2

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->a:Lcom/inmobi/ads/AdUnit;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/AdUnit$3$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$3$2;-><init>(Lcom/inmobi/ads/AdUnit$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2016
    return-void
.end method

.method public final w()V
    .locals 0

    .prologue
    .line 2036
    return-void
.end method

.method public final x()V
    .locals 0

    .prologue
    .line 2071
    return-void
.end method
