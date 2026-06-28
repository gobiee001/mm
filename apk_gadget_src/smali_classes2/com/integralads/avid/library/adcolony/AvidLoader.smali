.class public Lcom/integralads/avid/library/adcolony/AvidLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/integralads/avid/library/adcolony/DownloadAvidTask$DownloadAvidTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;,
        Lcom/integralads/avid/library/adcolony/AvidLoader$TaskExecutor;,
        Lcom/integralads/avid/library/adcolony/AvidLoader$AvidLoaderListener;
    }
.end annotation


# static fields
.field private static c:Lcom/integralads/avid/library/adcolony/AvidLoader;


# instance fields
.field private d:Lcom/integralads/avid/library/adcolony/AvidLoader$AvidLoaderListener;

.field private e:Lcom/integralads/avid/library/adcolony/DownloadAvidTask;

.field private f:Landroid/content/Context;

.field private g:Lcom/integralads/avid/library/adcolony/AvidLoader$TaskExecutor;

.field private h:Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;

.field private final i:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/integralads/avid/library/adcolony/AvidLoader;

    invoke-direct {v0}, Lcom/integralads/avid/library/adcolony/AvidLoader;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/adcolony/AvidLoader;->c:Lcom/integralads/avid/library/adcolony/AvidLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskExecutor;

    invoke-direct {v0, p0}, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskExecutor;-><init>(Lcom/integralads/avid/library/adcolony/AvidLoader;)V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->g:Lcom/integralads/avid/library/adcolony/AvidLoader$TaskExecutor;

    .line 137
    new-instance v0, Lcom/integralads/avid/library/adcolony/AvidLoader$1;

    invoke-direct {v0, p0}, Lcom/integralads/avid/library/adcolony/AvidLoader$1;-><init>(Lcom/integralads/avid/library/adcolony/AvidLoader;)V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->i:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic b(Lcom/integralads/avid/library/adcolony/AvidLoader;)Lcom/integralads/avid/library/adcolony/DownloadAvidTask;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->e:Lcom/integralads/avid/library/adcolony/DownloadAvidTask;

    return-object v0
.end method

.method static synthetic c(Lcom/integralads/avid/library/adcolony/AvidLoader;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 60
    invoke-static {}, Lcom/integralads/avid/library/adcolony/AvidBridge;->isAvidJsReady()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->e:Lcom/integralads/avid/library/adcolony/DownloadAvidTask;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/integralads/avid/library/adcolony/DownloadAvidTask;

    invoke-direct {v0}, Lcom/integralads/avid/library/adcolony/DownloadAvidTask;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->e:Lcom/integralads/avid/library/adcolony/DownloadAvidTask;

    .line 62
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->e:Lcom/integralads/avid/library/adcolony/DownloadAvidTask;

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/adcolony/DownloadAvidTask;->setListener(Lcom/integralads/avid/library/adcolony/DownloadAvidTask$DownloadAvidTaskListener;)V

    .line 63
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->g:Lcom/integralads/avid/library/adcolony/AvidLoader$TaskExecutor;

    iget-object v1, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->e:Lcom/integralads/avid/library/adcolony/DownloadAvidTask;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskExecutor;->executeTask(Lcom/integralads/avid/library/adcolony/DownloadAvidTask;)V

    .line 65
    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/integralads/avid/library/adcolony/AvidLoader;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->f:Landroid/content/Context;

    return-object v0
.end method

.method private d()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->h:Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->h:Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;->repeatLoading()V

    .line 71
    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/integralads/avid/library/adcolony/AvidLoader;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/AvidLoader;->c()V

    return-void
.end method

.method static synthetic f(Lcom/integralads/avid/library/adcolony/AvidLoader;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/AvidLoader;->d()V

    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/adcolony/AvidLoader;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/integralads/avid/library/adcolony/AvidLoader;->c:Lcom/integralads/avid/library/adcolony/AvidLoader;

    return-object v0
.end method


# virtual methods
.method public failedToLoadAvid()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->e:Lcom/integralads/avid/library/adcolony/DownloadAvidTask;

    .line 85
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/AvidLoader;->d()V

    .line 86
    return-void
.end method

.method public onLoadAvid(Ljava/lang/String;)V
    .locals 1
    .param p1, "avidJs"    # Ljava/lang/String;

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->e:Lcom/integralads/avid/library/adcolony/DownloadAvidTask;

    .line 76
    invoke-static {p1}, Lcom/integralads/avid/library/adcolony/AvidBridge;->setAvidJs(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->d:Lcom/integralads/avid/library/adcolony/AvidLoader$AvidLoaderListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->d:Lcom/integralads/avid/library/adcolony/AvidLoader$AvidLoaderListener;

    invoke-interface {v0}, Lcom/integralads/avid/library/adcolony/AvidLoader$AvidLoaderListener;->onAvidLoaded()V

    .line 80
    :cond_0
    return-void
.end method

.method public registerAvidLoader(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->f:Landroid/content/Context;

    .line 38
    new-instance v0, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;

    invoke-direct {v0, p0}, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;-><init>(Lcom/integralads/avid/library/adcolony/AvidLoader;)V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->h:Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;

    .line 39
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/AvidLoader;->c()V

    .line 40
    return-void
.end method

.method public setListener(Lcom/integralads/avid/library/adcolony/AvidLoader$AvidLoaderListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/integralads/avid/library/adcolony/AvidLoader$AvidLoaderListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->d:Lcom/integralads/avid/library/adcolony/AvidLoader$AvidLoaderListener;

    .line 53
    return-void
.end method

.method public unregisterAvidLoader()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->h:Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->h:Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;->cleanup()V

    .line 45
    iput-object v1, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->h:Lcom/integralads/avid/library/adcolony/AvidLoader$TaskRepeater;

    .line 47
    :cond_0
    iput-object v1, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->d:Lcom/integralads/avid/library/adcolony/AvidLoader$AvidLoaderListener;

    .line 48
    iput-object v1, p0, Lcom/integralads/avid/library/adcolony/AvidLoader;->f:Landroid/content/Context;

    .line 49
    return-void
.end method
