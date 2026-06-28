.class public abstract Lcom/supersonic/mediationsdk/events/BaseEventsManager;
.super Ljava/lang/Object;
.source "BaseEventsManager.java"


# instance fields
.field final DATABASE_NAME:Ljava/lang/String;

.field final DATABASE_VERSION:I

.field final DEFAULT_BACKUP_THRESHOLD:I

.field final DEFAULT_MAX_NUMBER_OF_EVENTS:I

.field final KEY_PLACEMENT:Ljava/lang/String;

.field final KEY_PROVIDER:Ljava/lang/String;

.field final KEY_SESSION_DEPTH:Ljava/lang/String;

.field protected mAdUnitType:I

.field protected mBackupThreshold:I

.field protected mCurrentPlacement:Ljava/lang/String;

.field protected mDbStorage:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

.field protected mEventType:Ljava/lang/String;

.field protected mEventsSendInProgress:Z

.field protected mFormatter:Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

.field protected mFormatterType:Ljava/lang/String;

.field protected mHadTopPriorityEvent:Z

.field protected mHasServerResponse:Z

.field protected mIsEventsEnabled:Z

.field protected mLocalEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/eventsmodule/EventData;",
            ">;"
        }
    .end annotation
.end field

.field protected mMaxNumberOfEvents:I

