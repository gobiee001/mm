.class Lcom/mopub/mobileads/MoatBuyerTagXmlManager;
.super Ljava/lang/Object;
.source "MoatBuyerTagXmlManager.java"


# instance fields
.field private final mMoatVerificationNodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "moatVerificationNodes":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;->mMoatVerificationNodes:Ljava/util/List;

    .line 32
    return-void
.end method

.method private getViewableImpressionXml(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 6
    .param p1, "viewableImpression"    # Lorg/w3c/dom/Node;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v2

    if-nez v2, :cond_1

    .line 79
    :cond_0
    const/4 v2, 0x0

    .line 84
    :goto_0
    return-object v2

    .line 82
    :cond_1
    const-string v2, "id"

    invoke-static {p1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getAttributeValue(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "idAttribute":Ljava/lang/String;
    invoke-static {p1}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "content":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "<ViewableImpression id=\"%s\"><![CDATA[%s]]</ViewableImpression>"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method getImpressionPixelsXml()Ljava/util/Set;
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
    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 59
    .local v0, "impressionPixelsXml":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;->mMoatVerificationNodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    .line 60
    .local v1, "verification":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_0

    .line 64
    const-string v5, "ViewableImpression"

    invoke-static {v1, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 67
    .local v2, "viewableImpression":Lorg/w3c/dom/Node;
    invoke-direct {p0, v2}, Lcom/mopub/mobileads/MoatBuyerTagXmlManager;->getViewableImpressionXml(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "viewableImpressionXml":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 69
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v1    # "verification":Lorg/w3c/dom/Node;
    .end local v2    # "viewableImpression":Lorg/w3c/dom/Node;
    .end local v3    # "viewableImpressionXml":Ljava/lang/String;
    :cond_1
    return-object v0
.end method
