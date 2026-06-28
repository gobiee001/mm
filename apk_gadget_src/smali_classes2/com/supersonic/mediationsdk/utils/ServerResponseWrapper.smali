.class public Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;
.super Ljava/lang/Object;
.source "ServerResponseWrapper.java"


# instance fields
.field private final ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

.field private final AD_UNITS_FIELD:Ljava/lang/String;

.field private final ALLOW_LOCATION:Ljava/lang/String;

.field private final APPLICATION_FIELD:Ljava/lang/String;

.field private final BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

.field private final CONFIGURATIONS_FIELD:Ljava/lang/String;

.field private final CONSOLE_FIELD:Ljava/lang/String;

.field private final DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

.field private final DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

.field private final DEFAULT_ADAPTER_ALGORITHM:Ljava/lang/String;

.field private final DEFAULT_LOG_LEVEL:I

.field private final ERROR_KEY:Ljava/lang/String;

.field private final EVENTS_FIELD:Ljava/lang/String;

.field private final IS_FIELD:Ljava/lang/String;

.field private final LOGGERS_FIELD:Ljava/lang/String;

.field private final MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

.field private final MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

.field private final OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

.field private final OW_FIELD:Ljava/lang/String;

.field private final PLACEMENTS_FIELD:Ljava/lang/String;

.field private final PLACEMENT_ID_FIELD:Ljava/lang/String;

.field private final PLACEMENT_NAME_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

.field private final PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

.field private final PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

.field private final PROVIDER_ORDER_FIELD:Ljava/lang/String;

.field private final PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

.field private final PUBLISHER_FIELD:Ljava/lang/String;

.field private final RV_FIELD:Ljava/lang/String;

.field private final SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

.field private final SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

.field private final SERVER_EVENTS_TYPE:Ljava/lang/String;

.field private final SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

.field private final SERVER_FIELD:Ljava/lang/String;

.field private final VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

.field private final VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

.field private mAppKey:Ljava/lang/String;

.field private mConfigurations:Lcom/supersonic/mediationsdk/model/Configurations;

.field private mContext:Landroid/content/Context;

.field private mISLoadPosition:I

.field private mMaxISAdapters:I

.field private mMaxRVAdapters:I

.field private mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

.field private mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

.field private mRVLoadPosition:I

.field private mResponse:Lorg/json/JSONObject;

.field private mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "jsonData"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v1, "error"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    .line 44
    const/4 v1, 0x3

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_LOG_LEVEL:I

    .line 45
    const-string v1, "KTO"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTER_ALGORITHM:Ljava/lang/String;

    .line 46
    const/4 v1, 0x2

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    .line 47
    const/16 v1, 0x3c

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    .line 49
    const-string v1, "providerOrder"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_ORDER_FIELD:Ljava/lang/String;

    .line 50
    const-string v1, "providerSettings"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

    .line 51
    const-string v1, "configurations"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->CONFIGURATIONS_FIELD:Ljava/lang/String;

    .line 53
    const-string v1, "adUnits"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->AD_UNITS_FIELD:Ljava/lang/String;

    .line 54
    const-string v1, "providerLoadName"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

    .line 55
    const-string v1, "application"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->APPLICATION_FIELD:Ljava/lang/String;

    .line 56
    const-string v1, "rewardedVideo"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->RV_FIELD:Ljava/lang/String;

    .line 57
    const-string v1, "interstitial"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->IS_FIELD:Ljava/lang/String;

    .line 58
    const-string v1, "offerwall"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->OW_FIELD:Ljava/lang/String;

    .line 59
    const-string v1, "loggers"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->LOGGERS_FIELD:Ljava/lang/String;

    .line 60
    const-string v1, "events"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->EVENTS_FIELD:Ljava/lang/String;

    .line 62
    const-string v1, "maxNumOfAdaptersToLoadOnStart"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

    .line 63
    const-string v1, "adapterTimeOutInSeconds"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

    .line 64
    const-string v1, "server"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->SERVER_FIELD:Ljava/lang/String;

    .line 65
    const-string v1, "publisher"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PUBLISHER_FIELD:Ljava/lang/String;

    .line 66
    const-string v1, "console"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->CONSOLE_FIELD:Ljava/lang/String;

    .line 67
    const-string v1, "sendUltraEvents"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

    .line 68
    const-string v1, "sendEventsToggle"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

    .line 69
    const-string v1, "serverEventsURL"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

    .line 70
    const-string v1, "serverEventsType"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_TYPE:Ljava/lang/String;

    .line 71
    const-string v1, "backupThreshold"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

    .line 72
    const-string v1, "maxNumberOfEvents"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

    .line 73
    const-string v1, "optOut"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

    .line 74
    const-string v1, "allowLocation"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ALLOW_LOCATION:Ljava/lang/String;

    .line 76
    const-string v1, "placements"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENTS_FIELD:Ljava/lang/String;

    .line 77
    const-string v1, "placementId"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_ID_FIELD:Ljava/lang/String;

    .line 78
    const-string v1, "placementName"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_NAME_FIELD:Ljava/lang/String;

    .line 79
    const-string v1, "delivery"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

    .line 80
    const-string v1, "capping"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

    .line 81
    const-string v1, "pacing"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

    .line 82
    const-string v1, "enabled"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

    .line 83
    const-string v1, "maxImpressions"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

    .line 84
    const-string v1, "numOfSeconds"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

    .line 85
    const-string v1, "unit"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

    .line 86
    const-string v1, "virtualItemName"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

    .line 87
    const-string v1, "virtualItemCount"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

    .line 93
    iput v2, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    .line 94
    iput v2, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    .line 107
    iput-object p1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    .line 109
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 114
    :goto_0
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->parseProviderSettings()V

    .line 115
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->parseConfigurations()V

    .line 116
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->parseProviderOrder()V

    .line 118
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    .line 119
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    .line 121
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p2, ""

    .end local p2    # "appKey":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 122
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p3, ""

    .end local p3    # "userId":Ljava/lang/String;
    :cond_1
    iput-object p3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 126
    :goto_1
    return-void

    .line 112
    .restart local p2    # "appKey":Ljava/lang/String;
    .restart local p3    # "userId":Ljava/lang/String;
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    .end local p2    # "appKey":Ljava/lang/String;
    .end local p3    # "userId":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Lorg/json/JSONException;
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    goto :goto_1
.end method

