.class public Lcom/supersonic/mediationsdk/events/IronbeastEventsFormatter;
.super Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;
.source "IronbeastEventsFormatter.java"


# instance fields
.field private final DEFAULT_IB_EVENTS_URL:Ljava/lang/String;

.field private final IB_KEY_DATA:Ljava/lang/String;

.field private final IB_KEY_TABLE:Ljava/lang/String;

.field private final IB_TABLE_NAME:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "adUnit"    # I

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;-><init>()V

    .line 28
    const-string v0, "https://track.atom-data.io"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/IronbeastEventsFormatter;->DEFAULT_IB_EVENTS_URL:Ljava/lang/String;

    .line 30
    const-string v0, "super.dwh.mediation_events"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/IronbeastEventsFormatter;->IB_TABLE_NAME:Ljava/lang/String;

    .line 31
    const-string v0, "table"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/IronbeastEventsFormatter;->IB_KEY_TABLE:Ljava/lang/String;

    .line 32
    const-string v0, "data"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/IronbeastEventsFormatter;->IB_KEY_DATA:Ljava/lang/String;

    .line 35
    iput p1, p0, Lcom/supersonic/mediationsdk/events/IronbeastEventsFormatter;->mAdUnit:I

    .line 36
    return-void
.end method


# virtual methods
.method public format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 8
    .param p2, "generalProperties"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/supersonic/eventsmodule/EventData;",
            ">;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 52
    .local v4, "jsonBody":Lorg/json/JSONObject;
    if-nez p2, :cond_1

    .line 53
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    iput-object v6, p0, Lcom/supersonic/mediationsdk/events/IronbeastEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    .line 58
    :goto_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 59
    .local v2, "eventsArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 60
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/supersonic/eventsmodule/EventData;

    .line 61
    .local v1, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-virtual {p0, v1}, Lcom/supersonic/mediationsdk/events/IronbeastEventsFormatter;->createJSONForEvent(Lcom/supersonic/eventsmodule/EventData;)Lorg/json/JSONObject;

    move-result-object v5

    .line 63
    .local v5, "jsonEvent":Lorg/json/JSONObject;
    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 71
    .end local v1    # "event":Lcom/supersonic/eventsmodule/EventData;
    .end local v2    # "eventsArray":Lorg/json/JSONArray;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "jsonEvent":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 75
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_2
    instance-of v6, v4, Lorg/json/JSONObject;

    if-nez v6, :cond_3

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .end local v4    # "jsonBody":Lorg/json/JSONObject;
    :goto_3
    return-object v6

    .line 55
    .restart local v4    # "jsonBody":Lorg/json/JSONObject;
    :cond_1
    iput-object p2, p0, Lcom/supersonic/mediationsdk/events/IronbeastEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    goto :goto_0

    .line 68
    .restart local v2    # "eventsArray":Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    const-string v6, "table"

    const-string v7, "super.dwh.mediation_events"

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v6, "data"

    invoke-virtual {p0, v2}, Lcom/supersonic/mediationsdk/events/IronbeastEventsFormatter;->createDataToSend(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 75
    .end local v2    # "eventsArray":Lorg/json/JSONArray;
    :cond_3
    check-cast v4, Lorg/json/JSONObject;

    .end local v4    # "jsonBody":Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    goto :goto_3
.end method

.method public getDefaultEventsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "https://track.atom-data.io"

    return-object v0
.end method

.method public getFormatterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    const-string v0, "ironbeast"

    return-object v0
.end method
