.class public Lcom/supersonic/mediationsdk/SupersonicObject;
.super Ljava/lang/Object;
.source "SupersonicObject.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/Supersonic;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonic/mediationsdk/SupersonicObject$1;,
        Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

.field private mActivity:Landroid/app/Activity;

.field private mAppKey:Ljava/lang/String;

.field private mAtomicBaseInit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDynamicUserId:Ljava/lang/String;

.field private mISAdaptersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

.field private mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

.field private mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

.field private mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

.field private mPublisherLogger:Lcom/supersonic/mediationsdk/logger/PublisherLogger;

.field private mRVAdaptersList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/mediationsdk/AbstractAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

.field private mSegment:Ljava/lang/String;

.field private mUserAge:Ljava/lang/Integer;

.field private mUserGender:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private final serverResponseLocker:Ljava/lang/Object;

.field private shouldSendGetInstanceEvent:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->serverResponseLocker:Ljava/lang/Object;

    .line 62
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .line 64
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAppKey:Ljava/lang/String;

    .line 65
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserId:Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserAge:Ljava/lang/Integer;

    .line 67
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserGender:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mSegment:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mDynamicUserId:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->initializeManagers()V

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->shouldSendGetInstanceEvent:Z

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAtomicBaseInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRVAdaptersList:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mISAdaptersList:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method private baseInit(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAtomicBaseInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAtomicBaseInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/SupersonicObject;->prepareForInit(Landroid/app/Activity;Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method private connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;

    .prologue
    const/4 v4, 0x0

    .line 787
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v4

    .line 810
    :goto_0
    return-object v1

    .line 791
    :cond_0
    const/4 v1, 0x0

    .line 794
    .local v1, "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/SupersonicObject;->getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 795
    .local v0, "gaid":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p2, v0}, Lcom/supersonic/mediationsdk/server/ServerURL;->getCPVProvidersURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3}, Lcom/supersonic/mediationsdk/server/HttpFunctions;->getStringFromURL(Ljava/lang/String;Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;)Ljava/lang/String;

    move-result-object v3

    .line 797
    .local v3, "serverResponseString":Ljava/lang/String;
    if-nez v3, :cond_1

    move-object v1, v4

    .line 798
    goto :goto_0

    .line 800
    :cond_1
    new-instance v2, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, p1, v5, p2, v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .end local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .local v2, "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v2, v5}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isValidResponse(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    if-nez v5, :cond_2

    move-object v1, v4

    .line 804
    goto :goto_0

    :cond_2
    move-object v1, v2

    .line 808
    .end local v2    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    goto :goto_0

    .line 806
    .end local v0    # "gaid":Ljava/lang/String;
    .end local v3    # "serverResponseString":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v0    # "gaid":Ljava/lang/String;
    .restart local v2    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v3    # "serverResponseString":Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .restart local v1    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    goto :goto_0
.end method

