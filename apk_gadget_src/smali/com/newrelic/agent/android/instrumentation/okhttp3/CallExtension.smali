.class public Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;
.super Ljava/lang/Object;
.source "CallExtension.java"

# interfaces
.implements Lokhttp3/Call;


# static fields
.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private client:Lokhttp3/OkHttpClient;

.field private impl:Lokhttp3/Call;

.field private request:Lokhttp3/Request;

.field private transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lokhttp3/Call;)V
    .locals 0
    .param p1, "client"    # Lokhttp3/OkHttpClient;
    .param p2, "request"    # Lokhttp3/Request;
    .param p3, "impl"    # Lokhttp3/Call;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->client:Lokhttp3/OkHttpClient;

    .line 32
    iput-object p2, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->request:Lokhttp3/Request;

    .line 33
    iput-object p3, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->impl:Lokhttp3/Call;

    .line 34
    return-void
.end method

.method private checkResponse(Lokhttp3/Response;)Lokhttp3/Response;
    .locals 1
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object p1

    .line 82
    :cond_0
    return-object p1
.end method

.method private error(Ljava/lang/Exception;)V
    .locals 18
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    move-result-object v17

    .line 95
    .local v17, "transactionState":Lcom/newrelic/agent/android/instrumentation/TransactionState;
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;->setErrorCodeFromException(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/Exception;)V

    .line 96
    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->isComplete()Z

    move-result v3

    if-nez v3, :cond_0

    .line 97
    invoke-virtual/range {v17 .. v17}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v2

    .line 100
    .local v2, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    if-eqz v2, :cond_0

    .line 101
    new-instance v3, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v5

    .line 102
    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v6

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v7

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v8

    .line 103
    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v12

    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v14

    .line 104
    invoke-virtual {v2}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v3 .. v16}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    .line 101
    invoke-static {v3}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 108
    .end local v2    # "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    :cond_0
    return-void
.end method

.method private getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 88
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    iget-object v1, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->request:Lokhttp3/Request;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/OkHttp3TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lokhttp3/Request;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->impl:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 64
    return-void
.end method

.method public enqueue(Lokhttp3/Callback;)V
    .locals 3
    .param p1, "responseCallback"    # Lokhttp3/Callback;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 58
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->impl:Lokhttp3/Call;

    new-instance v1, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallbackExtension;

    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->transactionState:Lcom/newrelic/agent/android/instrumentation/TransactionState;

    invoke-direct {v1, p1, v2}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallbackExtension;-><init>(Lokhttp3/Callback;Lcom/newrelic/agent/android/instrumentation/TransactionState;)V

    invoke-interface {v0, v1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 59
    return-void
.end method

.method public execute()Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->getTransactionState()Lcom/newrelic/agent/android/instrumentation/TransactionState;

    .line 44
    const/4 v1, 0x0

    .line 46
    .local v1, "response":Lokhttp3/Response;
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->impl:Lokhttp3/Call;

    invoke-interface {v2}, Lokhttp3/Call;->execute()Lokhttp3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->checkResponse(Lokhttp3/Response;)Lokhttp3/Response;

    move-result-object v2

    return-object v2

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    invoke-direct {p0, v0}, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->error(Ljava/lang/Exception;)V

    .line 49
    throw v0
.end method

.method public getImpl()Lokhttp3/Call;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->impl:Lokhttp3/Call;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->impl:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public isExecuted()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public request()Lokhttp3/Request;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/newrelic/agent/android/instrumentation/okhttp3/CallExtension;->impl:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method
