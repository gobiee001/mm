.class public abstract Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;
.super Ljava/lang/Object;
.source "InternalAvidAdSession.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager$AvidBridgeManagerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager$AvidBridgeManagerListener;"
    }
.end annotation


# instance fields
.field private adState:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;

.field private avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

.field private avidDeferredAdSessionListener:Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListenerImpl;

.field private avidView:Lcom/integralads/avid/library/inmobi/weakreference/AvidView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/integralads/avid/library/inmobi/weakreference/AvidView",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final internalContext:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;

.field private isActive:Z

.field private isReady:Z

.field private lastUpdated:D

.field private listener:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;

.field private final obstructionsWhiteList:Lcom/integralads/avid/library/inmobi/session/internal/ObstructionsWhiteList;

.field private webViewManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidWebViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;)V
    .locals 6

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->getSessionType()Lcom/integralads/avid/library/inmobi/session/internal/SessionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/SessionType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->getMediaType()Lcom/integralads/avid/library/inmobi/session/internal/MediaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->internalContext:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;

    .line 44
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->internalContext:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;-><init>(Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    .line 45
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;->setListener(Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager$AvidBridgeManagerListener;)V

    .line 46
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidWebViewManager;

    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->internalContext:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    invoke-direct {v0, v1, v2}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidWebViewManager;-><init>(Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->webViewManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidWebViewManager;

    .line 47
    new-instance v0, Lcom/integralads/avid/library/inmobi/weakreference/AvidView;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/inmobi/weakreference/AvidView;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/inmobi/weakreference/AvidView;

    .line 48
    invoke-virtual {p3}, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;->isDeferred()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isReady:Z

    .line 49
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isReady:Z

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListenerImpl;

    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    invoke-direct {v0, p0, v1}, Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListenerImpl;-><init>(Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidDeferredAdSessionListener:Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListenerImpl;

    .line 52
    :cond_0
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/internal/ObstructionsWhiteList;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/session/internal/ObstructionsWhiteList;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->obstructionsWhiteList:Lcom/integralads/avid/library/inmobi/session/internal/ObstructionsWhiteList;

    .line 53
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->onViewChanged()V

    .line 54
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onViewChanged()V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/integralads/avid/library/inmobi/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->lastUpdated:D

    .line 213
    sget-object v0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;->AD_STATE_IDLE:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->adState:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;

    .line 214
    return-void
.end method


# virtual methods
.method public avidBridgeManagerDidInjectAvidJs()V
    .locals 0

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->sessionStateCanBeChanged()V

    .line 152
    return-void
.end method

.method protected cleanupViewState()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    invoke-static {}, Lcom/integralads/avid/library/inmobi/utils/AvidJSONUtil;->getEmptyTreeJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;->publishNativeViewState(Ljava/lang/String;)V

    .line 179
    :cond_0
    return-void

    .line 177
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public doesManageView(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/inmobi/weakreference/AvidView;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/weakreference/AvidView;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAvidAdSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->internalContext:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionContext;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAvidBridgeManager()Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    return-object v0
.end method

.method public getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListener;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidDeferredAdSessionListener:Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListenerImpl;

    return-object v0
.end method

.method public abstract getMediaType()Lcom/integralads/avid/library/inmobi/session/internal/MediaType;
.end method

.method public getObstructionsWhiteList()Lcom/integralads/avid/library/inmobi/session/internal/ObstructionsWhiteList;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->obstructionsWhiteList:Lcom/integralads/avid/library/inmobi/session/internal/ObstructionsWhiteList;

    return-object v0
.end method

.method public abstract getSessionType()Lcom/integralads/avid/library/inmobi/session/internal/SessionType;
.end method

.method public getView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/inmobi/weakreference/AvidView;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/weakreference/AvidView;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public abstract getWebView()Landroid/webkit/WebView;
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isActive:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/inmobi/weakreference/AvidView;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/weakreference/AvidView;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isReady:Z

    return v0
.end method

.method public onEnd()V
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->cleanupViewState()V

    .line 132
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidDeferredAdSessionListener:Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListenerImpl;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidDeferredAdSessionListener:Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListenerImpl;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListenerImpl;->destroy()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;->destroy()V

    .line 136
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->webViewManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidWebViewManager;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidWebViewManager;->destroy()V

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isReady:Z

    .line 138
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->sessionStateCanBeChanged()V

    .line 139
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->listener:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;

    if-eqz v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->listener:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;->sessionDidEnd(Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;)V

    .line 142
    :cond_1
    return-void
.end method

.method public onReady()V
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isReady:Z

    .line 146
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->sessionStateCanBeChanged()V

    .line 147
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method protected onViewRegistered()V
    .locals 0

    .prologue
    .line 183
    return-void
.end method

.method protected onViewUnregistered()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public publishEmptyNativeViewStateCommand(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 169
    iget-wide v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->lastUpdated:D

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->adState:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;

    sget-object v1, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;->AD_STATE_HIDDEN:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;

    if-eq v0, v1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;->callAvidbridge(Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;->AD_STATE_HIDDEN:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->adState:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;

    .line 173
    :cond_0
    return-void
.end method

.method public publishNativeViewStateCommand(Ljava/lang/String;D)V
    .locals 2

    .prologue
    .line 162
    iget-wide v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->lastUpdated:D

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;->callAvidbridge(Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;->AD_STATE_VISIBLE:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->adState:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState;

    .line 166
    :cond_0
    return-void
.end method

.method public registerAdView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->doesManageView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->onViewChanged()V

    .line 106
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/inmobi/weakreference/AvidView;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/weakreference/AvidView;->set(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->onViewRegistered()V

    .line 108
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->sessionStateCanBeChanged()V

    .line 110
    :cond_0
    return-void
.end method

.method protected sessionStateCanBeChanged()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isReady:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 195
    :goto_0
    iget-boolean v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isActive:Z

    if-eq v1, v0, :cond_0

    .line 196
    invoke-virtual {p0, v0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->setActive(Z)V

    .line 198
    :cond_0
    return-void

    .line 194
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setActive(Z)V
    .locals 1

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isActive:Z

    .line 202
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->listener:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;

    if-eqz v0, :cond_0

    .line 203
    if-eqz p1, :cond_1

    .line 204
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->listener:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;->sessionHasBecomeActive(Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;)V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->listener:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;->sessionHasResignedActive(Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;)V

    goto :goto_0
.end method

.method public setListener(Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->listener:Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSessionListener;

    .line 81
    return-void
.end method

.method public setScreenMode(Z)V
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    if-eqz p1, :cond_1

    const-string v0, "active"

    .line 157
    :goto_0
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidBridgeManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;->publishAppState(Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void

    .line 156
    :cond_1
    const-string v0, "inactive"

    goto :goto_0
.end method

.method public unregisterAdView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->doesManageView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->onViewChanged()V

    .line 115
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->cleanupViewState()V

    .line 116
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->avidView:Lcom/integralads/avid/library/inmobi/weakreference/AvidView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/weakreference/AvidView;->set(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->onViewUnregistered()V

    .line 118
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->sessionStateCanBeChanged()V

    .line 120
    :cond_0
    return-void
.end method

.method protected updateWebViewManager()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->webViewManager:Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidWebViewManager;

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidWebViewManager;->setWebView(Landroid/webkit/WebView;)V

    .line 191
    return-void
.end method
