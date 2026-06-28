.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;
.super Ljava/lang/Object;
.source "ServerResponseV2.java"


# instance fields
.field private cs:Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;

.field private gs:Lcom/cuebiq/cuebiqsdk/model/config/Settings;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCs()Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->cs:Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;

    return-object v0
.end method

.method public getGs()Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->gs:Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    return-object v0
.end method

.method public setCs(Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;)V
    .locals 0
    .param p1, "cs"    # Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->cs:Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;

    .line 29
    return-void
.end method

.method public setGs(Lcom/cuebiq/cuebiqsdk/model/config/Settings;)V
    .locals 0
    .param p1, "gs"    # Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->gs:Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
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
