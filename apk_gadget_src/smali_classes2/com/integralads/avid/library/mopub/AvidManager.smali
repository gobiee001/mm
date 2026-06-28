.class public Lcom/integralads/avid/library/mopub/AvidManager;
.super Ljava/lang/Object;
.source "AvidManager.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;
.implements Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;
.implements Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistryListener;


# static fields
.field private static avidManagerInstance:Lcom/integralads/avid/library/mopub/AvidManager;

.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/integralads/avid/library/mopub/AvidManager;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/AvidManager;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->avidManagerInstance:Lcom/integralads/avid/library/mopub/AvidManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/mopub/AvidManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->avidManagerInstance:Lcom/integralads/avid/library/mopub/AvidManager;

    return-object v0
.end method

.method private isActive()Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAvidReady()V
    .locals 3

    .prologue
    .line 72
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->setListener(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistryListener;)V

    .line 73
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInternalAvidAdSessions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    .line 74
    .local v0, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->getAvidBridgeManager()Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/mopub/session/internal/jsbridge/AvidBridgeManager;->onAvidJsReady()V

    goto :goto_0

    .line 76
    .end local v0    # "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    :cond_0
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->setListener(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistryListener;)V

    .line 77
    return-void
.end method

.method private start()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->setStateWatcherListener(Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;)V

    .line 52
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->start()V

    .line 53
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->start()V

    .line 56
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->getInstance()Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->cleanup()V

    .line 61
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->stop()V

    .line 62
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->stop()V

    .line 63
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidLoader;->getInstance()Lcom/integralads/avid/library/mopub/AvidLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidLoader;->unregisterAvidLoader()V

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public findAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;
    .locals 1
    .param p1, "avidAdSessionId"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->findAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;

    move-result-object v0

    return-object v0
.end method

.method public findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    .locals 1
    .param p1, "avidAdSessionId"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    .line 27
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    move-result-object v0

    sget-object v1, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->init(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->setListener(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistryListener;)V

    .line 29
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->init(Landroid/content/Context;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onAppStateChanged(Z)V
    .locals 1
    .param p1, "isActive"    # Z

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->start()V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->pause()V

    goto :goto_0
.end method

.method public onAvidLoaded()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidManager;->notifyAvidReady()V

    .line 83
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->hasActiveSessions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidManager;->start()V

    .line 87
    :cond_0
    return-void
.end method

.method public registerActivity(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 46
    invoke-static {}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->getInstance()Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->addActivity(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method public registerAvidAdSession(Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V
    .locals 1
    .param p1, "avidAdSession"    # Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;
    .param p2, "internalAvidAdSession"    # Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    .prologue
    .line 34
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->registerAvidAdSession(Lcom/integralads/avid/library/mopub/session/AbstractAvidAdSession;Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;)V

    .line 35
    return-void
.end method

.method public registryHasActiveSessionsChanged(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;)V
    .locals 1
    .param p1, "registry"    # Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->hasActiveSessions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidBridge;->isAvidJsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidManager;->start()V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidManager;->stop()V

    goto :goto_0
.end method

.method public registryHasSessionsChanged(Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;)V
    .locals 2
    .param p1, "registry"    # Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidBridge;->isAvidJsReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidLoader;->getInstance()Lcom/integralads/avid/library/mopub/AvidLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/mopub/AvidLoader;->setListener(Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;)V

    .line 106
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidLoader;->getInstance()Lcom/integralads/avid/library/mopub/AvidLoader;

    move-result-object v0

    sget-object v1, Lcom/integralads/avid/library/mopub/AvidManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/AvidLoader;->registerAvidLoader(Landroid/content/Context;)V

    goto :goto_0
.end method
