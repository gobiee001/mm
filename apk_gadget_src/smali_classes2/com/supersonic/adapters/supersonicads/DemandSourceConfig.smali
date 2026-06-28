.class public Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;
.super Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;
.source "DemandSourceConfig.java"


# static fields
.field static final APPLICATION_USER_AGE_GROUP:Ljava/lang/String; = "applicationUserAgeGroup"

.field static final APPLICATION_USER_GENDER:Ljava/lang/String; = "applicationUserGender"

.field static final CAMPAIGN_ID:Ljava/lang/String; = "campaignId"

.field static final CLIENT_SIDE_CALLBACKS:Ljava/lang/String; = "useClientSideCallbacks"

.field private static final CUSTOM_PARAM_PREFIX:Ljava/lang/String; = "custom_"

.field static final CUSTOM_SEGMENT:Ljava/lang/String; = "custom_Segment"

.field static final ITEM_COUNT:Ljava/lang/String; = "itemCount"

.field static final ITEM_NAME:Ljava/lang/String; = "itemName"

.field static final LANGUAGE:Ljava/lang/String; = "language"

.field static final MAX_VIDEO_LENGTH:Ljava/lang/String; = "maxVideoLength"


# instance fields
.field private final AGE:Ljava/lang/String;

.field private final APPLICATION_KEY:Ljava/lang/String;

.field private final APPLICATION_PRIVATE_KEY:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

.field private final DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

.field private final GENDER:Ljava/lang/String;

.field private final SDK_PLUGIN_TYPE:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final USER_ID:Ljava/lang/String;

