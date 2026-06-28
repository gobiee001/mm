.class public Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;
.super Lcom/integralads/avid/library/inmobi/session/AbstractAvidManagedAdSession;
.source "AvidManagedVideoAdSession.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/AbstractAvidManagedAdSession;-><init>()V

    return-void
.end method


# virtual methods
.method public getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListener;
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidManager;->getInstance()Lcom/integralads/avid/library/inmobi/AvidManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/AvidManager;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidManagedVideoAdSession;

    .line 11
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidManagedVideoAdSession;->getAvidVideoPlaybackListener()Lcom/integralads/avid/library/inmobi/video/AvidVideoPlaybackListenerImpl;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
