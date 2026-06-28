.class public Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;
.super Ljava/lang/Object;
.source "ListenersWrapper.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;
.implements Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
.implements Lcom/supersonic/mediationsdk/sdk/OfferwallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;
    }
.end annotation


# instance fields
.field private mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

.field private mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

.field private mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

.field private mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$1;)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    .line 34
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->start()V

    .line 35
    return-void
.end method

.method static synthetic access$100(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/InterstitialListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)Lcom/supersonic/mediationsdk/sdk/OfferwallListener;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    return-object v0
.end method

.method private canSendCallback(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "productListener"    # Ljava/lang/Object;

    .prologue
    .line 38
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onVideoAvailabilityChanged(ZZLjava/lang/String;)V
    .locals 7
    .param p1, "available"    # Z
    .param p2, "revived"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onVideoAvailabilityChanged(available:"

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

    .line 160
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 162
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 164
    const-string v3, "revived"

    invoke-virtual {v0, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 166
    :cond_0
    if-nez p1, :cond_1

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 167
    const-string v3, "reason"

    invoke-virtual {v0, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_1
    :goto_0
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 174
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 176
    iget-object v3, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 177
    new-instance v3, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$5;

    invoke-direct {v3, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$5;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Z)V

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 184
    :cond_2
    return-void

    .line 169
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendCallback(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "callbackRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 42
    iget-object v1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    if-nez v1, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mCallbackHandlerThread:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$CallbackHandlerThread;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 46
    .local v0, "callbackHandler":Landroid/os/Handler;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public onGetOfferwallCreditsFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4
    .param p1, "supersonicError"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 508
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGetOfferwallCreditsFail("

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

    .line 510
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$23;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$23;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 518
    :cond_0
    return-void
.end method

.method public onInterstitialClick()V
    .locals 4

    .prologue
    .line 408
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialClick()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 410
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$17;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$17;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 418
    :cond_0
    return-void
.end method

.method public onInterstitialClose()V
    .locals 4

    .prologue
    .line 422
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialClose()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 424
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$18;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$18;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 432
    :cond_0
    return-void
.end method

.method public onInterstitialInitFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 7
    .param p1, "supersonicError"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 345
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterstitialInitFailed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 347
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 349
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 355
    .local v2, "mEvent":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 357
    iget-object v3, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 358
    new-instance v3, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$14;

    invoke-direct {v3, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$14;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 365
    :cond_0
    return-void

    .line 350
    .end local v2    # "mEvent":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 351
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInterstitialInitSuccess()V
    .locals 7

    .prologue
    .line 257
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v5, "onInterstitialInitSuccess()"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 259
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 261
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v3, 0x18

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 267
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 269
    iget-object v3, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    new-instance v3, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$10;

    invoke-direct {v3, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$10;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 277
    :cond_0
    return-void

    .line 262
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInterstitialLoadFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 7
    .param p1, "supersonicError"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 305
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterstitialLoadFailed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 307
    if-eqz p1, :cond_0

    const/16 v3, 0x208

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorCode()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 308
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 310
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :goto_0
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v3, 0x1b

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 316
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 319
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :cond_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    new-instance v3, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$12;

    invoke-direct {v3, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$12;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 327
    :cond_1
    return-void

    .line 311
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInterstitialOpen()V
    .locals 4

    .prologue
    .line 331
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialOpen()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 333
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$13;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$13;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 341
    :cond_0
    return-void
.end method

.method public onInterstitialReady()V
    .locals 7

    .prologue
    .line 281
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v5, "onInterstitialReady()"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 283
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 285
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v3, 0x1b

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 291
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 293
    iget-object v3, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 294
    new-instance v3, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$11;

    invoke-direct {v3, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$11;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 301
    :cond_0
    return-void

    .line 286
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInterstitialShowFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 8
    .param p1, "supersonicError"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    const/4 v7, 0x1

    .line 383
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterstitialShowFailed("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 385
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 386
    .local v0, "data":Lorg/json/JSONObject;
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorCode()I

    move-result v3

    const/16 v4, 0x20c

    if-ne v3, v4, :cond_0

    .line 388
    :try_start_0
    const-string v3, "reason"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :cond_0
    :goto_0
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v3, 0x1d

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 394
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 396
    iget-object v3, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 397
    new-instance v3, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$16;

    invoke-direct {v3, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$16;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 404
    :cond_1
    return-void

    .line 389
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 390
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onInterstitialShowSuccess()V
    .locals 4

    .prologue
    .line 369
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onInterstitialShowSuccess()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 371
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mInterstitialListener:Lcom/supersonic/mediationsdk/sdk/InterstitialListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$15;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$15;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 379
    :cond_0
    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .locals 5
    .param p1, "credits"    # I
    .param p2, "totalCredits"    # I
    .param p3, "totalCreditsFlag"    # Z

    .prologue
    .line 494
    const/4 v0, 0x0

    .line 496
    .local v0, "result":Z
    iget-object v1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result v0

    .line 499
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onOfferwallAdCredited(credits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "totalCredits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "totalCreditsFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 503
    return v0
.end method

.method public onOfferwallClosed()V
    .locals 4

    .prologue
    .line 522
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onOfferwallClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 524
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$24;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$24;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 532
    :cond_0
    return-void
.end method

.method public onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4
    .param p1, "supersonicError"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 452
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallInitFail("

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

    .line 454
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$20;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$20;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 462
    :cond_0
    return-void
.end method

.method public onOfferwallInitSuccess()V
    .locals 4

    .prologue
    .line 438
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onOfferwallInitSuccess()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 440
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$19;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$19;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 448
    :cond_0
    return-void
.end method

.method public onOfferwallOpened()V
    .locals 4

    .prologue
    .line 466
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onOfferwallOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 468
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$21;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$21;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 476
    :cond_0
    return-void
.end method

.method public onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4
    .param p1, "supersonicError"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 480
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onOfferwallShowFail("

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

    .line 482
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$22;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$22;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 490
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .locals 4

    .prologue
    .line 129
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onRewardedVideoAdClosed()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 131
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$4;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$4;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "onRewardedVideoAdOpened()"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 117
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$3;

    invoke-direct {v0, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$3;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 125
    :cond_0
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;)V
    .locals 4
    .param p1, "placement"    # Lcom/supersonic/mediationsdk/model/Placement;

    .prologue
    .line 216
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onRewardedVideoAdRewarded("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/model/Placement;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 218
    iget-object v0, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$8;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$8;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/model/Placement;)V

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 226
    :cond_0
    return-void
.end method

.method public onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 7
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 91
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRewardedVideoInitFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 93
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 95
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 101
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 103
    iget-object v3, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    new-instance v3, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$2;

    invoke-direct {v3, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$2;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 111
    :cond_0
    return-void

    .line 96
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRewardedVideoInitSuccess()V
    .locals 7

    .prologue
    .line 67
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v5, "onRewardedVideoInitSuccess()"

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 69
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 71
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    const-string v4, "true"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 77
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 79
    iget-object v3, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    new-instance v3, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$1;

    invoke-direct {v3, p0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$1;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;)V

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 87
    :cond_0
    return-void

    .line 72
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 8
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    const/4 v7, 0x1

    .line 230
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->CALLBACK:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRewardedVideoShowFail("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 232
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v0

    .line 234
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "status"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->getErrorCode()I

    move-result v3

    const/16 v4, 0x20c

    if-ne v3, v4, :cond_0

    .line 236
    const-string v3, "reason"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :cond_0
    :goto_0
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v3, 0x11

    invoke-direct {v2, v3, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 242
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 244
    iget-object v3, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->canSendCallback(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 245
    new-instance v3, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$9;

    invoke-direct {v3, p0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper$9;-><init>(Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->sendCallback(Ljava/lang/Runnable;)V

    .line 252
    :cond_1
    return-void

    .line 238
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_0
    move-exception v1

    .line 239
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public onVideoAvailabilityChanged(Z)V
    .locals 2
    .param p1, "available"    # Z

    .prologue
    .line 143
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onVideoAvailabilityChanged(ZZLjava/lang/String;)V

    .line 144
    return-void
.end method

.method public onVideoAvailabilityChanged(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .param p1, "available"    # Z
    .param p2, "revived"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 153
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    .line 154
    .local v0, "isRevived":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onVideoAvailabilityChanged(ZZLjava/lang/String;)V

    .line 155
    return-void
.end method

.method public onVideoIsNotAvailable(Ljava/lang/String;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 148
    invoke-direct {p0, v0, v0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onVideoAvailabilityChanged(ZZLjava/lang/String;)V

    .line 149
    return-void
.end method

.method public setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 0
    .param p1, "rewardedVideoListener"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->mRewardedVideoListener:Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .line 53
    return-void
.end method
