.class Lcom/amazon/device/ads/SISRequestor;
.super Ljava/lang/Object;
.source "SISRequestor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/SISRequestor$SISRequestorFactory;
    }
.end annotation


# static fields
.field protected static final API_LEVEL_ENDPOINT:Ljava/lang/String; = "/api3"


# instance fields
.field private final sisRequestorCallback:Lcom/amazon/device/ads/SISRequestorCallback;

.field private final sisRequests:[Lcom/amazon/device/ads/SISRequest;

.field private final webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;


# direct methods
.method public varargs constructor <init>(Lcom/amazon/device/ads/SISRequestorCallback;[Lcom/amazon/device/ads/SISRequest;)V
    .locals 1
    .param p1, "sisRequestorCallback"    # Lcom/amazon/device/ads/SISRequestorCallback;
    .param p2, "sisRequests"    # [Lcom/amazon/device/ads/SISRequest;

    .prologue
    .line 38
    new-instance v0, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/device/ads/SISRequestor;-><init>(Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/SISRequestorCallback;[Lcom/amazon/device/ads/SISRequest;)V

    .line 39
    return-void
.end method

.method varargs constructor <init>(Lcom/amazon/device/ads/WebRequest$WebRequestFactory;Lcom/amazon/device/ads/SISRequestorCallback;[Lcom/amazon/device/ads/SISRequest;)V
    .locals 0
    .param p1, "webRequestFactory"    # Lcom/amazon/device/ads/WebRequest$WebRequestFactory;
    .param p2, "sisRequestorCallback"    # Lcom/amazon/device/ads/SISRequestorCallback;
    .param p3, "sisRequests"    # [Lcom/amazon/device/ads/SISRequest;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/device/ads/SISRequestor;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    .line 43
    iput-object p2, p0, Lcom/amazon/device/ads/SISRequestor;->sisRequestorCallback:Lcom/amazon/device/ads/SISRequestorCallback;

    .line 44
    iput-object p3, p0, Lcom/amazon/device/ads/SISRequestor;->sisRequests:[Lcom/amazon/device/ads/SISRequest;

    .line 45
    return-void
.end method

.method public varargs constructor <init>([Lcom/amazon/device/ads/SISRequest;)V
    .locals 1
    .param p1, "sisRequests"    # [Lcom/amazon/device/ads/SISRequest;

    .prologue
    .line 33
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/amazon/device/ads/SISRequestor;-><init>(Lcom/amazon/device/ads/SISRequestorCallback;[Lcom/amazon/device/ads/SISRequest;)V

    .line 34
    return-void
.end method

.method protected static getEndpoint(Lcom/amazon/device/ads/SISRequest;)Ljava/lang/String;
    .locals 4
    .param p0, "sisRequest"    # Lcom/amazon/device/ads/SISRequest;

    .prologue
    .line 153
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/Configuration;->getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "endpoint":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 157
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, "endpointIndex":I
    const/4 v2, -0x1

    if-le v1, v2, :cond_1

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    .end local v1    # "endpointIndex":I
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/api3"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lcom/amazon/device/ads/SISRequest;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    return-object v0

    .line 165
    .restart local v1    # "endpointIndex":I
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method protected static getHostname()Ljava/lang/String;
    .locals 4

    .prologue
    .line 136
    invoke-static {}, Lcom/amazon/device/ads/Configuration;->getInstance()Lcom/amazon/device/ads/Configuration;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Configuration$ConfigOption;->SIS_URL:Lcom/amazon/device/ads/Configuration$ConfigOption;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/Configuration;->getString(Lcom/amazon/device/ads/Configuration$ConfigOption;)Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "hostname":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 139
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 140
    .local v0, "endpointIndex":I
    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    .line 142
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 145
    .end local v0    # "endpointIndex":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected callSIS()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/amazon/device/ads/SISRequestor;->sisRequests:[Lcom/amazon/device/ads/SISRequest;

    .local v0, "arr$":[Lcom/amazon/device/ads/SISRequest;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 61
    .local v3, "sisRequest":Lcom/amazon/device/ads/SISRequest;
    invoke-virtual {p0, v3}, Lcom/amazon/device/ads/SISRequestor;->callSIS(Lcom/amazon/device/ads/SISRequest;)V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v3    # "sisRequest":Lcom/amazon/device/ads/SISRequest;
    :cond_0
    return-void
.end method

.method protected callSIS(Lcom/amazon/device/ads/SISRequest;)V
    .locals 12
    .param p1, "sisRequest"    # Lcom/amazon/device/ads/SISRequest;

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 67
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/SISRequestor;->getWebRequest(Lcom/amazon/device/ads/SISRequest;)Lcom/amazon/device/ads/WebRequest;

    move-result-object v4

    .line 71
    .local v4, "request":Lcom/amazon/device/ads/WebRequest;
    :try_start_0
    invoke-virtual {v4}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 79
    .local v5, "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    invoke-virtual {v5}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/device/ads/ResponseReader;->readAsJSON()Lorg/json/JSONObject;

    move-result-object v1

    .line 80
    .local v1, "jsonPayload":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 100
    .end local v1    # "jsonPayload":Lorg/json/JSONObject;
    .end local v5    # "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    goto :goto_0

    .line 87
    .end local v0    # "e":Lcom/amazon/device/ads/WebRequest$WebRequestException;
    .restart local v1    # "jsonPayload":Lorg/json/JSONObject;
    .restart local v5    # "response":Lcom/amazon/device/ads/WebRequest$WebResponse;
    :cond_0
    const-string v6, "rcode"

    invoke-static {v1, v6, v10}, Lcom/amazon/device/ads/JSONUtils;->getIntegerFromJSON(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v3

    .line 88
    .local v3, "rcode":I
    const-string v6, "msg"

    const-string v7, ""

    invoke-static {v1, v6, v7}, Lcom/amazon/device/ads/JSONUtils;->getStringFromJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "msg":Ljava/lang/String;
    if-ne v3, v11, :cond_1

    .line 93
    invoke-interface {p1}, Lcom/amazon/device/ads/SISRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v6

    const-string v7, "Result - code: %d, msg: %s"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    aput-object v2, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/amazon/device/ads/MobileAdsLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-interface {p1, v1}, Lcom/amazon/device/ads/SISRequest;->onResponseReceived(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 98
    :cond_1
    invoke-interface {p1}, Lcom/amazon/device/ads/SISRequest;->getLogger()Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v6

    const-string v7, "Result - code: %d, msg: %s"

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    aput-object v2, v8, v11

    invoke-virtual {v6, v7, v8}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getSisRequestorCallback()Lcom/amazon/device/ads/SISRequestorCallback;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/amazon/device/ads/SISRequestor;->sisRequestorCallback:Lcom/amazon/device/ads/SISRequestorCallback;

    return-object v0
.end method

.method protected getWebRequest(Lcom/amazon/device/ads/SISRequest;)Lcom/amazon/device/ads/WebRequest;
    .locals 7
    .param p1, "sisRequest"    # Lcom/amazon/device/ads/SISRequest;

    .prologue
    .line 104
    iget-object v5, p0, Lcom/amazon/device/ads/SISRequestor;->webRequestFactory:Lcom/amazon/device/ads/WebRequest$WebRequestFactory;

    invoke-virtual {v5}, Lcom/amazon/device/ads/WebRequest$WebRequestFactory;->createWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v4

    .line 105
    .local v4, "request":Lcom/amazon/device/ads/WebRequest;
    invoke-interface {p1}, Lcom/amazon/device/ads/SISRequest;->getLogTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/WebRequest;->setExternalLogTag(Ljava/lang/String;)V

    .line 106
    sget-object v5, Lcom/amazon/device/ads/WebRequest$HttpMethod;->POST:Lcom/amazon/device/ads/WebRequest$HttpMethod;

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/WebRequest;->setHttpMethod(Lcom/amazon/device/ads/WebRequest$HttpMethod;)V

    .line 107
    invoke-static {}, Lcom/amazon/device/ads/SISRequestor;->getHostname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/WebRequest;->setHost(Ljava/lang/String;)V

    .line 108
    invoke-static {p1}, Lcom/amazon/device/ads/SISRequestor;->getEndpoint(Lcom/amazon/device/ads/SISRequest;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/WebRequest;->setPath(Ljava/lang/String;)V

    .line 109
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 111
    invoke-interface {p1}, Lcom/amazon/device/ads/SISRequest;->getPostParameters()Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 113
    invoke-interface {p1}, Lcom/amazon/device/ads/SISRequest;->getPostParameters()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    .local v1, "postParameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/amazon/device/ads/WebRequest;->putPostParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "postParameter":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-interface {p1}, Lcom/amazon/device/ads/SISRequest;->getQueryParameters()Lcom/amazon/device/ads/WebRequest$QueryStringParameters;

    move-result-object v2

    .line 120
    .local v2, "queryStringParameters":Lcom/amazon/device/ads/WebRequest$QueryStringParameters;
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v3

    .line 121
    .local v3, "registrationInfo":Lcom/amazon/device/ads/RegistrationInfo;
    const-string v5, "appId"

    invoke-virtual {v3}, Lcom/amazon/device/ads/RegistrationInfo;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v5, "sdkVer"

    invoke-static {}, Lcom/amazon/device/ads/Version;->getSDKVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/amazon/device/ads/WebRequest$QueryStringParameters;->putUrlEncoded(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4, v2}, Lcom/amazon/device/ads/WebRequest;->setQueryStringParameters(Lcom/amazon/device/ads/WebRequest$QueryStringParameters;)V

    .line 125
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/WebRequest;->setMetricsCollector(Lcom/amazon/device/ads/MetricsCollector;)V

    .line 126
    invoke-interface {p1}, Lcom/amazon/device/ads/SISRequest;->getCallMetricType()Lcom/amazon/device/ads/Metrics$MetricType;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/device/ads/WebRequest;->setServiceCallLatencyMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 127
    return-object v4
.end method

.method public startCallSIS()V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/amazon/device/ads/SISRequestor;->callSIS()V

    .line 50
    invoke-virtual {p0}, Lcom/amazon/device/ads/SISRequestor;->getSisRequestorCallback()Lcom/amazon/device/ads/SISRequestorCallback;

    move-result-object v0

    .line 51
    .local v0, "sisRequestorCallback":Lcom/amazon/device/ads/SISRequestorCallback;
    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0}, Lcom/amazon/device/ads/SISRequestorCallback;->onSISCallComplete()V

    .line 55
    :cond_0
    return-void
.end method
