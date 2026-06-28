.class public Lcom/integralads/avid/library/adcolony/AvidTreeWalker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor$IAvidViewWalker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;,
        Lcom/integralads/avid/library/adcolony/AvidTreeWalker$AvidTreeWalkerTimeLogger;
    }
.end annotation


# static fields
.field private static b:Lcom/integralads/avid/library/adcolony/AvidTreeWalker;

.field private static c:Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;

.field private static final k:Ljava/lang/Runnable;


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/integralads/avid/library/adcolony/AvidTreeWalker$AvidTreeWalkerTimeLogger;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private f:Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;

.field private g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

.field private h:Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;

.field private i:D

.field private j:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;

    invoke-direct {v0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->b:Lcom/integralads/avid/library/adcolony/AvidTreeWalker;

    .line 194
    new-instance v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker$1;

    invoke-direct {v0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker$1;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->k:Ljava/lang/Runnable;

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

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->d:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-static {}, Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;-><init>(Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;)V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    .line 42
    new-instance v0, Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;

    invoke-direct {v0}, Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->f:Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;

    .line 43
    new-instance v0, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;

    invoke-static {}, Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;->getInstance()Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;

    move-result-object v1

    new-instance v2, Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;

    invoke-direct {v2}, Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;-><init>(Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;)V

    iput-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->h:Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;

    .line 44
    return-void
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker$AvidTreeWalkerTimeLogger;

    .line 160
    iget v2, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->e:I

    invoke-interface {v0, v2, p1, p2}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker$AvidTreeWalkerTimeLogger;->onTreeProcessed(IJ)V

    goto :goto_0

    .line 163
    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;Lorg/json/JSONObject;Lcom/integralads/avid/library/adcolony/walking/ViewType;)V
    .locals 1

    .prologue
    .line 137
    sget-object v0, Lcom/integralads/avid/library/adcolony/walking/ViewType;->ROOT_VIEW:Lcom/integralads/avid/library/adcolony/walking/ViewType;

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {p2, p1, p3, p0, v0}, Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;->iterateChildren(Landroid/view/View;Lorg/json/JSONObject;Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor$IAvidViewWalker;Z)V

    .line 138
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/integralads/avid/library/adcolony/AvidTreeWalker;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->d()V

    return-void
.end method

.method private a(Landroid/view/View;Lorg/json/JSONObject;)Z
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;->getSessionId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    invoke-static {p2, v0}, Lcom/integralads/avid/library/adcolony/utils/AvidJSONUtil;->addAvidId(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;->onAdViewProcessed()V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b()Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->c:Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;

    return-object v0
.end method

.method private b(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;->getFriendlySessionIds(Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-static {p2, v0}, Lcom/integralads/avid/library/adcolony/utils/AvidJSONUtil;->addFriendlyObstruction(Lorg/json/JSONObject;Ljava/util/List;)V

    .line 155
    :cond_0
    return-void
.end method

.method static synthetic c()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->k:Ljava/lang/Runnable;

    return-object v0
.end method

.method private d()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->e()V

    .line 83
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->a()V

    .line 84
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->f()V

    .line 85
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->e:I

    .line 89
    invoke-static {}, Lcom/integralads/avid/library/adcolony/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->i:D

    .line 90
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 93
    invoke-static {}, Lcom/integralads/avid/library/adcolony/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->j:D

    .line 94
    iget-wide v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->j:D

    iget-wide v2, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->i:D

    sub-double/2addr v0, v2

    double-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->a(J)V

    .line 95
    return-void
.end method

.method private g()V
    .locals 4

    .prologue
    .line 166
    sget-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->c:Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;-><init>(Lcom/integralads/avid/library/adcolony/AvidTreeWalker$1;)V

    sput-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->c:Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;

    .line 168
    sget-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->c:Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;

    sget-object v1, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->k:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/adcolony/AvidTreeWalker;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->b:Lcom/integralads/avid/library/adcolony/AvidTreeWalker;

    return-object v0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->c:Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->c:Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;

    sget-object v1, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->k:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    const/4 v0, 0x0

    sput-object v0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->c:Lcom/integralads/avid/library/adcolony/AvidTreeWalker$a;

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;->prepare()V

    .line 100
    invoke-static {}, Lcom/integralads/avid/library/adcolony/utils/AvidTimestamp;->getCurrentTime()D

    move-result-wide v0

    .line 101
    iget-object v2, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->f:Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;

    invoke-virtual {v2}, Lcom/integralads/avid/library/adcolony/processing/AvidProcessorFactory;->getRootProcessor()Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-virtual {v3}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;->getHiddenSessionIds()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 103
    invoke-interface {v2, v6}, Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;->getState(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 104
    iget-object v4, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->h:Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;

    iget-object v5, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-virtual {v5}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;->getHiddenSessionIds()Ljava/util/HashSet;

    move-result-object v5

    invoke-virtual {v4, v3, v5, v0, v1}, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->publishEmptyState(Lorg/json/JSONObject;Ljava/util/HashSet;D)V

    .line 106
    :cond_0
    iget-object v3, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-virtual {v3}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;->getVisibleSessionIds()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 107
    invoke-interface {v2, v6}, Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;->getState(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v3

    .line 108
    sget-object v4, Lcom/integralads/avid/library/adcolony/walking/ViewType;->ROOT_VIEW:Lcom/integralads/avid/library/adcolony/walking/ViewType;

    invoke-direct {p0, v6, v2, v3, v4}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->a(Landroid/view/View;Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;Lorg/json/JSONObject;Lcom/integralads/avid/library/adcolony/walking/ViewType;)V

    .line 109
    invoke-static {v3}, Lcom/integralads/avid/library/adcolony/utils/AvidJSONUtil;->fixStateFrame(Lorg/json/JSONObject;)V

    .line 110
    iget-object v2, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->h:Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;

    iget-object v4, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-virtual {v4}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;->getVisibleSessionIds()Ljava/util/HashSet;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->publishState(Lorg/json/JSONObject;Ljava/util/HashSet;D)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;->cleanup()V

    .line 115
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->h:Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->cleanupCache()V

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->h()V

    .line 79
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g()V

    .line 68
    invoke-direct {p0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->d()V

    .line 69
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->pause()V

    .line 73
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 74
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->h:Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->cleanupCache()V

    .line 75
    return-void
.end method

.method public walkView(Landroid/view/View;Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "processor"    # Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;
    .param p3, "parentState"    # Lorg/json/JSONObject;

    .prologue
    .line 119
    invoke-static {p1}, Lcom/integralads/avid/library/adcolony/utils/AvidViewUtil;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->g:Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/adcolony/walking/AvidAdViewCache;->getViewType(Landroid/view/View;)Lcom/integralads/avid/library/adcolony/walking/ViewType;

    move-result-object v0

    .line 123
    sget-object v1, Lcom/integralads/avid/library/adcolony/walking/ViewType;->UNDERLYING_VIEW:Lcom/integralads/avid/library/adcolony/walking/ViewType;

    if-eq v0, v1, :cond_0

    .line 126
    invoke-interface {p2, p1}, Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;->getState(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    .line 127
    invoke-static {p3, v1}, Lcom/integralads/avid/library/adcolony/utils/AvidJSONUtil;->addChildState(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 128
    invoke-direct {p0, p1, v1}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->a(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result v2

    .line 129
    if-nez v2, :cond_2

    .line 130
    invoke-direct {p0, p1, v1}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->b(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 131
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->a(Landroid/view/View;Lcom/integralads/avid/library/adcolony/processing/IAvidNodeProcessor;Lorg/json/JSONObject;Lcom/integralads/avid/library/adcolony/walking/ViewType;)V

    .line 133
    :cond_2
    iget v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralads/avid/library/adcolony/AvidTreeWalker;->e:I

    goto :goto_0
.end method
