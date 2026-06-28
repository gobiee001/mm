.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;
.super Ljava/lang/Object;
.source "LogAppBean.java"


# instance fields
.field private eventType:Ljava/lang/String;

.field private memberId:Ljava/lang/String;

.field private message:Ljava/lang/String;

.field private payload:Ljava/lang/String;

.field private stackTrace:Ljava/lang/String;

.field private statusCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEventType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->memberId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getPayload()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->payload:Ljava/lang/String;

    return-object v0
.end method

.method public getStackTrace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->stackTrace:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setEventType(Ljava/lang/String;)V
    .locals 0
    .param p1, "eventType"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->eventType:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setMemberId(Ljava/lang/String;)V
    .locals 0
    .param p1, "memberId"    # Ljava/lang/String;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->memberId:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->message:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPayload(Ljava/lang/String;)V
    .locals 0
    .param p1, "payload"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->payload:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setStackTrace(Ljava/lang/String;)V
    .locals 0
    .param p1, "stackTrace"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->stackTrace:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "statusCode"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->statusCode:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    instance-of v1, v0, Lcom/google/gson/Gson;

    if-nez v1, :cond_0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/gson/Gson;

    invoke-static {v0, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
