.class public Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;
.super Ljava/lang/Object;
.source "CoverageCallback.java"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mListener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    .line 27
    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 31
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 32
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
    .line 36
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    .line 37
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mListener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    if-eqz v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mListener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;->onError(Ljava/lang/String;)V

    .line 64
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sget-object v1, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;

    instance-of v4, v1, Lcom/google/gson/Gson;

    if-nez v4, :cond_2

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_1
    check-cast v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;

    .line 44
    .local v0, "serverResponseV2":Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;
    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->getCs()Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 46
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->PENDING:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    invoke-virtual {v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->setCoverageStatus(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;)V

    .line 47
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->getCs()Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;->getD()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->scheduleCheckCoverage(Landroid/content/Context;J)V

    .line 48
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mListener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    if-eqz v1, :cond_0

    .line 49
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mListener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    invoke-interface {v1}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;->onCountryNotCovered()V

    goto :goto_0

    .line 43
    .end local v0    # "serverResponseV2":Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;
    :cond_2
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 52
    .restart local v0    # "serverResponseV2":Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;
    :cond_3
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->CHECKED:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    invoke-virtual {v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->setCoverageStatus(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;)V

    .line 53
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mListener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    if-eqz v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mListener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    invoke-interface {v1}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;->onCountryCovered()V

    goto :goto_0

    .line 58
    :cond_4
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;->PENDING:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;

    invoke-virtual {v1, v2, v3}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->setCoverageStatus(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageStatus;)V

    .line 59
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mContext:Landroid/content/Context;

    const-wide/32 v4, 0x2932e00

    invoke-virtual {v1, v2, v4, v5}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->scheduleCheckCoverage(Landroid/content/Context;J)V

    .line 60
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mListener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/api/CoverageCallback;->mListener:Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;

    const-string v2, "Server response is null"

    invoke-interface {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager$CoverageListener;->onError(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
