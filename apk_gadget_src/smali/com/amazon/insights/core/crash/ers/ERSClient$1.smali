.class Lcom/amazon/insights/core/crash/ers/ERSClient$1;
.super Ljava/lang/Object;
.source "ERSClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/core/crash/ers/ERSClient;->submitEvents(Ljava/util/List;)Lcom/amazon/insights/InsightsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/core/crash/ers/ERSClient;

.field final synthetic val$eventsArray:Lorg/json/JSONArray;

.field final synthetic val$handler:Lcom/amazon/insights/core/DefaultInsightsHandler;


# direct methods
.method constructor <init>(Lcom/amazon/insights/core/crash/ers/ERSClient;Lorg/json/JSONArray;Lcom/amazon/insights/core/DefaultInsightsHandler;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->this$0:Lcom/amazon/insights/core/crash/ers/ERSClient;

    iput-object p2, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$eventsArray:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$handler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 69
    :try_start_0
    iget-object v3, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->this$0:Lcom/amazon/insights/core/crash/ers/ERSClient;

    invoke-static {v3}, Lcom/amazon/insights/core/crash/ers/ERSClient;->access$000(Lcom/amazon/insights/core/crash/ers/ERSClient;)Lcom/amazon/insights/delivery/ERSRequestBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$eventsArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v4}, Lcom/amazon/insights/delivery/ERSRequestBuilder;->createHttpRequest(Lorg/json/JSONArray;)Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v1

    .line 70
    .local v1, "request":Lcom/amazon/insights/core/http/HttpClient$Request;
    iget-object v3, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->this$0:Lcom/amazon/insights/core/crash/ers/ERSClient;

    invoke-static {v3}, Lcom/amazon/insights/core/crash/ers/ERSClient;->access$100(Lcom/amazon/insights/core/crash/ers/ERSClient;)Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Lcom/amazon/insights/core/http/HttpClient;->execute(Lcom/amazon/insights/core/http/HttpClient$Request;Ljava/lang/Integer;)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v2

    .line 71
    .local v2, "response":Lcom/amazon/insights/core/http/HttpClient$Response;
    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v3

    div-int/lit8 v3, v3, 0x64

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 72
    invoke-static {}, Lcom/amazon/insights/core/crash/ers/ERSClient;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v3

    const-string v4, "Success from EventService: %d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v2}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/insights/core/log/Logger;->d(Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$handler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onComplete(Ljava/lang/Object;)V

    .line 88
    .end local v1    # "request":Lcom/amazon/insights/core/http/HttpClient$Request;
    .end local v2    # "response":Lcom/amazon/insights/core/http/HttpClient$Response;
    :goto_0
    return-void

    .line 75
    .restart local v1    # "request":Lcom/amazon/insights/core/http/HttpClient$Request;
    .restart local v2    # "response":Lcom/amazon/insights/core/http/HttpClient$Response;
    :cond_0
    iget-object v3, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$handler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    new-instance v4, Lcom/amazon/insights/core/crash/ers/ERSClient$1$1;

    invoke-direct {v4, p0, v2}, Lcom/amazon/insights/core/crash/ers/ERSClient$1$1;-><init>(Lcom/amazon/insights/core/crash/ers/ERSClient$1;Lcom/amazon/insights/core/http/HttpClient$Response;)V

    invoke-virtual {v3, v4}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onError(Lcom/amazon/insights/error/InsightsError;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    .end local v1    # "request":Lcom/amazon/insights/core/http/HttpClient$Request;
    .end local v2    # "response":Lcom/amazon/insights/core/http/HttpClient$Response;
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/amazon/insights/core/crash/ers/ERSClient;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v3

    const-string v4, "Unable to send ers request"

    invoke-virtual {v3, v4, v0}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    iget-object v3, p0, Lcom/amazon/insights/core/crash/ers/ERSClient$1;->val$handler:Lcom/amazon/insights/core/DefaultInsightsHandler;

    new-instance v4, Lcom/amazon/insights/error/UnexpectedError;

    const-string v5, "Failed to submit events to EventService"

    invoke-direct {v4, v5, v0}, Lcom/amazon/insights/error/UnexpectedError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v3, v4}, Lcom/amazon/insights/core/DefaultInsightsHandler;->onError(Lcom/amazon/insights/error/InsightsError;)V

    goto :goto_0
.end method
