.class public Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;
.super Lcom/integralads/avid/library/adcolony/base/AvidBaseListenerImpl;
.source "SourceFile"

# interfaces
.implements Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListener;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidBridgeManager;)V
    .locals 0
    .param p1, "avidAdSession"    # Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;
    .param p2, "publisher"    # Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidBridgeManager;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/integralads/avid/library/adcolony/base/AvidBaseListenerImpl;-><init>(Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidBridgeManager;)V

    .line 42
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->getAvidAdSession()Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AVID ad session is not ready. Please ensure you have called recordReadyEvent for the deferred AVID ad session before recording any video event."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->assertSessionIsNotEnded()V

    .line 175
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a()V

    .line 176
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->getAvidBridgeManager()Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidBridgeManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/integralads/avid/library/adcolony/session/internal/jsbridge/AvidBridgeManager;->publishVideoEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 177
    return-void
.end method


# virtual methods
.method public recordAdClickThruEvent()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "AdClickThru"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 77
    return-void
.end method

.method public recordAdCompleteEvent()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "AdVideoComplete"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 72
    return-void
.end method

.method public recordAdImpressionEvent()V
    .locals 2

    .prologue
    .line 46
    const-string v0, "AdImpression"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 47
    return-void
.end method

.method public recordAdLoadedEvent()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "AdLoaded"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 57
    return-void
.end method

.method public recordAdPausedEvent()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "AdPaused"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 97
    return-void
.end method

.method public recordAdPlayingEvent()V
    .locals 2

    .prologue
    .line 101
    const-string v0, "AdPlaying"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 102
    return-void
.end method

.method public recordAdSkippedEvent()V
    .locals 2

    .prologue
    .line 126
    const-string v0, "AdSkipped"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 127
    return-void
.end method

.method public recordAdStartedEvent()V
    .locals 2

    .prologue
    .line 51
    const-string v0, "AdStarted"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 52
    return-void
.end method

.method public recordAdStoppedEvent()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "AdStopped"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 67
    return-void
.end method

.method public recordAdUserCloseEvent()V
    .locals 2

    .prologue
    .line 121
    const-string v0, "AdUserClose"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 122
    return-void
.end method

.method public recordAdVideoFirstQuartileEvent()V
    .locals 2

    .prologue
    .line 81
    const-string v0, "AdVideoFirstQuartile"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 82
    return-void
.end method

.method public recordAdVideoMidpointEvent()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "AdVideoMidpoint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 87
    return-void
.end method

.method public recordAdVideoStartEvent()V
    .locals 2

    .prologue
    .line 61
    const-string v0, "AdVideoStart"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 62
    return-void
.end method

.method public recordAdVideoThirdQuartileEvent()V
    .locals 2

    .prologue
    .line 91
    const-string v0, "AdVideoThirdQuartile"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 92
    return-void
.end method

.method public recordAdVolumeChangeEvent(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "volume"    # Ljava/lang/Integer;

    .prologue
    .line 131
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    :try_start_0
    const-string v0, "volume"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    const-string v0, "AdVolumeChange"

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/video/AvidVideoPlaybackListenerImpl;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
