.class public Lcom/mopub/mobileads/VastExtensionXmlManager;
.super Ljava/lang/Object;
.source "VastExtensionXmlManager.java"


# static fields
.field public static final AD_VERIFICATIONS:Ljava/lang/String; = "AdVerifications"

.field public static final AVID:Ljava/lang/String; = "AVID"

.field public static final ID:Ljava/lang/String; = "id"

.field public static final MOAT:Ljava/lang/String; = "Moat"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final VENDOR:Ljava/lang/String; = "vendor"

.field public static final VERIFICATION:Ljava/lang/String; = "Verification"

.field public static final VIDEO_VIEWABILITY_TRACKER:Ljava/lang/String; = "MoPubViewabilityTracker"


# instance fields
.field private final mExtensionNode:Lorg/w3c/dom/Node;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "extensionNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    iput-object p1, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    .line 38
    return-void
.end method


# virtual methods
.method getAvidJavaScriptResources()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v2, "AVID"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 79
    .local v0, "avidNode":Lorg/w3c/dom/Node;
    if-nez v0, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 83
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;

    invoke-direct {v1, v0}, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {v1}, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;->getJavaScriptResources()Ljava/util/Set;

    move-result-object v1

    goto :goto_0
.end method

.method getMoatImpressionPixels()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v4, "AdVerifications"

    invoke-static {v3, v4}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 96
    .local v0, "adVerification":Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v2

    .line 100
    :cond_1
    const-string v3, "Verification"

    const-string v4, "vendor"

    const-string v5, "Moat"

    .line 101
    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 100
    invoke-static {v0, v3, v4, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 102
    .local v1, "moatNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 106
    new-instance v2, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;

    invoke-direct {v2, v1}, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;-><init>(Ljava/util/List;)V

    invoke-virtual {v2}, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;->getImpressionPixelsXml()Ljava/util/Set;

    move-result-object v2

    goto :goto_0
.end method

.method getType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v1, "type"

    invoke-static {v0, v1}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 48
    iget-object v6, p0, Lcom/mopub/mobileads/VastExtensionXmlManager;->mExtensionNode:Lorg/w3c/dom/Node;

    const-string v7, "MoPubViewabilityTracker"

    .line 49
    invoke-static {v6, v7}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 50
    .local v1, "videoViewabilityTrackerNode":Lorg/w3c/dom/Node;
    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-object v5

    .line 54
    :cond_1
    new-instance v3, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;

    invoke-direct {v3, v1}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    .line 56
    .local v3, "videoViewabilityTrackerXmlManager":Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;
    invoke-virtual {v3}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getViewablePlaytimeMS()Ljava/lang/Integer;

    move-result-object v4

    .line 57
    .local v4, "viewablePlaytime":Ljava/lang/Integer;
    invoke-virtual {v3}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getPercentViewable()Ljava/lang/Integer;

    move-result-object v0

    .line 59
    .local v0, "percentViewable":Ljava/lang/Integer;
    invoke-virtual {v3}, Lcom/mopub/mobileads/VideoViewabilityTrackerXmlManager;->getVideoViewabilityTrackerUrl()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "videoViewabilityTrackerUrl":Ljava/lang/String;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    .line 62
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 66
    new-instance v5, Lcom/mopub/mobileads/VideoViewabilityTracker;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v5, v6, v7, v2}, Lcom/mopub/mobileads/VideoViewabilityTracker;-><init>(IILjava/lang/String;)V

    goto :goto_0
.end method
