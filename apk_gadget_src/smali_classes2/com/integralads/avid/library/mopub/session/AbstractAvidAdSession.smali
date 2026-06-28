.class public abstract Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;
.super Ljava/lang/Object;
.source "AbstractAvidAdSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private avidAdSessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    .local p0, "this":Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;, "Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->avidAdSessionId:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public endSession()V
    .locals 3

    .prologue
    .line 40
    .local p0, "this":Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;, "Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession<TT;>;"
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 41
    .local v0, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->onEnd()V

    .line 44
    :cond_0
    return-void
.end method

.method public getAvidAdSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;, "Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession<TT;>;"
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->avidAdSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListener;
    .locals 4

    .prologue
    .line 47
    .local p0, "this":Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;, "Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession<TT;>;"
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 48
    .local v0, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListener;

    move-result-object v1

    .line 49
    .local v1, "listener":Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListener;
    :goto_0
    if-nez v1, :cond_1

    .line 50
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The AVID ad session is not deferred. Please ensure you are only using AvidDeferredAdSessionListener for deferred AVID ad session."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    .end local v1    # "listener":Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListener;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 54
    .restart local v1    # "listener":Lcom/integralads/avid/library/mopub/deferred/AvidDeferredAdSessionListener;
    :cond_1
    return-object v1
.end method

.method public registerAdView(Landroid/view/View;Landroid/app/Activity;)V
    .locals 3
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;, "Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession<TT;>;"
    .local p1, "adView":Landroid/view/View;, "TT;"
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v1

    iget-object v2, p0, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->avidAdSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 26
    .local v0, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->registerAdView(Landroid/view/View;)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/integralads/avid/library/mopub/AvidManager;->registerActivity(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public registerFriendlyObstruction(Landroid/view/View;)V
    .locals 3
    .param p1, "friendlyObstruction"    # Landroid/view/View;

    .prologue
    .line 58
    .local p0, "this":Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;, "Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession<TT;>;"
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 59
    .local v0, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getObstructionsWhiteList()Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;->add(Landroid/view/View;)V

    .line 62
    :cond_0
    return-void
.end method

.method public unregisterAdView(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;, "Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession<TT;>;"
    .local p1, "adView":Landroid/view/View;, "TT;"
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v1

    iget-object v2, p0, Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;->avidAdSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 34
    .local v0, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->unregisterAdView(Landroid/view/View;)V

    .line 37
    :cond_0
    return-void
.end method
