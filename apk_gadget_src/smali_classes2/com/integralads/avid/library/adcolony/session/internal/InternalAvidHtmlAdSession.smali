.class public abstract Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidHtmlAdSession;
.super Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession",
        "<",
        "Landroid/webkit/WebView;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "avidAdSessionId"    # Ljava/lang/String;
    .param p3, "avidAdSessionContext"    # Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)V

    .line 13
    return-void
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidHtmlAdSession;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method protected onViewRegistered()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->onViewRegistered()V

    .line 23
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidHtmlAdSession;->updateWebViewManager()V

    .line 24
    return-void
.end method
