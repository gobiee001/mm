.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;
.super Ljava/lang/Object;
.source "IpAddress.java"


# instance fields
.field private ipAddr:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIpAddr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;->ipAddr:Ljava/lang/String;

    return-object v0
.end method

.method public setIpAddr(Ljava/lang/String;)V
    .locals 0
    .param p1, "ipAddr"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/IpAddress;->ipAddr:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
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
