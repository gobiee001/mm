.class public Lcom/integralads/avid/library/mopub/session/AvidManagedVideoAdSession;
.super Lcom/integralads/avid/library/mopub/session/AbstractAvidManagedAdSession;
.source "AvidManagedVideoAdSession.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/session/AbstractAvidManagedAdSession;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvidVideoPlaybackListener()Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListener;
    .locals 3

    .prologue
    .line 10
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidManager;->getInstance()Lcom/integralads/avid/library/mopub/AvidManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/AvidManagedVideoAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/integralads/avid/library/mopub/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;

    .line 11
    .local v0, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