.method public constructor <init>(Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;)V
    .locals 3
    .param p1, "srw"    # Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;

    .prologue
    const/4 v2, -0x1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v1, "error"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ERROR_KEY:Ljava/lang/String;

    .line 44
    const/4 v1, 0x3

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_LOG_LEVEL:I

    .line 45
    const-string v1, "KTO"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTER_ALGORITHM:Ljava/lang/String;

    .line 46
    const/4 v1, 0x2

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_AMOUNT:I

    .line 47
    const/16 v1, 0x3c

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->DEFAULT_ADAPTERS_SMARTLOAD_TIMEOUT:I

    .line 49
    const-string v1, "providerOrder"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_ORDER_FIELD:Ljava/lang/String;

    .line 50
    const-string v1, "providerSettings"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_SETTINGS_FIELD:Ljava/lang/String;

    .line 51
    const-string v1, "configurations"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->CONFIGURATIONS_FIELD:Ljava/lang/String;

    .line 53
    const-string v1, "adUnits"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->AD_UNITS_FIELD:Ljava/lang/String;

    .line 54
    const-string v1, "providerLoadName"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PROVIDER_LOAD_NAME_FIELD:Ljava/lang/String;

    .line 55
    const-string v1, "application"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->APPLICATION_FIELD:Ljava/lang/String;

    .line 56
    const-string v1, "rewardedVideo"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->RV_FIELD:Ljava/lang/String;

    .line 57
    const-string v1, "interstitial"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->IS_FIELD:Ljava/lang/String;

    .line 58
    const-string v1, "offerwall"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->OW_FIELD:Ljava/lang/String;

    .line 59
    const-string v1, "loggers"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->LOGGERS_FIELD:Ljava/lang/String;

    .line 60
    const-string v1, "events"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->EVENTS_FIELD:Ljava/lang/String;

    .line 62
    const-string v1, "maxNumOfAdaptersToLoadOnStart"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_ADAPTERS_TO_LOAD_ON_START_FIELD:Ljava/lang/String;

    .line 63
    const-string v1, "adapterTimeOutInSeconds"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ADAPTER_TIMEOUT_IN_SECS_FIELD:Ljava/lang/String;

    .line 64
    const-string v1, "server"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->SERVER_FIELD:Ljava/lang/String;

    .line 65
    const-string v1, "publisher"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PUBLISHER_FIELD:Ljava/lang/String;

    .line 66
    const-string v1, "console"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->CONSOLE_FIELD:Ljava/lang/String;

    .line 67
    const-string v1, "sendUltraEvents"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->SEND_ULTRA_EVENTS_FIELD:Ljava/lang/String;

    .line 68
    const-string v1, "sendEventsToggle"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->SEND_EVENTS_TOGGLE_FIELD:Ljava/lang/String;

    .line 69
    const-string v1, "serverEventsURL"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_URL_FIELD:Ljava/lang/String;

    .line 70
    const-string v1, "serverEventsType"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->SERVER_EVENTS_TYPE:Ljava/lang/String;

    .line 71
    const-string v1, "backupThreshold"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->BACKUP_THRESHOLD_FIELD:Ljava/lang/String;

    .line 72
    const-string v1, "maxNumberOfEvents"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->MAX_NUM_OF_EVENTS_FIELD:Ljava/lang/String;

    .line 73
    const-string v1, "optOut"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->OPT_OUT_EVENTS_FIELD:Ljava/lang/String;

    .line 74
    const-string v1, "allowLocation"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->ALLOW_LOCATION:Ljava/lang/String;

    .line 76
    const-string v1, "placements"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENTS_FIELD:Ljava/lang/String;

    .line 77
    const-string v1, "placementId"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_ID_FIELD:Ljava/lang/String;

    .line 78
    const-string v1, "placementName"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_NAME_FIELD:Ljava/lang/String;

    .line 79
    const-string v1, "delivery"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_DELIVERY_FIELD:Ljava/lang/String;

    .line 80
    const-string v1, "capping"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_FIELD:Ljava/lang/String;

    .line 81
    const-string v1, "pacing"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_FIELD:Ljava/lang/String;

    .line 82
    const-string v1, "enabled"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_ENABLED_FIELD:Ljava/lang/String;

    .line 83
    const-string v1, "maxImpressions"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_VALUE_FIELD:Ljava/lang/String;

    .line 84
    const-string v1, "numOfSeconds"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_PACING_VALUE_FIELD:Ljava/lang/String;

    .line 85
    const-string v1, "unit"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->PLACEMENT_SETTINGS_CAPPING_UNIT_FIELD:Ljava/lang/String;

    .line 86
    const-string v1, "virtualItemName"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_NAME_FIELD:Ljava/lang/String;

    .line 87
    const-string v1, "virtualItemCount"

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->VIRTUAL_ITEM_COUNT_FIELD:Ljava/lang/String;

    .line 93
    iput v2, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    .line 94
    iput v2, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    .line 135
    :try_start_0
    invoke-direct {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    .line 136
    new-instance v1, Lorg/json/JSONObject;

    iget-object v1, p1, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 137
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxRVAdapters()I

    move-result v1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    .line 138
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getMaxISAdapters()I

    move-result v1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    .line 139
    iget-object v1, p1, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 140
    iget-object v1, p1, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getProviderOrder()Lcom/supersonic/mediationsdk/model/ProviderOrder;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    .line 142
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getProviderSettingsHolder()Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    .line 143
    invoke-virtual {p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;

    move-result-object v1

    iput-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/supersonic/mediationsdk/model/Configurations;

    .line 147
    :goto_1
    return-void

    .line 136
    :cond_0
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->defaultInit()V

    goto :goto_1
.end method

.method private defaultInit()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 150
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    .line 151
    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    .line 152
    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    .line 154
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    .line 155
    new-instance v0, Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/ProviderOrder;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    .line 156
    invoke-static {}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    .line 157
    new-instance v0, Lcom/supersonic/mediationsdk/model/Configurations;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/model/Configurations;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/supersonic/mediationsdk/model/Configurations;

    .line 158
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 3
    .param p1, "mainJson"    # Lorg/json/JSONObject;
    .param p2, "secondaryJson"    # Lorg/json/JSONObject;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "defaultValue"    # I

    .prologue
    const/4 v2, 0x0

    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, "result":I
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    invoke-virtual {p1, p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 449
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 450
    move v0, p4

    .line 452
    :cond_1
    return v0

    .line 446
    :cond_2
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    invoke-virtual {p2, p3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
    .locals 13
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 518
    if-nez p1, :cond_0

    .line 519
    const/4 v10, 0x0

    .line 553
    :goto_0
    return-object v10

    .line 522
    :cond_0
    new-instance v9, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    invoke-direct {v9}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;-><init>()V

    .line 525
    .local v9, "settingsBuilder":Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    const-string v12, "delivery"

    invoke-virtual {p1, v12, v10}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 526
    .local v4, "delivery":Z
    invoke-virtual {v9, v4}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->delivery(Z)Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 529
    const-string v12, "capping"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 530
    .local v0, "cappingJson":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 531
    const/4 v1, 0x0

    .line 532
    .local v1, "cappingType":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    const-string v12, "unit"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 533
    .local v2, "cappingUnitString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 534
    sget-object v12, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v12}, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 535
    sget-object v1, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    .line 540
    :cond_1
    :goto_1
    const-string v12, "maxImpressions"

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 541
    .local v3, "cappingValue":I
    const-string v12, "enabled"

    invoke-virtual {v0, v12, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_5

    if-lez v3, :cond_5

    move v5, v10

    .line 542
    .local v5, "isCappingEnabled":Z
    :goto_2
    invoke-virtual {v9, v5, v1, v3}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->capping(ZLcom/supersonic/mediationsdk/model/PlacementCappingType;I)Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 546
    .end local v1    # "cappingType":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .end local v2    # "cappingUnitString":Ljava/lang/String;
    .end local v3    # "cappingValue":I
    .end local v5    # "isCappingEnabled":Z
    :cond_2
    const-string v12, "pacing"

    invoke-virtual {p1, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 547
    .local v7, "pacingJson":Lorg/json/JSONObject;
    if-eqz v7, :cond_3

    .line 548
    const-string v12, "numOfSeconds"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 549
    .local v8, "pacingValue":I
    const-string v12, "enabled"

    invoke-virtual {v7, v12, v11}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_6

    if-lez v8, :cond_6

    move v6, v10

    .line 550
    .local v6, "isPacingEnabled":Z
    :goto_3
    invoke-virtual {v9, v6, v8}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacing(ZI)Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;

    .line 553
    .end local v6    # "isPacingEnabled":Z
    .end local v8    # "pacingValue":I
    :cond_3
    invoke-virtual {v9}, Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->build()Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v10

    goto :goto_0

    .line 536
    .end local v7    # "pacingJson":Lorg/json/JSONObject;
    .restart local v1    # "cappingType":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .restart local v2    # "cappingUnitString":Ljava/lang/String;
    :cond_4
    sget-object v12, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    invoke-virtual {v12}, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 537
    sget-object v1, Lcom/supersonic/mediationsdk/model/PlacementCappingType;->PER_HOUR:Lcom/supersonic/mediationsdk/model/PlacementCappingType;

    goto :goto_1

    .restart local v3    # "cappingValue":I
    :cond_5
    move v5, v11

    .line 541
    goto :goto_2

    .end local v1    # "cappingType":Lcom/supersonic/mediationsdk/model/PlacementCappingType;
    .end local v2    # "cappingUnitString":Ljava/lang/String;
    .end local v3    # "cappingValue":I
    .restart local v7    # "pacingJson":Lorg/json/JSONObject;
    .restart local v8    # "pacingValue":I
    :cond_6
    move v6, v11

    .line 549
    goto :goto_3
.end method

.method private getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 564
    const/4 v0, 0x0

    .line 566
    .local v0, "result":Lorg/json/JSONObject;
    if-eqz p1, :cond_0

    .line 567
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 568
    :cond_0
    if-nez v0, :cond_1

    .line 569
    new-instance v0, Lorg/json/JSONObject;

    .end local v0    # "result":Lorg/json/JSONObject;
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 571
    .restart local v0    # "result":Lorg/json/JSONObject;
    :cond_1
    return-object v0
.end method

.method private mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .param p1, "mainJson"    # Lorg/json/JSONObject;
    .param p2, "secondaryJson"    # Lorg/json/JSONObject;

    .prologue
    .line 582
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 583
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    .end local p2    # "secondaryJson":Lorg/json/JSONObject;
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    move-object p1, p2

    .line 599
    .end local p1    # "mainJson":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-object p1

    .line 584
    .restart local p1    # "mainJson":Lorg/json/JSONObject;
    .restart local p2    # "secondaryJson":Lorg/json/JSONObject;
    :cond_1
    if-nez p1, :cond_2

    move-object p1, p2

    .line 585
    goto :goto_0

    .line 586
    :cond_2
    if-eqz p2, :cond_0

    .line 589
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 590
    .local v1, "it":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 592
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 593
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 595
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "key":Ljava/lang/String;
    .end local p2    # "secondaryJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseConfigurations()V
    .locals 54

    .prologue
    .line 308
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v19, "configurations"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v13, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v25

    .line 309
    .local v25, "configurationsSection":Lorg/json/JSONObject;
    const-string v13, "adUnits"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v13}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 310
    .local v20, "adUnitSection":Lorg/json/JSONObject;
    const-string v13, "application"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1, v13}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 311
    .local v24, "appSection":Lorg/json/JSONObject;
    const-string v13, "rewardedVideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v49

    .line 312
    .local v49, "rvSection":Lorg/json/JSONObject;
    const-string v13, "interstitial"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v33

    .line 313
    .local v33, "isSection":Lorg/json/JSONObject;
    const-string v13, "offerwall"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v41

    .line 314
    .local v41, "owSection":Lorg/json/JSONObject;
    const-string v13, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v13}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v23

    .line 315
    .local v23, "appEventsSection":Lorg/json/JSONObject;
    const-string v13, "loggers"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v13}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v37

    .line 317
    .local v37, "loggerSection":Lorg/json/JSONObject;
    const/16 v46, 0x0

    .line 318
    .local v46, "rvConfig":Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;
    const/16 v30, 0x0

    .line 319
    .local v30, "isConfig":Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;
    const/16 v39, 0x0

    .line 322
    .local v39, "owConfig":Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;
    if-eqz v49, :cond_2

    .line 323
    const-string v13, "placements"

    move-object/from16 v0, v49

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v48

    .line 324
    .local v48, "rvPlacementsSection":Lorg/json/JSONArray;
    const-string v13, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-direct {v0, v1, v13}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v47

    .line 326
    .local v47, "rvEventsSection":Lorg/json/JSONObject;
    const-string v13, "maxNumOfAdaptersToLoadOnStart"

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v24

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v50

    .line 327
    .local v50, "rvSmartLoadAmount":I
    const-string v13, "adapterTimeOutInSeconds"

    const/16 v19, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v24

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v51

    .line 328
    .local v51, "rvSmartLoadTimeout":I
    const-string v45, "KTO"

    .line 330
    .local v45, "rvAlgorithm":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v44

    .line 332
    .local v44, "rewardedVideoCombinedEvents":Lorg/json/JSONObject;
    const-string v13, "sendUltraEvents"

    const/16 v19, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 333
    .local v5, "rvUltraEvents":Z
    const-string v13, "sendEventsToggle"

    const/16 v19, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 334
    .local v6, "rvEventsToggle":Z
    const-string v13, "serverEventsURL"

    const-string v19, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 335
    .local v7, "rvEventsUrl":Ljava/lang/String;
    const-string v13, "serverEventsType"

    const-string v19, ""

    move-object/from16 v0, v44

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, "rvEventsType":Ljava/lang/String;
    const-string v13, "backupThreshold"

    const/16 v19, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 337
    .local v9, "rvBackupThreshold":I
    const-string v13, "maxNumberOfEvents"

    const/16 v19, -0x1

    move-object/from16 v0, v44

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    .line 339
    .local v10, "rvMaxNumOfEvents":I
    const/4 v11, 0x0

    .line 340
    .local v11, "optOutEvents":[I
    const-string v13, "optOut"

    move-object/from16 v0, v44

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v38

    .line 341
    .local v38, "optOutJsonArray":Lorg/json/JSONArray;
    if-eqz v38, :cond_0

    .line 342
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v11, v13, [I

    .line 343
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_0
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v13

    move/from16 v0, v28

    if-ge v0, v13, :cond_0

    .line 344
    move-object/from16 v0, v38

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v13

    aput v13, v11, v28

    .line 343
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 348
    .end local v28    # "i":I
    :cond_0
    new-instance v4, Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    invoke-direct/range {v4 .. v11}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;II[I)V

    .line 351
    .local v4, "rvEvents":Lcom/supersonic/mediationsdk/model/ApplicationEvents;
    new-instance v46, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;

    .end local v46    # "rvConfig":Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;
    move-object/from16 v0, v46

    move/from16 v1, v50

    move/from16 v2, v51

    move-object/from16 v3, v45

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;-><init>(IILjava/lang/String;Lcom/supersonic/mediationsdk/model/ApplicationEvents;)V

    .line 353
    .restart local v46    # "rvConfig":Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;
    if-eqz v48, :cond_2

    .line 354
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_1
    invoke-virtual/range {v48 .. v48}, Lorg/json/JSONArray;->length()I

    move-result v13

    move/from16 v0, v28

    if-ge v0, v13, :cond_2

    .line 355
    move-object/from16 v0, v48

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v53

    .line 356
    .local v53, "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->parseSingleRVPlacement(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/Placement;

    move-result-object v42

    .line 358
    .local v42, "placement":Lcom/supersonic/mediationsdk/model/Placement;
    if-eqz v42, :cond_1

    .line 359
    move-object/from16 v0, v46

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;->addRewardedVideoPlacement(Lcom/supersonic/mediationsdk/model/Placement;)V

    .line 354
    :cond_1
    add-int/lit8 v28, v28, 0x1

    goto :goto_1

    .line 365
    .end local v4    # "rvEvents":Lcom/supersonic/mediationsdk/model/ApplicationEvents;
    .end local v5    # "rvUltraEvents":Z
    .end local v6    # "rvEventsToggle":Z
    .end local v7    # "rvEventsUrl":Ljava/lang/String;
    .end local v8    # "rvEventsType":Ljava/lang/String;
    .end local v9    # "rvBackupThreshold":I
    .end local v10    # "rvMaxNumOfEvents":I
    .end local v11    # "optOutEvents":[I
    .end local v28    # "i":I
    .end local v38    # "optOutJsonArray":Lorg/json/JSONArray;
    .end local v42    # "placement":Lcom/supersonic/mediationsdk/model/Placement;
    .end local v44    # "rewardedVideoCombinedEvents":Lorg/json/JSONObject;
    .end local v45    # "rvAlgorithm":Ljava/lang/String;
    .end local v47    # "rvEventsSection":Lorg/json/JSONObject;
    .end local v48    # "rvPlacementsSection":Lorg/json/JSONArray;
    .end local v50    # "rvSmartLoadAmount":I
    .end local v51    # "rvSmartLoadTimeout":I
    .end local v53    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_2
    if-eqz v33, :cond_5

    .line 366
    const-string v13, "placements"

    move-object/from16 v0, v33

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 367
    .local v32, "isPlacementsSection":Lorg/json/JSONArray;
    const-string v13, "events"

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1, v13}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    .line 369
    .local v31, "isEventsSection":Lorg/json/JSONObject;
    const-string v13, "maxNumOfAdaptersToLoadOnStart"

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v34

    .line 370
    .local v34, "isSmartLoadAmount":I
    const-string v13, "adapterTimeOutInSeconds"

    const/16 v19, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v13, v3}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getIntConfigValue(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v35

    .line 372
    .local v35, "isSmartLoadTimeout":I
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v29

    .line 374
    .local v29, "interstitialCombinedEvents":Lorg/json/JSONObject;
    const-string v13, "sendEventsToggle"

    const/16 v19, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 375
    .local v14, "isEventsToggle":Z
    const-string v13, "serverEventsURL"

    const-string v19, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 376
    .local v15, "isEventsUrl":Ljava/lang/String;
    const-string v13, "serverEventsType"

    const-string v19, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 377
    .local v16, "isEventsType":Ljava/lang/String;
    const-string v13, "backupThreshold"

    const/16 v19, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 378
    .local v17, "isBackupThreshold":I
    const-string v13, "maxNumberOfEvents"

    const/16 v19, -0x1

    move-object/from16 v0, v29

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v18

    .line 380
    .local v18, "isMaxNumOfEvents":I
    const/4 v11, 0x0

    .line 381
    .restart local v11    # "optOutEvents":[I
    const-string v13, "optOut"

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v38

    .line 382
    .restart local v38    # "optOutJsonArray":Lorg/json/JSONArray;
    if-eqz v38, :cond_3

    .line 383
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-array v11, v13, [I

    .line 384
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_2
    invoke-virtual/range {v38 .. v38}, Lorg/json/JSONArray;->length()I

    move-result v13

    move/from16 v0, v28

    if-ge v0, v13, :cond_3

    .line 385
    move-object/from16 v0, v38

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v13

    aput v13, v11, v28

    .line 384
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .line 389
    .end local v28    # "i":I
    :cond_3
    new-instance v12, Lcom/supersonic/mediationsdk/model/ApplicationEvents;

    const/4 v13, 0x0

    move-object/from16 v19, v11

    invoke-direct/range {v12 .. v19}, Lcom/supersonic/mediationsdk/model/ApplicationEvents;-><init>(ZZLjava/lang/String;Ljava/lang/String;II[I)V

    .line 392
    .local v12, "isEvents":Lcom/supersonic/mediationsdk/model/ApplicationEvents;
    new-instance v30, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;

    .end local v30    # "isConfig":Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;
    move-object/from16 v0, v30

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-direct {v0, v1, v2, v12}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;-><init>(IILcom/supersonic/mediationsdk/model/ApplicationEvents;)V

    .line 394
    .restart local v30    # "isConfig":Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;
    if-eqz v32, :cond_5

    .line 395
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_3
    invoke-virtual/range {v32 .. v32}, Lorg/json/JSONArray;->length()I

    move-result v13

    move/from16 v0, v28

    if-ge v0, v13, :cond_5

    .line 396
    move-object/from16 v0, v32

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v53

    .line 397
    .restart local v53    # "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->parseSingleISPlacement(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    move-result-object v42

    .line 399
    .local v42, "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    if-eqz v42, :cond_4

    .line 400
    move-object/from16 v0, v30

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;->addInterstitialPlacement(Lcom/supersonic/mediationsdk/model/InterstitialPlacement;)V

    .line 395
    :cond_4
    add-int/lit8 v28, v28, 0x1

    goto :goto_3

    .line 406
    .end local v11    # "optOutEvents":[I
    .end local v12    # "isEvents":Lcom/supersonic/mediationsdk/model/ApplicationEvents;
    .end local v14    # "isEventsToggle":Z
    .end local v15    # "isEventsUrl":Ljava/lang/String;
    .end local v16    # "isEventsType":Ljava/lang/String;
    .end local v17    # "isBackupThreshold":I
    .end local v18    # "isMaxNumOfEvents":I
    .end local v28    # "i":I
    .end local v29    # "interstitialCombinedEvents":Lorg/json/JSONObject;
    .end local v31    # "isEventsSection":Lorg/json/JSONObject;
    .end local v32    # "isPlacementsSection":Lorg/json/JSONArray;
    .end local v34    # "isSmartLoadAmount":I
    .end local v35    # "isSmartLoadTimeout":I
    .end local v38    # "optOutJsonArray":Lorg/json/JSONArray;
    .end local v42    # "placement":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    .end local v53    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_5
    if-eqz v41, :cond_7

    .line 407
    const-string v13, "placements"

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v40

    .line 408
    .local v40, "owPlacementsSection":Lorg/json/JSONArray;
    new-instance v39, Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;

    .end local v39    # "owConfig":Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;
    invoke-direct/range {v39 .. v39}, Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;-><init>()V

    .line 409
    .restart local v39    # "owConfig":Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;
    if-eqz v40, :cond_7

    .line 410
    const/16 v28, 0x0

    .restart local v28    # "i":I
    :goto_4
    invoke-virtual/range {v40 .. v40}, Lorg/json/JSONArray;->length()I

    move-result v13

    move/from16 v0, v28

    if-ge v0, v13, :cond_7

    .line 411
    move-object/from16 v0, v40

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v53

    .line 412
    .restart local v53    # "singlePlacementJson":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->parseSingleOWPlacement(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/OfferwallPlacement;

    move-result-object v42

    .line 414
    .local v42, "placement":Lcom/supersonic/mediationsdk/model/OfferwallPlacement;
    if-eqz v42, :cond_6

    .line 415
    move-object/from16 v0, v39

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;->addOfferwallPlacement(Lcom/supersonic/mediationsdk/model/OfferwallPlacement;)V

    .line 410
    :cond_6
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 423
    .end local v28    # "i":I
    .end local v40    # "owPlacementsSection":Lorg/json/JSONArray;
    .end local v42    # "placement":Lcom/supersonic/mediationsdk/model/OfferwallPlacement;
    .end local v53    # "singlePlacementJson":Lorg/json/JSONObject;
    :cond_7
    const-string v13, "server"

    const/16 v19, 0x3

    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v52

    .line 424
    .local v52, "serverLoggerLevel":I
    const-string v13, "publisher"

    const/16 v19, 0x3

    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v43

    .line 425
    .local v43, "publisherLoggerLevel":I
    const-string v13, "console"

    const/16 v19, 0x3

    move-object/from16 v0, v37

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v26

    .line 427
    .local v26, "consoleLoggerLevel":I
    new-instance v36, Lcom/supersonic/mediationsdk/model/ApplicationLogger;

    move-object/from16 v0, v36

    move/from16 v1, v52

    move/from16 v2, v43

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/model/ApplicationLogger;-><init>(III)V

    .line 429
    .local v36, "logger":Lcom/supersonic/mediationsdk/model/ApplicationLogger;
    new-instance v22, Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;-><init>(Lcom/supersonic/mediationsdk/model/ApplicationLogger;)V

    .line 432
    .local v22, "appConfig":Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;
    const-string v13, "allowLocation"

    const/16 v19, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v13, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 433
    .local v21, "allowLocation":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    const-string v19, "GeneralProperties.ALLOW_LOCATION_SHARED_PREFS_KEY"

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v13, v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveBooleanToSharedPrefs(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 435
    new-instance v13, Lcom/supersonic/mediationsdk/model/Configurations;

    move-object/from16 v0, v46

    move-object/from16 v1, v30

    move-object/from16 v2, v39

    move-object/from16 v3, v22

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/supersonic/mediationsdk/model/Configurations;-><init>(Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/supersonic/mediationsdk/model/Configurations;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    .end local v20    # "adUnitSection":Lorg/json/JSONObject;
    .end local v21    # "allowLocation":Z
    .end local v22    # "appConfig":Lcom/supersonic/mediationsdk/model/ApplicationConfigurations;
    .end local v23    # "appEventsSection":Lorg/json/JSONObject;
    .end local v24    # "appSection":Lorg/json/JSONObject;
    .end local v25    # "configurationsSection":Lorg/json/JSONObject;
    .end local v26    # "consoleLoggerLevel":I
    .end local v30    # "isConfig":Lcom/supersonic/mediationsdk/model/InterstitialConfigurations;
    .end local v33    # "isSection":Lorg/json/JSONObject;
    .end local v36    # "logger":Lcom/supersonic/mediationsdk/model/ApplicationLogger;
    .end local v37    # "loggerSection":Lorg/json/JSONObject;
    .end local v39    # "owConfig":Lcom/supersonic/mediationsdk/model/OfferwallConfigurations;
    .end local v41    # "owSection":Lorg/json/JSONObject;
    .end local v43    # "publisherLoggerLevel":I
    .end local v46    # "rvConfig":Lcom/supersonic/mediationsdk/model/RewardedVideoConfigurations;
    .end local v49    # "rvSection":Lorg/json/JSONObject;
    .end local v52    # "serverLoggerLevel":I
    :goto_5
    return-void

    .line 436
    :catch_0
    move-exception v27

    .line 437
    .local v27, "e":Ljava/lang/Exception;
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method private parseProviderOrder()V
    .locals 7

    .prologue
    .line 222
    :try_start_0
    iget-object v5, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v6, "providerOrder"

    invoke-direct {p0, v5, v6}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 223
    .local v3, "providerOrderSection":Lorg/json/JSONObject;
    const-string v5, "rewardedVideo"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 224
    .local v4, "rvOrderSection":Lorg/json/JSONArray;
    const-string v5, "interstitial"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 226
    .local v2, "isOrderSection":Lorg/json/JSONArray;
    new-instance v5, Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-direct {v5}, Lcom/supersonic/mediationsdk/model/ProviderOrder;-><init>()V

    iput-object v5, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    .line 228
    if-eqz v4, :cond_0

    .line 229
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 230
    iget-object v5, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->addRewardedVideoProvider(Ljava/lang/String;)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 234
    .end local v1    # "i":I
    :cond_0
    if-eqz v2, :cond_1

    .line 235
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 236
    iget-object v5, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->addInterstitialProvider(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 239
    .end local v1    # "i":I
    .end local v2    # "isOrderSection":Lorg/json/JSONArray;
    .end local v3    # "providerOrderSection":Lorg/json/JSONObject;
    .end local v4    # "rvOrderSection":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method private parseProviderSettings()V
    .locals 25

    .prologue
    .line 249
    :try_start_0
    invoke-static {}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->getProviderSettingsHolder()Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    move-object/from16 v23, v0

    const-string v24, "providerSettings"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 254
    .local v20, "providerSettingsSection":Lorg/json/JSONObject;
    invoke-virtual/range {v20 .. v20}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v10

    .line 255
    .local v10, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 256
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 257
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 259
    .local v5, "concreteProviderSettingsSection":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 260
    const-string v23, "providerLoadName"

    move-object/from16 v0, v23

    invoke-virtual {v5, v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 261
    .local v16, "nameForReflection":Ljava/lang/String;
    const-string v23, "adUnits"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v5, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 262
    .local v3, "adUnitSection":Lorg/json/JSONObject;
    const-string v23, "application"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v5, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 263
    .local v4, "appSection":Lorg/json/JSONObject;
    const-string v23, "rewardedVideo"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 264
    .local v22, "rvSection":Lorg/json/JSONObject;
    const-string v23, "interstitial"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v3, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getSection(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 266
    .local v8, "isSection":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v4}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v21

    .line 267
    .local v21, "rewardedVideoSettings":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v4}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 270
    .local v7, "interstitialSettings":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->containsProviderSettings(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/ProviderSettings;

    move-result-object v19

    .line 272
    .local v19, "providerLocalSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    invoke-virtual/range {v19 .. v19}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v18

    .line 273
    .local v18, "providerLocalRVSettings":Lorg/json/JSONObject;
    invoke-virtual/range {v19 .. v19}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v17

    .line 276
    .local v17, "providerLocalISSettings":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setRewardedVideoSettings(Lorg/json/JSONObject;)V

    .line 278
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v23

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->setInterstitialSettings(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 298
    .end local v3    # "adUnitSection":Lorg/json/JSONObject;
    .end local v4    # "appSection":Lorg/json/JSONObject;
    .end local v5    # "concreteProviderSettingsSection":Lorg/json/JSONObject;
    .end local v7    # "interstitialSettings":Lorg/json/JSONObject;
    .end local v8    # "isSection":Lorg/json/JSONObject;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v16    # "nameForReflection":Ljava/lang/String;
    .end local v17    # "providerLocalISSettings":Lorg/json/JSONObject;
    .end local v18    # "providerLocalRVSettings":Lorg/json/JSONObject;
    .end local v19    # "providerLocalSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    .end local v20    # "providerSettingsSection":Lorg/json/JSONObject;
    .end local v21    # "rewardedVideoSettings":Lorg/json/JSONObject;
    .end local v22    # "rvSection":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 299
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    return-void

    .line 280
    .restart local v3    # "adUnitSection":Lorg/json/JSONObject;
    .restart local v4    # "appSection":Lorg/json/JSONObject;
    .restart local v5    # "concreteProviderSettingsSection":Lorg/json/JSONObject;
    .restart local v7    # "interstitialSettings":Lorg/json/JSONObject;
    .restart local v8    # "isSection":Lorg/json/JSONObject;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .restart local v16    # "nameForReflection":Ljava/lang/String;
    .restart local v20    # "providerSettingsSection":Lorg/json/JSONObject;
    .restart local v21    # "rewardedVideoSettings":Lorg/json/JSONObject;
    .restart local v22    # "rvSection":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v23, v0

    const-string v24, "Mediation"

    invoke-virtual/range {v23 .. v24}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->containsProviderSettings(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_5

    const-string v23, "SupersonicAds"

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v23, v0

    const-string v24, "Mediation"

    invoke-virtual/range {v23 .. v24}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->getProviderSettings(Ljava/lang/String;)Lcom/supersonic/mediationsdk/model/ProviderSettings;

    move-result-object v13

    .line 284
    .local v13, "mediationLocalSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    invoke-virtual {v13}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getRewardedVideoSettings()Lorg/json/JSONObject;

    move-result-object v12

    .line 285
    .local v12, "mediationLocalRVSettings":Lorg/json/JSONObject;
    invoke-virtual {v13}, Lcom/supersonic/mediationsdk/model/ProviderSettings;->getInterstitialSettings()Lorg/json/JSONObject;

    move-result-object v11

    .line 287
    .local v11, "mediationLocalISSettings":Lorg/json/JSONObject;
    new-instance v23, Lorg/json/JSONObject;

    instance-of v0, v12, Lorg/json/JSONObject;

    move/from16 v23, v0

    if-nez v23, :cond_3

    invoke-virtual {v12}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    .end local v12    # "mediationLocalRVSettings":Lorg/json/JSONObject;
    :goto_1
    invoke-static/range {v23 .. v23}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 288
    .local v15, "mergedRVSettings":Lorg/json/JSONObject;
    new-instance v23, Lorg/json/JSONObject;

    instance-of v0, v11, Lorg/json/JSONObject;

    move/from16 v23, v0

    if-nez v23, :cond_4

    invoke-virtual {v11}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v23

    .end local v11    # "mediationLocalISSettings":Lorg/json/JSONObject;
    :goto_2
    invoke-static/range {v23 .. v23}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 290
    .local v14, "mergedISSettings":Lorg/json/JSONObject;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v15, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v21

    .line 291
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mergeJsons(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v23, v0

    new-instance v24, Lcom/supersonic/mediationsdk/model/ProviderSettings;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v0, v9, v1, v2, v7}, Lcom/supersonic/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual/range {v23 .. v24}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/supersonic/mediationsdk/model/ProviderSettings;)V

    goto/16 :goto_0

    .line 287
    .end local v14    # "mergedISSettings":Lorg/json/JSONObject;
    .end local v15    # "mergedRVSettings":Lorg/json/JSONObject;
    .restart local v11    # "mediationLocalISSettings":Lorg/json/JSONObject;
    .restart local v12    # "mediationLocalRVSettings":Lorg/json/JSONObject;
    :cond_3
    check-cast v12, Lorg/json/JSONObject;

    .end local v12    # "mediationLocalRVSettings":Lorg/json/JSONObject;
    invoke-static {v12}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v23

    goto :goto_1

    .line 288
    .restart local v15    # "mergedRVSettings":Lorg/json/JSONObject;
    :cond_4
    check-cast v11, Lorg/json/JSONObject;

    .end local v11    # "mediationLocalISSettings":Lorg/json/JSONObject;
    invoke-static {v11}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v23

    goto :goto_2

    .line 295
    .end local v13    # "mediationLocalSettings":Lcom/supersonic/mediationsdk/model/ProviderSettings;
    .end local v15    # "mergedRVSettings":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    move-object/from16 v23, v0

    new-instance v24, Lcom/supersonic/mediationsdk/model/ProviderSettings;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v21

    invoke-direct {v0, v9, v1, v2, v7}, Lcom/supersonic/mediationsdk/model/ProviderSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    invoke-virtual/range {v23 .. v24}, Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;->addProviderSettings(Lcom/supersonic/mediationsdk/model/ProviderSettings;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private parseSingleISPlacement(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    .locals 6
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    .line 484
    const/4 v2, 0x0

    .line 486
    .local v2, "result":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    if-eqz p1, :cond_0

    .line 487
    const-string v4, "placementId"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 488
    .local v0, "placementId":I
    const-string v4, "placementName"

    const-string v5, ""

    invoke-virtual {p1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 489
    .local v1, "placementName":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v3

    .line 491
    .local v3, "settings":Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
    if-ltz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 492
    new-instance v2, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;

    .end local v2    # "result":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    invoke-direct {v2, v0, v1, v3}, Lcom/supersonic/mediationsdk/model/InterstitialPlacement;-><init>(ILjava/lang/String;Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;)V

    .line 493
    .restart local v2    # "result":Lcom/supersonic/mediationsdk/model/InterstitialPlacement;
    if-eqz v3, :cond_0

    .line 494
    iget-object v4, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {v4, v2}, Lcom/supersonic/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/InterstitialPlacement;)V

    .line 499
    .end local v0    # "placementId":I
    .end local v1    # "placementName":Ljava/lang/String;
    .end local v3    # "settings":Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
    :cond_0
    return-object v2
.end method

.method private parseSingleOWPlacement(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/OfferwallPlacement;
    .locals 5
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    .line 503
    const/4 v2, 0x0

    .line 505
    .local v2, "result":Lcom/supersonic/mediationsdk/model/OfferwallPlacement;
    if-eqz p1, :cond_0

    .line 506
    const-string v3, "placementId"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 507
    .local v0, "placementId":I
    const-string v3, "placementName"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    .local v1, "placementName":Ljava/lang/String;
    if-ltz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 510
    new-instance v2, Lcom/supersonic/mediationsdk/model/OfferwallPlacement;

    .end local v2    # "result":Lcom/supersonic/mediationsdk/model/OfferwallPlacement;
    invoke-direct {v2, v0, v1}, Lcom/supersonic/mediationsdk/model/OfferwallPlacement;-><init>(ILjava/lang/String;)V

    .line 514
    .end local v0    # "placementId":I
    .end local v1    # "placementName":Ljava/lang/String;
    .restart local v2    # "result":Lcom/supersonic/mediationsdk/model/OfferwallPlacement;
    :cond_0
    return-object v2
.end method

.method private parseSingleRVPlacement(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/Placement;
    .locals 9
    .param p1, "placementJson"    # Lorg/json/JSONObject;

    .prologue
    const/4 v8, -0x1

    .line 462
    const/4 v0, 0x0

    .line 464
    .local v0, "result":Lcom/supersonic/mediationsdk/model/Placement;
    if-eqz p1, :cond_0

    .line 465
    const-string v6, "placementId"

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 466
    .local v1, "placementId":I
    const-string v6, "placementName"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "placementName":Ljava/lang/String;
    const-string v6, "virtualItemName"

    const-string v7, ""

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 468
    .local v3, "virtualItemName":Ljava/lang/String;
    const-string v6, "virtualItemCount"

    invoke-virtual {p1, v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    .line 469
    .local v4, "virtualItemCount":I
    invoke-direct {p0, p1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->getPlacementAvailabilitySettings(Lorg/json/JSONObject;)Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;

    move-result-object v5

    .line 471
    .local v5, "settings":Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
    if-ltz v1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    if-lez v4, :cond_0

    .line 473
    new-instance v0, Lcom/supersonic/mediationsdk/model/Placement;

    .end local v0    # "result":Lcom/supersonic/mediationsdk/model/Placement;
    invoke-direct/range {v0 .. v5}, Lcom/supersonic/mediationsdk/model/Placement;-><init>(ILjava/lang/String;Ljava/lang/String;ILcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;)V

    .line 474
    .restart local v0    # "result":Lcom/supersonic/mediationsdk/model/Placement;
    if-eqz v5, :cond_0

    .line 475
    iget-object v6, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/supersonic/mediationsdk/utils/CappingManager;->addCappingInfo(Landroid/content/Context;Lcom/supersonic/mediationsdk/model/Placement;)V

    .line 480
    .end local v1    # "placementId":I
    .end local v2    # "placementName":Ljava/lang/String;
    .end local v3    # "virtualItemName":Ljava/lang/String;
    .end local v4    # "virtualItemCount":I
    .end local v5    # "settings":Lcom/supersonic/mediationsdk/model/PlacementAvailabilitySettings;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public decreaseMaxISAdapters()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    if-lez v0, :cond_0

    .line 619
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    .line 621
    :cond_0
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    return v0
.end method

.method public decreaseMaxRVAdapters()I
    .locals 1

    .prologue
    .line 611
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    if-lez v0, :cond_0

    .line 612
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    .line 614
    :cond_0
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    return v0
.end method

.method public getConfigurations()Lcom/supersonic/mediationsdk/model/Configurations;
    .locals 1

    .prologue
    .line 675
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/supersonic/mediationsdk/model/Configurations;

    return-object v0
.end method

.method public getISAdaptersLoadPosition()I
    .locals 1

    .prologue
    .line 663
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    return v0
.end method

.method public getMaxISAdapters()I
    .locals 1

    .prologue
    .line 607
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxISAdapters:I

    return v0
.end method

.method public getMaxRVAdapters()I
    .locals 1

    .prologue
    .line 603
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mMaxRVAdapters:I

    return v0
.end method

.method public getNextISProvider()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 639
    :try_start_0
    iget v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    .line 640
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    if-le v1, v3, :cond_0

    .line 641
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 642
    goto :goto_0

    .line 644
    :catch_0
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextProvider(ISLoadPosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ISProviders.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 646
    goto :goto_0
.end method

.method public getNextRVProvider()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 626
    :try_start_0
    iget v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    .line 627
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    if-le v1, v3, :cond_0

    .line 628
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    iget v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v2

    .line 629
    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->getLogger()Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;

    move-result-object v1

    sget-object v3, Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;->INTERNAL:Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextProvider(RVLoadPosition: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RVProviders.size(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v5}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v0}, Lcom/supersonic/mediationsdk/logger/SupersonicLoggerManager;->logException(Lcom/supersonic/mediationsdk/logger/SupersonicLogger$SupersonicTag;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 633
    goto :goto_0
.end method

.method public getProviderOrder()Lcom/supersonic/mediationsdk/model/ProviderOrder;
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    return-object v0
.end method

.method public getProviderSettingsHolder()Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    return-object v0
.end method

.method public getRVAdaptersLoadPosition()I
    .locals 1

    .prologue
    .line 659
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    return v0
.end method

.method public getReponseError()Lcom/supersonic/mediationsdk/logger/SupersonicError;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 203
    invoke-virtual {p0, v1}, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->isValidResponse(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    :goto_0
    return-object v1

    .line 207
    :cond_0
    const-string v0, ""

    .line 208
    .local v0, "errorMsg":Ljava/lang/String;
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    :cond_1
    if-nez v0, :cond_2

    .line 212
    const-string v0, ""

    .line 214
    :cond_2
    const-string v1, "Mediation"

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/supersonic/mediationsdk/logger/SupersonicError;

    move-result-object v1

    goto :goto_0
.end method

.method public hasMoreISProvidersToLoad()Z
    .locals 2

    .prologue
    .line 655
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mISLoadPosition:I

    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

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

.method public hasMoreRVProvidersToLoad()Z
    .locals 2

    .prologue
    .line 651
    iget v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mRVLoadPosition:I

    iget-object v1, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v1}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v0

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

.method public isValidResponse(Ljava/lang/String;)Z
    .locals 5
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    if-eqz v3, :cond_1

    move v0, v1

    .line 185
    .local v0, "valid":Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    const-string v4, "error"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 187
    :goto_1
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    if-eqz v3, :cond_3

    move v0, v1

    .line 189
    :goto_2
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderSettingsHolder:Lcom/supersonic/mediationsdk/model/ProviderSettingsHolder;

    if-eqz v3, :cond_4

    move v0, v1

    .line 191
    :goto_3
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mConfigurations:Lcom/supersonic/mediationsdk/model/Configurations;

    if-eqz v3, :cond_5

    move v0, v1

    .line 193
    :goto_4
    if-eqz p1, :cond_0

    .line 194
    const-string v3, "IS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 195
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getInterstitialProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    move v0, v1

    .line 199
    :cond_0
    :goto_5
    return v0

    .end local v0    # "valid":Z
    :cond_1
    move v0, v2

    .line 183
    goto :goto_0

    .restart local v0    # "valid":Z
    :cond_2
    move v0, v2

    .line 185
    goto :goto_1

    :cond_3
    move v0, v2

    .line 187
    goto :goto_2

    :cond_4
    move v0, v2

    .line 189
    goto :goto_3

    :cond_5
    move v0, v2

    .line 191
    goto :goto_4

    :cond_6
    move v0, v2

    .line 195
    goto :goto_5

    .line 197
    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mProviderOrder:Lcom/supersonic/mediationsdk/model/ProviderOrder;

    invoke-virtual {v3}, Lcom/supersonic/mediationsdk/model/ProviderOrder;->getRewardedVideoProviderOrder()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    move v0, v1

    :goto_6
    goto :goto_5

    :cond_8
    move v0, v2

    goto :goto_6
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 162
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 165
    .local v1, "resultObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "appKey"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mAppKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string v2, "userId"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v2, "response"

    iget-object v3, p0, Lcom/supersonic/mediationsdk/utils/ServerResponseWrapper;->mResponse:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1    # "resultObject":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 168
    .restart local v1    # "resultObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 172
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    check-cast v1, Lorg/json/JSONObject;

    .end local v1    # "resultObject":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
