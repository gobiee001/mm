.class final Lcom/inmobi/ads/w$2$1$1;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/w$2$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/w$2$1;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/w$2$1;)V
    .locals 0

    .prologue
    .line 396
    iput-object p1, p0, Lcom/inmobi/ads/w$2$1$1;->a:Lcom/inmobi/ads/w$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 399
    iget-object v0, p0, Lcom/inmobi/ads/w$2$1$1;->a:Lcom/inmobi/ads/w$2$1;

    iget-object v0, v0, Lcom/inmobi/ads/w$2$1;->b:Lcom/inmobi/ads/w$2;

    iget-object v0, v0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Lcom/inmobi/ads/w;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v1

    .line 400
    iget-object v0, p0, Lcom/inmobi/ads/w$2$1$1;->a:Lcom/inmobi/ads/w$2$1;

    iget-object v0, v0, Lcom/inmobi/ads/w$2$1;->b:Lcom/inmobi/ads/w$2;

    iget-object v0, v0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    .line 2866
    iget-object v2, v0, Lcom/inmobi/ads/AdUnit;->t:Lcom/inmobi/rendering/RenderView;

    .line 402
    if-eqz v2, :cond_0

    .line 403
    instance-of v0, v1, Lcom/inmobi/ads/ac;

    if-eqz v0, :cond_2

    move-object v0, v1

    .line 404
    check-cast v0, Lcom/inmobi/ads/ac;

    .line 3601
    iput-object v2, v0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    move-object v0, v1

    .line 405
    check-cast v0, Lcom/inmobi/ads/ac;

    iget-object v2, p0, Lcom/inmobi/ads/w$2$1$1;->a:Lcom/inmobi/ads/w$2$1;

    iget-object v2, v2, Lcom/inmobi/ads/w$2$1;->b:Lcom/inmobi/ads/w$2;

    iget-object v2, v2, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    .line 4337
    iget v2, v2, Lcom/inmobi/ads/AdUnit;->q:I

    .line 4631
    iput v2, v0, Lcom/inmobi/ads/ac;->v:I

    .line 411
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/w$2$1$1;->a:Lcom/inmobi/ads/w$2$1;

    iget-object v0, v0, Lcom/inmobi/ads/w$2$1;->b:Lcom/inmobi/ads/w$2;

    iget v0, v0, Lcom/inmobi/ads/w$2;->b:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    if-eqz v1, :cond_1

    .line 413
    iget-object v0, p0, Lcom/inmobi/ads/w$2$1$1;->a:Lcom/inmobi/ads/w$2$1;

    iget-object v0, v0, Lcom/inmobi/ads/w$2$1;->b:Lcom/inmobi/ads/w$2;

    iget v0, v0, Lcom/inmobi/ads/w$2;->b:I

    invoke-interface {v1, v0}, Lcom/inmobi/ads/AdContainer;->setExitAnimation(I)V

    .line 415
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/w$2$1$1;->a:Lcom/inmobi/ads/w$2$1;

    iget-object v0, v0, Lcom/inmobi/ads/w$2$1;->b:Lcom/inmobi/ads/w$2;

    iget-object v0, v0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/w$2$1$1;->a:Lcom/inmobi/ads/w$2$1;

    iget-object v1, v1, Lcom/inmobi/ads/w$2$1;->a:Lcom/inmobi/ads/AdUnit$b;

    invoke-static {v0, v1}, Lcom/inmobi/ads/w;->b(Lcom/inmobi/ads/w;Lcom/inmobi/ads/AdUnit$b;)V

    .line 416
    return-void

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/w$2$1$1;->a:Lcom/inmobi/ads/w$2$1;

    iget-object v0, v0, Lcom/inmobi/ads/w$2$1;->b:Lcom/inmobi/ads/w$2;

    iget-object v0, v0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    iget-object v2, p0, Lcom/inmobi/ads/w$2$1$1;->a:Lcom/inmobi/ads/w$2$1;

    iget-object v2, v2, Lcom/inmobi/ads/w$2$1;->a:Lcom/inmobi/ads/AdUnit$b;

    invoke-static {v0, v2}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;Lcom/inmobi/ads/AdUnit$b;)V

    goto :goto_0
.end method
