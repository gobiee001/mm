.class public Lcom/integralads/avid/library/inmobi/AvidTreeWalker;
.super Ljava/lang/Object;
.source "AvidTreeWalker.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;,
        Lcom/integralads/avid/library/inmobi/AvidTreeWalker$AvidTreeWalkerTimeLogger;
    }
.end annotation


# static fields
.field private static avidTreeWalker:Lcom/integralads/avid/library/inmobi/AvidTreeWalker;

.field private static handler:Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;

.field private static final viewTreeUpdaterRunnable:Ljava/lang/Runnable;


# instance fields
.field private adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

.field private endTime:D

.field private objectsCount:I

.field private processorFactory:Lcom/integralads/avid/library/inmobi/processing/AvidProcessorFactory;

.field private startTime:D

.field private statePublisher:Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;

.field private timeLoggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/integralads/avid/library/inmobi/AvidTreeWalker$AvidTreeWalkerTimeLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->avidTreeWalker:Lcom/integralads/avid/library/inmobi/AvidTreeWalker;

    .line 194
    new-instance v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker$1;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker$1;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->viewTreeUpdaterRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-static {}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;-><init>(Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    .line 42
    new-instance v0, Lcom/integralads/avid/library/inmobi/processing/AvidProcessorFactory;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/processing/AvidProcessorFactory;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->processorFactory:Lcom/integralads/avid/library/inmobi/processing/AvidProcessorFactory;

    .line 43
    new-instance v0, Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;

    invoke-static {}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    move-result-object v1

    new-instance v2, Lcom/integralads/avid/library/inmobi/walking/async/AvidAsyncTaskQueue;

    invoke-direct {v2}, Lcom/integralads/avid/library/inmobi/walking/async/AvidAsyncTaskQueue;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;-><init>(Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;Lcom/integralads/avid/library/inmobi/walking/async/AvidAsyncTaskQueue;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->statePublisher:Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;

    .line 44
    return-void
.end method

.method static synthetic access$100()Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->handler:Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->viewTreeUpdaterRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/integralads/avid/library/inmobi/AvidTreeWalker;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->updateTreeState()V

    return-void
.end method

.method private afterWalk()V
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Lcom/integralads/avid/library/inmobi/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->endTime:D

    .line 94
    iget-wide v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->endTime:D

    iget-wide v2, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->startTime:D

    sub-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->notifyTimeLogger(J)V

    .line 95
    return-void
.end method

.method private beforeWalk()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->objectsCount:I

    .line 89
    invoke-static {}, Lcom/integralads/avid/library/inmobi/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->startTime:D

    .line 90
    return-void
.end method

.method private checkFriendlyObstruction(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;->getFriendlySessionIds(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-static {p2, v0}, Lcom/integralads/avid/library/inmobi/utils/AvidJSONUtil;->addFriendlyObstruction(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 155
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/inmobi/AvidTreeWalker;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->avidTreeWalker:Lcom/integralads/avid/library/inmobi/AvidTreeWalker;

    return-object v0
.end method

.method private handleAdView(Landroid/view/View;Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;->getSessionId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-static {p2, v0}, Lcom/integralads/avid/library/inmobi/utils/AvidJSONUtil;->addAvidId(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;->onAdViewProcessed()V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyTimeLogger(J)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker$AvidTreeWalkerTimeLogger;

    .line 160
    iget v2, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->objectsCount:I

    invoke-interface {v0, v2, p1, p2}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker$AvidTreeWalkerTimeLogger;->onTreeProcessed(IJ)V

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method private startTreeWalkerUpdater()V
    .locals 4

    .prologue
    .line 166
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->handler:Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;-><init>(Lcom/integralads/avid/library/inmobi/AvidTreeWalker$1;)V

    .line 168
    sput-object v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->handler:Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;

    sget-object v1, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->viewTreeUpdaterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    :cond_0
    return-void
.end method

.method private stopTreeWalkerUpdater()V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->handler:Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->handler:Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;

    sget-object v1, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->viewTreeUpdaterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->handler:Lcom/integralads/avid/library/inmobi/AvidTreeWalker$TreeWalkerHandler;

    .line 177
    :cond_0
    return-void
.end method

.method private updateTreeState()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->beforeWalk()V

    .line 83
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->doWalk()V

    .line 84
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->afterWalk()V

    .line 85
    return-void
.end method

.method private walkViewChildren(Landroid/view/View;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;Lorg/json/JSONObject;Lcom/integralads/avid/library/inmobi/walking/ViewType;)V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/integralads/avid/library/inmobi/walking/ViewType;->ROOT_VIEW:Lcom/integralads/avid/library/inmobi/walking/ViewType;

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2, p1, p3, p0, v0}, Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;->iterateChildren(Landroid/view/View;Lorg/json/JSONObject;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;Z)V

    .line 138
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method doWalk()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;->prepare()V

    .line 100
    invoke-static {}, Lcom/integralads/avid/library/inmobi/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    .line 101
    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->processorFactory:Lcom/integralads/avid/library/inmobi/processing/AvidProcessorFactory;

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/processing/AvidProcessorFactory;->getRootProcessor()Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-virtual {v3}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;->getHiddenSessionIds()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 103
    invoke-interface {v2, v6}, Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;->getState(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 104
    iget-object v4, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->statePublisher:Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;

    iget-object v5, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-virtual {v5}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;->getHiddenSessionIds()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v0, v1}, Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;->publishEmptyState(Lorg/json/JSONObject;Ljava/util/HashSet;D)V

    .line 106
    :cond_0
    iget-object v3, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-virtual {v3}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;->getVisibleSessionIds()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 107
    invoke-interface {v2, v6}, Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;->getState(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 108
    sget-object v4, Lcom/integralads/avid/library/inmobi/walking/ViewType;->ROOT_VIEW:Lcom/integralads/avid/library/inmobi/walking/ViewType;

    invoke-direct {p0, v6, v2, v3, v4}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->walkViewChildren(Landroid/view/View;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;Lorg/json/JSONObject;Lcom/integralads/avid/library/inmobi/walking/ViewType;)V

    .line 109
    invoke-static {v3}, Lcom/integralads/avid/library/inmobi/utils/AvidJSONUtil;->fixStateFrame(Lorg/json/JSONObject;)V

    .line 110
    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->statePublisher:Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;

    iget-object v4, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-virtual {v4}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;->getVisibleSessionIds()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;->publishState(Lorg/json/JSONObject;Ljava/util/HashSet;D)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;->cleanup()V

    .line 115
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->statePublisher:Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;->cleanupCache()V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->stopTreeWalkerUpdater()V

    .line 79
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->startTreeWalkerUpdater()V

    .line 68
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->updateTreeState()V

    .line 69
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->pause()V

    .line 73
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->timeLoggers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->statePublisher:Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/walking/AvidStatePublisher;->cleanupCache()V

    .line 75
    return-void
.end method

.method public walkView(Landroid/view/View;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 119
    invoke-static {p1}, Lcom/integralads/avid/library/inmobi/utils/AvidViewUtil;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->adViewCache:Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/walking/AvidAdViewCache;->getViewType(Landroid/view/View;)Lcom/integralads/avid/library/inmobi/walking/ViewType;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/integralads/avid/library/inmobi/walking/ViewType;->UNDERLYING_VIEW:Lcom/integralads/avid/library/inmobi/walking/ViewType;

    if-eq v0, v1, :cond_0

    .line 126
    invoke-interface {p2, p1}, Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;->getState(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 127
    invoke-static {p3, v1}, Lcom/integralads/avid/library/inmobi/utils/AvidJSONUtil;->addChildState(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 128
    invoke-direct {p0, p1, v1}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->handleAdView(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result v2

    .line 129
    if-nez v2, :cond_2

    .line 130
    invoke-direct {p0, p1, v1}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->checkFriendlyObstruction(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 131
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->walkViewChildren(Landroid/view/View;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;Lorg/json/JSONObject;Lcom/integralads/avid/library/inmobi/walking/ViewType;)V

    .line 133
    :cond_2
    iget v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->objectsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralads/avid/library/inmobi/AvidTreeWalker;->objectsCount:I

    goto :goto_0
.end method
