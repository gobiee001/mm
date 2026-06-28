.class public Lcom/amazon/insights/core/crash/ers/ERSClient;
.super Ljava/lang/Object;
.source "ERSClient.java"


# static fields
.field private static final MAX_SUBMIT_OPERATIONS:I = 0x64

.field private static final logger:Lcom/amazon/insights/core/log/Logger;


# instance fields
.field private final ersRequestBuilder:Lcom/amazon/insights/delivery/ERSRequestBuilder;

.field private final eventAdapter:Lcom/amazon/insights/event/adapter/EventAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/insights/event/adapter/EventAdapter",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lcom/amazon/insights/core/http/HttpClient;

.field private final submissionExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/amazon/insights/core/crash/ers/ERSClient;

    invoke-static {v0}, Lcom/amazon/insights/core/log/Logger;->getLogger(Ljava/lang/Class;)Lcom/amazon/insights/core/log/Logger;

    move-result-object v0

    sput-object v0, Lcom/amazon/insights/core/crash/ers/ERSClient;->logger:Lcom/amazon/insights/core/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/amazon/insights/delivery/ERSRequestBuilder;Lcom/amazon/insights/core/http/HttpClient;Lcom/amazon/insights/event/adapter/EventAdapter;)V
    .locals 0
    .param p1, "submissionRunnableQueue"    # Ljava/util/concurrent/ExecutorService;
    .param p2, "ersRequestBuilder"    # Lcom/amazon/insights/delivery/ERSRequestBuilder;
    .param p3, "httpClient"    # Lcom/amazon/insights/core/http/HttpClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/amazon/insights/delivery/ERSRequestBuilder;",
            "Lcom/amazon/insights/core/http/HttpClient;",
            "Lcom/amazon/insights/event/adapter/EventAdapter",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p4, "eventAdapter":Lcom/amazon/insights/event/adapter/EventAdapter;, "Lcom/amazon/insights/event/adapter/EventAdapter<Lorg/json/JSONObject;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/insights/core/crash/ers/ERSClient;->submissionExecutor:Ljava/util/concurrent/ExecutorService;

    .line 47
    iput-object p2, p0, Lcom/amazon/insights/core/crash/ers/ERSClient;->ersRequestBuilder:Lcom/amazon/insights/delivery/ERSRequestBuilder;

    .line 48
    iput-object p3, p0, Lcom/amazon/insights/core/crash/ers/ERSClient;->httpClient:Lcom/amazon/insights/core/http/HttpClient;

    .line 49
    iput-object p4, p0, Lcom/amazon/insights/core/crash/ers/ERSClient;->eventAdapter:Lcom/amazon/insights/event/adapter/EventAdapter;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/insights/core/crash/ers/ERSClient;)Lcom/amazon/insights/delivery/ERSRequestBuilder;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/insights/core/crash/ers/ERSClient;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/insights/core/crash/ers/ERSClient;->ersRequestBuilder:Lcom/amazon/insights/delivery/ERSRequestBuilder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/insights/core/crash/ers/ERSClient;)Lcom/amazon/insights/core/http/HttpClient;
    .locals 1
    .param p0, "x0"    # Lcom/amazon/insights/core/crash/ers/ERSClient;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/amazon/insights/core/crash/ers/ERSClient;->httpClient:Lcom/amazon/insights/core/http/HttpClient;

    return-object v0
.end method

.method static synthetic access$200()Lcom/amazon/insights/core/log/Logger;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/amazon/insights/core/crash/ers/ERSClient;->logger:Lcom/amazon/insights/core/log/Logger;

    return-object v0
.end method

.method public static newInstance(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/core/crash/ers/ERSClient;
    .locals 10
    .param p0, "context"    # Lcom/amazon/insights/core/InsightsContext;

    .prologue
    const/4 v2, 0x1

    .line 36
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v3, 0x64

    invoke-direct {v7, v3}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v8}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    move v3, v2

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 37
    .local v1, "submissionsExService":Ljava/util/concurrent/ExecutorService;
    invoke-static {p0}, Lcom/amazon/insights/delivery/ERSRequestBuilder;->newBuilder(Lcom/amazon/insights/core/InsightsContext;)Lcom/amazon/insights/delivery/ERSRequestBuilder;

    move-result-object v9

    .line 38
    .local v9, "builder":Lcom/amazon/insights/delivery/ERSRequestBuilder;
    new-instance v0, Lcom/amazon/insights/event/adapter/JSONEventAdapter;

    invoke-direct {v0}, Lcom/amazon/insights/event/adapter/JSONEventAdapter;-><init>()V

    .line 39
    .local v0, "adapter":Lcom/amazon/insights/event/adapter/JSONEventAdapter;
    new-instance v2, Lcom/amazon/insights/core/crash/ers/ERSClient;

    invoke-interface {p0}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v3

    invoke-direct {v2, v1, v9, v3, v0}, Lcom/amazon/insights/core/crash/ers/ERSClient;-><init>(Ljava/util/concurrent/ExecutorService;Lcom/amazon/insights/delivery/ERSRequestBuilder;Lcom/amazon/insights/core/http/HttpClient;Lcom/amazon/insights/event/adapter/EventAdapter;)V

    return-object v2
.end method


# virtual methods
.method public submitEvents(Ljava/util/List;)Lcom/amazon/insights/InsightsHandler;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/event/DefaultEvent;",
            ">;)",
            "Lcom/amazon/insights/InsightsHandler",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/insights/event/DefaultEvent;>;"
    new-instance v2, Lcom/amazon/insights/core/DefaultInsightsHandler;

    invoke-direct {v2}, Lcom/amazon/insights/core/DefaultInsightsHandler;-><init>()V

    .line 55
    .local v2, "handler":Lcom/amazon/insights/core/DefaultInsightsHandler;, "Lcom/amazon/insights/core/DefaultInsightsHandler<Ljava/lang/Boolean;>;"
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 57
    .local v1, "eventsArray":Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/insights/event/DefaultEvent;

    .line 58
    .local v0, "event":Lcom/amazon/insights/event/DefaultEvent;
    iget-object v5, p0, Lcom/amazon/insights/core/crash/ers/ERSClient;->eventAdapter:Lcom/amazon/insights/event/adapter/EventAdapter;

    invoke-interface {v5, v0}, Lcom/amazon/insights/event/adapter/EventAdapter;->translateFromEvent(Lcom/amazon/insights/event/InternalEvent;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 59
    .local v4, "jsonObject":Lorg/json/JSONObject;
    if-eqz v4, :cond_0

    .line 60
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 64
    .end local v0    # "event":Lcom/amazon/insights/event/DefaultEvent;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    iget-object v5, p0, Lcom/amazon/insights/core/crash/ers/ERSClient;->submissionExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/amazon/insights/core/crash/ers/ERSClient$1;

    invoke-direct {v6, p0, v1, v2}, Lcom/amazon/insights/core/crash/ers/ERSClient$1;-><init>(Lcom/amazon/insights/core/crash/ers/ERSClient;Lorg/json/JSONArray;Lcom/amazon/insights/core/DefaultInsightsHandler;)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 92
    return-object v2
.end method
