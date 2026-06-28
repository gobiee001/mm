.class public Lcom/integralads/avid/library/inmobi/AvidManager;
.super Ljava/lang/Object;
.source "AvidManager.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/AvidLoader$AvidLoaderListener;
.implements Lcom/integralads/avid/library/inmobi/AvidStateWatcher$AvidStateWatcherListener;
.implements Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistryListener;


# static fields
.field private static avidManagerInstance:Lcom/integralads/avid/library/inmobi/AvidManager;

.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/integralads/avid/library/inmobi/AvidManager;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/AvidManager;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/AvidManager;->avidManagerInstance:Lcom/integralads/avid/library/inmobi/AvidManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/inmobi/AvidManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidManager;->avidManagerInstance:Lcom/integralads/avid/library/inmobi/AvidManager;

    return-object v0
.end method

.method private isActive()Z
    .locals 1

    .prologue
    .line 68
    invoke-static {}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->isEmpty()Z

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
    .locals 2

    .prologue
    .line 72
    invoke-static {}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->setListener(Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistryListener;)V

    .line 73
    invoke-static {}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInternalAvidAdSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;

    .line 74
    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->getAvidBridgeManager()Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/jsbridge/AvidBridgeManager;->onAvidJsReady()V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->setListener(Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistryListener;)V

    .line 77
    return-void
.end method

.method private start()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/inmobi/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/AvidStateWatcher;->setStateWatcherListener(Lcom/integralads/avid/library/inmobi/AvidStateWatcher$AvidStateWatcherListener;)V

    .line 52
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/inmobi/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/AvidStateWatcher;->start()V

    .line 53
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/inmobi/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/AvidStateWatcher;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/inmobi/AvidTreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->start()V

    .line 56
    :cond_0
    return-void
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->getInstance()Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->cleanup()V

    .line 61
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/inmobi/AvidTreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->stop()V

    .line 62
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/inmobi/AvidStateWatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/AvidStateWatcher;->stop()V

    .line 63
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidLoader;->getInstance()Lcom/integralads/avid/library/inmobi/AvidLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/AvidLoader;->unregisterAvidLoader()V

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/integralads/avid/library/inmobi/AvidManager;->context:Landroid/content/Context;

    .line 65
    return-void
.end method


# virtual methods
.method public findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->findInternalAvidAdSessionById(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/integralads/avid/library/inmobi/AvidManager;->context:Landroid/content/Context;

    .line 27
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidStateWatcher;->getInstance()Lcom/integralads/avid/library/inmobi/AvidStateWatcher;

    move-result-object v0

    sget-object v1, Lcom/integralads/avid/library/inmobi/AvidManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/AvidStateWatcher;->init(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->setListener(Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistryListener;)V

    .line 29
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/integralads/avid/library/inmobi/utils/AvidJSONUtil;->init(Landroid/content/Context;)V

    .line 31
    :cond_0
    return-void
.end method

.method public onAppStateChanged(Z)V
    .locals 1

    .prologue
    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/inmobi/AvidTreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->start()V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/inmobi/AvidTreeWalker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->pause()V

    goto :goto_0
.end method

.method public onAvidLoaded()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidManager;->notifyAvidReady()V

    .line 83
    invoke-static {}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->hasActiveSessions()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidManager;->start()V

    .line 87
    :cond_0
    return-void
.end method

.method public registerActivity(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->getInstance()Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->addActivity(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method public registerAvidAdSession(Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->registerAvidAdSession(Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;)V

    .line 35
    return-void
.end method

.method public registryHasActiveSessionsChanged(Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;)V
    .locals 1

    .prologue
    .line 112
    invoke-virtual {p1}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->hasActiveSessions()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidBridge;->isAvidJsReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidManager;->start()V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidManager;->stop()V

    goto :goto_0
.end method

.method public registryHasSessionsChanged(Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidBridge;->isAvidJsReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidLoader;->getInstance()Lcom/integralads/avid/library/inmobi/AvidLoader;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/AvidLoader;->setListener(Lcom/integralads/avid/library/inmobi/AvidLoader$AvidLoaderListener;)V

    .line 106
    invoke-static {}, Lcom/integralads/avid/library/inmobi/AvidLoader;->getInstance()Lcom/integralads/avid/library/inmobi/AvidLoader;

    move-result-object v0

    sget-object v1, Lcom/integralads/avid/library/inmobi/AvidManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/AvidLoader;->registerAvidLoader(Landroid/content/Context;)V

    goto :goto_0
.end method