.field private mProviderName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/config/AbstractAdapterConfig;-><init>(Ljava/lang/String;)V

    .line 17
    const-class v0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "applicationKey"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->APPLICATION_KEY:Ljava/lang/String;

    .line 22
    const-string v0, "userId"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->USER_ID:Ljava/lang/String;

    .line 30
    const-string v0, "age"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->AGE:Ljava/lang/String;

    .line 31
    const-string v0, "gender"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->GENDER:Ljava/lang/String;

    .line 34
    const-string v0, "privateKey"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->APPLICATION_PRIVATE_KEY:Ljava/lang/String;

    .line 39
    const-string v0, "SDKPluginType"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->SDK_PLUGIN_TYPE:Ljava/lang/String;

    .line 43
    const-string v0, "controllerUrl"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->DYNAMIC_CONTROLLER_URL:Ljava/lang/String;

    .line 44
    const-string v0, "debugMode"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->DYNAMIC_CONTROLLER_DEBUG_MODE:Ljava/lang/String;

    .line 45
    const-string v0, "controllerConfig"

    iput-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->DYNAMIC_CONTROLLER_CONFIG:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private validateAgeGroup(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 347
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 349
    .local v0, "age":I
    if-ltz v0, :cond_0

    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 350
    :cond_0
    const-string v2, "applicationUserAgeGroup"

    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "applicationUserAgeGroup value should be between 0-8"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v0    # "age":I
    :cond_1
    :goto_0
    return-void

    .line 353
    :catch_0
    move-exception v1

    .line 354
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "applicationUserAgeGroup"

    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "applicationUserAgeGroup value should be between 0-8"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateApplicationKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 441
    if-eqz p1, :cond_2

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-gt v1, v2, :cond_1

    .line 447
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 448
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    const-string v1, "applicationKey"

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "applicationKey value should contains only english characters and numbers"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 459
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 453
    :cond_1
    const-string v1, "applicationKey"

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "applicationKey length should be between 5-10 characters"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 457
    :cond_2
    const-string v1, "applicationKey"

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "applicationKey value is missing"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateClientSideCallbacks(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 374
    const-string v0, "useClientSideCallbacks"

    invoke-virtual {p0, v0, p1, p2}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateBoolean(Ljava/lang/String;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 375
    return-void
.end method

.method private validateDynamicUrl(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const-string v0, "controllerUrl"

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "controllerUrl is missing"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 438
    :cond_0
    return-void
.end method

.method private validateGender(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "gender"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 360
    if-eqz p1, :cond_0

    .line 361
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 363
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

    .line 366
    const-string v1, "gender"

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "gender"

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "gender value should be one of male/female/unknown."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateItemCount(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 282
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 283
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 284
    .local v1, "itemCount":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const v2, 0x186a0

    if-le v1, v2, :cond_1

    .line 285
    :cond_0
    const-string v2, "itemCount"

    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "itemCount value should be between 1-100000"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "itemCount":I
    :cond_1
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v2, "itemCount"

    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "itemCount value should be between 1-100000"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateItemName(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 293
    if-eqz p1, :cond_2

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    .line 296
    :cond_0
    const-string v0, "itemName"

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "itemNamelength should be between 1-50 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 301
    :cond_1
    :goto_0
    return-void

    .line 299
    :cond_2
    const-string v0, "itemName"

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "itemNamelength should be between 1-50 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateLanguage(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 334
    if-eqz p1, :cond_2

    .line 335
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 337
    const-string v0, "^[a-zA-Z]*$"

    .line 338
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 339
    :cond_0
    const-string v1, "language"

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "language value should be two letters format."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 343
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    const-string v1, "language"

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "language value should be two letters format."

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validateMaxVideoLength(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 322
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 324
    .local v0, "age":I
    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    const/16 v2, 0x3e8

    if-le v0, v2, :cond_1

    .line 325
    :cond_0
    const-string v2, "maxVideoLength"

    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "maxVideoLength value should be between 1-1000"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 331
    .end local v0    # "age":I
    :cond_1
    :goto_0
    return-void

    .line 328
    :catch_0
    move-exception v1

    .line 329
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "maxVideoLength"

    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v4, "maxVideoLength value should be between 1-1000"

    invoke-static {v2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validatePrivateKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 304
    if-eqz p1, :cond_2

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x1e

    if-gt v1, v2, :cond_1

    .line 306
    const-string v0, "^[a-zA-Z0-9]*$"

    .line 307
    .local v0, "pattern":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    const-string v1, "privateKey"

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "privateKey should contains only characters and numbers"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 318
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    const-string v1, "privateKey"

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "privateKey length should be between 5-30 characters"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 316
    :cond_2
    const-string v1, "privateKey"

    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v3, "privateKey length should be between 5-30 characters"

    invoke-static {v1, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method private validatePrivateKeyItemNameCountCombination(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 413
    const-string v0, "privateKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "itemName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "itemCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    :cond_0
    const-string v0, "privateKey"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "itemName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "itemCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 419
    :cond_1
    const-string v0, "itemName, itemCount or privateKey"

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "configure itemName/itemCount requires the following configurations: itemName, itemCount and privateKey"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 423
    :cond_2
    return-void
.end method

.method private validateUserId(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 426
    if-eqz p1, :cond_2

    .line 427
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    .line 428
    :cond_0
    const-string v0, "userId"

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "userId value should be between 1-64 characters"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    const-string v0, "userId"

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const-string v2, "userId is missing"

    invoke-static {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method


# virtual methods
.method protected adapterPostValidation(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 2
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 399
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validatePrivateKeyItemNameCountCombination(Lorg/json/JSONObject;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    invoke-static {v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildGenericError(Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0
.end method

.method getCampaignId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "campaignId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getISControllerConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 99
    const-string v0, ""

    .line 101
    .local v0, "config":Ljava/lang/String;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "controllerConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "controllerConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    return-object v0
.end method

.method public getISDebugMode()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "mode":I
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "debugMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "debugMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    :cond_0
    return v0
.end method

.method getISDynamicControllerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getISUserAgeGroup()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "applicationUserAgeGroup"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getISUserGender()Ljava/lang/String;
    .locals 2

    .prologue
    .line 172
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 7

    .prologue
    .line 131
    const/4 v1, -0x1

    .line 133
    .local v1, "itemCount":I
    :try_start_0
    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "itemCount"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 134
    .local v2, "itemCountString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 135
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    .end local v2    # "itemCountString":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v3

    sget-object v4, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->NATIVE:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":getItemCount()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getItemName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "itemName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "language"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMaxISAdsPerIteration()I
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getMaxISAdsPerIterationToPresent()I

    move-result v0

    return v0
.end method

.method getMaxRVAdsPerIteration()I
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getMaxRVAdsPerIterationToPresent()I

    move-result v0

    return v0
.end method

.method public getMaxVideoLength()Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "maxVideoLength"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMaxVideos()I
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->getMaxVideosToPresent()I

    move-result v0

    return v0
.end method

.method getMediationSegment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "custom_Segment"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "privateKey"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRVControllerConfig()Ljava/lang/String;
    .locals 3

    .prologue
    .line 88
    const-string v0, ""

    .line 90
    .local v0, "config":Ljava/lang/String;
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "controllerConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "controllerConfig"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    return-object v0
.end method

.method public getRVDebugMode()I
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, "mode":I
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "debugMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "debugMode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    :cond_0
    return v0
.end method

.method getRVDynamicControllerUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRVUserAgeGroup()Ljava/lang/String;
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "applicationUserAgeGroup"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRVUserGender()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initializeMandatoryFields()Ljava/util/ArrayList;
    .locals 2
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
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "controllerUrl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    return-object v0
.end method

.method protected initializeOptionalFields()Ljava/util/ArrayList;
    .locals 2
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
    .line 225
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 227
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "useClientSideCallbacks"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    const-string v1, "applicationUserAgeGroup"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    const-string v1, "language"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    const-string v1, "maxAdsPerSession"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    const-string v1, "maxAdsPerIteration"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    const-string v1, "privateKey"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    const-string v1, "maxVideoLength"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    const-string v1, "itemName"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const-string v1, "itemCount"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    const-string v1, "SDKPluginType"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    const-string v1, "controllerConfig"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    const-string v1, "debugMode"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    const-string v1, "requestUrl"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    const-string v1, "custom_Segment"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    return-object v0
.end method

.method public setMediationSegment(Ljava/lang/String;)V
    .locals 2
    .param p1, "segment"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "custom_Segment"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method setUserAgeGroup(I)V
    .locals 3
    .param p1, "age"    # I

    .prologue
    .line 184
    const-string v0, "0"

    .line 186
    .local v0, "ageGroup":Ljava/lang/String;
    const/16 v1, 0xd

    if-lt p1, v1, :cond_1

    const/16 v1, 0x11

    if-gt p1, v1, :cond_1

    .line 187
    const-string v0, "1"

    .line 204
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v2, "applicationUserAgeGroup"

    invoke-virtual {v1, v2, v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    iget-object v1, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v2, "applicationUserAgeGroup"

    invoke-virtual {v1, v2, v0}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 206
    return-void

    .line 188
    :cond_1
    const/16 v1, 0x12

    if-lt p1, v1, :cond_2

    const/16 v1, 0x14

    if-gt p1, v1, :cond_2

    .line 189
    const-string v0, "2"

    goto :goto_0

    .line 190
    :cond_2
    const/16 v1, 0x15

    if-lt p1, v1, :cond_3

    const/16 v1, 0x18

    if-gt p1, v1, :cond_3

    .line 191
    const-string v0, "3"

    goto :goto_0

    .line 192
    :cond_3
    const/16 v1, 0x19

    if-lt p1, v1, :cond_4

    const/16 v1, 0x22

    if-gt p1, v1, :cond_4

    .line 193
    const-string v0, "4"

    goto :goto_0

    .line 194
    :cond_4
    const/16 v1, 0x23

    if-lt p1, v1, :cond_5

    const/16 v1, 0x2c

    if-gt p1, v1, :cond_5

    .line 195
    const-string v0, "5"

    goto :goto_0

    .line 196
    :cond_5
    const/16 v1, 0x2d

    if-lt p1, v1, :cond_6

    const/16 v1, 0x36

    if-gt p1, v1, :cond_6

    .line 197
    const-string v0, "6"

    goto :goto_0

    .line 198
    :cond_6
    const/16 v1, 0x37

    if-lt p1, v1, :cond_7

    const/16 v1, 0x40

    if-gt p1, v1, :cond_7

    .line 199
    const-string v0, "7"

    goto :goto_0

    .line 200
    :cond_7
    const/16 v1, 0x41

    if-le p1, v1, :cond_0

    const/16 v1, 0x78

    if-gt p1, v1, :cond_0

    .line 201
    const-string v0, "8"

    goto :goto_0
.end method

.method setUserGender(Ljava/lang/String;)V
    .locals 2
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    iget-object v0, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderSettings:Lcom/supersonic/mediationsdk/model/ProviderSettings;

    const-string v1, "applicationUserGender"

    invoke-virtual {v0, v1, p1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Ljava/lang/String;Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method protected validateMandatoryField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 4
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 381
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "value":Ljava/lang/String;
    const-string v2, "applicationKey"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 384
    invoke-direct {p0, v1, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateApplicationKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 394
    .end local v1    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 386
    .restart local v1    # "value":Ljava/lang/String;
    :cond_1
    const-string v2, "userId"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 387
    invoke-direct {p0, v1, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateUserId(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v2, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 389
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v2, "controllerUrl"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 390
    invoke-direct {p0, v1, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateDynamicUrl(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected validateOptionalField(Lorg/json/JSONObject;Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    .locals 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/supersonic/mediationsdk/config/ConfigValidationResult;

    .prologue
    .line 249
    :try_start_0
    const-string v3, "maxAdsPerSession"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 251
    .local v1, "maxVideos":I
    invoke-virtual {p0, v1, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateMaxVideos(ILcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    .line 278
    .end local v1    # "maxVideos":I
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    const-string v3, "maxAdsPerIteration"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 253
    const-string v3, "debugMode"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 254
    const-string v3, "controllerConfig"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 256
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 258
    .local v2, "value":Ljava/lang/String;
    const-string v3, "useClientSideCallbacks"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 259
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateClientSideCallbacks(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 275
    .end local v2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 276
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->mProviderName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, v3, v4}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInvalidKeyValueError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v3

    invoke-virtual {p3, v3}, Lcom/supersonic/mediationsdk/config/ConfigValidationResult;->setInvalid(Lcom/supersonic/mediationsdk/logger/SupersonicError;)V

    goto :goto_0

    .line 260
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v3, "applicationUserGender"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 261
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateGender(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 262
    :cond_3
    const-string v3, "applicationUserAgeGroup"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 263
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateAgeGroup(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 264
    :cond_4
    const-string v3, "language"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 265
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateLanguage(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 266
    :cond_5
    const-string v3, "maxVideoLength"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 267
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateMaxVideoLength(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 268
    :cond_6
    const-string v3, "privateKey"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 269
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validatePrivateKey(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 270
    :cond_7
    const-string v3, "itemName"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 271
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateItemName(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V

    goto :goto_0

    .line 272
    :cond_8
    const-string v3, "itemCount"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    invoke-direct {p0, v2, p3}, Lcom/supersonic/adapters/supersonicads/DemandSourceConfig;->validateItemCount(Ljava/lang/String;Lcom/supersonic/mediationsdk/config/ConfigValidationResult;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
