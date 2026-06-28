.class public abstract Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;
.super Ljava/lang/Object;
.source "SourceFile"


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
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;->a:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public endSession()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/adcolony/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->onEnd()V

    .line 44
    :cond_0
    return-void
.end method

.method public getAvidAdSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/adcolony/deferred/AvidDeferredAdSessionListener;
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/adcolony/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/adcolony/deferred/AvidDeferredAdSessionListener;

    move-result-object v0

    .line 49
    :goto_0
    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AVID ad session is not deferred. Please ensure you are only using AvidDeferredAdSessionListener for deferred AVID ad session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    return-object v0
.end method

.method public registerAdView(Landroid/view/View;Landroid/app/Activity;)V
    .locals 2
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
    .local p0, "this":Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;, "Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession<TT;>;"
    .local p1, "adView":Landroid/view/View;, "TT;"
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v0

    iget-object v1, p0, Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/adcolony/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->registerAdView(Landroid/view/View;)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/integralads/avid/library/adcolony/AvidManager;->registerActivity(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public registerFriendlyObstruction(Landroid/view/View;)V
    .locals 2
    .param p1, "friendlyObstruction"    # Landroid/view/View;

    .prologue
    .line 58
    .local p0, "this":Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;, "Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession<TT;>;"
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidManager;->getInstance()Lcom/integralads/avid/library/adcolony/AvidManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/session/AbstractAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/adcolony/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->getObstructionsWhiteList()Lcom/integralads/avid/library/adcolony/session/internal/ObstructionsWhiteList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/adcolony/session/internal/ObstructionsWhiteList;->add(Landroid/view/View;)V

    .line 62
    :cond_0
    return-void
.end method
