.class public Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;
.super Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedAdSession;
.source "InternalAvidManagedVideoAdSession.java"


# instance fields
.field private avidVideoPlaybackListener:Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "avidAdSessionId"    # Ljava/lang/String;
    .param p3, "avidAdSessionContext"    # Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedAdSession;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/mopub/session/ExternalAvidAdSessionContext;)V

    .line 14
    new-instance v0, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->getAvidBridgeManager()Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;-><init>(Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;)V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->avidVideoPlaybackListener:Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;

    .line 15
    return-void
.end method


# virtual methods
.method public getAvidVideoPlaybackListener()Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->avidVideoPlaybackListener:Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;

    return-object v0
.end method

.method public getMediaType()Lcom/integralads/avid/library/mopub/session/internal/MediaType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/integralads/avid/library/mopub/session/internal/MediaType;->VIDEO:Lcom/integralads/avid/library/mopub/session/internal/MediaType;

    return-object v0
.end method

.method public getSessionType()Lcom/integralads/avid/library/mopub/session/internal/SessionType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/integralads/avid/library/mopub/session/internal/SessionType;->MANAGED_VIDEO:Lcom/integralads/avid/library/mopub/session/internal/SessionType;

    return-object v0
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedVideoAdSession;->avidVideoPlaybackListener:Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/video/AvidVideoPlaybackListenerImpl;->destroy()V

    .line 34
    invoke-super {p0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidManagedAdSession;->onEnd()V

    .line 35
    return-void
.end method
