.class abstract Lcom/amazon/device/ads/WebRequest;
.super Ljava/lang/Object;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/WebRequest$WebRequestInputStream;,
        Lcom/amazon/device/ads/WebRequest$QueryStringParameters;,
        Lcom/amazon/device/ads/WebRequest$WebRequestFactory;,
        Lcom/amazon/device/ads/WebRequest$WebRequestStatus;,
        Lcom/amazon/device/ads/WebRequest$WebRequestException;,
        Lcom/amazon/device/ads/WebRequest$WebResponse;,
        Lcom/amazon/device/ads/WebRequest$HttpMethod;
    }
.end annotation


# static fields
.field private static final CHARSET_KEY:Ljava/lang/String; = "charset"

.field public static final CHARSET_UTF_16:Ljava/lang/String; = "UTF-16"

.field public static final CHARSET_UTF_8:Ljava/lang/String; = "UTF-8"

.field public static final CONTENT_TYPE_CSS:Ljava/lang/String; = "text/css"

.field public static final CONTENT_TYPE_HTML:Ljava/lang/String; = "text/html"

.field public static final CONTENT_TYPE_JAVASCRIPT:Ljava/lang/String; = "application/javascript"

.field public static final CONTENT_TYPE_JSON:Ljava/lang/String; = "application/json"

.field public static final CONTENT_TYPE_PLAIN_TEXT:Ljava/lang/String; = "text/plain"

.field public static final DEFAULT_PORT:I = -0x1

.field public static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final HEADER_ACCEPT_KEY:Ljava/lang/String; = "Accept"

.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field acceptContentType:Ljava/lang/String;

.field charset:Ljava/lang/String;

.field contentType:Ljava/lang/String;

.field private disconnectEnabled:Z

.field protected final headers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

.field logRequestBodyEnabled:Z

.field logResponseEnabled:Z

.field private logTag:Ljava/lang/String;

.field protected logUrlEnabled:Z

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

.field private nonSecureHost:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private port:I

.field protected postParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

.field requestBody:Ljava/lang/String;

.field protected secure:Z

.field private secureHost:Ljava/lang/String;

.field protected serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

.field private timeout:I

