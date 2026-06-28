.class Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;
.super Ljava/lang/Object;
.source "ResourcesHelper.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;->sendRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V
    .locals 0
    .param p1, "this$0"    # Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->this$0:Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper;

    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 3
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 83
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-interface {v0, v1, v2}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 84
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 11
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 88
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 90
    :try_start_0
    sget-object v5, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->GSON:Lcom/google/gson/Gson;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;

    instance-of v8, v5, Lcom/google/gson/Gson;

    if-nez v8, :cond_2

    invoke-virtual {v5, v6, v7}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;

    .line 91
    .local v3, "serverResponseV2":Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;
    if-eqz v3, :cond_1

    .line 92
    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->getGs()Lcom/cuebiq/cuebiqsdk/model/config/Settings;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    if-eqz v5, :cond_0

    .line 94
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ResourcesHelper -> Update configuration from server. OLD Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getV()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " NEW Version: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->getGs()Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v6

    invoke-virtual {v6}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getV()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->getGs()Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->saveBeAudienceConfiguration(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/config/Settings;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    :cond_0
    :goto_1
    :try_start_2
    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->getCs()Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 102
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->get()Lcom/cuebiq/cuebiqsdk/model/CoverageManager;

    move-result-object v5

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->getCs()Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/cuebiq/cuebiqsdk/model/wrapper/CoverageSettings;->getD()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Lcom/cuebiq/cuebiqsdk/model/CoverageManager;->scheduleCheckCoverage(Landroid/content/Context;J)V

    .line 134
    .end local v3    # "serverResponseV2":Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;
    :cond_1
    :goto_2
    return-void

    .line 90
    :cond_2
    check-cast v5, Lcom/google/gson/Gson;

    invoke-static {v5, v6, v7}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    .line 96
    .restart local v3    # "serverResponseV2":Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v5, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    const-string v7, "API Success but error with configuration:"

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 105
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "serverResponseV2":Lcom/cuebiq/cuebiqsdk/model/wrapper/ServerResponseV2;
    :catch_1
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v5, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    const-string v7, "API Success but error:"

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v0}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v6, v10, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 109
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_3
    invoke-virtual {p2}, Lokhttp3/Response;->networkResponse()Lokhttp3/Response;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/Response;->code()I

    move-result v4

    .line 110
    .local v4, "statusCode":I
    sparse-switch v4, :sswitch_data_0

    goto :goto_2

    .line 112
    :sswitch_0
    const-string v5, "ResourcesHelper -> Bad-formed json. Clear cache."

    invoke-static {v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 113
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    invoke-interface {v5, v6, v9}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 114
    new-instance v5, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    const-string v7, "API Error: 400"

    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v6, v10, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 117
    :sswitch_1
    const-string v5, "ResourcesHelper -> Permission denied."

    invoke-static {v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-interface {v5, v6, v7}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 119
    new-instance v5, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    const-string v7, "API Error: 403"

    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v6, v10, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 125
    :sswitch_2
    const-string v5, "ResourcesHelper -> Server Down"

    invoke-static {v5}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 126
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    iget-object v7, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-interface {v5, v6, v7}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->persistRequest(Landroid/content/Context;Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;)V

    .line 127
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 128
    .local v2, "random":Ljava/util/Random;
    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 129
    .local v1, "nextTry":I
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v5

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    invoke-interface {v5, v6, v1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setNextFlushingContent(Landroid/content/Context;I)V

    .line 130
    new-instance v5, Lcom/cuebiq/cuebiqsdk/task/LogTask;

    iget-object v6, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "API Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/cuebiq/cuebiqsdk/model/helper/ResourcesHelper$2;->val$request:Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;

    invoke-virtual {v8}, Lcom/cuebiq/cuebiqsdk/model/wrapper/TrackRequest;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/cuebiq/cuebiqsdk/task/LogTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-array v6, v10, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_2

    .line 110
    :sswitch_data_0
    .sparse-switch
        0x190 -> :sswitch_0
        0x193 -> :sswitch_1
        0x1f4 -> :sswitch_2
        0x1f5 -> :sswitch_2
        0x1f6 -> :sswitch_2
        0x1f7 -> :sswitch_2
    .end sparse-switch
.end method
