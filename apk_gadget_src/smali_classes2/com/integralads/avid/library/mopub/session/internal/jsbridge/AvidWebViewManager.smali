.class public Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;
.super Ljava/lang/Object;
.source "AvidWebViewManager.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;


# instance fields
.field private final avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;

.field private final avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

.field private final avidWebView:Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;

.field private javascriptInterface:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;)V
    .locals 2
    .param p1, "avidAdSessionContext"    # Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;
    .param p2, "avidBridgeManager"    # Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->avidWebView:Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;

    .line 18
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;

    .line 19
    iput-object p2, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    .line 20
    return-void
.end method

.method private clearJavascriptInterface()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->javascriptInterface:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->javascriptInterface:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;->setCallback(Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;)V

    .line 43
    iput-object v1, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->javascriptInterface:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;

    .line 45
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->setWebView(Landroid/webkit/WebView;)V

    .line 38
    return-void
.end method

.method public onAvidAdSessionContextInvoked()V
    .locals 2

    .prologue
    .line 49
    iget-object v1, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->avidWebView:Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->setWebView(Landroid/webkit/WebView;)V

    .line 50
    return-void
.end method

.method public setWebView(Landroid/webkit/WebView;)V
    .locals 2
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->avidWebView:Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->avidBridgeManager:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->setWebView(Landroid/webkit/WebView;)V

    .line 27
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->clearJavascriptInterface()V

    .line 28
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->avidWebView:Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;->set(Ljava/lang/Object;)V

    .line 29
    if-eqz p1, :cond_0

    .line 30
    new-instance v0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;

    iget-object v1, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->avidAdSessionContext:Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;-><init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSessionContext;)V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->javascriptInterface:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;

    .line 31
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->javascriptInterface:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;->setCallback(Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface$AvidJavascriptInterfaceCallback;)V

    .line 32
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidWebViewManager;->javascriptInterface:Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidJavascriptInterface;

    const-string v1, "avid"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
