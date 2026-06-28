.class public Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;
.super Ljava/lang/Object;
.source "CoverageSettings.java"


# instance fields
.field private d:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getD()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;->d:Ljava/lang/Integer;

    return-object v0
.end method

.method public setD(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "d"    # Ljava/lang/Integer;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;->d:Ljava/lang/Integer;

    .line 20
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 24
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
