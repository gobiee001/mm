.class public Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;
.super Ljava/lang/Object;
.source "AvidTrackingWebViewManager.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidJavaScriptResourceInjector;
.implements Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;


# instance fields
.field private final avidWebView:Lcom/integralads/avid/library/inmobi/weakreference/AvidWebView;

.field private final pendingJavaScriptResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private state:I

.field private final webViewClient:Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidWebViewClient;


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->state:I

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->pendingJavaScriptResources:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/integralads/avid/library/inmobi/weakreference/AvidWebView;

    invoke-direct {v0, p1}, Lcom/integralads/avid/library/inmobi/weakreference/AvidWebView;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->avidWebView:Lcom/integralads/avid/library/inmobi/weakreference/AvidWebView;

    .line 33
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 34
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidWebViewClient;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidWebViewClient;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->webViewClient:Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidWebViewClient;

    .line 35
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->webViewClient:Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidWebViewClient;

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidWebViewClient;->setListener(Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;)V

    .line 36
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->webViewClient:Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidWebViewClient;

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 37
    return-void
.end method

.method private doInjectJavaScriptResource(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 66
    const-string v0, "(function () {\nvar script=document.createElement(\'script\');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);\n})();"

    const-string v1, "%SCRIPT_SRC%"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->avidWebView:Lcom/integralads/avid/library/inmobi/weakreference/AvidWebView;

    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/weakreference/AvidWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 68
    return-void
.end method


# virtual methods
.method public injectJavaScriptResource(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 50
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->doInjectJavaScriptResource(Ljava/lang/String;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->pendingJavaScriptResources:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public loadHTML()V
    .locals 4

    .prologue
    .line 40
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->avidWebView:Lcom/integralads/avid/library/inmobi/weakreference/AvidWebView;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/weakreference/AvidWebView;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 41
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->state:I

    if-nez v1, :cond_0

    .line 42
    const/4 v1, 0x1

    iput v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->state:I

    .line 43
    const-string v1, "<html><body></body></html>"

    const-string v2, "text/html"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public webViewDidLoadData()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->state:I

    .line 59
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->pendingJavaScriptResources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 60
    invoke-direct {p0, v0}, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->doInjectJavaScriptResource(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/trackingwebview/AvidTrackingWebViewManager;->pendingJavaScriptResources:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 63
    return-void
.end method
