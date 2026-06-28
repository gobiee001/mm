.class public Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;
.super Lcom/integralads/avid/library/mopub/weakreference/AvidView;
.source "AvidWebView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/integralads/avid/library/mopub/weakreference/AvidView",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .param p1, "r"    # Landroid/webkit/WebView;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidView;-><init>(Landroid/view/View;)V

    .line 13
    return-void
.end method


# virtual methods
.method public injectFormattedJavaScript(Ljava/lang/String;)V
    .locals 1
    .param p1, "javaScript"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 21
    .local v0, "webView":Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 24
    :cond_0
    return-void
.end method

.method public injectJavaScript(Ljava/lang/String;)V
    .locals 1
    .param p1, "javaScript"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {p1}, Lcom/integralads/avid/library/mopub/utils/AvidCommand;->formatJavaScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/integralads/avid/library/mopub/weakreference/AvidWebView;->injectFormattedJavaScript(Ljava/lang/String;)V

    .line 17
    return-void
.end method
