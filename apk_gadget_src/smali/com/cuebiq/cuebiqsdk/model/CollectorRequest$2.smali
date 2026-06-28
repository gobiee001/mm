.class Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;
.super Ljava/lang/Object;
.source "CollectorRequest.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->reportAllOperationsCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

.field final synthetic val$result:Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->val$result:Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->val$result:Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    invoke-static {v0, v1}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->access$100(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V

    .line 114
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->access$200(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;)Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->access$200(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;)Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;->onCollectorFinished()V

    .line 117
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 6
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_0

    .line 122
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 126
    :cond_0
    :try_start_0
    sget-object v2, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;

    instance-of v5, v2, Lcom/google/gson/Gson;

    if-nez v5, :cond_3

    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;

    .line 127
    .local v1, "ipAddress":Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;
    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;->getIpAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isIPv4(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 128
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->val$result:Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->getLast()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v2

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;->getIpAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setIpAddressV4(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    .end local v1    # "ipAddress":Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->val$result:Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    invoke-static {v2, v3}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->access$100(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;)V

    .line 136
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    invoke-static {v2}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->access$200(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;)Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 137
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->this$0:Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;

    invoke-static {v2}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;->access$200(Lcom/cuebiq/cuebiqsdk/model/CollectorRequest;)Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$CollectorCallback;->onCollectorFinished()V

    .line 139
    :cond_2
    return-void

    .line 126
    :cond_3
    :try_start_1
    check-cast v2, Lcom/google/gson/Gson;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 129
    .restart local v1    # "ipAddress":Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;
    :cond_4
    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;->getIpAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isIPv6(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/CollectorRequest$2;->val$result:Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/InfoAnalysisResult;->getTrackRequest()Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->getInformation()Lcom/cuebiq/cuebiqsdk/utils/InformationList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/utils/InformationList;->getLast()Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;

    move-result-object v2

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;->getIpAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/Information;->setIpAddressV6(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 132
    .end local v1    # "ipAddress":Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
