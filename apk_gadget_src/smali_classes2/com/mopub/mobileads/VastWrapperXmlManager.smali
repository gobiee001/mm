.class Lcom/mopub/mobileads/VastWrapperXmlManager;
.super Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;
.source "VastWrapperXmlManager.java"


# direct methods
.method constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 0
    .param p1, "wrapperNode"    # Lorg/w3c/dom/Node;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;-><init>(Lorg/w3c/dom/Node;)V

    .line 23
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method getVastAdTagURI()Ljava/lang/String;
    .locals 3

    .prologue
    .line 33
    iget-object v1, p0, Lcom/mopub/mobileads/VastWrapperXmlManager;->mNode:Lorg/w3c/dom/Node;

    const-string v2, "VASTAdTagURI"

    invoke-static {v1, v2}, Lcom/mopub/mobileads/util/XmlUtils;->getFirstMatchingChildNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 34
    .local v0, "vastAdTagURINode":Lorg/w3c/dom/Node;
    invoke-static {v0}, Lcom/mopub/mobileads/util/XmlUtils;->getNodeValue(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
