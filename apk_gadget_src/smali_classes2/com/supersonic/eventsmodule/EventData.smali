.class public Lcom/supersonic/eventsmodule/EventData;
.super Ljava/lang/Object;
.source "EventData.java"


# instance fields
.field private mAdditionalData:Lorg/json/JSONObject;

.field private mEventId:I

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(IJLorg/json/JSONObject;)V
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "timeStamp"    # J
    .param p4, "additionalData"    # Lorg/json/JSONObject;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/supersonic/eventsmodule/EventData;->mEventId:I

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/supersonic/eventsmodule/EventData;->mTimeStamp:J

    .line 17
    iput p1, p0, Lcom/supersonic/eventsmodule/EventData;->mEventId:I

    .line 18
    iput-wide p2, p0, Lcom/supersonic/eventsmodule/EventData;->mTimeStamp:J

    .line 19
    if-nez p4, :cond_0

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/supersonic/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    .line 23
    :goto_0
    return-void

    .line 22
    :cond_0
    iput-object p4, p0, Lcom/supersonic/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public constructor <init>(ILorg/json/JSONObject;)V
    .locals 2
    .param p1, "eventId"    # I
    .param p2, "additionalData"    # Lorg/json/JSONObject;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/supersonic/eventsmodule/EventData;->mEventId:I

    .line 13
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/supersonic/eventsmodule/EventData;->mTimeStamp:J

    .line 26
    iput p1, p0, Lcom/supersonic/eventsmodule/EventData;->mEventId:I

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/supersonic/eventsmodule/EventData;->mTimeStamp:J

    .line 28
    if-nez p2, :cond_0

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/supersonic/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    .line 32
    :goto_0
    return-void

    .line 31
    :cond_0
    iput-object p2, p0, Lcom/supersonic/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    goto :goto_0
.end method


# virtual methods
.method public addToAdditionalData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/supersonic/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public getAdditionalData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/supersonic/eventsmodule/EventData;->mAdditionalData:Lorg/json/JSONObject;

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getEventId()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/supersonic/eventsmodule/EventData;->mEventId:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/supersonic/eventsmodule/EventData;->mTimeStamp:J

    return-wide v0
.end method
