.class public Lcom/integralads/avid/library/mopub/AvidStateWatcher;
.super Ljava/lang/Object;
.source "AvidStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;
    }
.end annotation


# static fields
.field public static final CONTEXT_AVID_AD_SESSION_ID:Ljava/lang/String; = "avidAdSessionId"

.field public static final CONTEXT_AVID_LIBRARY_VERSION:Ljava/lang/String; = "avidLibraryVersion"

.field public static final CONTEXT_BUNDLE_IDENTIFIER:Ljava/lang/String; = "bundleIdentifier"

.field public static final CONTEXT_PARTNER:Ljava/lang/String; = "partner"

.field public static final CONTEXT_PARTNER_VERSION:Ljava/lang/String; = "partnerVersion"

.field private static avidStateWatcher:Lcom/integralads/avid/library/mopub/AvidStateWatcher;


# instance fields
.field private context:Landroid/content/Context;

.field private isScreenOff:Z

.field private isStarted:Z

.field private receiver:Landroid/content/BroadcastReceiver;

.field private stateWatcherListener:Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->avidStateWatcher:Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/integralads/avid/library/mopub/AvidStateWatcher;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/integralads/avid/library/mopub/AvidStateWatcher;
    .param p1, "x1"    # Z

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->onScreenModeChanged(Z)V

    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/mopub/AvidStateWatcher;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->avidStateWatcher:Lcom/integralads/avid/library/mopub/AvidStateWatcher;

    return-object v0
.end method

.method private notifyScreenModeChanged()V
    .locals 4

    .prologue
    .line 113
    iget-boolean v2, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isScreenOff:Z

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 114
    .local v1, "isScreenOn":Z
    :goto_0
    invoke-static {}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;

    move-result-object v2

    invoke-virtual {v2}, Lcom/integralads/avid/library/mopub/registration/AvidAdSessionRegistry;->getInternalAvidAdSessions()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;

    .line 115
    .local v0, "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;->setScreenMode(Z)V

    goto :goto_1

    .line 113
    .end local v0    # "internalAvidAdSession":Lcom/integralads/avid/library/mopub/session/internal/InternalAvidAdSession;
    .end local v1    # "isScreenOn":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 117
    .restart local v1    # "isScreenOn":Z
    :cond_1
    return-void
.end method

.method private onScreenModeChanged(Z)V
    .locals 2
    .param p1, "isScreenOff"    # Z

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isScreenOff:Z

    if-eq v0, p1, :cond_0

    .line 70
    iput-boolean p1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isScreenOff:Z

    .line 71
    iget-boolean v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isStarted:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->notifyScreenModeChanged()V

    .line 73
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->stateWatcherListener:Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->stateWatcherListener:Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;

    invoke-virtual {p0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isActive()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;->onAppStateChanged(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 81
    new-instance v1, Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;

    invoke-direct {v1, p0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher$1;-><init>(Lcom/integralads/avid/library/mopub/AvidStateWatcher;)V

    iput-object v1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->receiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->receiver:Landroid/content/BroadcastReceiver;

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public getStateWatcherListener()Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->stateWatcherListener:Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->unregisterReceiver()V

    .line 39
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->context:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->registerReceiver()V

    .line 41
    return-void
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isScreenOff:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setStateWatcherListener(Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;)V
    .locals 0
    .param p1, "stateWatcherListener"    # Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->stateWatcherListener:Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;

    .line 66
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isStarted:Z

    .line 45
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->notifyScreenModeChanged()V

    .line 46
    return-void
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->unregisterReceiver()V

    .line 50
    iput-object v1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->context:Landroid/content/Context;

    .line 51
    iput-boolean v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isStarted:Z

    .line 52
    iput-boolean v0, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->isScreenOff:Z

    .line 53
    iput-object v1, p0, Lcom/integralads/avid/library/mopub/AvidStateWatcher;->stateWatcherListener:Lcom/integralads/avid/library/mopub/AvidStateWatcher$AvidStateWatcherListener;

    .line 54
    return-void
.end method
