.class Lcom/amazon/device/ads/BridgeSelector;
.super Ljava/lang/Object;
.source "BridgeSelector.java"


# static fields
.field private static instance:Lcom/amazon/device/ads/BridgeSelector;


# instance fields
.field private bridgesForCT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/amazon/device/ads/AAXCreative;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private bridgesForPattern:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private bridgesForResourcePattern:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;>;"
        }
    .end annotation
.end field

.field private patterns:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/amazon/device/ads/BridgeSelector;

    invoke-direct {v0}, Lcom/amazon/device/ads/BridgeSelector;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/BridgeSelector;->instance:Lcom/amazon/device/ads/BridgeSelector;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/amazon/device/ads/BridgeSelector;->initialize()V

    .line 40
    return-void
.end method

.method public static getInstance()Lcom/amazon/device/ads/BridgeSelector;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/amazon/device/ads/BridgeSelector;->instance:Lcom/amazon/device/ads/BridgeSelector;

    return-object v0
.end method

.method private getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 173
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->patterns:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/regex/Pattern;

    .line 174
    .local v0, "pattern":Ljava/util/regex/Pattern;
    if-nez v0, :cond_0

    .line 176
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->patterns:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :cond_0
    return-object v0
.end method


# virtual methods
.method public addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 2
    .param p1, "creativeType"    # Lcom/amazon/device/ads/AAXCreative;
    .param p2, "bridgeFactory"    # Lcom/amazon/device/ads/AdSDKBridgeFactory;

    .prologue
    .line 67
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 68
    .local v0, "bridges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "bridges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 71
    .restart local v0    # "bridges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    iget-object v1, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public addBridgeFactoryForHtmlScriptTag(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bridgeFactory"    # Lcom/amazon/device/ads/AdSDKBridgeFactory;

    .prologue
    .line 90
    const-string v1, "<[Ss][Cc][Rr][Ii][Pp][Tt](\\s[^>]*\\s|\\s)[Ss][Rr][Cc]\\s*=\\s*[\"\']%s[\"\']"

    .line 91
    .local v1, "format":Ljava/lang/String;
    const-string v3, "<[Ss][Cc][Rr][Ii][Pp][Tt](\\s[^>]*\\s|\\s)[Ss][Rr][Cc]\\s*=\\s*[\"\']%s[\"\']"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 92
    .local v2, "regex":Ljava/lang/String;
    iget-object v3, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 93
    .local v0, "bridges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "bridges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 96
    .restart local v0    # "bridges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    iget-object v3, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public addBridgeFactoryForResourceLoad(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bridgeFactory"    # Lcom/amazon/device/ads/AdSDKBridgeFactory;

    .prologue
    .line 109
    const-string v1, ".*\\W%s$|^%s$"

    .line 110
    .local v1, "format":Ljava/lang/String;
    const-string v3, ".*\\W%s$|^%s$"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 111
    .local v2, "regex":Ljava/lang/String;
    iget-object v3, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 112
    .local v0, "bridges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    if-nez v0, :cond_0

    .line 114
    new-instance v0, Ljava/util/HashSet;

    .end local v0    # "bridges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 115
    .restart local v0    # "bridges":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    iget-object v3, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public addBridgeFactoryForScript(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "bridgeFactory"    # Lcom/amazon/device/ads/AdSDKBridgeFactory;

    .prologue
    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactoryForHtmlScriptTag(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactoryForResourceLoad(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 86
    return-void
.end method

.method public getBridgeFactories(Lcom/amazon/device/ads/AAXCreative;)Ljava/util/Set;
    .locals 1
    .param p1, "creativeType"    # Lcom/amazon/device/ads/AAXCreative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/ads/AAXCreative;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public getBridgeFactories(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 138
    .local v0, "bridges":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    iget-object v5, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 140
    .local v4, "regex":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/amazon/device/ads/BridgeSelector;->getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 141
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 142
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    iget-object v5, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 147
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "regex":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getBridgeFactoriesForResourceLoad(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/device/ads/AdSDKBridgeFactory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 153
    .local v0, "bridges":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    iget-object v5, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 155
    .local v4, "regex":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/amazon/device/ads/BridgeSelector;->getPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 156
    .local v3, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 157
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 159
    iget-object v5, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v0, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 162
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "regex":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method initialize()V
    .locals 3

    .prologue
    .line 44
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForCT:Ljava/util/HashMap;

    .line 45
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForPattern:Ljava/util/HashMap;

    .line 46
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/amazon/device/ads/BridgeSelector;->patterns:Ljava/util/HashMap;

    .line 47
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/amazon/device/ads/BridgeSelector;->bridgesForResourcePattern:Ljava/util/HashMap;

    .line 49
    new-instance v0, Lcom/amazon/device/ads/AmazonAdSDKBridgeFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/AmazonAdSDKBridgeFactory;-><init>()V

    .line 50
    .local v0, "amazonAdSDKBridgeFactory":Lcom/amazon/device/ads/AmazonAdSDKBridgeFactory;
    const-string v2, "amazon.js"

    invoke-virtual {p0, v2, v0}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactoryForScript(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 52
    new-instance v1, Lcom/amazon/device/ads/MraidAdSDKBridgeFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MraidAdSDKBridgeFactory;-><init>()V

    .line 53
    .local v1, "mraidBridgeFactory":Lcom/amazon/device/ads/MraidAdSDKBridgeFactory;
    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->MRAID1:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {p0, v2, v1}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 54
    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->MRAID2:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {p0, v2, v1}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 55
    sget-object v2, Lcom/amazon/device/ads/AAXCreative;->INTERSTITIAL:Lcom/amazon/device/ads/AAXCreative;

    invoke-virtual {p0, v2, v1}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactory(Lcom/amazon/device/ads/AAXCreative;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 56
    const-string v2, "mraid.js"

    invoke-virtual {p0, v2, v1}, Lcom/amazon/device/ads/BridgeSelector;->addBridgeFactoryForScript(Ljava/lang/String;Lcom/amazon/device/ads/AdSDKBridgeFactory;)V

    .line 57
    return-void
.end method
