.class Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "SupersonicWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonicads/sdk/controller/SupersonicWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChromeClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;


# direct methods
.method private constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V
    .locals 0

    .prologue
    .line 562
    iput-object p1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/supersonicads/sdk/controller/SupersonicWebView;
    .param p2, "x1"    # Lcom/supersonicads/sdk/controller/SupersonicWebView$1;

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;)V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 612
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->getCurrentActivityContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 613
    .local v0, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 615
    return-object v0
.end method

.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 3
    .param p1, "consoleMessage"    # Landroid/webkit/ConsoleMessage;

    .prologue
    .line 582
    const-string v0, "MyApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -- From line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 568
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 569
    .local v0, "childView":Landroid/webkit/WebView;
    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 570
    new-instance v2, Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;

    iget-object v3, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/supersonicads/sdk/controller/SupersonicWebView$FrameBustWebViewClient;-><init>(Lcom/supersonicads/sdk/controller/SupersonicWebView;Lcom/supersonicads/sdk/controller/SupersonicWebView$1;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 571
    iget-object v1, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebView$WebViewTransport;

    .line 572
    .local v1, "transport":Landroid/webkit/WebView$WebViewTransport;
    invoke-virtual {v1, v0}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 573
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 575
    const-string v2, "onCreateWindow"

    const-string v3, "onCreateWindow"

    invoke-static {v2, v3}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/4 v2, 0x1

    return v2
.end method

.method public onHideCustomView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 621
    const-string v0, "Test"

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 637
    :goto_0
    return-void

    .line 627
    :cond_0
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 631
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/view/View;)Landroid/view/View;

    .line 632
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1400(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 635
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "callback"    # Landroid/webkit/WebChromeClient$CustomViewCallback;

    .prologue
    .line 591
    const-string v0, "Test"

    const-string v1, "onShowCustomView"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->setVisibility(I)V

    .line 596
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1200(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 597
    const-string v0, "Test"

    const-string v1, "mCustomView != null"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 608
    :goto_0
    return-void

    .line 601
    :cond_0
    const-string v0, "Test"

    const-string v1, "mCustomView == null"

    invoke-static {v0, v1}, Lcom/supersonicads/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 605
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0, p1}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1202(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/view/View;)Landroid/view/View;

    .line 606
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0, p2}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1402(Lcom/supersonicads/sdk/controller/SupersonicWebView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 607
    iget-object v0, p0, Lcom/supersonicads/sdk/controller/SupersonicWebView$ChromeClient;->this$0:Lcom/supersonicads/sdk/controller/SupersonicWebView;

    invoke-static {v0}, Lcom/supersonicads/sdk/controller/SupersonicWebView;->access$1300(Lcom/supersonicads/sdk/controller/SupersonicWebView;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0
.end method
