.class Lcom/supersonic/mediationsdk/InterstitialManager;
.super Lcom/supersonic/mediationsdk/AbstractAdUnitManager;
.source "InterstitialManager.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialApi;
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mDidLoad:Z

.field private mDidReset:Z

.field private mExhaustedAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mHasReadyAd:Z

.field private mInitiatedAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mLastPlacementForShowFail:Ljava/lang/String;

.field private mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

.field private mLoadFailedInCurrentLoad:I

.field private mLoadRoundCompleted:Z

.field private mNotReadyAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyAds:I

.field private mReadyAdsToLoad:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->prepareStateForInit()V

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/supersonic/mediationsdk/InterstitialManager;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/InterstitialManager;
    .param p1, "x1"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    return-void
.end method

.method static synthetic access$102(Lcom/supersonic/mediationsdk/InterstitialManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/InterstitialManager;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdsToLoad:I

    return p1
.end method

.method static synthetic access$200(Lcom/supersonic/mediationsdk/InterstitialManager;)Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/InterstitialManager;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized addExhaustedInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 452
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->addToExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 453
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 454
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 455
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromNotReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    monitor-exit p0

    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addInitiatedInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 431
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->addToInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 432
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromNotReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 433
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 434
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    monitor-exit p0

    return-void

    .line 431
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addNotReadyInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 445
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->addToNotReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 446
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 447
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 448
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    monitor-exit p0

    return-void

    .line 445
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addReadyInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 438
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->addToReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 439
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 440
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromNotReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 441
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    monitor-exit p0

    return-void

    .line 438
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 510
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    :cond_0
    monitor-exit p0

    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 459
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 461
    .local v2, "priorityLocation":I
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 462
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 463
    .local v1, "ia":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getInterstitialPriority()I

    move-result v3

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getInterstitialPriority()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 464
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 468
    .end local v1    # "ia":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :cond_1
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void

    .line 459
    .end local v2    # "priorityLocation":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized addToNotReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 499
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mNotReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mNotReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :cond_0
    monitor-exit p0

    return-void

    .line 499
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 479
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 481
    .local v2, "priorityLocation":I
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 482
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 483
    .local v1, "ia":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getInterstitialPriority()I

    move-result v3

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getInterstitialPriority()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 484
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 488
    .end local v1    # "ia":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :cond_1
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit p0

    return-void

    .line 479
    .end local v2    # "priorityLocation":I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private allAdaptersAreInTheLoop()Z
    .locals 3

    .prologue
    .line 281
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxISAdapters()I

    move-result v0

    .line 283
    .local v0, "totalNumOfAdapters":I
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mNotReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private completeAdapterIteration(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":completeIteration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 307
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Smart Loading - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " moved to \'Exhausted\' list"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 308
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->addExhaustedInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 311
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 313
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->resetNumberOfAdsPlayed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    :goto_0
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "completeIteration(provider:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private completeAdapterShow(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 321
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getNumberOfAdsPlayed()I

    move-result v0

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxISAdsPerIteration()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 322
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->completeAdapterIteration(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 323
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->completeIterationRound()V

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Loading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " moved to \'Initiated\' list"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 326
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    goto :goto_0
.end method

.method private completeIterationRound()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 287
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->isIterationRoundComplete()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 288
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v5, "Reset Iteration"

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 290
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidReset:Z

    .line 292
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 293
    .local v2, "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 294
    .local v0, "exhaustedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "moved to \'Initiated\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 295
    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 296
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->resetNumberOfAdsPlayed()V

    goto :goto_0

    .line 299
    .end local v0    # "exhaustedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :cond_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v5, "End of Reset Iteration"

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 301
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    :cond_1
    return-void
.end method

.method private isIterationRoundComplete()Z
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->allAdaptersAreInTheLoop()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadFailedInCurrentLoad:I

    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 4

    .prologue
    .line 331
    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadAmount()I

    move-result v1

    .line 333
    .local v1, "numOfAdaptersToLoad":I
    const/4 v0, 0x0

    .line 335
    .local v0, "initiatedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-lt v2, v1, :cond_1

    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadFailedInCurrentLoad:I

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v1, :cond_2

    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadFailedInCurrentLoad:I

    if-ne v2, v3, :cond_2

    .line 339
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->hasMoreISProvidersToLoad()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v0, :cond_2

    .line 340
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->startAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v0

    goto :goto_0

    .line 344
    :cond_2
    return-object v0
.end method

.method private prepareStateForInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mHasReadyAd:Z

    .line 62
    iput v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadFailedInCurrentLoad:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdsToLoad:I

    .line 64
    iput v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAds:I

    .line 65
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadRoundCompleted:Z

    .line 66
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidLoad:Z

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLastPlacementForShowFail:Ljava/lang/String;

    .line 68
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidReset:Z

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mNotReadyAdapters:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    .line 75
    return-void
.end method

.method private declared-synchronized removeFromExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 515
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :cond_0
    monitor-exit p0

    return-void

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 473
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :cond_0
    monitor-exit p0

    return-void

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromNotReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mNotReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mNotReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :cond_0
    monitor-exit p0

    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 493
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 496
    :cond_0
    monitor-exit p0

    return-void

    .line 493
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 2
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 415
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialInitFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 416
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldCallInitFail()Z
    .locals 3

    .prologue
    .line 419
    const/4 v0, 0x0

    .line 421
    .local v0, "shouldCall":Z
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mNotReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxISAdapters()I

    move-result v2

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidReportInit:Z

    if-nez v1, :cond_0

    .line 423
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidReportInit:Z

    .line 424
    const/4 v0, 0x1

    .line 427
    :cond_0
    return v0
.end method

.method private startAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 14

    .prologue
    .line 348
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getNextISProvider()Ljava/lang/String;

    move-result-object v5

    .line 349
    .local v5, "providerName":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 350
    const/4 v4, 0x0

    .line 410
    :goto_0
    return-object v4

    .line 353
    :cond_0
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/ProviderSettings;

    move-result-object v6

    .line 354
    .local v6, "providerSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    if-nez v6, :cond_1

    .line 355
    const/4 v4, 0x0

    goto :goto_0

    .line 357
    :cond_1
    invoke-virtual {v6}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "requestUrl"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "requestUrl":Ljava/lang/String;
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v11, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":startAdapter("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 362
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v8

    check-cast v8, Lcom/supersonic/mediationsdk/SupersonicObject;

    .line 364
    .local v8, "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    invoke-virtual {v8, v5}, Lcom/supersonic/mediationsdk/SupersonicObject;->getExistingAdapter(Ljava/lang/String;)Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v4

    .line 365
    .local v4, "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    if-nez v4, :cond_2

    .line 367
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "com.supersonic.adapters."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Adapter"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 368
    .local v3, "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "startAdapter"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 369
    .local v9, "startAdapterMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    aput-object v7, v10, v11

    invoke-virtual {v9, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    check-cast v4, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 371
    .restart local v4    # "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    if-eqz v4, :cond_2

    .line 372
    invoke-virtual {v8, v4}, Lcom/supersonic/mediationsdk/SupersonicObject;->addToISAdaptersList(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 376
    .end local v3    # "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v9    # "startAdapterMethod":Ljava/lang/reflect/Method;
    :cond_2
    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxISAdsPerIteration()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    .line 377
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 380
    :cond_3
    invoke-virtual {p0, v4}, Lcom/supersonic/mediationsdk/InterstitialManager;->setCustomParams(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 381
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v4, v10}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 382
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialAdaptersSmartLoadTimeout()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setInterstitialTimeout(I)V

    .line 383
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getISAdaptersLoadPosition()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setInterstitialPriority(I)V

    .line 384
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v10

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setInterstitialConfigurations(Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;)V

    .line 385
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 386
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v10

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v11

    invoke-virtual {v11}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    :cond_4
    invoke-virtual {v4, p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)V

    .line 391
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v10, 0x15

    invoke-static {v4}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v2, v10, v11}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 392
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 394
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    iget-object v11, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAppKey:Ljava/lang/String;

    iget-object v12, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v4, v10, v11, v12}, Lcom/supersonic/mediationsdk/AbstractAdapter;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 396
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    .end local v4    # "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v8    # "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    :catch_0
    move-exception v0

    .line 397
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "Interstitial"

    invoke-static {v10, v11}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    .line 398
    .local v1, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->decreaseMaxISAdapters()I

    .line 400
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v11, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ":startAdapter"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 402
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->shouldCallInitFail()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 403
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/InterstitialManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 405
    :cond_5
    iget-object v10, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v11, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v10, v11, v12, v13}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 407
    const/4 v4, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public getPlacementByName(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    .locals 6
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 756
    const/4 v2, 0x0

    .line 758
    .local v2, "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    :try_start_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    move-result-object v2

    .line 759
    if-nez v2, :cond_0

    .line 761
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    move-result-object v2

    .line 762
    if-nez v2, :cond_0

    .line 763
    const-string v1, "Default placement was not found"

    .line 764
    .local v1, "noDefaultPlacement":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    .end local v1    # "noDefaultPlacement":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iput-object p1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    .line 89
    iput-object p3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mUserId:Ljava/lang/String;

    .line 90
    iput-object p2, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAppKey:Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->prepareStateForInit()V

    .line 95
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mUserId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "userId"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAppKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "appKey"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_1
    new-instance v0, Lcom/supersonic/mediationsdk/InterstitialManager$1;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/InterstitialManager$1;-><init>(Lcom/supersonic/mediationsdk/InterstitialManager;)V

    .line 142
    .local v0, "initInterstitialRunnable":Ljava/lang/Runnable;
    const-string v1, "InterstitialInitiator"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->createAndStartWorker(Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v0    # "initInterstitialRunnable":Ljava/lang/Runnable;
    :goto_0
    monitor-exit p0

    return-void

    .line 144
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Multiple calls to init are not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 87
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized loadInterstitial()V
    .locals 11

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 151
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    const-string v8, "Interstitial"

    invoke-static {v8}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionLoadFailError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialLoadFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    const/4 v5, 0x0

    .line 157
    .local v5, "readyAdsCount":I
    :try_start_1
    iget-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadRoundCompleted:Z

    if-eqz v7, :cond_3

    .line 158
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 159
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 161
    .local v6, "tempReady":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 162
    .local v0, "a":Lcom/supersonic/mediationsdk/AbstractAdapter;
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v8, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Smart Loading - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " moved to \'Initiated\' list"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 163
    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 150
    .end local v0    # "a":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "readyAdsCount":I
    .end local v6    # "tempReady":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 167
    .restart local v5    # "readyAdsCount":I
    :cond_2
    const/4 v7, 0x0

    :try_start_2
    iput v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadFailedInCurrentLoad:I

    .line 168
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mHasReadyAd:Z

    .line 169
    const/4 v7, 0x0

    iput v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAds:I

    .line 172
    :cond_3
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v7, :cond_9

    .line 173
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxISAdapters()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 174
    iget-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidReset:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidLoad:Z

    if-eqz v7, :cond_4

    .line 175
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidReset:Z

    goto :goto_0

    .line 179
    :cond_4
    iget-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mHasReadyAd:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdsToLoad:I

    iget-object v8, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gt v7, v8, :cond_5

    .line 180
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadRoundCompleted:Z

    goto/16 :goto_0

    .line 184
    :cond_5
    iget-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mHasReadyAd:Z

    if-eqz v7, :cond_6

    .line 185
    iget v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAds:I

    if-le v7, v5, :cond_6

    .line 186
    iget v5, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAds:I

    .line 187
    if-lez v3, :cond_6

    .line 188
    add-int/lit8 v3, v3, -0x1

    .line 191
    :cond_6
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v3, v7, :cond_7

    .line 192
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadRoundCompleted:Z

    goto/16 :goto_0

    .line 196
    :cond_7
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 198
    .local v1, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v7, 0x16

    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 199
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 201
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidLoad:Z

    .line 203
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->loadInterstitial()V

    .line 205
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxISAdapters()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v3, v7, :cond_8

    .line 206
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadRoundCompleted:Z

    .line 173
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 209
    .end local v1    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    .end local v3    # "i":I
    :cond_9
    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    const-string v8, "loadInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    invoke-static {v8}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialLoadFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public onInterstitialClick(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 699
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onInterstitialClick()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 701
    new-instance v0, Lcom/supersonic/eventsmodule/EventData;

    const/16 v1, 0x1c

    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 702
    .local v0, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 704
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialClick()V

    .line 705
    return-void
.end method

.method public onInterstitialClose(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 661
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onInterstitialClose()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 663
    new-instance v0, Lcom/supersonic/eventsmodule/EventData;

    const/16 v1, 0x1a

    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 664
    .local v0, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 666
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialClose()V

    .line 667
    return-void
.end method

.method public declared-synchronized onInterstitialInitFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 8
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .param p2, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 553
    monitor-enter p0

    const/4 v3, 0x0

    .line 556
    .local v3, "shouldCallFail":Z
    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":onInterstitialInitFailed("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 558
    invoke-static {p2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 560
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "status"

    const-string v5, "false"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    :goto_0
    :try_start_2
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v4, 0x18

    invoke-direct {v2, v4, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 566
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 568
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Smart Loading - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " moved to \'Not Ready\' list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 569
    invoke-direct {p0, p2}, Lcom/supersonic/mediationsdk/InterstitialManager;->addNotReadyInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 572
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->shouldCallInitFail()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_1

    .line 573
    const/4 v3, 0x1

    .line 582
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :goto_1
    if-eqz v3, :cond_0

    .line 583
    :try_start_3
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->reportInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 585
    :cond_0
    monitor-exit p0

    return-void

    .line 561
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 562
    .local v1, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 576
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 577
    .local v1, "e":Ljava/lang/Exception;
    :try_start_5
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onInterstitialInitFailed(error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "provider:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 553
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 575
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :cond_1
    :try_start_6
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized onInterstitialInitSuccess(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 523
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :onInterstitialInitSuccess()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 525
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": startAdapter("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") moved to \'Initiated\' list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 526
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->addInitiatedInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 528
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 530
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "status"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    :goto_0
    :try_start_2
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v4, 0x18

    invoke-direct {v2, v4, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 536
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 538
    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidReportInit:Z

    if-nez v4, :cond_0

    .line 539
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidReportInit:Z

    .line 540
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v4}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialInitSuccess()V

    .line 543
    :cond_0
    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidLoad:Z

    if-eqz v4, :cond_1

    .line 544
    new-instance v3, Lcom/supersonic/eventsmodule/EventData;

    const/16 v4, 0x16

    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 545
    .local v3, "loadevent":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 547
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->loadInterstitial()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 549
    .end local v3    # "loadevent":Lcom/supersonic/eventsmodule/EventData;
    :cond_1
    monitor-exit p0

    return-void

    .line 531
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 532
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 523
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized onInterstitialLoadFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 9
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .param p2, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 621
    monitor-enter p0

    const/4 v4, 0x0

    .line 622
    .local v4, "shouldReportFailed":Z
    :try_start_0
    iget v5, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadFailedInCurrentLoad:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadFailedInCurrentLoad:I

    .line 624
    iget-object v5, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":onInterstitialLoadFailed("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 626
    invoke-static {p2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 628
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "status"

    const-string v6, "false"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 633
    :goto_0
    :try_start_2
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v5, 0x1b

    invoke-direct {v2, v5, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 634
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 637
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v3

    .line 638
    .local v3, "loadedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    if-nez v3, :cond_0

    iget-boolean v5, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidLoad:Z

    if-eqz v5, :cond_0

    .line 639
    iget v5, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadFailedInCurrentLoad:I

    iget-object v6, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 640
    const/4 v4, 0x1

    .line 641
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/InterstitialManager;->completeIterationRound()V

    .line 644
    :cond_0
    if-eqz v4, :cond_1

    .line 645
    iget-object v5, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v5, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialLoadFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 647
    :cond_1
    monitor-exit p0

    return-void

    .line 629
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    .end local v3    # "loadedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 621
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public onInterstitialOpen(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 651
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onInterstitialOpen()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 653
    new-instance v0, Lcom/supersonic/eventsmodule/EventData;

    const/16 v1, 0x19

    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 654
    .local v0, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 656
    iget-object v1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialOpen()V

    .line 657
    return-void
.end method

.method public declared-synchronized onInterstitialReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 8
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 589
    monitor-enter p0

    const/4 v3, 0x0

    .line 591
    .local v3, "shouldReportReady":Z
    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":onInterstitialReady()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 593
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 595
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "status"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 600
    :goto_0
    :try_start_2
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v4, 0x1b

    invoke-direct {v2, v4, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 601
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 603
    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidLoad:Z

    if-eqz v4, :cond_1

    .line 604
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 605
    const/4 v3, 0x1

    .line 607
    :cond_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Smart Loading - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " moved to \'Ready\' list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 608
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->addReadyInterstitialAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 611
    :cond_1
    if-eqz v3, :cond_2

    .line 612
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v4}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialReady()V

    .line 615
    :cond_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mHasReadyAd:Z

    .line 616
    iget v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAds:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAds:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 617
    monitor-exit p0

    return-void

    .line 596
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 597
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 589
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public onInterstitialShowFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .param p2, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    const/4 v4, 0x1

    .line 685
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onInterstitialShowFailed("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 687
    invoke-direct {p0, p2}, Lcom/supersonic/mediationsdk/InterstitialManager;->completeAdapterShow(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 689
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 690
    iput-boolean v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidLoad:Z

    .line 691
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLastPlacementForShowFail:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/InterstitialManager;->showInterstitial(Ljava/lang/String;)V

    .line 695
    :goto_0
    return-void

    .line 693
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method public onInterstitialShowSuccess(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 7
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 671
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":onInterstitialShowSuccess()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 673
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 674
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 676
    .local v2, "tempReady":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 677
    .local v0, "a":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/InterstitialManager;->completeAdapterShow(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    goto :goto_0

    .line 680
    .end local v0    # "a":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "tempReady":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    :cond_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-interface {v3}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowSuccess()V

    .line 681
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 717
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 710
    if-eqz p1, :cond_0

    .line 711
    iput-object p1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    .line 712
    :cond_0
    return-void
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 722
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 727
    return-void
.end method

.method public setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V
    .locals 0
    .param p1, "interstitialListener"    # Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    .prologue
    .line 271
    iput-object p1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    .line 272
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 0
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 732
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 10
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 220
    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mShouldTrackNetworkState:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 221
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":showInterstitial fail - no internet connection"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v9}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 222
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    const-string v5, "Interstitial"

    invoke-static {v5}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionShowFailError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 267
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidLoad:Z

    if-nez v4, :cond_1

    .line 227
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    const-string v5, "Interstitial"

    const-string v6, "showInterstitial failed - Trying to call show while Interstitial is still loading"

    invoke-static {v5, v6}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 233
    :cond_1
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 234
    iput-boolean v8, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mDidLoad:Z

    .line 235
    iput-boolean v8, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadRoundCompleted:Z

    .line 236
    iput-object p1, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLastPlacementForShowFail:Ljava/lang/String;

    .line 238
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 240
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->increaseNumberOfAdsPlayed()V

    .line 241
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getNumberOfAdsPlayed()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxISAdsPerIteration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ads played"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 244
    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v1

    .line 246
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "placement"

    invoke-virtual {v1, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_1
    new-instance v3, Lcom/supersonic/eventsmodule/EventData;

    const/16 v4, 0x17

    invoke-direct {v3, v4, v1}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 252
    .local v3, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 254
    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->showInterstitial(Ljava/lang/String;)V

    .line 256
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->getPlacementByName(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/supersonic/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/InterstitialPlacement;)V

    .line 258
    iput v8, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoadFailedInCurrentLoad:I

    .line 259
    iput-boolean v8, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mHasReadyAd:Z

    .line 260
    iput v8, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mReadyAds:I

    goto/16 :goto_0

    .line 247
    .end local v3    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v2

    .line 248
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 262
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":No adapters to show"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v9}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 263
    iget-object v4, p0, Lcom/supersonic/mediationsdk/InterstitialManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    const-string v5, "Interstitial"

    const-string v6, "showInterstitial failed - No adapters ready to show"

    invoke-static {v5, v6}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/supersonic/mediationsdk/sdk/InterstitialListener;->onInterstitialShowFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto/16 :goto_0
.end method
