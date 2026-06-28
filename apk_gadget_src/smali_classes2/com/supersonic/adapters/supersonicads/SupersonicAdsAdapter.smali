.class Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
.super Lcom/supersonic/mediationsdk/AbstractAdapter;
.source "SupersonicAdsAdapter.java"

# interfaces
.implements Lcom/supersonic/mediationsdk/sdk/OfferwallApi;
.implements Lcom/supersonicads/sdk/listeners/OnInterstitialListener;
.implements Lcom/supersonicads/sdk/listeners/OnOfferWallListener;
.implements Lcom/supersonicads/sdk/listeners/OnRewardedVideoListener;


# instance fields
.field private final ITEM_SIGNATURE:Ljava/lang/String;

.field private final OW_PLACEMENT_ID:Ljava/lang/String;

.field private final SDK_PLUGIN_TYPE:Ljava/lang/String;

.field private final TIMESTAMP:Ljava/lang/String;

.field private final VERSION:Ljava/lang/String;

.field private mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

.field private mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

.field private mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

.field private mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

.field private mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

.field private mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "providerUrl"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/supersonic/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "6.4.19"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->VERSION:Ljava/lang/String;

    .line 38
    const-string v0, "timestamp"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->TIMESTAMP:Ljava/lang/String;

    .line 39
    const-string v0, "itemSignature"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->ITEM_SIGNATURE:Ljava/lang/String;

    .line 40
    const-string v0, "SDKPluginType"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->SDK_PLUGIN_TYPE:Ljava/lang/String;

    .line 41
    const-string v0, "placementId"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->OW_PLACEMENT_ID:Ljava/lang/String;

    .line 59
    new-instance v0, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;-><init>()V

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    .line 60
    new-instance v0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-direct {v0, p1}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    .line 62
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getRVDynamicControllerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->setControllerUrl(Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getRVDebugMode()I

    move-result v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->setDebugMode(I)V

    .line 64
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getRVControllerConfig()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonicads/sdk/utils/SDKUtils;->setControllerConfig(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Lcom/supersonicads/sdk/SSAPublisher;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    return-object v0
.end method

.method static synthetic access$002(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonicads/sdk/SSAPublisher;)Lcom/supersonicads/sdk/SSAPublisher;
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
    .param p1, "x1"    # Lcom/supersonicads/sdk/SSAPublisher;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    return-object p1
.end method

.method static synthetic access$100(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getRewardedVideoExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
    .param p1, "x1"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getOfferwallExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getInterstitialExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
    .param p1, "x1"    # Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    return-void
.end method

.method private addItemNameCountSignature(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    iget-object v6, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v6}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getItemName()Ljava/lang/String;

    move-result-object v2

    .line 200
    .local v2, "itemName":Ljava/lang/String;
    iget-object v6, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v6}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getItemCount()I

    move-result v1

    .line 201
    .local v1, "itemCount":I
    iget-object v6, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v6}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getPrivateKey()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "privateKey":Ljava/lang/String;
    const/4 v4, 0x1

    .line 205
    .local v4, "shouldAddSignature":Z
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 206
    const/4 v4, 0x0

    .line 210
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 211
    const/4 v4, 0x0

    .line 213
    :cond_0
    const/4 v6, -0x1

    if-ne v1, v6, :cond_3

    .line 214
    const/4 v4, 0x0

    .line 219
    :goto_1
    if-eqz v4, :cond_1

    .line 220
    invoke-static {}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getCurrentTimestamp()I

    move-result v5

    .line 221
    .local v5, "timestamp":I
    const-string v6, "timestamp"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v6, "itemSignature"

    invoke-direct {p0, v5, v2, v1, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->createItemSig(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .end local v1    # "itemCount":I
    .end local v2    # "itemName":Ljava/lang/String;
    .end local v3    # "privateKey":Ljava/lang/String;
    .end local v4    # "shouldAddSignature":Z
    .end local v5    # "timestamp":I
    :cond_1
    :goto_2
    return-void

    .line 208
    .restart local v1    # "itemCount":I
    .restart local v2    # "itemName":Ljava/lang/String;
    .restart local v3    # "privateKey":Ljava/lang/String;
    .restart local v4    # "shouldAddSignature":Z
    :cond_2
    const-string v6, "itemName"

    invoke-virtual {p1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    .end local v1    # "itemCount":I
    .end local v2    # "itemName":Ljava/lang/String;
    .end local v3    # "privateKey":Ljava/lang/String;
    .end local v4    # "shouldAddSignature":Z
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v8, " addItemNameCountSignature"

    invoke-virtual {v6, v7, v8, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 216
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "itemCount":I
    .restart local v2    # "itemName":Ljava/lang/String;
    .restart local v3    # "privateKey":Ljava/lang/String;
    .restart local v4    # "shouldAddSignature":Z
    :cond_3
    :try_start_1
    const-string v6, "itemCount"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private createItemSig(ILjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "timestamp"    # I
    .param p2, "itemName"    # Ljava/lang/String;
    .param p3, "itemCount"    # I
    .param p4, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createMinimumOfferCommissionSig(DLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "min"    # D
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private createUserCreationDateSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userid"    # Ljava/lang/String;
    .param p2, "uCreationDate"    # Ljava/lang/String;
    .param p3, "privateKey"    # Ljava/lang/String;

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGenenralExtraParams()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 93
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 94
    .local v2, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    .line 97
    .local v1, "config":Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getRVUserAgeGroup()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "ageGroup":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 99
    const-string v5, "applicationUserAgeGroup"

    invoke-virtual {v2, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_0
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getRVUserGender()Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "uGender":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    const-string v5, "applicationUserGender"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getPluginType()Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "pluginType":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 110
    const-string v5, "SDKPluginType"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_2
    return-object v2
.end method

.method private getInterstitialExtraParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getOfferwallExtraParams()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v3

    .line 178
    .local v3, "owExtraParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v4}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 179
    .local v2, "language":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 180
    const-string v4, "language"

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getClientSideCallbacks()Z

    move-result v0

    .line 185
    .local v0, "clientSideCallbacks":Z
    const-string v4, "useClientSideCallbacks"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getOfferwallCustomParams()Ljava/util/Map;

    move-result-object v1

    .line 189
    .local v1, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 190
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 192
    :cond_1
    invoke-direct {p0, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->addItemNameCountSignature(Ljava/util/HashMap;)V

    .line 194
    return-object v3
.end method

.method private getRewardedVideoExtraParams()Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getGenenralExtraParams()Ljava/util/HashMap;

    move-result-object v5

    .line 124
    .local v5, "rvExtraParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    .line 127
    .local v1, "config":Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getLanguage()Ljava/lang/String;

    move-result-object v3

    .line 128
    .local v3, "language":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 129
    const-string v7, "language"

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_0
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getMaxVideoLength()Ljava/lang/String;

    move-result-object v4

    .line 134
    .local v4, "maxVideoLength":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 135
    const-string v7, "maxVideoLength"

    invoke-virtual {v5, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_1
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "campaignId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 141
    const-string v7, "campaignId"

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_2
    invoke-virtual {v1}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getMediationSegment()Ljava/lang/String;

    move-result-object v6

    .line 145
    .local v6, "segment":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 146
    const-string v7, "custom_Segment"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_3
    invoke-direct {p0, v5}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->addItemNameCountSignature(Ljava/util/HashMap;)V

    .line 153
    invoke-static {}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->getRewardedVideoCustomParams()Ljava/util/Map;

    move-result-object v2

    .line 154
    .local v2, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 155
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 157
    :cond_4
    return-object v5
.end method

.method public static startAdapter(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;
    .locals 1
    .param p0, "providerName"    # Ljava/lang/String;
    .param p1, "providerUrl"    # Ljava/lang/String;

    .prologue
    .line 54
    new-instance v0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;

    invoke-direct {v0, p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getCoreSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/supersonicads/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxISAdsPerIteration()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getMaxISAdsPerIteration()I

    move-result v0

    return v0
.end method

.method public getMaxRVAdsPerIteration()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getMaxRVAdsPerIteration()I

    move-result v0

    return v0
.end method

.method public getOfferwallCredits()V
    .locals 5

    .prologue
    .line 440
    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v2, :cond_0

    .line 441
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicAppKey()Ljava/lang/String;

    move-result-object v0

    .line 442
    .local v0, "appKey":Ljava/lang/String;
    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/SupersonicFactory;->getInstance()Lcom/supersonic/mediationsdk/sdk/Supersonic;

    move-result-object v2

    check-cast v2, Lcom/supersonic/mediationsdk/SupersonicObject;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/SupersonicObject;->getSupersonicUserId()Ljava/lang/String;

    move-result-object v1

    .line 444
    .local v1, "userId":Ljava/lang/String;
    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":getOfferwallCredits(appKey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {p0, v2, v3, v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 447
    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v2, v0, v1, p0}, Lcom/supersonicads/sdk/SSAPublisher;->getOfferWallCredits(Ljava/lang/String;Ljava/lang/String;Lcom/supersonicads/sdk/listeners/OnOfferWallListener;)V

    .line 450
    .end local v0    # "appKey":Ljava/lang/String;
    .end local v1    # "userId":Ljava/lang/String;
    :goto_0
    return-void

    .line 449
    :cond_0
    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v3, "Please call init before calling getOfferwallCredits"

    const/4 v4, 0x2

    invoke-virtual {p0, v2, v3, v4}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "6.4.19"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 584
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-virtual {p0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->validateConfigBeforeInitAndCallInitFailForInvalid(Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 585
    .local v0, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    :goto_0
    return-void

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-virtual {p0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->startISInitTimer(Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)V

    .line 591
    new-instance v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$3;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public initOfferwall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 460
    :try_start_0
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":initOfferwall(appKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 461
    new-instance v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$2;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    return-void

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":initOfferwall(userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adapter initialization failure - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Offerwall"

    invoke-static {v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    .line 247
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":initRewardedVideo(userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 249
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->reset()V

    .line 251
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-virtual {p0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->validateConfigBeforeInitAndCallAvailabilityChangedForInvalid(Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    move-result-object v0

    .line 252
    .local v0, "validationResult":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v2}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getMaxVideos()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->setMaxVideo(I)V

    .line 258
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-virtual {p0, v1}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->startRVTimer(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V

    .line 259
    new-instance v1, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter$1;-><init>(Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public isInterstitialReady()Z
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/supersonicads/sdk/SSAPublisher;->isInterstitialAdAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOfferwallAvailable()Z
    .locals 1

    .prologue
    .line 498
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized isRewardedVideoAvailable()Z
    .locals 4

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v0

    .line 316
    .local v0, "availability":Z
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":isRewardedVideoAvailable():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    monitor-exit p0

    return v0

    .line 314
    .end local v0    # "availability":Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public loadInterstitial()V
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-virtual {p0, v0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->startISLoadTimer(Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)V

    .line 609
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 610
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/supersonicads/sdk/SSAPublisher;->loadInterstitial()V

    .line 614
    :goto_0
    return-void

    .line 612
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "Please call initInterstitial before calling loadInterstitial"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onGetOWCreditsFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 546
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onGetOWCreditsFailed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 548
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v1, :cond_0

    .line 549
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 550
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onGetOfferwallCreditsFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 552
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-void
.end method

.method public onInterstitialClick()V
    .locals 4

    .prologue
    .line 712
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialClick "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 714
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialClick(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 716
    :cond_0
    return-void
.end method

.method public onInterstitialClose()V
    .locals 4

    .prologue
    .line 687
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialClose "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 689
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialClose(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 691
    :cond_0
    return-void
.end method

.method public onInterstitialInitFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 645
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialInitFailed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 647
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelISInitTimer()V

    .line 649
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adapter initialization failure - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 652
    :cond_0
    return-void
.end method

.method public onInterstitialInitSuccess()V
    .locals 4

    .prologue
    .line 636
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialInitSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 638
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelISInitTimer()V

    .line 639
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialInitSuccess(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 641
    :cond_0
    return-void
.end method

.method public onInterstitialLoadFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 666
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :onInterstitialLoadFailed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 668
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelISLoadTimer()V

    .line 669
    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v2, :cond_0

    .line 670
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial Load Fail, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "errorString":Ljava/lang/String;
    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 673
    .local v0, "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v2, v0, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialLoadFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 675
    .end local v0    # "error":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .end local v1    # "errorString":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onInterstitialLoadSuccess()V
    .locals 4

    .prologue
    .line 656
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialLoadSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 658
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelISLoadTimer()V

    .line 659
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialReady(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 662
    :cond_0
    return-void
.end method

.method public onInterstitialOpen()V
    .locals 4

    .prologue
    .line 679
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialOpen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 681
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialOpen(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 683
    :cond_0
    return-void
.end method

.method public onInterstitialShowFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 703
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialShowFailed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 705
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    const-string v1, "Interstitial"

    invoke-static {v1, p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildShowFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialShowFailed(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 708
    :cond_0
    return-void
.end method

.method public onInterstitialShowSuccess()V
    .locals 4

    .prologue
    .line 695
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onInterstitialShowSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 697
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    invoke-interface {v0, p0}, Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;->onInterstitialShowSuccess(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 699
    :cond_0
    return-void
.end method

.method public onOWAdClosed()V
    .locals 4

    .prologue
    .line 538
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onOWAdClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 540
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallClosed()V

    .line 542
    :cond_0
    return-void
.end method

.method public onOWAdCredited(IIZ)Z
    .locals 5
    .param p1, "credits"    # I
    .param p2, "totalCredits"    # I
    .param p3, "totalCreditsFlag"    # Z

    .prologue
    const/4 v0, 0x1

    .line 531
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onOWAdCredited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 533
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallAdCredited(IIZ)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOWGeneric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/String;

    .prologue
    .line 527
    return-void
.end method

.method public onOWShowFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 516
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onOWShowFail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 518
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v1, :cond_0

    .line 519
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 520
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 522
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-void
.end method

.method public onOWShowSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 503
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onOWShowSuccess()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 509
    :goto_0
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallOpened()V

    .line 512
    :cond_0
    return-void

    .line 506
    :cond_1
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onOWShowSuccess(placementId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public onOfferwallInitFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 565
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onOfferwallInitFail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 567
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v1, :cond_0

    .line 568
    invoke-static {p1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    .line 569
    .local v0, "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v1, v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallInitFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 571
    .end local v0    # "sse":Lcom/supersonic/mediationsdk/logger/SupersonicError;
    :cond_0
    return-void
.end method

.method public onOfferwallInitSuccess()V
    .locals 4

    .prologue
    .line 556
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onOfferwallInitSuccess "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 558
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    invoke-interface {v0}, Lcom/supersonic/mediationsdk/sdk/OfferwallListener;->onOfferwallInitSuccess()V

    .line 561
    :cond_0
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 279
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onPause()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 281
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/supersonicads/sdk/SSAPublisher;->onPause(Landroid/app/Activity;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onRVAdClosed()V
    .locals 4

    .prologue
    .line 420
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRVAdClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 422
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdClosed(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 424
    :cond_0
    return-void
.end method

.method public onRVAdCredited(I)V
    .locals 5
    .param p1, "amount"    # I

    .prologue
    .line 410
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onRVAdCredited "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 412
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v1, :cond_0

    .line 413
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoConfig:Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->getPlacementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->getRewardedVideoPlacement(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v0

    .line 414
    .local v0, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v1, v0, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdRewarded(Lcom/supersonic/mediationsdk/model/Placement;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 416
    .end local v0    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    :cond_0
    return-void
.end method

.method public onRVAdOpened()V
    .locals 4

    .prologue
    .line 428
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRVAdOpened "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 430
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    invoke-interface {v0, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoAdOpened(Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 432
    :cond_0
    return-void
.end method

.method public onRVInitFail(Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 390
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onRVInitFail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 392
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelRVTimer()V

    .line 394
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v0

    .line 395
    .local v0, "shouldNotify":Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v1, :cond_0

    .line 396
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v2

    invoke-interface {v1, v2, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 398
    :cond_0
    return-void
.end method

.method public onRVInitSuccess(Lcom/supersonicads/sdk/data/AdUnitsReady;)V
    .locals 8
    .param p1, "aur"    # Lcom/supersonicads/sdk/data/AdUnitsReady;

    .prologue
    const/4 v0, 0x1

    .line 367
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " :onRVInitSuccess "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 369
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelRVTimer()V

    .line 371
    const/4 v2, 0x0

    .line 374
    .local v2, "numOfAdUnits":I
    :try_start_0
    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/AdUnitsReady;->getNumOfAdUnits()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 378
    :goto_0
    if-lez v2, :cond_1

    .line 380
    .local v0, "availability":Z
    :goto_1
    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v4, v0}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v3

    .line 382
    .local v3, "shouldNotify":Z
    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v4, :cond_0

    .line 383
    if-eqz v3, :cond_0

    .line 384
    iget-object v4, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    iget-object v5, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v5

    invoke-interface {v4, v5, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 386
    :cond_0
    return-void

    .line 375
    .end local v0    # "availability":Z
    .end local v3    # "shouldNotify":Z
    :catch_0
    move-exception v1

    .line 376
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v4

    sget-object v5, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v6, "onRVInitSuccess:parseInt()"

    invoke-virtual {v4, v5, v6, v1}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 378
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onRVNoMoreOffers()V
    .locals 5

    .prologue
    .line 355
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " :onRVNoMoreOffers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 357
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->cancelRVTimer()V

    .line 358
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v0

    .line 360
    .local v0, "shouldNotify":Z
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 361
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v2

    invoke-interface {v1, v2, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 363
    :cond_0
    return-void
.end method

.method public onRVShowFail(Ljava/lang/String;)V
    .locals 4
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 402
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :onRVShowFail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 404
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    new-instance v1, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v2, 0x1fd

    invoke-direct {v1, v2, p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 406
    :cond_0
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 305
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":onResume()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 307
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0, p1}, Lcom/supersonicads/sdk/SSAPublisher;->onResume(Landroid/app/Activity;)V

    .line 310
    :cond_0
    return-void
.end method

.method public setAge(I)V
    .locals 3
    .param p1, "age"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0, p1}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->setUserAgeGroup(I)V

    .line 288
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setAge(age:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 289
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 3
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0, p1}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->setUserGender(Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setGender(gender:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 295
    return-void
.end method

.method public setInterstitialListener(Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;)V
    .locals 0
    .param p1, "manager"    # Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    .prologue
    .line 579
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mInterstitialManager:Lcom/supersonic/mediationsdk/sdk/InterstitialManagerListener;

    .line 580
    return-void
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 3
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mAdapterConfig:Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0, p1}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->setMediationSegment(Ljava/lang/String;)V

    .line 300
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":setMediationSegment(segment:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 301
    return-void
.end method

.method public setOfferwallListener(Lcom/supersonic/mediationsdk/sdk/OfferwallListener;)V
    .locals 0
    .param p1, "owListener"    # Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mOfferwallListener:Lcom/supersonic/mediationsdk/sdk/OfferwallListener;

    .line 455
    return-void
.end method

.method public setRewardedVideoListener(Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;)V
    .locals 0
    .param p1, "rewardedVideoManager"    # Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    .line 324
    return-void
.end method

.method public showInterstitial()V
    .locals 0

    .prologue
    .line 619
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 3
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 623
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v0}, Lcom/supersonicads/sdk/SSAPublisher;->showInterstitial()V

    .line 627
    :goto_0
    return-void

    .line 626
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v1, "Please call loadInterstitial before calling showInterstitial"

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showOfferwall()V
    .locals 0

    .prologue
    .line 478
    return-void
.end method

.method public showOfferwall(Ljava/lang/String;)V
    .locals 4
    .param p1, "placementId"    # Ljava/lang/String;

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getOfferwallExtraParams()Ljava/util/HashMap;

    move-result-object v0

    .line 483
    .local v0, "offerwallExtraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 484
    const-string v1, "placementId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_0
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":showOfferwall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extraParams:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 489
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-interface {v1, v0}, Lcom/supersonicads/sdk/SSAPublisher;->showOfferWall(Ljava/util/Map;)V

    .line 494
    :goto_0
    return-void

    .line 492
    :cond_1
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "Please call init before calling showOfferwall"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showRewardedVideo()V
    .locals 0

    .prologue
    .line 329
    return-void
.end method

.method public showRewardedVideo(Ljava/lang/String;)V
    .locals 5
    .param p1, "placementName"    # Ljava/lang/String;

    .prologue
    .line 333
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":showRewardedVideo(placement:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 337
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    if-eqz v1, :cond_1

    .line 338
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mSSAPublisher:Lcom/supersonicads/sdk/SSAPublisher;

    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/supersonicads/sdk/SSAPublisher;->showRewardedVideo(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v1, p1}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->setPlacementName(Ljava/lang/String;)V

    .line 341
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->increaseCurrentVideo()Z

    move-result v0

    .line 348
    .local v0, "shouldNotify":Z
    :goto_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->isVideoAvailable()Z

    move-result v2

    invoke-interface {v1, v2, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onVideoAvailabilityChanged(ZLcom/supersonic/mediationsdk/AbstractAdapter;)V

    .line 351
    :cond_0
    return-void

    .line 343
    .end local v0    # "shouldNotify":Z
    :cond_1
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoHelper:Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/supersonic/mediationsdk/utils/RewardedVideoHelper;->setVideoAvailability(Z)Z

    move-result v0

    .line 344
    .restart local v0    # "shouldNotify":Z
    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v2, "Please call init before calling showRewardedVideo"

    const/4 v3, 0x2

    invoke-virtual {p0, v1, v2, v3}, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 345
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicAdsAdapter;->mRewardedVideoManager:Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;

    new-instance v2, Lcom/supersonic/mediationsdk/logger/SupersonicError;

    const/16 v3, 0x1fd

    const-string v4, "Please call init before calling showRewardedVideo"

    invoke-direct {v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicError;-><init>(ILjava/lang/String;)V

    invoke-interface {v1, v2, p0}, Lcom/supersonic/mediationsdk/sdk/RewardedVideoManagerListener;->onRewardedVideoShowFail(Lcom/supersonic/mediationsdk/logger/SupersonicError;Lcom/supersonic/mediationsdk/AbstractAdapter;)V

    goto :goto_0
.end method
