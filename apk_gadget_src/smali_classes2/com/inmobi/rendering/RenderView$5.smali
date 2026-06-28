.class final Lcom/inmobi/rendering/RenderView$5;
.super Landroid/webkit/WebViewClient;
.source "RenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/RenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/RenderView;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 1481
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1586
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1588
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1589
    if-eqz p2, :cond_1

    if-eqz v0, :cond_1

    .line 1590
    const-string v1, "/mraid.js"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "about:blank"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1591
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->j(Lcom/inmobi/rendering/RenderView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1592
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->j(Lcom/inmobi/rendering/RenderView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->k(Lcom/inmobi/rendering/RenderView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1595
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView;Z)Z

    .line 1596
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1597
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getMraidJsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 1601
    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1565
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1567
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->j(Lcom/inmobi/rendering/RenderView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->k(Lcom/inmobi/rendering/RenderView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1568
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView;Z)Z

    .line 1569
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1570
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getMraidJsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 1573
    :cond_0
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->LOADING:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->f(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1574
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->b(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-interface {v0, v1}, Lcom/inmobi/rendering/RenderView$a;->a(Lcom/inmobi/rendering/RenderView;)V

    .line 1575
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->l(Lcom/inmobi/rendering/RenderView;)V

    .line 1576
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->d(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1577
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 1582
    :cond_1
    :goto_0
    return-void

    .line 1579
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    goto :goto_0
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 1557
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1559
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView;Z)Z

    .line 1560
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->LOADING:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 1561
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x16
    .end annotation

    .prologue
    .line 1607
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading error. Error code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Error msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Failing url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 1613
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Loading error. Error code:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Error msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Failing url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1614
    return-void
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1485
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_5

    .line 1486
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1487
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Placement type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v4}, Lcom/inmobi/rendering/RenderView;->c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v4

    .line 2070
    iget-object v4, v4, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 1487
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1489
    iget-object v3, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v3}, Lcom/inmobi/rendering/RenderView;->g(Lcom/inmobi/rendering/RenderView;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1490
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1517
    :cond_0
    :goto_0
    return v0

    .line 1494
    :cond_1
    iget-object v3, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v3}, Lcom/inmobi/rendering/RenderView;->h(Lcom/inmobi/rendering/RenderView;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "about:blank"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1495
    iget-object v3, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v3}, Lcom/inmobi/rendering/RenderView;->i(Lcom/inmobi/rendering/RenderView;)V

    .line 1498
    :cond_2
    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v4, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v4}, Lcom/inmobi/rendering/RenderView;->c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v4

    .line 3070
    iget-object v4, v4, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 1498
    if-ne v3, v4, :cond_4

    .line 1499
    iget-object v3, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v3}, Lcom/inmobi/rendering/RenderView;->h(Lcom/inmobi/rendering/RenderView;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Lcom/inmobi/commons/core/utilities/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1500
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    move v0, v1

    .line 1501
    goto :goto_0

    .line 1503
    :cond_3
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1504
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v5}, Lcom/inmobi/commons/core/utilities/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1505
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/rendering/RenderView$a;->x()V

    goto :goto_0

    .line 1510
    :cond_4
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1511
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v5}, Lcom/inmobi/commons/core/utilities/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1512
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/rendering/RenderView$a;->x()V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 1517
    goto :goto_0
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 1524
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Placement type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v2}, Lcom/inmobi/rendering/RenderView;->c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v2

    .line 4070
    iget-object v2, v2, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 1524
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1526
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->g(Lcom/inmobi/rendering/RenderView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1527
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1551
    :cond_0
    :goto_0
    return v0

    .line 1531
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->h(Lcom/inmobi/rendering/RenderView;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "about:blank"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1532
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->i(Lcom/inmobi/rendering/RenderView;)V

    .line 1535
    :cond_2
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v2, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v2}, Lcom/inmobi/rendering/RenderView;->c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v2

    .line 5070
    iget-object v2, v2, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 1535
    if-ne v1, v2, :cond_4

    .line 1536
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->h(Lcom/inmobi/rendering/RenderView;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lcom/inmobi/commons/core/utilities/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1537
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1538
    const/4 v0, 0x0

    goto :goto_0

    .line 1540
    :cond_3
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1541
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, v3}, Lcom/inmobi/commons/core/utilities/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1542
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/rendering/RenderView$a;->x()V

    goto :goto_0

    .line 1547
    :cond_4
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1548
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, v3}, Lcom/inmobi/commons/core/utilities/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1549
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$5;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/rendering/RenderView$a;->x()V

    goto :goto_0
.end method
