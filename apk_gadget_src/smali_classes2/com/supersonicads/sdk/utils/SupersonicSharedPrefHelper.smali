.class public Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;
.super Ljava/lang/Object;
.source "SupersonicSharedPrefHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper$1;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;


# instance fields
.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const-string v0, "supersonic_shared_preferen"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 57
    return-void
.end method

.method private getShouldRegisterSessions()Z
    .locals 3

    .prologue
    .line 242
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "register_sessions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized getSupersonicPrefHelper()Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;
    .locals 2

    .prologue
    .line 67
    const-class v0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mInstance:Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getSupersonicPrefHelper(Landroid/content/Context;)Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const-class v1, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mInstance:Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    invoke-direct {v0, p0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mInstance:Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;

    .line 63
    :cond_0
    sget-object v0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mInstance:Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public addSession(Lcom/supersonicads/sdk/data/SSASession;)V
    .locals 6
    .param p1, "session"    # Lcom/supersonicads/sdk/data/SSASession;

    .prologue
    .line 213
    invoke-direct {p0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getShouldRegisterSessions()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 217
    .local v2, "jsObj":Lorg/json/JSONObject;
    :try_start_0
    const-string v3, "sessionStartTime"

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSASession;->getSessionStartTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 218
    const-string v3, "sessionEndTime"

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSASession;->getSessionEndTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 219
    const-string v3, "sessionType"

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSASession;->getSessionType()Lcom/supersonicads/sdk/data/SSASession$SessionType;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v3, "connectivity"

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSASession;->getConnectivity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    invoke-virtual {p0}, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->getSessions()Lorg/json/JSONArray;

    move-result-object v1

    .line 226
    .local v1, "jsArr":Lorg/json/JSONArray;
    if-nez v1, :cond_0

    .line 227
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "jsArr":Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 230
    .restart local v1    # "jsArr":Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 232
    iget-object v3, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 234
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "sessions"

    instance-of v3, v1, Lorg/json/JSONArray;

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v1    # "jsArr":Lorg/json/JSONArray;
    :goto_1
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 238
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_1
    return-void

    .line 234
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "jsArr":Lorg/json/JSONArray;
    .restart local v2    # "jsObj":Lorg/json/JSONObject;
    :cond_2
    check-cast v1, Lorg/json/JSONArray;

    .end local v1    # "jsArr":Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 222
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public deleteSessions()V
    .locals 3

    .prologue
    .line 198
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 200
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "sessions"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 202
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 203
    return-void
.end method

.method public getApplicationKey(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .prologue
    const/4 v3, 0x0

    .line 295
    const-string v0, "EMPTY_APPLICATION_KEY"

    .line 297
    .local v0, "applicationKey":Ljava/lang/String;
    sget-object v1, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper$1;->$SwitchMap$com$supersonicads$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 314
    :goto_0
    return-object v0

    .line 299
    :pswitch_0
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "application_key_rv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 300
    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "application_key_ow"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 304
    goto :goto_0

    .line 307
    :pswitch_2
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "application_key_is"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    goto :goto_0

    .line 297
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getBackButtonState()Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;
    .locals 5

    .prologue
    .line 111
    iget-object v2, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "back_button_state"

    const-string v4, "2"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "stateStr":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 115
    .local v0, "state":I
    if-nez v0, :cond_0

    .line 116
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;->None:Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;

    .line 123
    :goto_0
    return-object v2

    .line 117
    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 118
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;->Device:Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;

    goto :goto_0

    .line 119
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 120
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;->Controller:Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;

    goto :goto_0

    .line 123
    :cond_2
    sget-object v2, Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;->Controller:Lcom/supersonicads/sdk/data/SSAEnums$BackButtonState;

    goto :goto_0
.end method

.method public getCampaignLastUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "campaign"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionRetries()Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "ssa_rv_parameter_connection_retries"

    const-string v2, "3"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSDKVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "version"

    const-string v2, "UN_VERSIONED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSearchKeys()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    iget-object v5, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v6, "search_keys"

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "value":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v2, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 153
    new-instance v3, Lcom/supersonicads/sdk/data/SSAObj;

    invoke-direct {v3, v4}, Lcom/supersonicads/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 155
    .local v3, "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    const-string v5, "searchKeys"

    invoke-virtual {v3, v5}, Lcom/supersonicads/sdk/data/SSAObj;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    const-string v5, "searchKeys"

    invoke-virtual {v3, v5}, Lcom/supersonicads/sdk/data/SSAObj;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 160
    .local v1, "jsonArr":Lorg/json/JSONArray;
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/supersonicads/sdk/data/SSAObj;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .end local v1    # "jsonArr":Lorg/json/JSONArray;
    .end local v3    # "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    :cond_0
    :goto_0
    return-object v2

    .line 161
    .restart local v1    # "jsonArr":Lorg/json/JSONArray;
    .restart local v3    # "ssaObj":Lcom/supersonicads/sdk/data/SSAObj;
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getSessions()Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 178
    .local v1, "jsArr":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "sessions"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "value":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 181
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 190
    :goto_0
    return-object v3

    .line 185
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_1
    move-object v3, v1

    .line 190
    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Lorg/json/JSONArray;

    .end local v1    # "jsArr":Lorg/json/JSONArray;
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .restart local v1    # "jsArr":Lorg/json/JSONArray;
    goto :goto_1
.end method

.method public getUniqueId(Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .prologue
    const/4 v3, 0x0

    .line 499
    const-string v0, "EMPTY_UNIQUE_ID"

    .line 501
    .local v0, "userUniqueId":Ljava/lang/String;
    sget-object v1, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper$1;->$SwitchMap$com$supersonicads$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 518
    :goto_0
    return-object v0

    .line 503
    :pswitch_0
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_rv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 504
    goto :goto_0

    .line 507
    :pswitch_1
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_ow"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
    goto :goto_0

    .line 511
    :pswitch_2
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_is"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 512
    goto :goto_0

    .line 501
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getUniqueId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 354
    const-string v0, "EMPTY_UNIQUE_ID"

    .line 356
    .local v0, "userUniqueId":Ljava/lang/String;
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_rv"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 369
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :cond_1
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_ow"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 364
    :cond_2
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, "unique_id_is"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 279
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 284
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string v0, "{}"

    goto :goto_0
.end method

.method public setApplicationKey(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 324
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 326
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper$1;->$SwitchMap$com$supersonicads$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 343
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    return-void

    .line 328
    :pswitch_0
    const-string v1, "application_key_rv"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 332
    :pswitch_1
    const-string v1, "application_key_ow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 336
    :pswitch_2
    const-string v1, "application_key_is"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setBackButtonState(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 100
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "back_button_state"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 102
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 103
    return-void
.end method

.method public setCampaignLastUpdate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "campaign"    # Ljava/lang/String;
    .param p2, "lastUpdate"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 457
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 458
    return-void
.end method

.method public setCurrentSDKVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "sdkVersion"    # Ljava/lang/String;

    .prologue
    .line 411
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 413
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "version"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 414
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 415
    return-void
.end method

.method public setLatestCompeltionsTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "timestamp"    # Ljava/lang/String;
    .param p2, "applicationKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 532
    iget-object v7, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v8, "ssaUserData"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, "value":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 538
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 540
    .local v3, "ssaUserDataJson":Lorg/json/JSONObject;
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 542
    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 544
    .local v0, "applicationKeyJson":Lorg/json/JSONObject;
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 546
    invoke-virtual {v0, p3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 548
    .local v4, "userIdJson":Lorg/json/JSONObject;
    const-string v7, "timestamp"

    invoke-virtual {v4, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 550
    iget-object v7, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 551
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v8, "ssaUserData"

    instance-of v7, v3, Lorg/json/JSONObject;

    if-nez v7, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v3    # "ssaUserDataJson":Lorg/json/JSONObject;
    :goto_0
    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    .line 562
    .end local v0    # "applicationKeyJson":Lorg/json/JSONObject;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "userIdJson":Lorg/json/JSONObject;
    :cond_0
    :goto_1
    return v6

    .line 551
    .restart local v0    # "applicationKeyJson":Lorg/json/JSONObject;
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "ssaUserDataJson":Lorg/json/JSONObject;
    .restart local v4    # "userIdJson":Lorg/json/JSONObject;
    :cond_1
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "ssaUserDataJson":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 557
    .end local v0    # "applicationKeyJson":Lorg/json/JSONObject;
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v4    # "userIdJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 558
    .local v1, "e":Lorg/json/JSONException;
    new-instance v7, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;

    invoke-direct {v7}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;-><init>()V

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://www.supersonicads.com/mobile/sdk5/log?method="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/json/JSONException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    aget-object v10, v10, v6

    invoke-virtual {v10}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    invoke-virtual {v7, v8}, Lcom/supersonicads/sdk/utils/SupersonicAsyncHttpRequestTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method public setSSABCParameters(Lcom/supersonicads/sdk/data/SSABCParameters;)V
    .locals 3
    .param p1, "object"    # Lcom/supersonicads/sdk/data/SSABCParameters;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 87
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "ssa_rv_parameter_connection_retries"

    invoke-virtual {p1}, Lcom/supersonicads/sdk/data/SSABCParameters;->getConnectionRetries()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 89
    return-void
.end method

.method public setSearchKeys(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 136
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "search_keys"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 138
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 139
    return-void
.end method

.method public setShouldRegisterSessions(Z)V
    .locals 2
    .param p1, "value"    # Z

    .prologue
    .line 251
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 253
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "register_sessions"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 255
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 256
    return-void
.end method

.method public setUniqueId(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 380
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 382
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 383
    const-string v1, "unique_id_rv"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 392
    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1

    .line 385
    :cond_1
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 386
    const-string v1, "unique_id_ow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 388
    :cond_2
    sget-object v1, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v1}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const-string v1, "unique_id_is"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 265
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 269
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    return v1
.end method

.method public setUserID(Ljava/lang/String;Lcom/supersonicads/sdk/data/SSAEnums$ProductType;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "type"    # Lcom/supersonicads/sdk/data/SSAEnums$ProductType;

    .prologue
    .line 468
    iget-object v1, p0, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 470
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    sget-object v1, Lcom/supersonicads/sdk/utils/SupersonicSharedPrefHelper$1;->$SwitchMap$com$supersonicads$sdk$data$SSAEnums$ProductType:[I

    invoke-virtual {p2}, Lcom/supersonicads/sdk/data/SSAEnums$ProductType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 487
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 488
    return-void

    .line 472
    :pswitch_0
    const-string v1, "user_id_rv"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 476
    :pswitch_1
    const-string v1, "user_id_ow"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 480
    :pswitch_2
    const-string v1, "user_id_is"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 470
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
