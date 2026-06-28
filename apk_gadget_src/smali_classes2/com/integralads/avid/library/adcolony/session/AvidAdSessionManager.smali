.class public Lcom/integralads/avid/library/adcolony/session/AvidAdSessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static startAvidDisplayAdSession(Landroid/content/Context;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/adcolony/session/AvidDisplayAdSession;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "avidAdSessionContext"    # Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    .prologue
    .line 28
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/adcolony/AvidManager;->init(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/integralads/avid/library/adcolony/session/AvidDisplayAdSession;

    invoke-direct {v0}, Lcom/integralads/avid/library/adcolony/session/AvidDisplayAdSession;-><init>()V

    .line 30
    new-instance v1, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidDisplayAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/AvidDisplayAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidDisplayAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)V

    .line 31
    invoke-virtual {v1}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidDisplayAdSession;->onStart()V

    .line 32
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/integralads/avid/library/adcolony/AvidManager;->registerAvidAdSession(Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;)V

    .line 33
    return-object v0
.end method

.method public static startAvidManagedVideoAdSession(Landroid/content/Context;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "avidAdSessionContext"    # Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    .prologue
    .line 46
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/adcolony/AvidManager;->init(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    invoke-direct {v0}, Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;-><init>()V

    .line 48
    new-instance v1, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedVideoAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)V

    .line 49
    invoke-virtual {v1}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidManagedVideoAdSession;->onStart()V

    .line 50
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/integralads/avid/library/adcolony/AvidManager;->registerAvidAdSession(Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;)V

    .line 51
    return-object v0
.end method

.method public static startAvidVideoAdSession(Landroid/content/Context;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/adcolony/session/AvidVideoAdSession;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "avidAdSessionContext"    # Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    .prologue
    .line 37
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/adcolony/AvidManager;->init(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/integralads/avid/library/adcolony/session/AvidVideoAdSession;

    invoke-direct {v0}, Lcom/integralads/avid/library/adcolony/session/AvidVideoAdSession;-><init>()V

    .line 39
    new-instance v1, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidVideoAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/AvidVideoAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidVideoAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;)V

    .line 40
    invoke-virtual {v1}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidVideoAdSession;->onStart()V

    .line 41
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/integralads/avid/library/adcolony/AvidManager;->registerAvidAdSession(Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;)V

    .line 42
    return-object v0
.end method