.method private getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 750
    const/4 v6, 0x0

    .line 753
    .local v6, "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getLastResponse(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 756
    .local v2, "cachedResponseString":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 761
    .local v1, "cachedJsonObject":Lorg/json/JSONObject;
    :goto_0
    const-string v8, "appKey"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, "cachedAppKey":Ljava/lang/String;
    const-string v8, "userId"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 763
    .local v4, "cachedUserId":Ljava/lang/String;
    const-string v8, "response"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 765
    .local v3, "cachedSettings":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 771
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 773
    new-instance v6, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .end local v6    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    invoke-direct {v6, p1, v0, v4, v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    .restart local v6    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    invoke-static {v0, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildUsingCachedConfigurationError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v7

    .line 776
    .local v7, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v8, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v9, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 779
    iget-object v8, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v9, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 783
    .end local v7    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-object v6

    .line 757
    .end local v0    # "cachedAppKey":Ljava/lang/String;
    .end local v1    # "cachedJsonObject":Lorg/json/JSONObject;
    .end local v3    # "cachedSettings":Ljava/lang/String;
    .end local v4    # "cachedUserId":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 758
    .local v5, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .restart local v1    # "cachedJsonObject":Lorg/json/JSONObject;
    goto :goto_0
.end method

.method private getCappingMessage(Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;
    .param p2, "cappingStatus"    # Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    .prologue
    const/4 v0, 0x0

    .line 1184
    if-nez p2, :cond_0

    .line 1196
    :goto_0
    return-object v0

    .line 1187
    :cond_0
    sget-object v1, Lcom/supersonic/mediationsdk/SupersonicObject$1;->$SwitchMap$com$supersonic$mediationsdk$utils$CappingManager$ECappingStatus:[I

    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1189
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is capped by disabled delivery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1191
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has reached its capping limit"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1193
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Placement "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has reached it\'s limit as defined per pace"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1187
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getInterstitialCappingStatus(Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1132
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    if-nez v2, :cond_0

    .line 1133
    sget-object v0, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 1142
    :goto_0
    return-object v0

    .line 1136
    :cond_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-virtual {v2, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->getPlacementByName(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    move-result-object v1

    .line 1137
    .local v1, "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    if-nez v1, :cond_1

    .line 1138
    sget-object v0, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    goto :goto_0

    .line 1141
    :cond_1
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/supersonic/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/InterstitialPlacement;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    .line 1142
    .local v0, "cappingStatus":Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    goto :goto_0
.end method

.method private getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 1146
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    if-nez v2, :cond_0

    .line 1147
    sget-object v0, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    .line 1156
    :goto_0
    return-object v0

    .line 1150
    :cond_0
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-virtual {v2, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->getPlacementByName(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v1

    .line 1151
    .local v1, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    if-nez v1, :cond_1

    .line 1152
    sget-object v0, Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;->NOT_CAPPED:Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    goto :goto_0

    .line 1155
    :cond_1
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mActivity:Landroid/app/Activity;

    invoke-static {v2, v1}, Lcom/supersonic/mediationsdk/utils/CappingManager;->isPlacementCapped(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/Placement;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v0

    .line 1156
    .local v0, "cappingStatus":Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    goto :goto_0
.end method

.method private initializeEventsSettings(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .locals 4
    .param p1, "response"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 819
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v1

    .line 820
    .local v1, "isRVEventsEnabled":Z
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->isEventsEnabled()Z

    move-result v0

    .line 822
    .local v0, "isISEventsEnabled":Z
    if-eqz v1, :cond_0

    .line 823
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 824
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 825
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->setMaxNumberOfEvents(I)V

    .line 826
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->setBackupThreshold(I)V

    .line 827
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 831
    :goto_0
    if-eqz v0, :cond_1

    .line 832
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->getEventsType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->setFormatterType(Ljava/lang/String;Landroid/content/Context;)V

    .line 833
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->getEventsURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V

    .line 834
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->getMaxNumberOfEvents()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->setMaxNumberOfEvents(I)V

    .line 835
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->getEventsBackupThreshold()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->setBackupThreshold(I)V

    .line 836
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialEventsConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    move-result-object v3

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->getOptOutEvents()[I

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->setOptOutEvents([ILandroid/content/Context;)V

    .line 839
    :goto_1
    return-void

    .line 829
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->setIsEventsEnabled(Z)V

    goto :goto_0

    .line 838
    :cond_1
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->setIsEventsEnabled(Z)V

    goto :goto_1
.end method

.method private initializeLoggerManager(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 3
    .param p1, "response"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mPublisherLogger:Lcom/supersonic/mediationsdk/logger/PublisherLogger;

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ApplicationLogger;->getPublisherLoggerLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/logger/PublisherLogger;->setDebugLevel(I)V

    .line 843
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    const-string v1, "console"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/ApplicationLogger;->getConsoleLoggerLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    .line 844
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    const-string v1, "server"

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/Configurations;->getApplicationConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;->getLoggerConfigurations()Lcom/supersonic/mediationsdk/model/ApplicationLogger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/model/ApplicationLogger;->getServerLoggerLevel()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->setLoggerDebugLevel(Ljava/lang/String;I)V

    .line 845
    return-void
.end method

.method private initializeManagers()V
    .locals 3

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger(I)Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    .line 255
    new-instance v0, Lcom/supersonic/mediationsdk/logger/PublisherLogger;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/logger/PublisherLogger;-><init>(Lcom/supersonic/mediationsdk/logger/LogListener;I)V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mPublisherLogger:Lcom/supersonic/mediationsdk/logger/PublisherLogger;

    .line 256
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mPublisherLogger:Lcom/supersonic/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->addLogger(Lcom/supersonic/mediationsdk/logger/SupersonicLogger;)V

    .line 258
    new-instance v0, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    .line 260
    new-instance v0, Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/RewardedVideoManager;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    .line 261
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->setInternalRewardedVideoListener(Lcom/supersonic/mediationsdk/InternalRewardedVideoListener;)V

    .line 263
    new-instance v0, Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/InterstitialManager;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    .line 264
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/InterstitialManager;->setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialListener;)V

    .line 266
    new-instance v0, Lcom/supersonic/mediationsdk/OfferwallManager;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/OfferwallManager;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

    .line 267
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mOfferwallManager:Lcom/supersonic/mediationsdk/OfferwallManager;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/OfferwallManager;->setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V

    .line 268
    return-void
.end method

.method private initializeSettingsFromServerResponse(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V
    .locals 0
    .param p1, "response"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 814
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/SupersonicObject;->initializeLoggerManager(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)V

    .line 815
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/SupersonicObject;->initializeEventsSettings(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 816
    return-void
.end method

.method private prepareForInit(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->start(Landroid/content/Context;)V

    .line 207
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->start(Landroid/content/Context;)V

    .line 208
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/supersonic/mediationsdk/server/Server;->notifyUniqueUser(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private declared-synchronized setSupersonicAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appKey"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 879
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAppKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 880
    iput-object p1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAppKey:Ljava/lang/String;

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserId:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 883
    iput-object p2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    :cond_1
    monitor-exit p0

    return-void

    .line 879
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private validateAge(ILcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "age"    # I
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 979
    const/4 v1, 0x5

    if-lt p1, v1, :cond_0

    const/16 v1, 0x78

    if-le p1, v1, :cond_1

    .line 980
    :cond_0
    :try_start_0
    const-string v1, "age"

    const-string v2, "SupersonicAds"

    const-string v3, "age value should be between 5-120"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :cond_1
    :goto_0
    return-void

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "age"

    const-string v2, "SupersonicAds"

    const-string v3, "age value should be between 5-120"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateAlphanumeric(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1011
    if-nez p1, :cond_0

    .line 1012
    const/4 v1, 0x0

    .line 1015
    :goto_0
    return v1

    .line 1014
    :cond_0
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 1015
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private validateAppKey(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 4
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;

    .prologue
    .line 935
    new-instance v1, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 938
    .local v1, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    if-eqz p2, :cond_2

    .line 939
    const/4 v2, 0x5

    const/16 v3, 0xa

    invoke-direct {p0, p2, v2, v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 940
    invoke-direct {p0, p2}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateAlphanumeric(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 941
    const-string v2, "appKey"

    const-string v3, "should contain only english characters and numbers"

    invoke-static {p1, v2, p2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 943
    .local v0, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 956
    .end local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    :goto_0
    return-object v1

    .line 946
    :cond_1
    const-string v2, "appKey"

    const-string v3, "length should be between 5-10 characters"

    invoke-static {p1, v2, p2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 948
    .restart local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 951
    .end local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_2
    const-string v2, "appKey"

    const-string v3, "it\'s missing"

    invoke-static {p1, v2, p2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 953
    .restart local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateAppKeyUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 2
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 908
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateAppKey(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 909
    .local v0, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    invoke-direct {p0, p1, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 913
    :cond_0
    return-object v0
.end method

.method private validateGender(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "gender"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 961
    if-eqz p1, :cond_0

    .line 962
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 964
    const-string v1, "male"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "female"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "unknown"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 967
    const-string v1, "gender"

    const-string v2, "SupersonicAds"

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "gender"

    const-string v2, "SupersonicAds"

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateLength(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "minLength"    # I
    .param p3, "maxLength"    # I

    .prologue
    const/4 v0, 0x0

    .line 1004
    if-nez p1, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private validateSegment(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "segment"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 989
    if-eqz p1, :cond_0

    .line 990
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-le v1, v2, :cond_0

    .line 991
    const-string v1, "segment"

    const-string v2, "SupersonicAds"

    const-string v3, "segment value should not exceed 64 characters."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "segment"

    const-string v2, "SupersonicAds"

    const-string v3, "segment value should not exceed 64 characters."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateUserId(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 4
    .param p1, "adUnit"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 917
    new-instance v1, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 919
    .local v1, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    if-eqz p2, :cond_1

    .line 920
    const/4 v2, 0x1

    const/16 v3, 0x40

    invoke-direct {p0, p2, v2, v3}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateLength(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 921
    const-string v2, "userId"

    const/4 v3, 0x0

    invoke-static {p1, v2, p2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 923
    .local v0, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 931
    .end local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    :goto_0
    return-object v1

    .line 926
    :cond_1
    const-string v2, "userId"

    const-string v3, "it\'s missing"

    invoke-static {p1, v2, p2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidCredentialsError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 928
    .restart local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    invoke-virtual {v1, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized addToAdaptersList(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRVAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRVAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRVAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_0
    monitor-exit p0

    return-void

    .line 217
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addToISAdaptersList(Lcom/supersonic/mediationsdk/AbstractAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lcom/supersonic/mediationsdk/AbstractAdapter;

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mISAdaptersList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mISAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mISAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    :cond_0
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdvertiserId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 1045
    :try_start_0
    invoke-static {p1}, Lcom/supersonic/environment/DeviceStatus;->getAdvertisingIdInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 1046
    .local v0, "deviceInfo":[Ljava/lang/String;
    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    if-eqz v2, :cond_0

    .line 1047
    const/4 v2, 0x0

    aget-object v2, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1052
    .end local v0    # "deviceInfo":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1048
    :catch_0
    move-exception v1

    .line 1049
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, ""

    goto :goto_0

    .line 1052
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "deviceInfo":[Ljava/lang/String;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public declared-synchronized getAge()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 395
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserAge:Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDynamicUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 407
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mDynamicUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getExistingAdapter(Ljava/lang/String;)Lcom/supersonic/mediationsdk/AbstractAdapter;
    .locals 7
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 228
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRVAdaptersList:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 229
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRVAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 230
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_0
    monitor-exit p0

    return-object v0

    .line 235
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mISAdaptersList:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 236
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mISAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 237
    .restart local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/AbstractAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 242
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExistingAdapter exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 245
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserGender:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMediationSegment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mSegment:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServerResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    .line 708
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;

    .prologue
    .line 714
    iget-object v2, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->serverResponseLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 716
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    if-eqz v1, :cond_0

    .line 717
    new-instance v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {v0, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;-><init>(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)V

    monitor-exit v2

    .line 746
    :goto_0
    return-object v0

    .line 723
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->connectAndGetServerResponse(Landroid/content/Context;Ljava/lang/String;Lcom/supersonic/mediationsdk/SupersonicObject$IResponseListener;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    .line 726
    .local v0, "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isValidResponse(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 729
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/SupersonicObject;->getCachedResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    move-result-object v0

    .line 735
    :cond_2
    if-eqz v0, :cond_3

    .line 736
    iput-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .line 737
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveLastResponse(Landroid/content/Context;Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-direct {p0, v1, p1}, Lcom/supersonic/mediationsdk/SupersonicObject;->initializeSettingsFromServerResponse(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;Landroid/content/Context;)V

    .line 742
    :cond_3
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->setHasServerResponse(Z)V

    .line 743
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->setHasServerResponse(Z)V

    .line 744
    monitor-exit v2

    goto :goto_0

    .end local v0    # "response":Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized getSupersonicAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mAppKey:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSupersonicUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mActivity:Landroid/app/Activity;

    .line 156
    const-string v4, "Interstitial"

    invoke-direct {p0, v4, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateAppKeyUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v3

    .line 158
    .local v3, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 159
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onInterstitialInitFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 184
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->setSupersonicAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initInterstitial(appKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "logMessage":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/supersonic/mediationsdk/SupersonicObject;->baseInit(Landroid/app/Activity;Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 173
    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->shouldSendGetInstanceEvent:Z

    if-eqz v4, :cond_1

    .line 174
    new-instance v1, Lcom/supersonic/eventsmodule/EventData;

    const/16 v4, 0xe

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 175
    .local v1, "instanceEvent":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 176
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->shouldSendGetInstanceEvent:Z

    .line 179
    .end local v1    # "instanceEvent":Lcom/supersonic/eventsmodule/EventData;
    :cond_1
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/supersonic/mediationsdk/InterstitialManager;->initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v4, v5, v2, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v4, "Rewarded Video"

    invoke-direct {p0, v4, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateAppKeyUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v3

    .line 90
    .local v3, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 116
    :goto_0
    return-void

    .line 96
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/supersonic/mediationsdk/SupersonicObject;->setSupersonicAppKeyUserId(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initRewardedVideo(appKey:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "logMessage":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/supersonic/mediationsdk/SupersonicObject;->baseInit(Landroid/app/Activity;Ljava/lang/String;)V

    .line 103
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 105
    iget-boolean v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->shouldSendGetInstanceEvent:Z

    if-eqz v4, :cond_1

    .line 106
    new-instance v1, Lcom/supersonic/eventsmodule/EventData;

    const/16 v4, 0xe

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 107
    .local v1, "instanceEvent":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 108
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->shouldSendGetInstanceEvent:Z

    .line 111
    .end local v1    # "instanceEvent":Lcom/supersonic/eventsmodule/EventData;
    :cond_1
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, p1, v5, v6}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v4, v5, v2, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isRewardedVideoAvailable()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 476
    const/4 v3, 0x0

    .line 478
    .local v3, "isAvailable":Z
    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->isRewardedVideoAvailable()Z

    move-result v3

    .line 480
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 482
    .local v0, "data":Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "status"

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 487
    :goto_0
    :try_start_2
    new-instance v2, Lcom/supersonic/eventsmodule/EventData;

    const/16 v4, 0x12

    invoke-direct {v2, v4, v0}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 488
    .local v2, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 490
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRewardedVideoAvailable():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v4, v5, v6, v7}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 497
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "event":Lcom/supersonic/eventsmodule/EventData;
    :goto_1
    return v3

    .line 483
    .restart local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 484
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 491
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v1    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isRewardedVideoAvailable():"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 494
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v6, "isRewardedVideoAvailable()"

    invoke-virtual {v4, v5, v6, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 495
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public loadInterstitial()V
    .locals 6

    .prologue
    .line 515
    const-string v2, "loadInterstitial()"

    .line 516
    .local v2, "logMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 518
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 519
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const-string v4, "Interstitial"

    invoke-static {v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildNoInternetConnectionLoadFailError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onInterstitialLoadFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 531
    :goto_0
    return-void

    .line 523
    :cond_0
    new-instance v1, Lcom/supersonic/eventsmodule/EventData;

    const/16 v3, 0x16

    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 524
    .local v1, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 527
    :try_start_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/InterstitialManager;->loadInterstitial()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v3, v4, v2, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 296
    const-string v3, "onPause()"

    .line 299
    .local v3, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 301
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRVAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 302
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->onPause(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v4, v5, v3, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_0
    return-void

    .line 304
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mISAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 305
    .restart local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->onPause(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 273
    const-string v3, "onResume()"

    .line 276
    .local v3, "logMessage":Ljava/lang/String;
    :try_start_0
    iput-object p1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mActivity:Landroid/app/Activity;

    .line 277
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 279
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    if-eqz v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-virtual {v4, p1}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->onResume(Landroid/app/Activity;)V

    .line 281
    :cond_0
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRVAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 282
    .local v0, "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->onResume(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 289
    .end local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v4, v5, v3, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    .end local v1    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 284
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    if-eqz v4, :cond_3

    .line 285
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-virtual {v4, p1}, Lcom/supersonic/mediationsdk/InterstitialManager;->onResume(Landroid/app/Activity;)V

    .line 286
    :cond_3
    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mISAdaptersList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/mediationsdk/AbstractAdapter;

    .line 287
    .restart local v0    # "adapter":Lcom/supersonic/mediationsdk/AbstractAdapter;
    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/AbstractAdapter;->onResume(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public removeRewardedVideoListener()V
    .locals 4

    .prologue
    .line 850
    const-string v0, "removeRewardedVideoListener()"

    .line 851
    .local v0, "logMessage":Ljava/lang/String;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 853
    iget-object v1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V

    .line 854
    return-void
.end method

.method public declared-synchronized setAge(I)V
    .locals 7
    .param p1, "age"    # I

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":setAge(age:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 318
    new-instance v2, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 320
    .local v2, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateAge(ILcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 322
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserAge:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :goto_0
    monitor-exit p0

    return-void

    .line 325
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 326
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setAge(age:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 315
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized setGender(Ljava/lang/String;)V
    .locals 7
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 334
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":setGender(gender:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 335
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 337
    new-instance v2, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 339
    .local v2, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateGender(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 341
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    iput-object p1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mUserGender:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 348
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :goto_0
    monitor-exit p0

    return-void

    .line 344
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 345
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setGender(gender:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 334
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V
    .locals 5
    .param p1, "logListener"    # Lcom/supersonic/mediationsdk/logger/LogListener;

    .prologue
    const/4 v4, 0x1

    .line 693
    if-nez p1, :cond_0

    .line 694
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "setLogListener(LogListener:null)"

    invoke-virtual {v0, v1, v2, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 701
    :goto_0
    return-void

    .line 696
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mPublisherLogger:Lcom/supersonic/mediationsdk/logger/PublisherLogger;

    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/logger/PublisherLogger;->setLogListener(Lcom/supersonic/mediationsdk/logger/LogListener;)V

    .line 697
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLogListener(LogListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 7
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 353
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":setMediationSegment(segment:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "logMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 356
    new-instance v2, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 358
    .local v2, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-direct {p0, p1, v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->validateSegment(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 360
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 361
    iput-object p1, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mSegment:Ljava/lang/String;

    .line 367
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :goto_0
    return-void

    .line 363
    .restart local v1    # "logMessage":Ljava/lang/String;
    .restart local v2    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :cond_0
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    .end local v1    # "logMessage":Ljava/lang/String;
    .end local v2    # "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    :catch_0
    move-exception v0

    .line 365
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":setMediationSegment(segment:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V
    .locals 4
    .param p1, "rewardedVideoListener"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;

    .prologue
    const/4 v3, 0x1

    .line 502
    if-nez p1, :cond_0

    .line 503
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "setRewardedVideoListener(RVListener:null)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 509
    :goto_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoListener;)V

    .line 510
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "setRewardedVideoListener(RVListener)"

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 12
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 553
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showInterstitial("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getInterstitialPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    move-result-object v8

    .line 558
    .local v8, "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    if-nez v8, :cond_0

    .line 559
    const-string v7, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 560
    .local v7, "noPlacementMessage":Ljava/lang/String;
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v7, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 563
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/model/Configurations;->getInterstitialConfigurations()Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->getDefaultInterstitialPlacement()Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    move-result-object v8

    .line 564
    if-nez v8, :cond_0

    .line 565
    const-string v6, "Default placement was not found, please make sure you are using the right placements."

    .line 566
    .local v6, "noDefaultPlacement":Ljava/lang/String;
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v6, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 596
    .end local v6    # "noDefaultPlacement":Ljava/lang/String;
    .end local v7    # "noPlacementMessage":Ljava/lang/String;
    .end local v8    # "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    :goto_0
    return-void

    .line 571
    .restart local v8    # "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    :cond_0
    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/supersonic/mediationsdk/SupersonicObject;->getInterstitialCappingStatus(Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    .line 572
    .local v1, "cappingStatus":Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v1}, Lcom/supersonic/mediationsdk/SupersonicObject;->getCappingMessage(Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v0

    .line 573
    .local v0, "cappedMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 574
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v0, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 575
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const-string v10, "Interstitial"

    invoke-static {v10, v0}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildCappedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onInterstitialShowFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 592
    .end local v0    # "cappedMessage":Ljava/lang/String;
    .end local v1    # "cappingStatus":Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    .end local v8    # "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    :catch_0
    move-exception v3

    .line 593
    .local v3, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v9, v10, v5, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 594
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const-string v10, "showInterstitial can\'t be called before the Interstitial ad unit initialization completed successfully"

    const-string v11, "Interstitial"

    invoke-static {v10, v11}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onInterstitialShowFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 579
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cappedMessage":Ljava/lang/String;
    .restart local v1    # "cappingStatus":Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    .restart local v8    # "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v5, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 581
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 583
    .local v2, "data":Lorg/json/JSONObject;
    :try_start_2
    const-string v9, "placement"

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 588
    :goto_1
    :try_start_3
    new-instance v4, Lcom/supersonic/eventsmodule/EventData;

    const/16 v9, 0x17

    invoke-direct {v4, v9, v2}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 589
    .local v4, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 591
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mInterstitialManager:Lcom/supersonic/mediationsdk/InterstitialManager;

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;->getPlacementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/supersonic/mediationsdk/InterstitialManager;->showInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 584
    .end local v4    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_1
    move-exception v3

    .line 585
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 12
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 430
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "showRewardedVideo("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 433
    .local v5, "logMessage":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v8

    .line 434
    .local v8, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    if-nez v8, :cond_0

    .line 435
    const-string v7, "Placement is not valid, please make sure you are using the right placements, using the default placement."

    .line 436
    .local v7, "noPlacementMessage":Ljava/lang/String;
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v7, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 439
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->currentServerResponse:Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/model/Configurations;->getRewardedVideoConfigurations()Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    move-result-object v9

    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getDefaultRewardedVideoPlacement()Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v8

    .line 440
    if-nez v8, :cond_0

    .line 441
    const-string v6, "Default placement was not found, please make sure you are using the right placements."

    .line 442
    .local v6, "noDefaultPlacement":Ljava/lang/String;
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v11, 0x3

    invoke-virtual {v9, v10, v6, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 472
    .end local v6    # "noDefaultPlacement":Ljava/lang/String;
    .end local v7    # "noPlacementMessage":Ljava/lang/String;
    .end local v8    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :goto_0
    return-void

    .line 447
    .restart local v8    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :cond_0
    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/supersonic/mediationsdk/SupersonicObject;->getRewardedVideoCappingStatus(Ljava/lang/String;)Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;

    move-result-object v1

    .line 448
    .local v1, "cappingStatus":Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9, v1}, Lcom/supersonic/mediationsdk/SupersonicObject;->getCappingMessage(Ljava/lang/String;Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "cappedMessage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 450
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v0, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 451
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const-string v10, "Rewarded Video"

    invoke-static {v10, v0}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildCappedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    .end local v0    # "cappedMessage":Ljava/lang/String;
    .end local v1    # "cappingStatus":Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    .end local v8    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :catch_0
    move-exception v3

    .line 469
    .local v3, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {v9, v10, v5, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mListenersWrapper:Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;

    const-string v10, "showRewardedVideo can\'t be called before the Rewarded Video ad unit initialization completed successfully"

    const-string v11, "Rewarded Video"

    invoke-static {v10, v11}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/supersonic/mediationsdk/sdk/ListenersWrapper;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 455
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "cappedMessage":Ljava/lang/String;
    .restart local v1    # "cappingStatus":Lcom/supersonic/mediationsdk/utils/CappingManager$ECappingStatus;
    .restart local v8    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mLoggerManager:Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    sget-object v10, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v5, v11}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 457
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMediationAdditionalData()Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    .line 459
    .local v2, "data":Lorg/json/JSONObject;
    :try_start_2
    const-string v9, "placement"

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 464
    :goto_1
    :try_start_3
    new-instance v4, Lcom/supersonic/eventsmodule/EventData;

    const/4 v9, 0x2

    invoke-direct {v4, v9, v2}, Lcom/supersonic/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 465
    .local v4, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-static {}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->log(Lcom/supersonic/eventsmodule/EventData;)V

    .line 467
    iget-object v9, p0, Lcom/supersonic/mediationsdk/SupersonicObject;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/RewardedVideoManager;

    invoke-virtual {v8}, Lcom/supersonic/mediationsdk/model/Placement;->getPlacementName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/supersonic/mediationsdk/RewardedVideoManager;->showRewardedVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    .end local v4    # "event":Lcom/supersonic/eventsmodule/EventData;
    :catch_1
    move-exception v3

    .line 461
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1
.end method
