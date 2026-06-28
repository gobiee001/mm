.class public Lcom/integralads/avid/library/adcolony/deferred/AvidDeferredAdSessionListenerImpl;
.super Lcom/integralads/avid/library/adcolony/base/AvidBaseListenerImpl;
.source "SourceFile"

# interfaces
.implements Lcom/integralads/avid/library/adcolony/deferred/AvidDeferredAdSessionListener;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidBridgeManager;)V
    .locals 0
    .param p1, "avidAdSession"    # Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;
    .param p2, "publisher"    # Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidBridgeManager;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/integralads/avid/library/adcolony/base/AvidBaseListenerImpl;-><init>(Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidBridgeManager;)V

    .line 11
    return-void
.end method


# virtual methods
.method public recordReadyEvent()V
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/deferred/AvidDeferredAdSessionListenerImpl;->assertSessionIsNotEnded()V

    .line 16
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/deferred/AvidDeferredAdSessionListenerImpl;->getAvidAdSession()Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AVID ad session is already ready. Please ensure you are only calling recordReadyEvent once for the deferred AVID ad session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/deferred/AvidDeferredAdSessionListenerImpl;->getAvidBridgeManager()Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidBridgeManager;->publishReadyEventForDeferredAdSession()V

    .line 22
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/deferred/AvidDeferredAdSessionListenerImpl;->getAvidAdSession()Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->onReady()V

    .line 23
    return-void
.end method
