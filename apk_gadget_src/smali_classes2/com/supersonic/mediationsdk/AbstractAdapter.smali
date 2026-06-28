.class public abstract Lcom/supersonic/mediationsdk/AbstractAdapter;
.super Ljava/lang/Object;
.source "AbstractAdapter.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/logger/LoggingApi;
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialAdapterApi;
.implements Lcom/supersonic/mediationsdk/sdk/RewardedVideoAdapterApi;


# instance fields
.field private mISInitTimerTask:Ljava/util/TimerTask;

.field private mISLoadTimerTask:Ljava/util/TimerTask;

.field private mInterstitialConfig:Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

.field private mInterstitialPriority:I

.field private mInterstitialTimeout:I

.field private mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

.field private mNumberOfAdsPlayed:I

.field private mNumberOfVideosPlayed:I

.field private mPluginFrameworkVersion:Ljava/lang/String;

.field private mPluginType:Ljava/lang/String;

.field private mProviderName:Ljava/lang/String;

.field private mProviderUrl:Ljava/lang/String;

.field private mRVTimerTask:Ljava/util/TimerTask;

.field protected mRewardedVideoConfig:Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

.field private mRewardedVideoPriority:I

.field private mRewardedVideoTimeout:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "providerUrl"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInterstitialPriority:I

    .line 40
    iput v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRewardedVideoPriority:I

    .line 53
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 56
    if-nez p1, :cond_0

    .line 57
    const-string p1, ""

    .line 59
    :cond_0
    if-nez p2, :cond_1

    .line 60
    const-string p2, ""

    .line 62
    :cond_1
    iput-object p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mProviderUrl:Ljava/lang/String;

    .line 65
    iput v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfVideosPlayed:I

    .line 66
    iput v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfAdsPlayed:I

    .line 67
    return-void
.end method


# virtual methods
.method protected cancelISInitTimer()V
    .locals 2

    .prologue
    .line 219
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 221
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected cancelISLoadTimer()V
    .locals 2

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 246
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected cancelRVTimer()V
    .locals 2

    .prologue
    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/supersonic/mediationsdk/AbstractAdapter;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 195
    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 196
    .local v0, "otherAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 198
    .end local v0    # "otherAdapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public abstract getCoreSDKVersion()Ljava/lang/String;
.end method

.method public getInterstitialPriority()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInterstitialPriority:I

    return v0
.end method

.method public abstract getMaxISAdsPerIteration()I
.end method

.method public abstract getMaxRVAdsPerIteration()I
.end method

.method public getNumberOfAdsPlayed()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfAdsPlayed:I

    return v0
.end method

.method public getNumberOfVideosPlayed()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfVideosPlayed:I

    return v0
.end method

.method public getPluginFrameworkVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mPluginFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mPluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mProviderName:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardedVideoPriority()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRewardedVideoPriority:I

    return v0
.end method

.method getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mProviderUrl:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getVersion()Ljava/lang/String;
.end method

.method public increaseNumberOfAdsPlayed()V
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfAdsPlayed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfAdsPlayed:I

    .line 75
    return-void
.end method

.method public increaseNumberOfVideosPlayed()V
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfVideosPlayed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfVideosPlayed:I

    .line 87
    return-void
.end method

.method protected log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 1
    .param p1, "tag"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "logLevel"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->onLog(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 148
    return-void
.end method

.method public resetNumberOfAdsPlayed()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfAdsPlayed:I

    .line 79
    return-void
.end method

.method public resetNumberOfVideosPlayed()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mNumberOfVideosPlayed:I

    .line 91
    return-void
.end method

.method public setInterstitialConfigurations(Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;)V
    .locals 0
    .param p1, "interstitialConfigurations"    # Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInterstitialConfig:Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    .line 123
    return-void
.end method

.method public setInterstitialPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInterstitialPriority:I

    .line 103
    return-void
.end method

.method public setInterstitialTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInterstitialTimeout:I

    .line 99
    return-void
.end method

.method public setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V
    .locals 0
    .param p1, "logListener"    # Lcom/supersonic/mediationsdk/logger/LogListener;

    .prologue
    .line 277
    return-void
.end method

.method setPluginData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pluginType"    # Ljava/lang/String;
    .param p2, "pluginFrameworkVersion"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mPluginType:Ljava/lang/String;

    .line 131
    iput-object p2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mPluginFrameworkVersion:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setRewardedVideoConfigurations(Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;)V
    .locals 0
    .param p1, "rewardedVideoConfigurations"    # Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRewardedVideoConfig:Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    .line 127
    return-void
.end method

.method public setRewardedVideoPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRewardedVideoPriority:I

    .line 115
    return-void
.end method

.method public setRewardedVideoTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRewardedVideoTimeout:I

    .line 111
    return-void
.end method

.method protected startISInitTimer(Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    .prologue
    .line 207
    new-instance v1, Lcom/supersonic/mediationsdk/AbstractAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter$1;-><init>(Lcom/supersonic/mediationsdk/AbstractAdapter;Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;

    .line 213
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 214
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mISInitTimerTask:Ljava/util/TimerTask;

    iget v2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInterstitialTimeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 215
    return-void
.end method

.method protected startISLoadTimer(Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    .prologue
    .line 229
    new-instance v1, Lcom/supersonic/mediationsdk/AbstractAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter$2;-><init>(Lcom/supersonic/mediationsdk/AbstractAdapter;Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;

    .line 238
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 239
    .local v0, "timer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mISLoadTimerTask:Ljava/util/TimerTask;

    iget v2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mInterstitialTimeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 240
    return-void
.end method

.method protected startRVTimer(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 4
    .param p1, "listener"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 254
    new-instance v1, Lcom/supersonic/mediationsdk/AbstractAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter$3;-><init>(Lcom/supersonic/mediationsdk/AbstractAdapter;Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;

    .line 260
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 261
    .local v0, "rvtimer":Ljava/util/Timer;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRVTimerTask:Ljava/util/TimerTask;

    iget v2, p0, Lcom/supersonic/mediationsdk/AbstractAdapter;->mRewardedVideoTimeout:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 262
    return-void
.end method

.method protected validateConfigBeforeInitAndCallAvailabilityChangedForInvalid(Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 5
    .param p1, "config"    # Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;
    .param p2, "manager"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 176
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isRVConfigValid()Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v1

    .line 178
    .local v1, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 179
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 181
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/supersonic/mediationsdk/AbstractAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 183
    if-eqz p2, :cond_0

    .line 184
    const/4 v2, 0x0

    invoke-interface {p2, v2, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 188
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-object v1
.end method

.method protected validateConfigBeforeInitAndCallInitFailForInvalid(Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 5
    .param p1, "config"    # Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;
    .param p2, "manager"    # Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    .prologue
    .line 162
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isISConfigValid()Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v1

    .line 164
    .local v1, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 166
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/supersonic/mediationsdk/AbstractAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 168
    if-eqz p2, :cond_0

    .line 169
    invoke-interface {p2, v0, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 172
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-object v1
.end method
