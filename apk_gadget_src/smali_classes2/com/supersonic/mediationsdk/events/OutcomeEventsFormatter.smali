.class public Lcom/supersonic/mediationsdk/events/OutcomeEventsFormatter;
.super Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;
.source "OutcomeEventsFormatter.java"


# instance fields
.field private final DEFAULT_OC_EVENTS_URL:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "adUnit"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/events/AbstractEventsFormatter;-><init>()V

    .line 15
    const-string v0, "https://outcome.supersonicads.com/mediation/"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/OutcomeEventsFormatter;->DEFAULT_OC_EVENTS_URL:Ljava/lang/String;

    .line 18
    iput p1, p0, Lcom/supersonic/mediationsdk/events/OutcomeEventsFormatter;->mAdUnit:I

    .line 19
    return-void
.end method


# virtual methods
.method public format(Ljava/util/ArrayList;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
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
    .line 33
    .local p1, "toSend":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/supersonic/eventsmodule/EventData;>;"
    if-nez p2, :cond_1

    .line 34
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    iput-object v4, p0, Lcom/supersonic/mediationsdk/events/OutcomeEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    .line 38
    :goto_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 39
    .local v1, "eventsArray":Lorg/json/JSONArray;
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 40
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/supersonic/eventsmodule/EventData;

    .line 41
    .local v0, "event":Lcom/supersonic/eventsmodule/EventData;
    invoke-virtual {p0, v0}, Lcom/supersonic/mediationsdk/events/OutcomeEventsFormatter;->createJSONForEvent(Lcom/supersonic/eventsmodule/EventData;)Lorg/json/JSONObject;

    move-result-object v3

    .line 43
    .local v3, "jsonEvent":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 36
    .end local v0    # "event":Lcom/supersonic/eventsmodule/EventData;
    .end local v1    # "eventsArray":Lorg/json/JSONArray;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "jsonEvent":Lorg/json/JSONObject;
    :cond_1
    iput-object p2, p0, Lcom/supersonic/mediationsdk/events/OutcomeEventsFormatter;->mGeneralProperties:Lorg/json/JSONObject;

    goto :goto_0

    .line 48
    .restart local v1    # "eventsArray":Lorg/json/JSONArray;
    :cond_2
    invoke-virtual {p0, v1}, Lcom/supersonic/mediationsdk/events/OutcomeEventsFormatter;->createDataToSend(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getDefaultEventsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "https://outcome.supersonicads.com/mediation/"

    return-object v0
.end method

.method public getFormatterType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "outcome"

    return-object v0
.end method
