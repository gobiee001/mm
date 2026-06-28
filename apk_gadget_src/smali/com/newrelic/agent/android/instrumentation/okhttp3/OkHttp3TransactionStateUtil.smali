.class public Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;
.super Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;
.source "OkHttp3TransactionStateUtil.java"


# static fields
.field private static final CONTENTLENGTH_UNKNOWN:J = -0x1L

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;-><init>()V

    return-void
.end method

.method private static addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 25
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v24

    .line 92
    .local v24, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    if-eqz v24, :cond_2

    .line 94
    new-instance v5, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v7

    .line 95
    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v8

    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v9

    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v10

    .line 96
    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v4

    float-to-double v12, v4

    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v14

    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v16

    .line 97
    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v5 .. v18}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    .line 94
    invoke-static {v5}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getStatusCode()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    if-eqz p1, :cond_2

    .line 102
    const-string v4, "Content-Type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 103
    .local v22, "contentTypeHeader":Ljava/lang/String;
    const/16 v19, 0x0

    .line 104
    .local v19, "contentType":Ljava/lang/String;
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 106
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v22, :cond_0

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, ""

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 107
    const-string v4, "content_type"

    move-object/from16 v0, v19

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_0
    const-string v4, "content_length"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getBytesReceived()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v8, ""

    .line 117
    .local v8, "responseBodyString":Ljava/lang/String;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->exhaustiveContentLength(Lokhttp3/Response;)J

    move-result-wide v20

    .line 118
    .local v20, "contentLength":J
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-lez v4, :cond_1

    .line 119
    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lokhttp3/Response;->peekBody(J)Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 128
    .end local v20    # "contentLength":J
    :cond_1
    :goto_0
    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    .line 129
    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v6

    invoke-virtual/range {v24 .. v24}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v7

    .line 128
    invoke-static/range {v4 .. v9}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 133
    .end local v8    # "responseBodyString":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v19    # "contentType":Ljava/lang/String;
    .end local v22    # "contentTypeHeader":Ljava/lang/String;
    :cond_2
    return-object p1

    .line 121
    .restart local v8    # "responseBodyString":Ljava/lang/String;
    .restart local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "contentType":Ljava/lang/String;
    .restart local v22    # "contentTypeHeader":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 122
    .local v23, "e":Ljava/lang/Exception;
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 123
    sget-object v4, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Missing response body, using response message"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 124
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method private static exhaustiveContentLength(Lokhttp3/Response;)J
    .locals 7
    .param p0, "response"    # Lokhttp3/Response;

    .prologue
    .line 64
    const-wide/16 v0, -0x1

    .line 66
    .local v0, "contentLength":J
    if-eqz p0, :cond_1

    .line 67
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 68
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    .line 70
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 71
    const-string v4, "Content-Length"

    invoke-virtual {p0, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    .local v2, "responseBodyString":Ljava/lang/String;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 74
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 81
    .end local v2    # "responseBodyString":Ljava/lang/String;
    :cond_1
    :goto_0
    return-wide v0

    .line 75
    .restart local v2    # "responseBodyString":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 76
    .local v3, "var10":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse content length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lokhttp3/Request;)V
    .locals 2
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "request"    # Lokhttp3/Request;

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Missing request"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lokhttp3/Response;)Lokhttp3/Response;
    .locals 6
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 37
    const-string v0, ""

    .line 38
    .local v0, "appData":Ljava/lang/String;
    const/4 v1, -0x1

    .line 39
    .local v1, "statusCode":I
    const-wide/16 v2, 0x0

    .line 42
    .local v2, "contentLength":J
    if-nez p1, :cond_1

    .line 43
    const/16 v1, 0x1f4

    .line 44
    sget-object v4, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Missing response"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 57
    :cond_0
    :goto_0
    long-to-int v4, v2

    invoke-static {p0, v0, v4, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/String;II)V

    .line 59
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v4

    return-object v4

    .line 46
    :cond_1
    const-string v4, "X-NewRelic-App-Data"

    invoke-virtual {p1, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v1

    .line 49
    :try_start_0
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->exhaustiveContentLength(Lokhttp3/Response;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 52
    :goto_1
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 53
    sget-object v4, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Missing body or content length"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :catch_0
    move-exception v4

    goto :goto_1
.end method