.field private urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/amazon/device/ads/WebRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->requestBody:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->acceptContentType:Ljava/lang/String;

    .line 58
    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    .line 62
    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    .line 63
    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    .line 64
    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    .line 65
    const/4 v1, -0x1

    iput v1, p0, Lcom/amazon/device/ads/WebRequest;->port:I

    .line 66
    sget-object v1, Lcom/amazon/device/ads/WebRequest$HttpMethod;->GET:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    .line 67
    const/16 v1, 0x4e20

    iput v1, p0, Lcom/amazon/device/ads/WebRequest;->timeout:I

    .line 74
    iput-boolean v3, p0, Lcom/amazon/device/ads/WebRequest;->logRequestBodyEnabled:Z

    .line 75
    iput-boolean v3, p0, Lcom/amazon/device/ads/WebRequest;->logResponseEnabled:Z

    .line 76
    iput-boolean v3, p0, Lcom/amazon/device/ads/WebRequest;->logUrlEnabled:Z

    .line 78
    iput-boolean v3, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    .line 79
    sget-object v1, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    .line 83
    new-instance v1, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    iget-object v2, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 90
    new-instance v1, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-direct {v1}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;-><init>()V

    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    .line 91
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->headers:Ljava/util/HashMap;

    .line 92
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    .line 93
    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    const-string v2, "tlsEnabled"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 94
    .local v0, "tlsEnabled":Z
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v1

    const-string v2, "debug.tlsEnabled"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/WebRequest;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/WebRequest;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/amazon/device/ads/WebRequest;->getLogTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/WebRequest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/amazon/device/ads/WebRequest;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    return v0
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 664
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected appendQuery(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .prologue
    .line 746
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->append(Ljava/lang/StringBuilder;)V

    .line 747
    return-void
.end method

.method protected abstract closeConnection()V
.end method

.method public convertToJSONPostRequest()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/amazon/device/ads/WebRequest$HttpMethod;->POST:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->setHttpMethod(Lcom/amazon/device/ads/WebRequest$HttpMethod;)V

    .line 107
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v0, "Content-Type"

    const-string v1, "application/json; charset=UTF-8"

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method protected createURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 726
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->createURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->createURI(Ljava/net/URL;)Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method protected createURI(Ljava/net/URL;)Ljava/net/URI;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method protected createURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 736
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected createUri()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 721
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUrlString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v0

    return-object v0
.end method

.method protected abstract doHttpNetworkCall(Ljava/net/URL;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation
.end method

.method public enableLog(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->enableLogUrl(Z)V

    .line 201
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->enableLogRequestBody(Z)V

    .line 202
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/WebRequest;->enableLogResponse(Z)V

    .line 203
    return-void
.end method

.method public enableLogRequestBody(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logRequestBodyEnabled:Z

    .line 185
    return-void
.end method

.method public enableLogResponse(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 192
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logResponseEnabled:Z

    .line 193
    return-void
.end method

.method public enableLogUrl(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->logUrlEnabled:Z

    .line 177
    return-void
.end method

.method public getAcceptContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->acceptContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDisconnectEnabled()Z
    .locals 1

    .prologue
    .line 645
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    return v0
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name must not be null or empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHttpMethod()Lcom/amazon/device/ads/WebRequest$HttpMethod;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    return-object v0
.end method

.method protected getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 413
    iget v0, p0, Lcom/amazon/device/ads/WebRequest;->port:I

    return v0
.end method

.method public getPostParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name must not be null or empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestBody()Ljava/lang/String;
    .locals 5

    .prologue
    .line 509
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getRequestBodyString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 511
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getRequestBodyString()Ljava/lang/String;

    move-result-object v3

    .line 522
    :goto_0
    return-object v3

    .line 513
    :cond_0
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    const/4 v3, 0x0

    goto :goto_0

    .line 517
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 518
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 520
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 522
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getRequestBodyString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->requestBody:Ljava/lang/String;

    return-object v0
.end method

.method protected getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 755
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUseSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const-string v0, "https"

    .line 761
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http"

    goto :goto_0
.end method

.method protected abstract getSubLogTag()Ljava/lang/String;
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 583
    iget v0, p0, Lcom/amazon/device/ads/WebRequest;->timeout:I

    return v0
.end method

.method protected getUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 776
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 778
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    .line 791
    :goto_0
    return-object v1

    .line 781
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getPort()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 786
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 789
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/WebRequest;->appendQuery(Ljava/lang/StringBuilder;)V

    .line 791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUrlString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    return-object v0
.end method

.method public getUseSecure()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    return v0
.end method

.method protected logUrl(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->logUrlEnabled:Z

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "%s %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getHttpMethod()Lcom/amazon/device/ads/WebRequest$HttpMethod;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    :cond_0
    return-void
.end method

.method public makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 120
    invoke-static {}, Lcom/amazon/device/ads/ThreadUtils;->isOnMainThread()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 122
    iget-object v4, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "The network request should not be performed on the main thread."

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->setContentTypeHeaders()V

    .line 126
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "urlString":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/WebRequest;->createURL(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 138
    .local v2, "url":Ljava/net/URL;
    iget-object v4, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/WebRequest;->writeMetricStart(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 142
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/WebRequest;->doHttpNetworkCall(Ljava/net/URL;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_1
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 150
    .local v1, "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    iget-object v4, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0, v4}, Lcom/amazon/device/ads/WebRequest;->writeMetricStop(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 152
    iget-boolean v4, p0, Lcom/amazon/device/ads/WebRequest;->logResponseEnabled:Z

    if-eqz v4, :cond_1

    .line 154
    iget-object v4, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "Response: %s %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatusCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v1}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatus()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :cond_1
    return-object v1

    .line 132
    .end local v1    # "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    .end local v2    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/net/MalformedURLException;
    iget-object v4, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v5, "Problem with URI syntax: %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    new-instance v4, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v5, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->MALFORMED_URL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not construct URL from String "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, p0, v5, v6, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 144
    .end local v0    # "e":Ljava/net/MalformedURLException;
    .restart local v2    # "url":Ljava/net/URL;
    :catch_1
    move-exception v0

    .line 146
    .local v0, "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .end local v0    # "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {p0, v5}, Lcom/amazon/device/ads/WebRequest;->writeMetricStop(Lcom/amazon/device/ads/Metrics$MetricType;)V

    throw v4
.end method

.method public putHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name must not be null or empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method public putPostParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 285
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The name must not be null or empty string."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_0
    if-nez p2, :cond_1

    .line 291
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_1
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putUnencodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUnencoded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public putUrlEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method public setAcceptContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "acceptContentType"    # Ljava/lang/String;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->acceptContentType:Ljava/lang/String;

    .line 532
    return-void
.end method

.method public setAdditionalQueryParamsString(Ljava/lang/String;)V
    .locals 1
    .param p1, "paramsString"    # Ljava/lang/String;

    .prologue
    .line 619
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->setRawAppendage(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 565
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    .line 566
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    .line 549
    return-void
.end method

.method protected setContentTypeHeaders()V
    .locals 3

    .prologue
    .line 671
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->acceptContentType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 673
    const-string v1, "Accept"

    iget-object v2, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 677
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->contentType:Ljava/lang/String;

    .line 678
    .local v0, "contentType":Ljava/lang/String;
    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/WebRequest;->charset:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 682
    :cond_1
    const-string v1, "Content-Type"

    invoke-virtual {p0, v1, v0}, Lcom/amazon/device/ads/WebRequest;->putHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .end local v0    # "contentType":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public setDisconnectEnabled(Z)V
    .locals 0
    .param p1, "disconnectEnabled"    # Z

    .prologue
    .line 654
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->disconnectEnabled:Z

    .line 655
    return-void
.end method

.method public setExternalLogTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "externalLogTag"    # Ljava/lang/String;

    .prologue
    .line 628
    if-nez p1, :cond_0

    .line 630
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getSubLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    .line 636
    :goto_0
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    iget-object v1, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    .line 637
    return-void

    .line 634
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/WebRequest;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getSubLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/WebRequest;->logTag:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "host"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    .line 375
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    .line 376
    return-void
.end method

.method public setHttpMethod(Lcom/amazon/device/ads/WebRequest$HttpMethod;)V
    .locals 2
    .param p1, "httpMethod"    # Lcom/amazon/device/ads/WebRequest$HttpMethod;

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 348
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The httpMethod must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->httpMethod:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    .line 351
    return-void
.end method

.method public setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V
    .locals 0
    .param p1, "metricsCollector"    # Lcom/amazon/device/ads/MetricsCollector;

    .prologue
    .line 601
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    .line 602
    return-void
.end method

.method public setNonSecureHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "nonSecureHost"    # Ljava/lang/String;

    .prologue
    .line 401
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->nonSecureHost:Ljava/lang/String;

    .line 406
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->path:Ljava/lang/String;

    .line 440
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 421
    iput p1, p0, Lcom/amazon/device/ads/WebRequest;->port:I

    .line 422
    return-void
.end method

.method public setQueryStringParameters(Lcom/amazon/device/ads/WebRequest$QueryStringParameters;)V
    .locals 0
    .param p1, "queryStringParameters"    # Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->queryStringParameters:Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    .line 259
    return-void
.end method

.method public setRequestBodyString(Ljava/lang/String;)V
    .locals 0
    .param p1, "requestBody"    # Ljava/lang/String;

    .prologue
    .line 492
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->requestBody:Ljava/lang/String;

    .line 493
    return-void
.end method

.method public setSecureHost(Ljava/lang/String;)V
    .locals 2
    .param p1, "secureHost"    # Ljava/lang/String;

    .prologue
    .line 386
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The host must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->secureHost:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 0
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->serviceCallLatencyMetric:Lcom/amazon/device/ads/Metrics$MetricType;

    .line 611
    return-void
.end method

.method public setTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 591
    iput p1, p0, Lcom/amazon/device/ads/WebRequest;->timeout:I

    .line 592
    return-void
.end method

.method public setUrlString(Ljava/lang/String;)V
    .locals 2
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 469
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    if-eqz v0, :cond_0

    const-string v0, "http:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const-string v0, "http"

    const-string v1, "https"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 473
    :cond_0
    iput-object p1, p0, Lcom/amazon/device/ads/WebRequest;->urlString:Ljava/lang/String;

    .line 474
    return-void
.end method

.method public setUseSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .prologue
    .line 456
    iput-boolean p1, p0, Lcom/amazon/device/ads/WebRequest;->secure:Z

    .line 457
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    invoke-virtual {p0}, Lcom/amazon/device/ads/WebRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeMetricStart(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 1
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;

    .prologue
    .line 692
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 696
    :cond_0
    return-void
.end method

.method protected writeMetricStop(Lcom/amazon/device/ads/Metrics$MetricType;)V
    .locals 1
    .param p1, "metric"    # Lcom/amazon/device/ads/Metrics$MetricType;

    .prologue
    .line 704
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    if-eqz v0, :cond_0

    .line 706
    iget-object v0, p0, Lcom/amazon/device/ads/WebRequest;->metricsCollector:Lcom/amazon/device/ads/MetricsCollector;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 708
    :cond_0
    return-void
.end method
