.class public Lcom/newrelic/agent/android/instrumentation/retrofit/RetrofitTransactionStateUtil;
.super Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;
.source "RetrofitTransactionStateUtil.java"


# static fields
.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/retrofit/RetrofitTransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;-><init>()V

    return-void
.end method

.method private static addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lretrofit/client/Response;)V
    .locals 20
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v19

    .line 69
    .local v19, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    if-nez v19, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    new-instance v3, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v7

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v8

    .line 75
    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v2

    float-to-double v10, v2

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v12

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v14

    .line 76
    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v3 .. v16}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    .line 73
    invoke-static {v3}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 79
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getStatusCode()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 81
    invoke-virtual/range {p1 .. p1}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v2

    const-string v3, "Content-Type"

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/instrumentation/retrofit/RetrofitTransactionStateUtil;->getAppDataHeader(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 82
    .local v18, "contentTypeHeader":Ljava/lang/String;
    const/16 v17, 0x0

    .line 83
    .local v17, "contentType":Ljava/lang/String;
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 85
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const-string v2, ""

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 86
    const-string v2, "content_type"

    move-object/from16 v0, v17

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    :cond_2
    const-string v2, "content_length"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getBytesReceived()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v4

    invoke-virtual/range {v19 .. v19}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v6

    .line 94
    invoke-static/range {v2 .. v7}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method private static getAppDataHeader(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "headers":Ljava/util/List;, "Ljava/util/List<Lretrofit/client/Header;>;"
    if-eqz p0, :cond_1

    .line 52
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/client/Header;

    .line 53
    .local v0, "header":Lretrofit/client/Header;
    invoke-virtual {v0}, Lretrofit/client/Header;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lretrofit/client/Header;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {v0}, Lretrofit/client/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 58
    .end local v0    # "header":Lretrofit/client/Header;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lretrofit/client/Request;)V
    .locals 1
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "request"    # Lretrofit/client/Request;

    .prologue
    .line 28
    invoke-virtual {p1}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setUrl(Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setHttpMethod(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getActiveNetworkCarrier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setCarrier(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getActiveNetworkWanType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setWanType(Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lretrofit/client/Response;)V
    .locals 6
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    .line 35
    invoke-virtual {p1}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v4

    const-string v5, "X-NewRelic-App-Data"

    invoke-static {v4, v5}, Lcom/newrelic/agent/android/instrumentation/retrofit/RetrofitTransactionStateUtil;->getAppDataHeader(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "appData":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 37
    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setAppData(Ljava/lang/String;)V

    .line 40
    :cond_0
    invoke-virtual {p1}, Lretrofit/client/Response;->getStatus()I

    move-result v1

    .line 41
    .local v1, "statusCode":I
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setStatusCode(I)V

    .line 43
    invoke-virtual {p1}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v4

    invoke-interface {v4}, Lretrofit/mime/TypedInput;->length()J

    move-result-wide v2

    .line 44
    .local v2, "contentLength":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 45
    invoke-virtual {p0, v2, v3}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->setBytesReceived(J)V

    .line 47
    :cond_1
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/retrofit/RetrofitTransactionStateUtil;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lretrofit/client/Response;)V

    .line 48
    return-void
.end method
