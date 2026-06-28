.class public Lcom/mopub/mobileads/VastTracker;
.super Ljava/lang/Object;
.source "VastTracker.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastTracker$MessageType;
    }
.end annotation


# instance fields
.field private mCalled:Z

.field private final mContent:Ljava/lang/String;

.field private mIsRepeatable:Z

.field private final mMessageType:Lcom/mopub/mobileads/VastTracker$MessageType;


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;)V
    .locals 0
    .param p1, "messageType"    # Lcom/mopub/mobileads/VastTracker$MessageType;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    iput-object p1, p0, Lcom/mopub/mobileads/VastTracker;->mMessageType:Lcom/mopub/mobileads/VastTracker$MessageType;

    .line 28
    iput-object p2, p0, Lcom/mopub/mobileads/VastTracker;->mContent:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "trackingUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-direct {p0, v0, p1}, Lcom/mopub/mobileads/VastTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "trackingUrl"    # Ljava/lang/String;
    .param p2, "isRepeatable"    # Z

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    .line 38
    iput-boolean p2, p0, Lcom/mopub/mobileads/VastTracker;->mIsRepeatable:Z

    .line 39
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageType()Lcom/mopub/mobileads/VastTracker$MessageType;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/VastTracker;->mMessageType:Lcom/mopub/mobileads/VastTracker$MessageType;

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->mIsRepeatable:Z

    return v0
.end method

.method public isTracked()Z
    .locals 1

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->mCalled:Z

    return v0
.end method

.method public setTracked()V
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastTracker;->mCalled:Z

    .line 53
    return-void
.end method
