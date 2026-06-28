.class public Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;
.super Lcom/supersonic/mediationsdk/events/BaseEventsManager;
.source "RewardedVideoEventsManager.java"


# static fields
.field private static sInstance:Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;-><init>()V

    .line 15
    const-string v0, "outcome"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->mFormatterType:Ljava/lang/String;

    .line 16
    const/4 v0, 0x3

    iput v0, p0, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->mAdUnitType:I

    .line 17
    const-string v0, "RV"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->mEventType:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    .line 23
    sget-object v0, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->initState()V

    .line 25
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->sInstance:Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;

    return-object v0
.end method


# virtual methods
.method protected isTopPriorityEvent(Lcom/supersonic/eventsmodule/EventData;)Z
    .locals 3
    .param p1, "currentEvent"    # Lcom/supersonic/eventsmodule/EventData;

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v1

    const/16 v2, 0xf

    if-ne v1, v2, :cond_2

    :cond_0
    const-string v1, "Mediation"

    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/events/RewardedVideoEventsManager;->getProviderNameForEvent(Lcom/supersonic/eventsmodule/EventData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldExtractCurrentPlacement(Lcom/supersonic/eventsmodule/EventData;)Z
    .locals 2
    .param p1, "event"    # Lcom/supersonic/eventsmodule/EventData;

    .prologue
    .line 30
    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldIncreaseSessionDepth(Lcom/supersonic/eventsmodule/EventData;)Z
    .locals 2
    .param p1, "event"    # Lcom/supersonic/eventsmodule/EventData;

    .prologue
    .line 35
    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
