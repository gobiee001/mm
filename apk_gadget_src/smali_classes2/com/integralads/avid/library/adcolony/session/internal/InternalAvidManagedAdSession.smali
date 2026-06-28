.class public abstract Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedAdSession;
.super Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidTrackingWebViewManager;

.field private final b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "avidAdSessionId"    # Ljava/lang/String;
    .param p3, "avidAdSessionContext"    # Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)V

    .line 19
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedAdSession;->b:Landroid/webkit/WebView;

    .line 20
    new-instance v0, Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidTrackingWebViewManager;

    iget-object v1, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedAdSession;->b:Landroid/webkit/WebView;

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidTrackingWebViewManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedAdSession;->a:Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidTrackingWebViewManager;

    .line 21
    return-void
.end method


# virtual methods
.method public getJavaScriptResourceInjector()Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidJavaScriptResourceInjector;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedAdSession;->a:Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidTrackingWebViewManager;

    return-object v0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedAdSession;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->onStart()V

    .line 35
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedAdSession;->updateWebViewManager()V

    .line 36
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedAdSession;->a:Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidTrackingWebViewManager;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/internal/trackingwebview/AvidTrackingWebViewManager;->loadHTML()V

    .line 37
    return-void
.end method
