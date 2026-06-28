.class public Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
.super Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;
.source "SupersonicConfig.java"


# static fields
.field private static mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;


# instance fields
.field private final APPLICATION_PRIVATE_KEY:Ljava/lang/String;

.field private final CAMPAIGN_ID:Ljava/lang/String;

.field private final CLIENT_SIDE_CALLBACKS:Ljava/lang/String;

.field private final CUSTOM_PARAM_PREFIX:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

.field private final ITEM_COUNT:Ljava/lang/String;

.field private final ITEM_NAME:Ljava/lang/String;

.field private final LANGUAGE:Ljava/lang/String;

.field private final MAX_VIDEO_LENGTH:Ljava/lang/String;

.field private mOfferwallCustomParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRewardedVideoCustomParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "Mediation"

    invoke-direct {p0, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;-><init>(Ljava/lang/String;)V

    .line 22
    const-string v0, "custom_"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->CUSTOM_PARAM_PREFIX:Ljava/lang/String;

    .line 23
    const-string v0, "useClientSideCallbacks"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->CLIENT_SIDE_CALLBACKS:Ljava/lang/String;

    .line 24
    const-string v0, "maxVideoLength"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->MAX_VIDEO_LENGTH:Ljava/lang/String;

    .line 25
    const-string v0, "controllerUrl"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

    .line 26
    const-string v0, "debugMode"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

    .line 27
    const-string v0, "campaignId"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->CAMPAIGN_ID:Ljava/lang/String;

    .line 28
    const-string v0, "language"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->LANGUAGE:Ljava/lang/String;

    .line 29
    const-string v0, "privateKey"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->APPLICATION_PRIVATE_KEY:Ljava/lang/String;

    .line 30
    const-string v0, "itemName"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->ITEM_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "itemCount"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->ITEM_COUNT:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private convertCustomParams(Ljava/util/Map;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "customParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v4, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    .line 104
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 105
    .local v3, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_1

    .line 106
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 108
    .local v2, "k":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 109
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 110
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "custom_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 117
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v6

    sget-object v7, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    const-string v8, ":convertCustomParams()"

    invoke-virtual {v6, v7, v8, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-object v4
.end method

.method public static getConfigObj()Lcom/supersonic/adapters/supersonicads/SupersonicConfig;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    invoke-direct {v0}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;-><init>()V

    sput-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    .line 42
    :cond_0
    sget-object v0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mInstance:Lcom/supersonic/adapters/supersonicads/SupersonicConfig;

    return-object v0
.end method


# virtual methods
.method protected adapterPostValidation(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 0
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 168
    return-void
.end method

.method public getClientSideCallbacks()Z
    .locals 4

    .prologue
    .line 127
    const/4 v0, 0x0

    .line 129
    .local v0, "csc":Z
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "useClientSideCallbacks"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "useClientSideCallbacks"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 134
    :cond_0
    return v0
.end method

.method public getOfferwallCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mOfferwallCustomParams:Ljava/util/Map;

    return-object v0
.end method

.method public getRewardedVideoCustomParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mRewardedVideoCustomParams:Ljava/util/Map;

    return-object v0
.end method

.method protected initializeMandatoryFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 147
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initializeOptionalFields()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public setCampaignId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "campaignId"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    return-void
.end method

.method public setClientSideCallbacks(Z)V
    .locals 3
    .param p1, "status"    # Z

    .prologue
    .line 51
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "useClientSideCallbacks"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    return-void
.end method

.method public setCustomControllerUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    return-void
.end method

.method public setDebugMode(I)V
    .locals 3
    .param p1, "debugMode"    # I

    .prologue
    .line 60
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "debugMode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "debugMode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method public setItemCount(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "itemCount"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 82
    return-void
.end method

.method public setItemName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "itemName"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 78
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "language"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public setMaxVideoLength(I)V
    .locals 3
    .param p1, "length"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "maxVideoLength"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    return-void
.end method

.method public setOfferwallCustomParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p1, "owCustomParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->convertCustomParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mOfferwallCustomParams:Ljava/util/Map;

    .line 95
    return-void
.end method

.method public setPrivateKey(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "privateKey"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    return-void
.end method

.method public setRewardedVideoCustomParams(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "rvCustomParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->convertCustomParams(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/SupersonicConfig;->mRewardedVideoCustomParams:Ljava/util/Map;

    .line 91
    return-void
.end method

.method protected validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 0
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 163
    return-void
.end method

.method protected validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 0
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 158
    return-void
.end method
