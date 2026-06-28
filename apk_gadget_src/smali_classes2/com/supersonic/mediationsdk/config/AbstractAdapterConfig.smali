.class public abstract Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;
.super Ljava/lang/Object;
.source "AbstractAdapterConfig.java"


# instance fields
.field protected final MAX_ADS_KEY:Ljava/lang/String;

.field protected final MAX_ADS_PER_ITERATION_KEY:Ljava/lang/String;

.field protected final REQUEST_URL_KEY:Ljava/lang/String;

.field private mMandatoryKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOptionalKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderName:Ljava/lang/String;

.field protected mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "maxAdsPerSession"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->MAX_ADS_KEY:Ljava/lang/String;

    .line 23
    const-string v0, "maxAdsPerIteration"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->MAX_ADS_PER_ITERATION_KEY:Ljava/lang/String;

    .line 24
    const-string v0, "requestUrl"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->REQUEST_URL_KEY:Ljava/lang/String;

    .line 33
    invoke-static {}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/ProviderSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    .line 35
    iput-object p1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    .line 38
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->initializeMandatoryFields()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    .line 39
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->initializeOptionalFields()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    .line 44
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    .line 46
    :cond_1
    return-void
.end method

.method private checkForAllMandatoryFields(Lorg/json/JSONObject;Ljava/util/ArrayList;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 7
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p3, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/supersonic/mediationsdk/config/ConfigValidationResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "mandatoryKeys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 188
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 189
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Wrong configuration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 193
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 194
    .local v2, "mandatory":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 195
    iget-object v4, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    const-string v5, ""

    invoke-static {v2, v4, v5}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildKeyNotSetError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 201
    :cond_4
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, "value":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 203
    iget-object v4, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 206
    .end local v3    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 208
    iget-object v4, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-static {v2, v4, v6}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v4

    invoke-virtual {p3, v4}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private isMandatoryField(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOptionalField(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mOptionalKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private logConfigWarningMessage(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    .locals 4
    .param p1, "error"    # Lcom/supersonic/mediationsdk/logger/SupersonicError;

    .prologue
    .line 303
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/logger/SupersonicError;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 305
    return-void
.end method

.method private validateAllFields(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 7
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 223
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 225
    .local v2, "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 229
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isMandatoryField(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 230
    invoke-virtual {p0, p1, v1, p2}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 247
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 248
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - Invalid configuration"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 250
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-void

    .line 233
    .restart local v1    # "key":Ljava/lang/String;
    .restart local v2    # "keysIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :try_start_1
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isOptionalField(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 234
    invoke-virtual {p0, p1, v1, p2}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 235
    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 236
    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 237
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 238
    invoke-virtual {p2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setValid()V

    goto :goto_0

    .line 243
    :cond_3
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->ADAPTER_API:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":Unknown key in configuration - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected abstract adapterPostValidation(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
.end method

.method protected getMaxISAdsPerIterationToPresent()I
    .locals 3

    .prologue
    .line 66
    const v0, 0x7fffffff

    .line 69
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerIteration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 71
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getMaxRVAdsPerIterationToPresent()I
    .locals 3

    .prologue
    .line 54
    const v0, 0x7fffffff

    .line 57
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerIteration"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 59
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected getMaxVideosToPresent()I
    .locals 3

    .prologue
    .line 83
    const v0, 0x7fffffff

    .line 86
    .local v0, "result":I
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerSession"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "maxAdsPerSession"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 93
    :cond_0
    :goto_0
    return v0

    .line 90
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected abstract initializeMandatoryFields()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract initializeOptionalFields()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public isISConfigValid()Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 5

    .prologue
    .line 126
    new-instance v0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 129
    .local v0, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->checkForAllMandatoryFields(Lorg/json/JSONObject;Ljava/util/ArrayList;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 132
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->validateAllFields(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 136
    :cond_0
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->adapterPostValidation(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 138
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 139
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 140
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setValid()V

    .line 144
    :cond_1
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":isConfigValid:result(valid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 148
    return-object v0
.end method

.method public isRVConfigValid()Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    .locals 5

    .prologue
    .line 99
    new-instance v0, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 102
    .local v0, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mMandatoryKeys:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->checkForAllMandatoryFields(Lorg/json/JSONObject;Ljava/util/ArrayList;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 105
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->validateAllFields(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 109
    :cond_0
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->adapterPostValidation(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 111
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 112
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 113
    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setValid()V

    .line 117
    :cond_1
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":isConfigValid:result(valid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 121
    return-object v0
.end method

.method protected validateBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 315
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 316
    const-string v0, "true"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "false"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    const-string v1, "value should be \'true\'/\'false\'"

    invoke-static {p1, v0, v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 319
    :cond_0
    return-void
.end method

.method protected abstract validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
.end method

.method protected validateMaxVideos(ILcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "maxVideos"    # I
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 279
    if-gez p1, :cond_0

    .line 280
    const-string v0, "maxVideos"

    iget-object v1, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxVideos value should be any integer >= 0, your value is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 282
    :cond_0
    return-void
.end method

.method protected validateNonEmptyString(Ljava/lang/String;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 292
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    const-string v1, "value is empty"

    invoke-static {p1, v0, v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 295
    :cond_0
    return-void
.end method

.method protected abstract validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
.end method

.method public validateOptionalKeys(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":validateOptionalKeys"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    .line 162
    new-instance v2, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    invoke-direct {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;-><init>()V

    .line 164
    .local v2, "result":Lcom/supersonic/mediationsdk/config/ConfigValidationResult;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    .local v1, "key":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->isOptionalField(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    iget-object v3, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {p0, v3, v1, v2}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 167
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->isValid()Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->getSupersonicError()Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->logConfigWarningMessage(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 169
    invoke-virtual {v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setValid()V

    goto :goto_0

    .line 174
    :cond_1
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;->mProviderName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":validateOptionalKeys("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->log(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;I)V

    goto :goto_0

    .line 178
    .end local v1    # "key":Ljava/lang/String;
    :cond_2
    return-void
.end method
