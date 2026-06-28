.class Lcom/amazon/device/ads/AdHtmlPreprocessor;
.super Ljava/lang/Object;
.source "AdHtmlPreprocessor.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private final adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private final adUtils:Lcom/amazon/device/ads/AdUtils2;

.field private final bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

.field private final bridgeSelector:Lcom/amazon/device/ads/BridgeSelector;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/amazon/device/ads/AdHtmlPreprocessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/ads/BridgeSelector;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdUtils2;)V
    .locals 1
    .param p1, "bridgeSelector"    # Lcom/amazon/device/ads/BridgeSelector;
    .param p2, "bridgeList"    # Lcom/amazon/device/ads/AdSDKBridgeList;
    .param p3, "adControlAccessor"    # Lcom/amazon/device/ads/AdControlAccessor;
    .param p4, "loggerFactory"    # Lcom/amazon/device/ads/MobileAdsLoggerFactory;
    .param p5, "adUtils"    # Lcom/amazon/device/ads/AdUtils2;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->bridgeSelector:Lcom/amazon/device/ads/BridgeSelector;

    .line 27
    iput-object p2, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    .line 28
    iput-object p3, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 29
    sget-object v0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p4, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 30
    iput-object p5, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    .line 31
    return-void
.end method

.method private addAdSDKBridge(Lcom/amazon/device/ads/AdSDKBridge;)V
    .locals 1
    .param p1, "bridge"    # Lcom/amazon/device/ads/AdSDKBridge;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdSDKBridgeList;->addBridge(Lcom/amazon/device/ads/AdSDKBridge;)V

    .line 40
    return-void
.end method

