.class public Lcom/integralads/avid/library/mopub/AvidLoader;
.super Ljava/lang/Object;
.source "AvidLoader.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;,
        Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;,
        Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;
    }
.end annotation


# static fields
.field private static avidLoader:Lcom/integralads/avid/library/mopub/AvidLoader;


# instance fields
.field private activeTask:Lcom/integralads/avid/library/mopub/DownloadAvidTask;

.field private final avidDownloadRunnable:Ljava/lang/Runnable;

.field private context:Landroid/content/Context;

.field private listener:Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;

.field private taskExecutor:Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;

.field private taskRepeater:Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/integralads/avid/library/mopub/AvidLoader;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/AvidLoader;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/mopub/AvidLoader;->avidLoader:Lcom/integralads/avid/library/mopub/AvidLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;

    invoke-direct {v0, p0}, Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;-><init>(Lcom/integralads/avid/library/mopub/AvidLoader;)V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->taskExecutor:Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;

    .line 137
    new-instance v0, Lcom/integralads/avid/library/mopub/AvidLoader$1;

    invoke-direct {v0, p0}, Lcom/integralads/avid/library/mopub/AvidLoader$1;-><init>(Lcom/integralads/avid/library/mopub/AvidLoader;)V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->avidDownloadRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/integralads/avid/library/mopub/AvidLoader;)Lcom/integralads/avid/library/mopub/DownloadAvidTask;
    .locals 1
    .param p0, "x0"    # Lcom/integralads/avid/library/mopub/AvidLoader;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->activeTask:Lcom/integralads/avid/library/mopub/DownloadAvidTask;

    return-object v0
.end method

.method static synthetic access$100(Lcom/integralads/avid/library/mopub/AvidLoader;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/integralads/avid/library/mopub/AvidLoader;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->avidDownloadRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/integralads/avid/library/mopub/AvidLoader;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/integralads/avid/library/mopub/AvidLoader;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/integralads/avid/library/mopub/AvidLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/integralads/avid/library/mopub/AvidLoader;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidLoader;->loadAvidJSFromUrl()V

    return-void
.end method

.method static synthetic access$400(Lcom/integralads/avid/library/mopub/AvidLoader;)V
    .locals 0
    .param p0, "x0"    # Lcom/integralads/avid/library/mopub/AvidLoader;

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidLoader;->repeatLoading()V

    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/mopub/AvidLoader;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/integralads/avid/library/mopub/AvidLoader;->avidLoader:Lcom/integralads/avid/library/mopub/AvidLoader;

    return-object v0
.end method

.method private loadAvidJSFromUrl()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidBridge;->isAvidJsReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->activeTask:Lcom/integralads/avid/library/mopub/DownloadAvidTask;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->activeTask:Lcom/integralads/avid/library/mopub/DownloadAvidTask;

    .line 62
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->activeTask:Lcom/integralads/avid/library/mopub/DownloadAvidTask;

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->setListener(Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;)V

    .line 63
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->taskExecutor:Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;

    iget-object v1, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->activeTask:Lcom/integralads/avid/library/mopub/DownloadAvidTask;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/mopub/AvidLoader$TaskExecutor;->executeTask(Lcom/integralads/avid/library/mopub/DownloadAvidTask;)V

    .line 65
    :cond_0
    return-void
.end method

.method private repeatLoading()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->taskRepeater:Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->taskRepeater:Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->repeatLoading()V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public failedToLoadAvid()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->activeTask:Lcom/integralads/avid/library/mopub/DownloadAvidTask;

    .line 85
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidLoader;->repeatLoading()V

    .line 86
    return-void
.end method

.method public getListener()Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->listener:Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;

    return-object v0
.end method

.method public onLoadAvid(Ljava/lang/String;)V
    .locals 1
    .param p1, "avidJs"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->activeTask:Lcom/integralads/avid/library/mopub/DownloadAvidTask;

    .line 76
    invoke-static {p1}, Lcom/integralads/avid/library/mopub/AvidBridge;->setAvidJs(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->listener:Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->listener:Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;

    invoke-interface {v0}, Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;->onAvidLoaded()V

    .line 80
    :cond_0
    return-void
.end method

.method public registerAvidLoader(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->context:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;

    invoke-direct {v0, p0}, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;-><init>(Lcom/integralads/avid/library/mopub/AvidLoader;)V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->taskRepeater:Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;

    .line 39
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidLoader;->loadAvidJSFromUrl()V

    .line 40
    return-void
.end method

.method public setListener(Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->listener:Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;

    .line 53
    return-void
.end method

.method public unregisterAvidLoader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->taskRepeater:Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->taskRepeater:Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;

    invoke-virtual {v0}, Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;->cleanup()V

    .line 45
    iput-object v1, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->taskRepeater:Lcom/integralads/avid/library/mopub/AvidLoader$TaskRepeater;

    .line 47
    :cond_0
    iput-object v1, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->listener:Lcom/integralads/avid/library/mopub/AvidLoader$AvidLoaderListener;

    .line 48
    iput-object v1, p0, Lcom/integralads/avid/library/mopub/AvidLoader;->context:Landroid/content/Context;

    .line 49
    return-void
.end method
