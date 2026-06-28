.class Lcom/supersonic/mediationsdk/RewardedVideoManager;
.super Lcom/supersonic/mediationsdk/AbstractAdUnitManager;
.source "RewardedVideoManager.java"

# interfaces
.implements Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;
.implements Lcom/supersonic/mediationsdk/InternalRewardedVideoApi;
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;


# instance fields
.field private final KTO_ALGORITHM:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field initRewardedVideoRunnable:Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;

.field private mAvailableAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mCountDownTimer:Landroid/os/CountDownTimer;

.field private mDidReportInitialAvailability:Z

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

.field private mIsAdAvailable:Z

.field private mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

.field private mNetworkStateReceiver:Lcom/supersonic/environment/NetworkStateReceiver;

.field private mNotAvailableAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mPauseSmartLoadDueToNetworkUnavailability:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    .line 42
    const-string v0, "KTO"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->KTO_ALGORITHM:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z

    .line 57
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInitialAvailability:Z

    .line 195
    new-instance v0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;-><init>(Lcom/supersonic/mediationsdk/RewardedVideoManager;)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->initRewardedVideoRunnable:Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;

    .line 63
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->prepareStateForInit()V

    .line 64
    return-void
.end method

.method static synthetic access$002(Lcom/supersonic/mediationsdk/RewardedVideoManager;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/RewardedVideoManager;
    .param p1, "x1"    # Landroid/os/CountDownTimer;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/RewardedVideoManager;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInitialAvailability:Z

    return v0
.end method

.method static synthetic access$102(Lcom/supersonic/mediationsdk/RewardedVideoManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/RewardedVideoManager;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInitialAvailability:Z

    return p1
.end method

.method static synthetic access$200(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/RewardedVideoManager;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/RewardedVideoManager;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized addExhaustedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 728
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 729
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 730
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 731
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    monitor-exit p0

    return-void

    .line 728
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addInitiatedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 714
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 715
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 716
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 717
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 718
    monitor-exit p0

    return-void

    .line 714
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToAvailable(Lcom/supersonic/mediationsdk/AbstractAdapter;Z)V
    .locals 6
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;
    .param p2, "forceOrder"    # Z

    .prologue
    .line 651
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdapterAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "adapterAlgorithm":Ljava/lang/String;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 654
    .local v2, "priorityLocation":I
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 655
    const-string v4, "KTO"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz p2, :cond_2

    .line 656
    :cond_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 657
    .local v3, "rwa":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v4

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v5

    if-gt v4, v5, :cond_1

    .line 658
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 663
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "rwa":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :cond_2
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    :cond_3
    monitor-exit p0

    return-void

    .line 651
    .end local v0    # "adapterAlgorithm":Ljava/lang/String;
    .end local v2    # "priorityLocation":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized addToExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 696
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    :cond_0
    monitor-exit p0

    return-void

    .line 696
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 685
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 687
    :cond_0
    monitor-exit p0

    return-void

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addToNotAvailable(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 674
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    :cond_0
    monitor-exit p0

    return-void

    .line 674
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 721
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToNotAvailable(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 722
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromAvailable(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 723
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 724
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 725
    monitor-exit p0

    return-void

    .line 721
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private completeAdapterIteration(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

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

    .line 584
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

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

    .line 585
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addExhaustedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 588
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 590
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->resetNumberOfVideosPlayed()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :goto_0
    return-void

    .line 592
    :catch_0
    move-exception v0

    .line 593
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

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

.method private completeIterationRound()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 602
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->isIterationRoundComplete()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 603
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v5, "Reset Iteration"

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 605
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 606
    .local v2, "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 607
    .local v0, "exhaustedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

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

    const-string v6, "moved to \'Available\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 609
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addAvailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;Z)V

    goto :goto_0

    .line 611
    :cond_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

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

    const-string v6, "moved to \'Not Available\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 612
    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    goto :goto_0

    .line 616
    .end local v0    # "exhaustedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :cond_1
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v5, "End of Reset Iteration"

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 618
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "tempExhausted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    :cond_2
    return-void
.end method

.method private createAndSendShowCheckAvailabilityEvent(Lcom/supersonic/mediationsdk/AbstractAdapter;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "status"    # Z

    .prologue
    .line 439
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v0

    .line 441
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "placement"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string v4, "status"

    if-eqz p3, :cond_0

    const-string v3, "true"

    :goto_0
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string v3, "providerPriority"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 448
    :goto_1
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v3, 0x13

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 449
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 450
    return-void

    .line 442
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :cond_0
    :try_start_1
    const-string v3, "false"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private isExhausted(Ljava/lang/String;)Z
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 131
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 132
    .local v0, "exAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    const/4 v2, 0x1

    .line 135
    .end local v0    # "exAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isIterationRoundComplete()Z
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 4

    .prologue
    .line 498
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v1

    .line 499
    .local v1, "numOfAdaptersToLoad":I
    const/4 v0, 0x0

    .line 500
    .local v0, "initiatedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v2, v1, :cond_0

    .line 501
    :goto_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->hasMoreRVProvidersToLoad()Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez v0, :cond_0

    .line 502
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, v2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->startAdapter(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v0

    goto :goto_0

    .line 505
    :cond_0
    return-object v0
.end method

.method private declared-synchronized notifyIsAdAvailableForStatistics()V
    .locals 17

    .prologue
    .line 794
    monitor-enter p0

    const/4 v11, 0x0

    .line 795
    .local v11, "mediationStatus":Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_0

    .line 796
    const/4 v11, 0x1

    .line 799
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 801
    .local v4, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v15, "status"

    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 806
    :goto_0
    :try_start_2
    new-instance v6, Lcom/supersonic/eventsmodule/EventData;

    const/4 v15, 0x3

    invoke-direct {v6, v15, v4}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 807
    .local v6, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v15

    invoke-virtual {v15, v6}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 810
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 812
    .local v1, "availableAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 814
    .local v2, "availableData":Lorg/json/JSONObject;
    :try_start_3
    const-string v15, "status"

    const-string v16, "true"

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 819
    :goto_2
    :try_start_4
    new-instance v3, Lcom/supersonic/eventsmodule/EventData;

    const/4 v15, 0x3

    invoke-direct {v3, v15, v2}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 820
    .local v3, "availableEvent":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 794
    .end local v1    # "availableAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "availableData":Lorg/json/JSONObject;
    .end local v3    # "availableEvent":Lcom/supersonic/eventsmodule/EventData;
    .end local v4    # "data":Lorg/json/JSONObject;
    .end local v6    # "event":Lcom/supersonic/eventsmodule/EventData;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v15

    monitor-exit p0

    throw v15

    .line 802
    .restart local v4    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v5

    .line 803
    .local v5, "e":Lorg/json/JSONException;
    :try_start_5
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 815
    .end local v5    # "e":Lorg/json/JSONException;
    .restart local v1    # "availableAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .restart local v2    # "availableData":Lorg/json/JSONObject;
    .restart local v6    # "event":Lcom/supersonic/eventsmodule/EventData;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :catch_1
    move-exception v5

    .line 816
    .restart local v5    # "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 824
    .end local v1    # "availableAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "availableData":Lorg/json/JSONObject;
    .end local v5    # "e":Lorg/json/JSONException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 826
    .local v14, "notavailableAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-static {v14}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v12

    .line 828
    .local v12, "notAvailableData":Lorg/json/JSONObject;
    :try_start_6
    const-string v15, "status"

    const-string v16, "false"

    move-object/from16 v0, v16

    invoke-virtual {v12, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 833
    :goto_4
    :try_start_7
    new-instance v13, Lcom/supersonic/eventsmodule/EventData;

    const/4 v15, 0x3

    invoke-direct {v13, v15, v12}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 834
    .local v13, "notAvailableEvent":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    goto :goto_3

    .line 829
    .end local v13    # "notAvailableEvent":Lcom/supersonic/eventsmodule/EventData;
    :catch_2
    move-exception v5

    .line 830
    .restart local v5    # "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 837
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v12    # "notAvailableData":Lorg/json/JSONObject;
    .end local v14    # "notavailableAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 839
    .local v8, "initiatedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-static {v8}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v9

    .line 841
    .local v9, "initiatedData":Lorg/json/JSONObject;
    :try_start_8
    const-string v15, "status"

    const-string v16, "false"

    move-object/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 846
    :goto_6
    :try_start_9
    new-instance v10, Lcom/supersonic/eventsmodule/EventData;

    const/4 v15, 0x3

    invoke-direct {v10, v15, v9}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 847
    .local v10, "initiatedEvent":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v15

    invoke-virtual {v15, v10}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    goto :goto_5

    .line 842
    .end local v10    # "initiatedEvent":Lcom/supersonic/eventsmodule/EventData;
    :catch_3
    move-exception v5

    .line 843
    .restart local v5    # "e":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 849
    .end local v5    # "e":Lorg/json/JSONException;
    .end local v8    # "initiatedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v9    # "initiatedData":Lorg/json/JSONObject;
    :cond_3
    monitor-exit p0

    return-void
.end method

.method private prepareStateForInit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RewardedVideoInitiatorHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 68
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mHandler:Landroid/os/Handler;

    .line 71
    iput-boolean v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    .line 79
    const/4 v0, 0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryDelay:I

    .line 80
    iput v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryCounter:I

    .line 81
    const/16 v0, 0x3e

    iput v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryLimit:I

    .line 82
    const/16 v0, 0xc

    iput v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryGrowLimit:I

    .line 83
    const/4 v0, 0x5

    iput v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryAvailabilityLimit:I

    .line 84
    return-void
.end method

.method private declared-synchronized removeFromAvailable(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 668
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :cond_0
    monitor-exit p0

    return-void

    .line 668
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 701
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    :cond_0
    monitor-exit p0

    return-void

    .line 701
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 690
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mInitiatedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 693
    :cond_0
    monitor-exit p0

    return-void

    .line 690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeFromUnavailable(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 679
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    :cond_0
    monitor-exit p0

    return-void

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private reportFalseImpressionsOnHigherPriority(II)V
    .locals 6
    .param p1, "priority"    # I
    .param p2, "placementId"    # I

    .prologue
    .line 116
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/supersonic/mediationsdk/model/ProviderOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v2

    .line 118
    .local v2, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 119
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->isExhausted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 118
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v5

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/ProviderSettings;

    move-result-object v1

    .line 123
    .local v1, "providerSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "requestUrl"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "requestUrl":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, p2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    goto :goto_1

    .line 128
    .end local v1    # "providerSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    .end local v3    # "requestUrl":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private declared-synchronized reportImpression(Ljava/lang/String;ZI)V
    .locals 6
    .param p1, "adapterUrl"    # Ljava/lang/String;
    .param p2, "hit"    # Z
    .param p3, "placementId"    # I

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .local v1, "url":Ljava/lang/String;
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&sdkVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static {v1, p2, p3}, Lcom/supersonic/mediationsdk/server/Server;->callAsyncRequestURL(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NETWORK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reportImpression:(providerURL:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "hit:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private declared-synchronized reportShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 1
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 251
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private sendShowCheckAvailabilityEvents(Ljava/lang/String;)V
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 428
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 429
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->createAndSendShowCheckAvailabilityEvent(Lcom/supersonic/mediationsdk/AbstractAdapter;Ljava/lang/String;Z)V

    goto :goto_0

    .line 433
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :cond_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 434
    .restart local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->createAndSendShowCheckAvailabilityEvent(Lcom/supersonic/mediationsdk/AbstractAdapter;Ljava/lang/String;Z)V

    goto :goto_1

    .line 436
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :cond_1
    return-void
.end method

.method private shouldNotifyAvailabilityChanged(Z)Z
    .locals 5
    .param p1, "adapterAvailability"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 621
    const/4 v0, 0x0

    .line 623
    .local v0, "shouldNotify":Z
    iget-boolean v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 624
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 625
    const/4 v0, 0x1

    .line 637
    :cond_0
    :goto_0
    return v0

    .line 626
    :cond_1
    iget-boolean v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-eqz v3, :cond_2

    if-nez p1, :cond_2

    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    .line 628
    iput-boolean v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 629
    const/4 v0, 0x1

    goto :goto_0

    .line 632
    :cond_2
    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNotAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxRVAdapters()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 633
    iput-boolean v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 634
    iget-boolean v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mDidReportInitialAvailability:Z

    if-nez v3, :cond_3

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private shouldNotifyNetworkAvailabilityChanged(Z)Z
    .locals 2
    .param p1, "networkState"    # Z

    .prologue
    .line 890
    const/4 v0, 0x0

    .line 892
    .local v0, "shouldNotify":Z
    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 893
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 894
    const/4 v0, 0x1

    .line 900
    :cond_0
    :goto_0
    return v0

    .line 895
    :cond_1
    iget-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 896
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    .line 897
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized startAdapter(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 17
    .param p1, "srw"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 262
    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getNextRVProvider()Ljava/lang/String;

    move-result-object v7

    .line 263
    .local v7, "providerName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v13

    if-eqz v13, :cond_0

    .line 264
    const/4 v6, 0x0

    .line 334
    :goto_0
    monitor-exit p0

    return-object v6

    .line 267
    :cond_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v13

    invoke-virtual {v13, v7}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/ProviderSettings;

    move-result-object v9

    .line 268
    .local v9, "providerSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    if-nez v9, :cond_1

    .line 269
    const/4 v6, 0x0

    goto :goto_0

    .line 271
    :cond_1
    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getProviderType()Ljava/lang/String;

    move-result-object v8

    .line 273
    .local v8, "providerNameForReflection":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "requestUrl"

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 275
    .local v10, "requestUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v14, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":startAdapter("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-virtual/range {v13 .. v16}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 277
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v13

    if-eqz v13, :cond_2

    .line 278
    const/4 v6, 0x0

    goto :goto_0

    .line 281
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v11

    check-cast v11, Lcom/supersonic/mediationsdk/SupersonicObject;

    .line 283
    .local v11, "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    invoke-virtual {v11, v7}, Lcom/supersonic/mediationsdk/SupersonicObject;->getExistingAdapter(Ljava/lang/String;)Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v6

    .line 284
    .local v6, "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    if-nez v6, :cond_3

    .line 286
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "com.supersonic.adapters."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "Adapter"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 287
    .local v5, "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v13, "startAdapter"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Ljava/lang/String;

    aput-object v16, v14, v15

    invoke-virtual {v5, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 288
    .local v12, "startAdapterMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v7, v13, v14

    const/4 v14, 0x1

    aput-object v10, v13, v14

    invoke-virtual {v12, v5, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    check-cast v6, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 290
    .restart local v6    # "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    if-eqz v6, :cond_3

    .line 291
    invoke-virtual {v11, v6}, Lcom/supersonic/mediationsdk/SupersonicObject;->addToAdaptersList(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 295
    .end local v5    # "mAdapterClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "startAdapterMethod":Ljava/lang/reflect/Method;
    :cond_3
    invoke-virtual {v6}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxRVAdsPerIteration()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_4

    .line 296
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 299
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->setCustomParams(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 300
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v6, v13}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 301
    invoke-virtual/range {p1 .. p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadTimeout()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setRewardedVideoTimeout(I)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getRVAdaptersLoadPosition()I

    move-result v13

    invoke-virtual {v6, v13}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setRewardedVideoPriority(I)V

    .line 303
    invoke-virtual/range {p1 .. p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v13

    invoke-virtual {v13}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v13

    invoke-virtual {v6, v13}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setRewardedVideoConfigurations(Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;)V

    .line 304
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 305
    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v13

    invoke-virtual {v13}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginType()Ljava/lang/String;

    move-result-object v13

    invoke-static {}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getConfigFile()Lcom/supersonic/mediationsdk/config/ConfigFile;

    move-result-object v14

    invoke-virtual {v14}, Lcom/supersonic/mediationsdk/config/ConfigFile;->getPluginFrameworkVersion()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setPluginData(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v14, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": startAdapter("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ") moved to \'Initiated\' list"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v16}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 309
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addInitiatedRewardedVideoAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 310
    invoke-virtual {v11}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v1

    .line 312
    .local v1, "appKey":Ljava/lang/String;
    new-instance v4, Lcom/supersonic/eventsmodule/EventData;

    const/4 v13, 0x1

    invoke-static {v6}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-direct {v4, v13, v14}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 313
    .local v4, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    invoke-virtual {v6, v13, v1, v14}, Lcom/supersonic/mediationsdk/AbstractAdapter;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 317
    .end local v1    # "appKey":Ljava/lang/String;
    .end local v4    # "event":Lcom/supersonic/eventsmodule/EventData;
    .end local v6    # "providerAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v11    # "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    :catch_0
    move-exception v2

    .line 318
    .local v2, "e":Ljava/lang/Throwable;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v14, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":startAdapter("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v13}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->decreaseMaxRVAdapters()I

    .line 321
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " initialization failed - please verify that required dependencies are in you build path."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "Rewarded Video"

    invoke-static {v13, v14}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v3

    .line 325
    .local v3, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 326
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsRevived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v13, v14, v15}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onVideoAvailabilityChanged(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 329
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v14, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x2

    invoke-virtual/range {v13 .. v16}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 331
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 262
    .end local v2    # "e":Ljava/lang/Throwable;
    .end local v3    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .end local v7    # "providerName":Ljava/lang/String;
    .end local v8    # "providerNameForReflection":Ljava/lang/String;
    .end local v9    # "providerSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    .end local v10    # "requestUrl":Ljava/lang/String;
    :catchall_0
    move-exception v13

    monitor-exit p0

    throw v13
.end method


# virtual methods
.method public declared-synchronized addAvailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;Z)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;
    .param p2, "forceOrder"    # Z

    .prologue
    .line 707
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addToAvailable(Lcom/supersonic/mediationsdk/AbstractAdapter;Z)V

    .line 708
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromInitiated(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 709
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromUnavailable(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 710
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->removeFromExhausted(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 711
    monitor-exit p0

    return-void

    .line 707
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPlacementByName(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;
    .locals 6
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 910
    const/4 v2, 0x0

    .line 912
    .local v2, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :try_start_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v2

    .line 913
    if-nez v2, :cond_0

    .line 915
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v2

    .line 916
    if-nez v2, :cond_0

    .line 917
    const-string v1, "Default placement was not found"

    .line 918
    .local v1, "noDefaultPlacement":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v1, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 924
    .end local v1    # "noDefaultPlacement":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 921
    :catch_0
    move-exception v0

    .line 922
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public declared-synchronized initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 143
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 146
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    .line 147
    iput-object p3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    .line 148
    iput-object p2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->prepareStateForInit()V

    .line 152
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "userId"

    invoke-virtual {v1, v2, p3}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v1

    const-string v2, "appKey"

    invoke-virtual {v1, v2, p2}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->putKey(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    :cond_1
    new-instance v0, Lcom/supersonic/eventsmodule/EventData;

    const/4 v1, 0x1

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 158
    .local v0, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 160
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    invoke-interface {v1}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onRewardedVideoInitSuccess()V

    .line 162
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 163
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenForInit:Z

    .line 165
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/supersonic/environment/NetworkStateReceiver;

    if-nez v1, :cond_2

    .line 166
    new-instance v1, Lcom/supersonic/environment/NetworkStateReceiver;

    invoke-direct {v1, p1, p0}, Lcom/supersonic/environment/NetworkStateReceiver;-><init>(Landroid/content/Context;Lcom/supersonic/environment/NetworkStateReceiver$NetworkStateReceiverListener;)V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/supersonic/environment/NetworkStateReceiver;

    .line 167
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mNetworkStateReceiver:Lcom/supersonic/environment/NetworkStateReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;

    invoke-direct {v2, p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager$1;-><init>(Lcom/supersonic/mediationsdk/RewardedVideoManager;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    .end local v0    # "event":Lcom/supersonic/eventsmodule/EventData;
    :goto_0
    monitor-exit p0

    return-void

    .line 188
    .restart local v0    # "event":Lcom/supersonic/eventsmodule/EventData;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->initRewardedVideoRunnable:Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 143
    .end local v0    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 191
    :cond_4
    :try_start_2
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": Multiple calls to init are not allowed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 454
    monitor-enter p0

    :try_start_0
    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_1

    .line 465
    :cond_0
    :goto_0
    monitor-exit p0

    return v3

    .line 457
    :cond_1
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 458
    .local v2, "tepmAvailableAdaptersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 459
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 460
    const/4 v3, 0x1

    goto :goto_0

    .line 462
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 454
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "tepmAvailableAdaptersList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/mediationsdk/AbstractAdapter;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onNetworkAvailabilityChanged(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 868
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mShouldTrackNetworkState:Z

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Network Availability Changed To: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 871
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->shouldNotifyNetworkAvailabilityChanged(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    if-nez p1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z

    .line 873
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsRevived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v0, p1, v3}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onVideoAvailabilityChanged(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 876
    :cond_0
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenForInit:Z

    if-eqz v0, :cond_2

    .line 877
    if-eqz p1, :cond_2

    .line 878
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 879
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mCountDownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 882
    :cond_1
    iput-boolean v2, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenForInit:Z

    .line 883
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsRevived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 884
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->initRewardedVideoRunnable:Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 887
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 872
    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 346
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    .line 341
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 521
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onRewardedVideoAdClosed()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 523
    new-instance v0, Lcom/supersonic/eventsmodule/EventData;

    const/4 v1, 0x6

    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 524
    .local v0, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 527
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    invoke-interface {v1}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onRewardedVideoAdClosed()V

    .line 528
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->notifyIsAdAvailableForStatistics()V

    .line 529
    return-void
.end method

.method public onRewardedVideoAdOpened(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 5
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 511
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":onRewardedVideoAdOpened()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 513
    new-instance v0, Lcom/supersonic/eventsmodule/EventData;

    const/4 v1, 0x5

    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 514
    .local v0, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 516
    iget-object v1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    invoke-interface {v1}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onRewardedVideoAdOpened()V

    .line 517
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 9
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/Placement;
    .param p2, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 756
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":onRewardedVideoAdRewarded("

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

    .line 758
    if-nez p1, :cond_0

    .line 759
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object p1

    .line 762
    :cond_0
    invoke-static {p2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;

    move-result-object v0

    .line 764
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "placement"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 765
    const-string v5, "rewardName"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 766
    const-string v5, "rewardAmount"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->getRewardAmount()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 771
    :goto_0
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v5, 0xa

    invoke-direct {v2, v5, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 773
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 774
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/supersonic/eventsmodule/EventData;->getTimeStamp()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAppKey:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 775
    .local v3, "strToTransId":Ljava/lang/String;
    invoke-static {v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getTransId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 777
    .local v4, "transId":Ljava/lang/String;
    const-string v5, "transId"

    invoke-virtual {v2, v5, v4}, Lcom/supersonic/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 779
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v5

    check-cast v5, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/SupersonicObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 780
    const-string v6, "dynamicUserId"

    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v5

    check-cast v5, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/SupersonicObject;->getDynamicUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/supersonic/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 783
    .end local v3    # "strToTransId":Ljava/lang/String;
    .end local v4    # "transId":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 785
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    invoke-interface {v5, p1}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;)V

    .line 786
    return-void

    .line 767
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 768
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 4
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .param p2, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":onRewardedVideoShowFail("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 494
    iget-object v0, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    invoke-interface {v0, p1}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 495
    return-void
.end method

.method public declared-synchronized onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 7
    .param p1, "available"    # Z
    .param p2, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 534
    monitor-enter p0

    :try_start_0
    iget-boolean v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mPauseSmartLoadDueToNetworkUnavailability:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 536
    :try_start_1
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":onVideoAvailabilityChanged(available:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 538
    invoke-static {p2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 540
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_2
    const-string v3, "status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 545
    :goto_0
    :try_start_3
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 546
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 548
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mExhaustedAdapters:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 550
    if-eqz p1, :cond_1

    .line 551
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smart Loading - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved to \'Available\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 552
    const/4 v3, 0x0

    invoke-virtual {p0, p2, v3}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addAvailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;Z)V

    .line 554
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 555
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsRevived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v3, v4, v5}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onVideoAvailabilityChanged(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 577
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    .line 541
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 542
    .local v1, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 572
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 573
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_5
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVideoAvailabilityChanged(available:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "provider:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 534
    .end local v1    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 561
    .restart local v0    # "data":Lorg/json/JSONObject;
    .restart local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :cond_1
    :try_start_6
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Smart Loading - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " moved to \'Not Available\' list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 562
    invoke-direct {p0, p2}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->addUnavailableRewardedVideoAdapter(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 564
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->shouldNotifyAvailabilityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 565
    iget-object v3, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsAdAvailable:Z

    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsRevived:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-interface {v3, v4, v5}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onVideoAvailabilityChanged(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    .line 568
    :cond_2
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->loadNextAdapter()Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 569
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method public setAge(I)V
    .locals 0
    .param p1, "age"    # I

    .prologue
    .line 351
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 356
    return-void
.end method

.method public setInternalRewardedVideoListener(Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;)V
    .locals 0
    .param p1, "internalRewardedVideoListener"    # Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    .prologue
    .line 475
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mListenersWrapper:Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    .line 476
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 0
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 361
    return-void
.end method

.method public setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 0
    .param p1, "rewardedVideoListener"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    .line 471
    return-void
.end method

.method public declared-synchronized showRewardedVideo(Ljava/lang/String;)V
    .locals 11
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 371
    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 372
    const-string v7, "Rewarded Video"

    invoke-static {v7}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionShowFailError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 376
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->sendShowCheckAvailabilityEvents(Ljava/lang/String;)V

    .line 378
    iget-object v7, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mAvailableAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 379
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->isRewardedVideoAvailable()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 381
    iget-object v7, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->isUltraEventsEnabled()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 383
    iget-object v7, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v5

    .line 386
    .local v5, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getUrl()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementId()I

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportImpression(Ljava/lang/String;ZI)V

    .line 389
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getRewardedVideoPriority()I

    move-result v6

    .line 390
    .local v6, "priority":I
    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementId()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->reportFalseImpressionsOnHigherPriority(II)V

    .line 393
    .end local v5    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    .end local v6    # "priority":I
    :cond_2
    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getProviderAdditionalData(Lcom/supersonic/mediationsdk/AbstractAdapter;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 395
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_2
    const-string v7, "placement"

    invoke-virtual {v1, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    :goto_2
    :try_start_3
    new-instance v3, Lcom/supersonic/eventsmodule/EventData;

    const/4 v7, 0x2

    invoke-direct {v3, v7, v1}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 401
    .local v3, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 403
    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->showRewardedVideo(Ljava/lang/String;)V

    .line 405
    iget-object v7, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->getPlacementByName(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/supersonic/mediationsdk/utils/CappingManager;->incrementShowCounter(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/Placement;)V

    .line 407
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->increaseNumberOfVideosPlayed()V

    .line 408
    iget-object v7, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v8, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getNumberOfVideosPlayed()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxRVAdsPerIteration()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " videos played"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 411
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getNumberOfVideosPlayed()I

    move-result v7

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getMaxRVAdsPerIteration()I

    move-result v8

    if-ne v7, v8, :cond_3

    .line 412
    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->completeAdapterIteration(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 414
    :cond_3
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->completeIterationRound()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 371
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v3    # "event":Lcom/supersonic/eventsmodule/EventData;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 396
    .restart local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .restart local v1    # "data":Lorg/json/JSONObject;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v2

    .line 397
    .local v2, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 419
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 420
    new-instance v2, Ljava/lang/Exception;

    const-string v7, "FailedToShowVideoException"

    invoke-direct {v2, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 421
    .local v2, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v8, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Failed to show video"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1
.end method
