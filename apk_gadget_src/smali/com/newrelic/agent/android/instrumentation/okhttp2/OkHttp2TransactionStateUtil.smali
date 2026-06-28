.class public Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;
.super Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;
.source "OkHttp2TransactionStateUtil.java"


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;-><init>()V

    return-void
.end method

.method private static addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 26
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v25

    .line 68
    .local v25, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    if-eqz v25, :cond_2

    .line 70
    new-instance v5, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v8

    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v9

    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v10

    .line 72
    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v4

    float-to-double v12, v4

    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v14

    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v16

    .line 73
    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v5 .. v18}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    .line 70
    invoke-static {v5}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getStatusCode()I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    if-eqz p1, :cond_2

    .line 78
    const-string v4, "Content-Type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 79
    .local v21, "contentTypeHeader":Ljava/lang/String;
    const/16 v20, 0x0

    .line 80
    .local v20, "contentType":Ljava/lang/String;
    new-instance v9, Ljava/util/TreeMap;

    invoke-direct {v9}, Ljava/util/TreeMap;-><init>()V

    .line 82
    .local v9, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const-string v4, ""

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    const-string v4, "content_type"

    move-object/from16 v0, v20

    invoke-interface {v9, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
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

    .line 92
    const-string v8, ""

    .line 95
    .local v8, "responseBodyString":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v19

    .line 97
    .local v19, "body":Lcom/squareup/okhttp/ResponseBody;
    invoke-virtual/range {v19 .. v19}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    .line 101
    new-instance v4, Lokio/Buffer;

    invoke-direct {v4}, Lokio/Buffer;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Lokio/Buffer;->write([B)Lokio/Buffer;

    move-result-object v22

    .line 103
    .local v22, "contents":Lokio/Buffer;
    new-instance v24, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil$1;

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil$1;-><init>(Lcom/squareup/okhttp/ResponseBody;Lokio/Buffer;)V

    .line 120
    .local v24, "responseBody":Lcom/squareup/okhttp/ResponseBody;
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->newBuilder()Lcom/squareup/okhttp/Response$Builder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/squareup/okhttp/Response$Builder;->body(Lcom/squareup/okhttp/ResponseBody;)Lcom/squareup/okhttp/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/Response$Builder;->build()Lcom/squareup/okhttp/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 129
    .end local v19    # "body":Lcom/squareup/okhttp/ResponseBody;
    .end local v22    # "contents":Lokio/Buffer;
    .end local v24    # "responseBody":Lcom/squareup/okhttp/ResponseBody;
    :cond_1
    :goto_0
    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v6

    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v7

    .line 130
    invoke-static/range {v4 .. v9}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    .line 139
    .end local v8    # "responseBodyString":Ljava/lang/String;
    .end local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v20    # "contentType":Ljava/lang/String;
    .end local v21    # "contentTypeHeader":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 122
    .restart local v8    # "responseBodyString":Ljava/lang/String;
    .restart local v9    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v20    # "contentType":Ljava/lang/String;
    .restart local v21    # "contentTypeHeader":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 123
    .local v23, "e":Ljava/lang/Exception;
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 124
    sget-object v4, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Missing response body, using response message"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 133
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-virtual/range {v25 .. v25}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v6

    .line 133
    invoke-static {v4, v5, v6, v8, v9}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_1
.end method

.method public static inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Request;)V
    .locals 2
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 29
    if-nez p1, :cond_0

    .line 30
    sget-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Missing request"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 34
    :goto_0
    return-void

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;
    .locals 7
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 37
    const-string v0, ""

    .line 38
    .local v0, "appData":Ljava/lang/String;
    const/4 v4, -0x1

    .line 39
    .local v4, "statusCode":I
    const-wide/16 v2, 0x0

    .line 42
    .local v2, "contentLength":J
    if-nez p1, :cond_0

    .line 43
    const/16 v4, 0x1f4

    .line 44
    sget-object v5, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Missing response"

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 55
    :goto_0
    long-to-int v5, v2

    invoke-static {p0, v0, v5, v4}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/String;II)V

    .line 57
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Response;)Lcom/squareup/okhttp/Response;

    move-result-object v5

    return-object v5

    .line 46
    :cond_0
    const-string v5, "X-NewRelic-App-Data"

    invoke-virtual {p1, v5}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v4

    .line 49
    :try_start_0
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 50
    :catch_0
    move-exception v1

    .line 51
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Missing body or content length"

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method
