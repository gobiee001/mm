.class Lcom/supersonic/mediationsdk/RewardedVideoManager$2;
.super Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;
.source "RewardedVideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/supersonic/mediationsdk/RewardedVideoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;


# direct methods
.method constructor <init>(Lcom/supersonic/mediationsdk/RewardedVideoManager;)V
    .locals 0

    .prologue
    .line 195
    iput-object p1, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/AbstractAdUnitManager$InitRunnable;-><init>(Lcom/supersonic/mediationsdk/AbstractAdUnitManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 200
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v4

    check-cast v4, Lcom/supersonic/mediationsdk/SupersonicObject;

    .line 203
    .local v4, "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v6, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v6, v6, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mActivity:Landroid/app/Activity;

    iget-object v7, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v7, v7, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mUserId:Ljava/lang/String;

    iget-object v8, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->listener:Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;

    invoke-virtual {v4, v6, v7, v8}, Lcom/supersonic/mediationsdk/SupersonicObject;->getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v6

    iput-object v6, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .line 205
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v5, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v5, :cond_3

    .line 206
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v5, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v5, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    const-string v6, "RV"

    invoke-virtual {v5, v6}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isValidResponse(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 210
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v5, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mServerResponseWrapper:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoAdaptersSmartLoadAmount()I

    move-result v3

    .line 212
    .local v3, "numOfAdaptersToLoad":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 213
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$300(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/AbstractAdapter;

    move-result-object v2

    .line 214
    .local v2, "lastLoadedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    if-nez v2, :cond_1

    .line 247
    .end local v1    # "i":I
    .end local v2    # "lastLoadedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v3    # "numOfAdaptersToLoad":I
    .end local v4    # "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    :cond_0
    :goto_1
    return-void

    .line 212
    .restart local v1    # "i":I
    .restart local v2    # "lastLoadedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .restart local v3    # "numOfAdaptersToLoad":I
    .restart local v4    # "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    .end local v1    # "i":I
    .end local v2    # "lastLoadedAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v3    # "numOfAdaptersToLoad":I
    :cond_2
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$100(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 219
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$102(Lcom/supersonic/mediationsdk/RewardedVideoManager;Z)Z

    .line 220
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$200(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    move-result-object v5

    const-string v6, "serverResponseIsNotValid"

    invoke-interface {v5, v6}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onVideoIsNotAvailable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 244
    .end local v4    # "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "sso":Lcom/supersonic/mediationsdk/SupersonicObject;
    :cond_3
    :try_start_1
    iget-boolean v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->isRecoverable:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget v5, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryCounter:I

    iget-object v6, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget v6, v6, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryLimit:I

    if-ge v5, v6, :cond_4

    .line 225
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v5, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mIsRevived:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 226
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v5, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget v6, v6, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryDelay:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget v5, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryCounter:I

    iget-object v6, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget v6, v6, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryGrowLimit:I

    if-ge v5, v6, :cond_4

    .line 228
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget v6, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryDelay:I

    mul-int/lit8 v6, v6, 0x2

    iput v6, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryDelay:I

    .line 231
    :cond_4
    iget-boolean v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->isRecoverable:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget v5, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryCounter:I

    iget-object v6, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget v6, v6, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryAvailabilityLimit:I

    if-ne v5, v6, :cond_7

    .line 232
    :cond_5
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$100(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 233
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$102(Lcom/supersonic/mediationsdk/RewardedVideoManager;Z)Z

    .line 234
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->reason:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 235
    const-string v5, "noServerResponse"

    iput-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->reason:Ljava/lang/String;

    .line 237
    :cond_6
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-static {v5}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->access$200(Lcom/supersonic/mediationsdk/RewardedVideoManager;)Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;

    move-result-object v5

    iget-object v6, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->reason:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;->onVideoIsNotAvailable(Ljava/lang/String;)V

    .line 238
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v5, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v6, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v7, "Mediation availability false reason: No server response"

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 242
    :cond_7
    iget-object v5, p0, Lcom/supersonic/mediationsdk/RewardedVideoManager$2;->this$0:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget v6, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryCounter:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/supersonic/mediationsdk/RewardedVideoManager;->mRetryCounter:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
