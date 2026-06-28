.class public Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;
.super Lcom/supersonic/mediationsdk/events/BaseEventsManager;
.source "InterstitialEventsManager.java"


# static fields
.field private static sInstance:Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/supersonic/mediationsdk/events/BaseEventsManager;-><init>()V

    .line 15
    const-string v0, "ironbeast"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->mFormatterType:Ljava/lang/String;

    .line 16
    const/4 v0, 0x2

    iput v0, p0, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->mAdUnitType:I

    .line 17
    const-string v0, "IS"

    iput-object v0, p0, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->mEventType:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static getInstance()Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    invoke-direct {v0}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;-><init>()V

    sput-object v0, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    .line 23
    sget-object v0, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    invoke-virtual {v0}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->initState()V

    .line 26
    :cond_0
    sget-object v0, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->sInstance:Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;

    return-object v0
.end method


# virtual methods
.method protected isTopPriorityEvent(Lcom/supersonic/eventsmodule/EventData;)Z
    .locals 2
    .param p1, "currentEvent"    # Lcom/supersonic/eventsmodule/EventData;

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    const-string v0, "Mediation"

    invoke-virtual {p0, p1}, Lcom/supersonic/mediationsdk/events/InterstitialEventsManager;->getProviderNameForEvent(Lcom/supersonic/eventsmodule/EventData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldExtractCurrentPlacement(Lcom/supersonic/eventsmodule/EventData;)Z
    .locals 2
    .param p1, "event"    # Lcom/supersonic/eventsmodule/EventData;

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldIncreaseSessionDepth(Lcom/supersonic/eventsmodule/EventData;)Z
    .locals 2
    .param p1, "event"    # Lcom/supersonic/eventsmodule/EventData;

    .prologue
    .line 36
    invoke-virtual {p1}, Lcom/supersonic/eventsmodule/EventData;->getEventId()I

    move-result v0

    const/16 v1, 0x1a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
