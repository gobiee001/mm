.class public Lcom/supersonic/mediationsdk/model/ApplicationEvents;
.super Ljava/lang/Object;
.source "ApplicationEvents.java"


# instance fields
.field private mBackupThreshold:I

.field private mEventsType:Ljava/lang/String;

.field private mMaxNumberOfEvents:I

.field private mOptOutEvents:[I

.field private mSendEventsToggle:Z

.field private mSendUltraEvents:Z

.field private mServerEventsURL:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;II[I)V
    .locals 0
    .param p1, "sendUltraEvents"    # Z
    .param p2, "sendEventsToggle"    # Z
    .param p3, "serverEventsURL"    # Ljava/lang/String;
    .param p4, "serverEventsType"    # Ljava/lang/String;
    .param p5, "backupThreshold"    # I
    .param p6, "maxNumberOfEvents"    # I
    .param p7, "optOutEvents"    # [I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mSendUltraEvents:Z

    .line 24
    iput-boolean p2, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mSendEventsToggle:Z

    .line 25
    iput-object p3, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mServerEventsURL:Ljava/lang/String;

    .line 26
    iput-object p4, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mEventsType:Ljava/lang/String;

    .line 27
    iput p5, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mBackupThreshold:I

    .line 28
    iput p6, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mMaxNumberOfEvents:I

    .line 29
    iput-object p7, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mOptOutEvents:[I

    .line 30
    return-void
.end method


# virtual methods
.method public getEventsBackupThreshold()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mBackupThreshold:I

    return v0
.end method

.method public getEventsType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mEventsType:Ljava/lang/String;

    return-object v0
.end method

.method public getEventsURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mServerEventsURL:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxNumberOfEvents()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mMaxNumberOfEvents:I

    return v0
.end method

.method public getOptOutEvents()[I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mOptOutEvents:[I

    return-object v0
.end method

.method public isEventsEnabled()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mSendEventsToggle:Z

    return v0
.end method

.method public isUltraEventsEnabled()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/supersonic/mediationsdk/model/ApplicationEvents;->mSendUltraEvents:Z

    return v0
.end method
