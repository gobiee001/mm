.class public Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
.super Lcom/mopub/mobileads/VastTracker;
.source "VastAbsoluteProgressTracker.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mopub/mobileads/VastTracker;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private final mTrackingMilliseconds:I


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;I)V
    .locals 1
    .param p1, "messageType"    # Lcom/mopub/mobileads/VastTracker$MessageType;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "trackingMilliseconds"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lcom/mopub/mobileads/VastTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;)V

    .line 22
    if-ltz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/mopub/common/Preconditions;->checkArgument(Z)V

    .line 23
    iput p3, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->mTrackingMilliseconds:I

    .line 24
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "trackingUrl"    # Ljava/lang/String;
    .param p2, "trackingMilliseconds"    # I

    .prologue
    .line 28
    sget-object v0, Lcom/mopub/mobileads/VastTracker$MessageType;->TRACKING_URL:Lcom/mopub/mobileads/VastTracker$MessageType;

    invoke-direct {p0, v0, p1, p2}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Lcom/mopub/mobileads/VastTracker$MessageType;Ljava/lang/String;I)V

    .line 29
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTracker;)I
    .locals 3
    .param p1, "other"    # Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    .prologue
    .line 37
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->getTrackingMilliseconds()I

    move-result v1

    .line 38
    .local v1, "you":I
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->getTrackingMilliseconds()I

    move-result v0

    .line 40
    .local v0, "me":I
    sub-int v2, v0, v1

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTracker;)I

    move-result v0

    return v0
.end method

.method public getTrackingMilliseconds()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->mTrackingMilliseconds:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 45
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%dms: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->mTrackingMilliseconds:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->getContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