.field protected mOptOutEvents:[I

.field protected mSessionDepth:I

.field protected mTotalEvents:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->DEFAULT_BACKUP_THRESHOLD:I

    .line 25
    iput v3, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->DEFAULT_MAX_NUMBER_OF_EVENTS:I

    .line 27
    const/4 v0, 0x5

    iput v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->DATABASE_VERSION:I

    .line 28
    const-string v0, "supersonic_sdk.db"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->DATABASE_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "sessionDepth"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->KEY_SESSION_DEPTH:Ljava/lang/String;

    .line 31
    const-string v0, "provider"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->KEY_PROVIDER:Ljava/lang/String;

    .line 32
    const-string v0, "placement"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->KEY_PLACEMENT:Ljava/lang/String;

    .line 36
    iput-boolean v2, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    .line 44
    iput-boolean v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    .line 47
    iput v3, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    .line 48
    iput v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    .line 51
    iput-boolean v2, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventsSendInProgress:Z

    return-void
.end method


# virtual methods
.method protected backupEventsToDb()V
    .locals 3

    .prologue
    .line 208
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->saveEvents(Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 210
    return-void
.end method

.method protected getProviderNameForEvent(Lcom/supersonic/eventsmodule/EventData;)Ljava/lang/String;
    .locals 5
    .param p1, "event"    # Lcom/supersonic/eventsmodule/EventData;

    .prologue
    .line 275
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 276
    .local v1, "eventData":Lorg/json/JSONObject;
    const-string v3, "provider"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 281
    .end local v1    # "eventData":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 277
    :catch_0
    move-exception v0

    .line 278
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, ""

    goto :goto_0
.end method

.method protected initState()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x1

    iput v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mSessionDepth:I

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mCurrentPlacement:Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    iget v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mAdUnitType:I

    invoke-static {v0, v1}, Lcom/supersonic/mediationsdk/events/EventsFormatterFactory;->getFormatter(Ljava/lang/String;I)Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    .line 63
    return-void
.end method

.method protected abstract isTopPriorityEvent(Lcom/supersonic/eventsmodule/EventData;)Z
.end method

.method public declared-synchronized log(Lcom/supersonic/eventsmodule/EventData;)V
    .locals 13
    .param p1, "event"    # Lcom/supersonic/eventsmodule/EventData;

    .prologue
    .line 81
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 156
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 86
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->shouldEventBeLogged(Lcom/supersonic/eventsmodule/EventData;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 87
    const-string v9, "sessionDepth"

    iget v10, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mSessionDepth:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Lcom/supersonic/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->shouldExtractCurrentPlacement(Lcom/supersonic/eventsmodule/EventData;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v9

    if-eqz v9, :cond_6

    .line 90
    const/4 v7, 0x0

    .line 92
    .local v7, "placement":Ljava/lang/String;
    :try_start_2
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getAdditionalData()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "placement"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v7

    .line 96
    :goto_1
    :try_start_3
    invoke-virtual {p0, v7}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->setCurrentPlacement(Ljava/lang/String;)V

    .line 103
    .end local v7    # "placement":Ljava/lang/String;
    :cond_2
    :goto_2
    iget-object v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    .line 107
    :cond_3
    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->isTopPriorityEvent(Lcom/supersonic/eventsmodule/EventData;)Z

    move-result v3

    .line 109
    .local v3, "isTopPriority":Z
    iget-boolean v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    if-nez v9, :cond_4

    if-eqz v3, :cond_4

    .line 110
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    .line 112
    :cond_4
    iget-object v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    if-eqz v9, :cond_5

    .line 114
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->shouldSendEvents()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 116
    iget-boolean v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventsSendInProgress:Z

    if-nez v9, :cond_5

    .line 117
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    .line 120
    new-instance v6, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 121
    .local v6, "mTempLocalEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    iget-object v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 123
    iget-object v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    iget-object v10, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->getLatestEventTimestamp(Ljava/lang/String;)J

    move-result-wide v4

    .line 124
    .local v4, "latestEventTimestamp":J
    iget-object v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    iget-object v10, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->loadEvents(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 126
    .local v8, "storedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 127
    .local v0, "combinedEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 129
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_5

    .line 130
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventsSendInProgress:Z

    .line 131
    iget-object v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    invoke-static {}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->getProperties()Lcom/supersonic/mediationsdk/sdk/GeneralProperties;

    move-result-object v10

    invoke-virtual {v10}, Lcom/supersonic/mediationsdk/sdk/GeneralProperties;->toJSON()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;->format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "dataToSend":Ljava/lang/String;
    new-instance v9, Lcom/supersonic/eventsmodule/EventsSender;

    new-instance v10, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;

    invoke-direct {v10, p0, v4, v5, v6}, Lcom/supersonic/mediationsdk/events/BaseEventsManager$1;-><init>(Lcom/supersonic/mediationsdk/events/BaseEventsManager;JLjava/util/ArrayList;)V

    invoke-direct {v9, v10}, Lcom/supersonic/eventsmodule/EventsSender;-><init>(Lcom/supersonic/eventsmodule/IEventsSenderResultListener;)V

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v12}, Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;->getEventsServerUrl()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v10}, Lcom/supersonic/eventsmodule/EventsSender;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 153
    .end local v0    # "combinedEventList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    .end local v1    # "dataToSend":Ljava/lang/String;
    .end local v4    # "latestEventTimestamp":J
    .end local v6    # "mTempLocalEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    .end local v8    # "storedEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    :cond_5
    :goto_3
    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->shouldIncreaseSessionDepth(Lcom/supersonic/eventsmodule/EventData;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 154
    iget v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mSessionDepth:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mSessionDepth:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 81
    .end local v3    # "isTopPriority":Z
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 93
    .restart local v7    # "placement":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Lorg/json/JSONException;
    :try_start_4
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 98
    .end local v2    # "e":Lorg/json/JSONException;
    .end local v7    # "placement":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 99
    const-string v9, "placement"

    iget-object v10, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mCurrentPlacement:Ljava/lang/String;

    invoke-virtual {p1, v9, v10}, Lcom/supersonic/eventsmodule/EventData;->addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 148
    .restart local v3    # "isTopPriority":Z
    :cond_7
    iget-object v9, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mLocalEvents:Ljava/util/ArrayList;

    invoke-virtual {p0, v9}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->shouldBackupEventsToDb(Ljava/util/ArrayList;)Z

    move-result v9

    if-nez v9, :cond_8

    if-eqz v3, :cond_5

    .line 149
    :cond_8
    invoke-virtual {p0}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->backupEventsToDb()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public setBackupThreshold(I)V
    .locals 0
    .param p1, "backupThreshold"    # I

    .prologue
    .line 167
    if-lez p1, :cond_0

    .line 168
    iput p1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    .line 169
    :cond_0
    return-void
.end method

.method protected setCurrentPlacement(Ljava/lang/String;)V
    .locals 1
    .param p1, "placement"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mCurrentPlacement:Ljava/lang/String;

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mCurrentPlacement:Ljava/lang/String;

    goto :goto_0
.end method

.method public setEventsUrl(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "eventsUrl"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v0, p1}, Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;->setEventsServerUrl(Ljava/lang/String;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_1
    return-void
.end method

.method public setFormatterType(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1
    .param p1, "formatterType"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    .line 197
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->verifyCurrentFormatter(Ljava/lang/String;)V

    .line 200
    :cond_0
    return-void
.end method

.method public setHasServerResponse(Z)V
    .locals 0
    .param p1, "hasResponse"    # Z

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mHasServerResponse:Z

    .line 268
    return-void
.end method

.method public setIsEventsEnabled(Z)V
    .locals 0
    .param p1, "isEnabled"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mIsEventsEnabled:Z

    .line 205
    return-void
.end method

.method public setMaxNumberOfEvents(I)V
    .locals 0
    .param p1, "maxNumberOfEvents"    # I

    .prologue
    .line 173
    if-lez p1, :cond_0

    .line 174
    iput p1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    .line 175
    :cond_0
    return-void
.end method

.method public setOptOutEvents([ILandroid/content/Context;)V
    .locals 1
    .param p1, "optOutEvents"    # [I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    .line 180
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p2, v0, p1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->saveDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;[I)V

    .line 181
    return-void
.end method

.method protected shouldBackupEventsToDb(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/eventsmodule/EventData;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    const/4 v0, 0x0

    .line 230
    .local v0, "shouldBackup":Z
    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mBackupThreshold:I

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    .line 233
    :cond_0
    :goto_0
    return v0

    .line 231
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldEventBeLogged(Lcom/supersonic/eventsmodule/EventData;)Z
    .locals 4
    .param p1, "event"    # Lcom/supersonic/eventsmodule/EventData;

    .prologue
    .line 237
    const/4 v2, 0x1

    .line 239
    .local v2, "logEvent":Z
    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    array-length v3, v3

    if-lez v3, :cond_0

    .line 240
    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v0

    .line 241
    .local v0, "eventId":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    aget v3, v3, v1

    if-ne v0, v3, :cond_1

    .line 243
    const/4 v2, 0x0

    .line 249
    .end local v0    # "eventId":I
    .end local v1    # "i":I
    :cond_0
    return v2

    .line 241
    .restart local v0    # "eventId":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected abstract shouldExtractCurrentPlacement(Lcom/supersonic/eventsmodule/EventData;)Z
.end method

.method protected abstract shouldIncreaseSessionDepth(Lcom/supersonic/eventsmodule/EventData;)Z
.end method

.method protected shouldSendEvents()Z
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mTotalEvents:I

    iget v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mMaxNumberOfEvents:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mHadTopPriorityEvent:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mHasServerResponse:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized start(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getDefaultEventsFormatterType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatterType:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->verifyCurrentFormatter(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    iget-object v1, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getDefaultEventsURL(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;->setEventsServerUrl(Ljava/lang/String;)V

    .line 71
    const-string v0, "supersonic_sdk.db"

    const/4 v1, 0x5

    invoke-static {p1, v0, v1}, Lcom/supersonic/eventsmodule/DataBaseEventsStorage;->getInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mDbStorage:Lcom/supersonic/eventsmodule/DataBaseEventsStorage;

    .line 73
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mEventType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/supersonic/mediationsdk/utils/SupersonicUtils;->getDefaultOptOutEvents(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mOptOutEvents:[I

    .line 76
    invoke-static {}, Lcom/supersonic/mediationsdk/events/SuperLooper;->getLooper()Lcom/supersonic/mediationsdk/events/SuperLooper;

    move-result-object v0

    new-instance v1, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;

    invoke-direct {v1, p1}, Lcom/supersonic/mediationsdk/utils/GeneralPropertiesWorker;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/supersonic/mediationsdk/events/SuperLooper;->post(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected verifyCurrentFormatter(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatterType"    # Ljava/lang/String;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;->getFormatterType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 161
    :cond_0
    iget v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mAdUnitType:I

    invoke-static {p1, v0}, Lcom/supersonic/mediationsdk/events/EventsFormatterFactory;->getFormatter(Ljava/lang/String;I)Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/BaseEventsManager;->mFormatter:Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;

    .line 163
    :cond_1
    return-void
.end method
