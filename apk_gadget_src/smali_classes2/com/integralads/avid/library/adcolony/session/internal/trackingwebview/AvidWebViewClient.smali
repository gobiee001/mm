.class public Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;
    }
.end annotation


# instance fields
.field private a:Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 25
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient;->a:Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient;->a:Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;

    invoke-interface {v0}, Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;->webViewDidLoadData()V

    .line 28
    :cond_0
    return-void
.end method

.method public setListener(Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient;->a:Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidWebViewClient$AvidWebViewClientListener;

    .line 20
    return-void
.end method
