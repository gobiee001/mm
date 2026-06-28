.class abstract Lcom/supersonic/mediationsdk/AbstractAdUnitManager;
.super Ljava/lang/Object;
.source "AbstractAdUnitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;
    }
.end annotation


# instance fields
.field final GENERAL_PROPERTIES_APP_KEY:Ljava/lang/String;

.field final GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

.field mActivity:Landroid/app/Activity;

.field mAppKey:Ljava/lang/String;

.field mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mDidReportInit:Z

.field protected mHandler:Landroid/os/Handler;

.field protected mHandlerThread:Landroid/os/HandlerThread;

.field protected mIsRevived:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mListenForInit:Z

.field mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

.field protected mRetryAvailabilityLimit:I

.field protected mRetryCounter:I

.field protected mRetryDelay:I

.field protected mRetryGrowLimit:I

.field protected mRetryLimit:I

.field mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

.field mShouldTrackNetworkState:Z

.field mUserId:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "userId"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;->GENERAL_PROPERTIES_USER_ID:Ljava/lang/String;

    .line 21
    const-string v0, "appKey"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;->GENERAL_PROPERTIES_APP_KEY:Ljava/lang/String;

    .line 33
    iput-boolean v2, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;->mShouldTrackNetworkState:Z

    .line 34
    iput-boolean v2, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;->mListenForInit:Z

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;->mIsRevived:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;->mAtomicShouldPerformInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    iput-boolean v2, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;->mDidReportInit:Z

    .line 50
    return-void
.end method


# virtual methods
.method protected setCustomParams(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 8
    .param p1, "providerAdapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 74
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v4

    check-cast v4, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/SupersonicObject;->getAge()Ljava/lang/Integer;

    move-result-object v0

    .line 75
    .local v0, "age":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setAge(I)V

    .line 78
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v4

    check-cast v4, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/SupersonicObject;->getGender()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "gender":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {p1, v2}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setGender(Ljava/lang/String;)V

    .line 82
    :cond_1
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v4

    check-cast v4, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/SupersonicObject;->getMediationSegment()Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "segment":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 84
    invoke-virtual {p1, v3}, Lcom/supersonic/mediationsdk/AbstractAdapter;->setMediationSegment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "age":Ljava/lang/Integer;
    .end local v2    # "gender":Ljava/lang/String;
    .end local v3    # "segment":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/AbstractAdUnitManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":setCustomParams():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method
