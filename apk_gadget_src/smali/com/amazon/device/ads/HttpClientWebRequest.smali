.class Lcom/amazon/device/ads/HttpClientWebRequest;
.super Lcom/amazon/device/ads/WebRequest;
.source "HttpClientWebRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/HttpClientWebRequest$1;
    }
.end annotation


# static fields
.field private static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private client:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/amazon/device/ads/HttpClientWebRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/HttpClientWebRequest;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/amazon/device/ads/WebRequest;-><init>()V

    .line 120
    return-void
.end method

.method private prepareFormRequestBody(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;)V
    .locals 9
    .param p1, "httpPost"    # Lorg/apache/http/client/methods/HttpPost;
    .param p2, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v3, "postParams":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    iget-object v4, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->postParameters:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 201
    .local v2, "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 205
    .end local v2    # "param":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v4

    const-string v5, "Unsupported character encoding used while creating the request: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    new-instance v4, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v5, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->UNSUPPORTED_ENCODING:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v6, "Unsupported character encoding used while creating the request"

    invoke-direct {v4, p0, v5, v6, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method private prepareRequestBody(Lorg/apache/http/client/methods/HttpPost;)V
    .locals 3
    .param p1, "httpPost"    # Lorg/apache/http/client/methods/HttpPost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->charset:Ljava/lang/String;

    .line 147
    .local v0, "charset":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 149
    const-string v0, "UTF-8"

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->contentType:Ljava/lang/String;

    .line 152
    .local v1, "contentType":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 154
    const-string v1, "text/plain"

    .line 156
    :cond_1
    iget-object v2, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->requestBody:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 158
    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/device/ads/HttpClientWebRequest;->prepareStringRequestBody(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/HttpClientWebRequest;->prepareFormRequestBody(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private prepareStringRequestBody(Lorg/apache/http/client/methods/HttpPost;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "requestBase"    # Lorg/apache/http/client/methods/HttpPost;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    iget-object v2, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->requestBody:Ljava/lang/String;

    invoke-direct {v1, v2, p3}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v1, "entity":Lorg/apache/http/entity/StringEntity;
    invoke-virtual {v1, p2}, Lorg/apache/http/entity/StringEntity;->setContentType(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p1, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    return-void

    .line 181
    .end local v1    # "entity":Lorg/apache/http/entity/StringEntity;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v2

    const-string v3, "Unsupported character encoding used while creating the request. "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    new-instance v2, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v3, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->UNSUPPORTED_ENCODING:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v4, "Unsupported character encoding used while creating the request."

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method protected closeConnection()V
    .locals 4

    .prologue
    .line 84
    iget-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    const-wide/16 v2, 0x0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v3, v1}, Lorg/apache/http/conn/ClientConnectionManager;->closeIdleConnections(JLjava/util/concurrent/TimeUnit;)V

    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->closeExpiredConnections()V

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    .line 90
    :cond_0
    return-void
.end method

.method protected createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 222
    .local v0, "httpParams":Lorg/apache/http/params/HttpParams;
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 223
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getTimeout()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 227
    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 228
    return-object v0
.end method

.method protected createHttpRequest(Ljava/net/URL;)Lorg/apache/http/client/methods/HttpRequestBase;
    .locals 10
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    const/4 v4, 0x0

    .line 104
    .local v4, "uri":Ljava/net/URI;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/HttpClientWebRequest;->createURI(Ljava/net/URL;)Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 112
    sget-object v5, Lcom/amazon/device/ads/HttpClientWebRequest$1;->$SwitchMap$com$amazon$device$ads$WebRequest$HttpMethod:[I

    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getHttpMethod()Lcom/amazon/device/ads/WebRequest$HttpMethod;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/device/ads/WebRequest$HttpMethod;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 123
    :goto_0
    iget-object v5, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->headers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 125
    .local v1, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 127
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    .end local v1    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/net/URISyntaxException;
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v5

    const-string v6, "Problem with URI syntax: %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    new-instance v5, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v6, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->MALFORMED_URL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v7, "Problem with URI syntax"

    invoke-direct {v5, p0, v6, v7, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 115
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :pswitch_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    .end local v2    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    .line 116
    .restart local v2    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    goto :goto_0

    .line 118
    :pswitch_1
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    .end local v2    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-direct {v2, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .restart local v2    # "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    move-object v5, v2

    .line 119
    check-cast v5, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {p0, v5}, Lcom/amazon/device/ads/HttpClientWebRequest;->prepareRequestBody(Lorg/apache/http/client/methods/HttpPost;)V

    goto :goto_0

    .line 131
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/amazon/device/ads/HttpClientWebRequest;->logUrl(Ljava/lang/String;)V

    .line 132
    iget-boolean v5, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->logRequestBodyEnabled:Z

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v5

    const-string v6, "Request Body: %s"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getRequestBody()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v7}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_2
    return-object v2

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected doHttpNetworkCall(Ljava/net/URL;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/HttpClientWebRequest;->createHttpRequest(Ljava/net/URL;)Lorg/apache/http/client/methods/HttpRequestBase;

    move-result-object v2

    .line 52
    .local v2, "httpRequest":Lorg/apache/http/client/methods/HttpRequestBase;
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->createHttpParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    .line 54
    .local v1, "httpParams":Lorg/apache/http/params/HttpParams;
    iget-object v4, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    if-eqz v4, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->closeConnection()V

    .line 59
    :cond_0
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v4, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    .line 63
    :try_start_0
    iget-object v4, p0, Lcom/amazon/device/ads/HttpClientWebRequest;->client:Lorg/apache/http/client/HttpClient;

    instance-of v5, v4, Lorg/apache/http/client/HttpClient;

    if-nez v5, :cond_1

    invoke-interface {v4, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 75
    .local v3, "response":Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/HttpClientWebRequest;->parseResponse(Lorg/apache/http/HttpResponse;)Lcom/amazon/device/ads/WebRequest$WebResponse;

    move-result-object v4

    return-object v4

    .line 63
    .end local v3    # "response":Lorg/apache/http/HttpResponse;
    :cond_1
    :try_start_1
    check-cast v4, Lorg/apache/http/client/HttpClient;

    invoke-static {v4, v2}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v4

    const-string v5, "Invalid client protocol: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v4, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v5, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->INVALID_CLIENT_PROTOCOL:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v6, "Invalid client protocol"

    invoke-direct {v4, p0, v5, v6, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 70
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v4

    const-string v5, "IOException during client execution: %s"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    new-instance v4, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v5, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v6, "IOException during client execution"

    invoke-direct {v4, p0, v5, v6, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getSubLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/amazon/device/ads/HttpClientWebRequest;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method protected parseResponse(Lorg/apache/http/HttpResponse;)Lcom/amazon/device/ads/WebRequest$WebResponse;
    .locals 8
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/device/ads/WebRequest$WebRequestException;
        }
    .end annotation

    .prologue
    .line 239
    new-instance v2, Lcom/amazon/device/ads/WebRequest$WebResponse;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/WebRequest$WebResponse;-><init>(Lcom/amazon/device/ads/WebRequest;)V

    .line 240
    .local v2, "webResponse":Lcom/amazon/device/ads/WebRequest$WebResponse;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/WebRequest$WebResponse;->setHttpStatusCode(I)V

    .line 241
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/WebRequest$WebResponse;->setHttpStatus(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v2}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getHttpStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_0

    .line 245
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 246
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 250
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/WebRequest$WebResponse;->setInputStream(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    :cond_0
    return-object v2

    .line 252
    .restart local v1    # "entity":Lorg/apache/http/HttpEntity;
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/amazon/device/ads/HttpClientWebRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v3

    const-string v4, "IOException while reading the input stream from response: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v3, Lcom/amazon/device/ads/WebRequest$WebRequestException;

    sget-object v4, Lcom/amazon/device/ads/WebRequest$WebRequestStatus;->NETWORK_FAILURE:Lcom/amazon/device/ads/WebRequest$WebRequestStatus;

    const-string v5, "IOException while reading the input stream from response"

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/amazon/device/ads/WebRequest$WebRequestException;-><init>(Lcom/amazon/device/ads/WebRequest;Lcom/amazon/device/ads/WebRequest$WebRequestStatus;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method
