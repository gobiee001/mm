.class final Lcom/inmobi/rendering/RenderView$6;
.super Landroid/webkit/WebChromeClient;
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
    .line 1624
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1732
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1750
    :cond_0
    :goto_0
    return-void

    .line 1736
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->o(Lcom/inmobi/rendering/RenderView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1737
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->o(Lcom/inmobi/rendering/RenderView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 1738
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0, v2}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1746
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1748
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0, v2}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView;Landroid/view/View;)Landroid/view/View;

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView$6;)V
    .locals 0

    .prologue
    .line 1624
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView$6;->a()V

    return-void
.end method


# virtual methods
.method public final onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2

    .prologue
    .line 1780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1781
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- From line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1782
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1783
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1784
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1785
    const/4 v0, 0x1

    return v0
.end method

.method public final onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3

    .prologue
    .line 1756
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1757
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "Location Permission"

    .line 1758
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Allow location access"

    .line 1759
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/inmobi/rendering/RenderView$6$7;

    invoke-direct {v2, p0, p2, p1}, Lcom/inmobi/rendering/RenderView$6$7;-><init>(Lcom/inmobi/rendering/RenderView$6;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/inmobi/rendering/RenderView$6$6;

    invoke-direct {v2, p0, p2, p1}, Lcom/inmobi/rendering/RenderView$6$6;-><init>(Lcom/inmobi/rendering/RenderView$6;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V

    .line 1766
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1772
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1773
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1775
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 1776
    return-void
.end method

.method public final onHideCustomView()V
    .locals 0

    .prologue
    .line 1727
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView$6;->a()V

    .line 1728
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 1729
    return-void
.end method

.method public final onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 1627
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsAlert called with: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1628
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1629
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1630
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1631
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/inmobi/rendering/RenderView$6$1;

    invoke-direct {v2, p0, p4}, Lcom/inmobi/rendering/RenderView$6$1;-><init>(Lcom/inmobi/rendering/RenderView$6;Landroid/webkit/JsResult;)V

    .line 1632
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 1637
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1638
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1639
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1643
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1641
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    goto :goto_0
.end method

.method public final onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 3

    .prologue
    .line 1648
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1649
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1650
    invoke-virtual {v1, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/inmobi/rendering/RenderView$6$3;

    invoke-direct {v2, p0, p4}, Lcom/inmobi/rendering/RenderView$6$3;-><init>(Lcom/inmobi/rendering/RenderView$6;Landroid/webkit/JsResult;)V

    .line 1651
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/inmobi/rendering/RenderView$6$2;

    invoke-direct {v2, p0, p4}, Lcom/inmobi/rendering/RenderView$6$2;-><init>(Lcom/inmobi/rendering/RenderView$6;Landroid/webkit/JsResult;)V

    .line 1659
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1667
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1668
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1674
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1672
    :cond_0
    invoke-virtual {p4}, Landroid/webkit/JsResult;->confirm()V

    goto :goto_0
.end method

.method public final onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1682
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0, p1}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView;Landroid/view/View;)Landroid/view/View;

    .line 1684
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0, p2}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 1686
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/inmobi/rendering/RenderView$6$4;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/RenderView$6$4;-><init>(Lcom/inmobi/rendering/RenderView$6;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1694
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    .line 1695
    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    .line 1696
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1697
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v1

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1698
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v1}, Lcom/inmobi/rendering/RenderView;->n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v1

    new-instance v2, Landroid/widget/AbsoluteLayout$LayoutParams;

    invoke-direct {v2, v3, v3, v4, v4}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1699
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1701
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6;->a:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView;->n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/inmobi/rendering/RenderView$6$5;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/RenderView$6$5;-><init>(Lcom/inmobi/rendering/RenderView$6;)V

    .line 2719
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2720
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 2721
    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 2722
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1716
    :cond_0
    return-void
.end method