.method private addHeadData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "javascript"    # Ljava/lang/String;

    .prologue
    .line 143
    const-string v2, "<[Hh][Ee][Aa][Dd](\\s*>|\\s[^>]*>)"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->getFirstMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 144
    .local v1, "headTag":Ljava/lang/String;
    const-string v0, ""

    .line 146
    .local v0, "headData":Ljava/lang/String;
    const-string v2, "<[Mm][Ee][Tt][Aa](\\s[^>]*\\s|\\s)[Nn][Aa][Mm][Ee]\\s*=\\s*[\"\'][Vv][Ii][Ee][Ww][Pp][Oo][Rr][Tt][\"\']"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor;->getScalingMultiplier()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_2

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<meta name=\"viewport\" content=\"width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdControlAccessor;->getWindowWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdControlAccessor;->getWindowHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", initial-scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    iget-object v4, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdControlAccessor;->getScalingMultiplier()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/amazon/device/ads/AdUtils2;->getViewportInitialScale(D)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", minimum-scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdControlAccessor;->getScalingMultiplier()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", maximum-scale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v3}, Lcom/amazon/device/ads/AdControlAccessor;->getScalingMultiplier()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<style>html,body{margin:0;padding:0;height:100%;border:none;}</style>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<script type=\'text/javascript\'>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 165
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<meta name=\"viewport\" content=\"width=device-width, height=device-height, user-scalable=no, initial-scale=1.0\"/>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private ensureHtmlTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, ""

    .line 107
    .local v0, "beginning":Ljava/lang/String;
    const-string v1, ""

    .line 109
    .local v1, "end":Ljava/lang/String;
    const-string v2, "\\A\\s*<![Dd][Oo][Cc][Tt][Yy][Pp][Ee]\\s+[Hh][Tt][Mm][Ll][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    const-string v0, "<!DOCTYPE html>"

    .line 114
    :cond_0
    const-string v2, "<[Hh][Tt][Mm][Ll][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<html>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    const-string v1, "</html>"

    .line 121
    :cond_1
    const-string v2, "<[Hh][Ee][Aa][Dd][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<head></head>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    :cond_2
    const-string v2, "<[Bb][Oo][Dd][Yy][\\s>]"

    invoke-static {v2, p1}, Lcom/amazon/device/ads/StringUtils;->containsRegEx(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public preprocessHtml(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "shouldPreload"    # Z

    .prologue
    .line 52
    iget-object v5, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->bridgeSelector:Lcom/amazon/device/ads/BridgeSelector;

    invoke-virtual {v5, p1}, Lcom/amazon/device/ads/BridgeSelector;->getBridgeFactories(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 53
    .local v1, "bridgeFactories":Ljava/util/Set;, "Ljava/util/Set<Lcom/amazon/device/ads/AdSDKBridgeFactory;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/ads/AdSDKBridgeFactory;

    .line 55
    .local v2, "bridgeFactory":Lcom/amazon/device/ads/AdSDKBridgeFactory;
    iget-object v5, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-interface {v2, v5}, Lcom/amazon/device/ads/AdSDKBridgeFactory;->createAdSDKBridge(Lcom/amazon/device/ads/AdControlAccessor;)Lcom/amazon/device/ads/AdSDKBridge;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/amazon/device/ads/AdHtmlPreprocessor;->addAdSDKBridge(Lcom/amazon/device/ads/AdSDKBridge;)V

    goto :goto_0

    .line 61
    .end local v2    # "bridgeFactory":Lcom/amazon/device/ads/AdSDKBridgeFactory;
    :cond_0
    iget-object v5, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v6, "Scaling Params: scalingDensity: %f, windowWidth: %d, windowHeight: %d, adWidth: %d, adHeight: %d, scale: %f"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v9}, Lcom/amazon/device/ads/AdUtils2;->getScalingFactorAsFloat()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v9}, Lcom/amazon/device/ads/AdControlAccessor;->getWindowWidth()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v9}, Lcom/amazon/device/ads/AdControlAccessor;->getWindowHeight()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v9}, Lcom/amazon/device/ads/AdControlAccessor;->getAdWidth()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v10}, Lcom/amazon/device/ads/AdUtils2;->getScalingFactorAsFloat()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v9}, Lcom/amazon/device/ads/AdControlAccessor;->getAdHeight()I

    move-result v9

    int-to-float v9, v9

    iget-object v10, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adUtils:Lcom/amazon/device/ads/AdUtils2;

    invoke-virtual {v10}, Lcom/amazon/device/ads/AdUtils2;->getScalingFactorAsFloat()F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v9}, Lcom/amazon/device/ads/AdControlAccessor;->getScalingMultiplier()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string v4, ""

    .line 70
    .local v4, "javascript":Ljava/lang/String;
    iget-object v5, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v5}, Lcom/amazon/device/ads/AdSDKBridgeList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/device/ads/AdSDKBridge;

    .line 72
    .local v0, "bridge":Lcom/amazon/device/ads/AdSDKBridge;
    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 74
    iget-object v5, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amazon/device/ads/AdControlAccessor;->addSDKEventListener(Lcom/amazon/device/ads/SDKEventListener;)V

    .line 76
    :cond_2
    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getJavascript()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 78
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getJavascript()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    :cond_3
    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->hasNativeExecution()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    iget-object v5, p0, Lcom/amazon/device/ads/AdHtmlPreprocessor;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getJavascriptInteractorExecutor()Lcom/amazon/device/ads/JavascriptInteractor$Executor;

    move-result-object v6

    invoke-interface {v0}, Lcom/amazon/device/ads/AdSDKBridge;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, p2, v7}, Lcom/amazon/device/ads/AdControlAccessor;->addJavascriptInterface(Ljava/lang/Object;ZLjava/lang/String;)V

    goto :goto_1

    .line 86
    .end local v0    # "bridge":Lcom/amazon/device/ads/AdSDKBridge;
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/AdHtmlPreprocessor;->ensureHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-direct {p0, p1, v4}, Lcom/amazon/device/ads/AdHtmlPreprocessor;->addHeadData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 89
    return-object p1
.end method
