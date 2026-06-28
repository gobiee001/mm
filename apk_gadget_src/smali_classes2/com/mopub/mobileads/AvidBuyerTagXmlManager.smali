.class Lcom/mopub/mobileads/AvidBuyerTagXmlManager;
.super Ljava/lang/Object;
.source "AvidBuyerTagXmlManager.java"


# instance fields
.field private final mAvidNode:Lorg/w3c/dom/Node;


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "avidNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    iput-object p1, p0, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;->mAvidNode:Lorg/w3c/dom/Node;

    .line 29
    return-void
.end method


# virtual methods
.method getJavaScriptResources()Ljava/util/Set;
    .locals 7
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
    .line 54
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 56
    .local v1, "avidJavaScriptResources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/mopub/mobileads/AvidBuyerTagXmlManager;->mAvidNode:Lorg/w3c/dom/Node;

    const-string v6, "AdVerifications"

    invoke-static {v5, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 57
    .local v0, "adVerification":Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 74
    :cond_0
    return-object v1

    .line 61
    :cond_1
    const-string v5, "Verification"

    invoke-static {v0, v5}, Lcom/mopub/mobileads/util/XmlUtils;->getMatchingChildNodes(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 62
    .local v4, "verifications":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    if-eqz v4, :cond_0

    .line 66
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Node;

    .line 67
    .local v3, "verification":Lorg/w3c/dom/Node;
    const-string v6, "JavaScriptResource"

    invoke-static {v3, v6}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 69
    .local v2, "javaScriptResource":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_2

    .line 70
    invoke-static {v2}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
