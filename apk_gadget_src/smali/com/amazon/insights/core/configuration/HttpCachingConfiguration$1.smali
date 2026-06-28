.class Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;
.super Ljava/lang/Object;
.source "HttpCachingConfiguration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->syncConfiguration()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;


# direct methods
.method constructor <init>(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    const/16 v16, 0x0

    .line 294
    const/4 v2, 0x0

    .line 296
    .local v2, "configJson":Lorg/json/JSONObject;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {v13}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$000(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v13

    invoke-interface {v13}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v13

    invoke-interface {v13}, Lcom/amazon/insights/core/system/System;->getConnectivity()Lcom/amazon/insights/core/system/Connectivity;

    move-result-object v13

    invoke-interface {v13}, Lcom/amazon/insights/core/system/Connectivity;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 298
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-virtual {v13}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->createHttpRequest()Lcom/amazon/insights/core/http/HttpClient$Request;

    move-result-object v6

    .line 301
    .local v6, "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    if-eqz v6, :cond_1

    .line 306
    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 307
    .local v11, "retries":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {v13}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$100(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/Map;

    move-result-object v13

    const-string v14, "configRequestRetries"

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 308
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {v13}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$100(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/Map;

    move-result-object v13

    const-string v14, "configRequestRetries"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 309
    .local v12, "retryValue":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 311
    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v11

    .line 318
    .end local v12    # "retryValue":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {v13}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$300(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v13

    invoke-interface {v13}, Lcom/amazon/insights/core/InsightsContext;->getHttpClient()Lcom/amazon/insights/core/http/HttpClient;

    move-result-object v13

    invoke-interface {v13, v6, v11}, Lcom/amazon/insights/core/http/HttpClient;->execute(Lcom/amazon/insights/core/http/HttpClient$Request;Ljava/lang/Integer;)Lcom/amazon/insights/core/http/HttpClient$Response;

    move-result-object v10

    .line 320
    .local v10, "response":Lcom/amazon/insights/core/http/HttpClient$Response;
    invoke-interface {v10}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    const/16 v14, 0xc8

    if-ne v13, v14, :cond_4

    .line 322
    :try_start_3
    new-instance v13, Lorg/json/JSONObject;

    invoke-interface {v10}, Lcom/amazon/insights/core/http/HttpClient$Response;->getResponse()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 331
    .end local v10    # "response":Lcom/amazon/insights/core/http/HttpClient$Response;
    .end local v11    # "retries":Ljava/lang/Integer;
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 333
    :try_start_4
    instance-of v13, v2, Lorg/json/JSONObject;

    if-nez v13, :cond_5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 334
    .local v3, "configValues":Ljava/lang/String;
    :goto_2
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v13

    sget-object v14, Lcom/amazon/insights/core/log/Logger$LogLevel;->VERBOSE:Lcom/amazon/insights/core/log/Logger$LogLevel;

    invoke-virtual {v13, v14}, Lcom/amazon/insights/core/log/Logger;->isLoggingEnabled(Lcom/amazon/insights/core/log/Logger$LogLevel;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 335
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "AppIntelligence config: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V

    .line 337
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {v13}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$300(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Lcom/amazon/insights/core/InsightsContext;

    move-result-object v13

    invoke-interface {v13}, Lcom/amazon/insights/core/InsightsContext;->getSystem()Lcom/amazon/insights/core/system/System;

    move-result-object v13

    invoke-interface {v13}, Lcom/amazon/insights/core/system/System;->getPreferences()Lcom/amazon/insights/core/system/Preferences;

    move-result-object v7

    .line 338
    .local v7, "preferences":Lcom/amazon/insights/core/system/Preferences;
    const-string v13, "configuration"

    invoke-interface {v7, v13, v3}, Lcom/amazon/insights/core/system/Preferences;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {v13, v2}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$400(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;Lorg/json/JSONObject;)V

    .line 348
    .end local v3    # "configValues":Ljava/lang/String;
    .end local v6    # "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    .end local v7    # "preferences":Lcom/amazon/insights/core/system/Preferences;
    :cond_3
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 349
    .local v8, "now":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-virtual {v13, v8, v9}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->setLastSync(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {v13}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$500(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 357
    .end local v8    # "now":J
    :goto_4
    return-void

    .line 312
    .restart local v6    # "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    .restart local v11    # "retries":Ljava/lang/Integer;
    .restart local v12    # "retryValue":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 313
    .local v5, "ex":Ljava/lang/Exception;
    :try_start_5
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v13

    const-string v14, "Could not get the http request retry value"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14, v5}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 350
    .end local v5    # "ex":Ljava/lang/Exception;
    .end local v6    # "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    .end local v11    # "retries":Ljava/lang/Integer;
    .end local v12    # "retryValue":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 352
    .local v4, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v13

    const-string v14, "There was an error while attempting to sync the configuration"

    invoke-virtual {v13, v14, v4}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 355
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {v13}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$500(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v13

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    .line 323
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    .restart local v10    # "response":Lcom/amazon/insights/core/http/HttpClient$Response;
    .restart local v11    # "retries":Ljava/lang/Integer;
    :catch_2
    move-exception v4

    .line 324
    .local v4, "e":Lorg/json/JSONException;
    :try_start_7
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v13

    const-string v14, "error parsing service response"

    invoke-virtual {v13, v14, v4}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 355
    .end local v4    # "e":Lorg/json/JSONException;
    .end local v6    # "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    .end local v10    # "response":Lcom/amazon/insights/core/http/HttpClient$Response;
    .end local v11    # "retries":Ljava/lang/Integer;
    :catchall_0
    move-exception v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration$1;->this$0:Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;

    invoke-static {v14}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$500(Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v14

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v13

    .line 327
    .restart local v6    # "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    .restart local v10    # "response":Lcom/amazon/insights/core/http/HttpClient$Response;
    .restart local v11    # "retries":Ljava/lang/Integer;
    :cond_4
    :try_start_8
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "service error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lcom/amazon/insights/core/http/HttpClient$Response;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v10}, Lcom/amazon/insights/core/http/HttpClient$Response;->getCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/amazon/insights/core/log/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 333
    .end local v10    # "response":Lcom/amazon/insights/core/http/HttpClient$Response;
    .end local v11    # "retries":Ljava/lang/Integer;
    :cond_5
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v13, v0

    invoke-static {v13}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 344
    .end local v6    # "httpRequest":Lcom/amazon/insights/core/http/HttpClient$Request;
    :cond_6
    invoke-static {}, Lcom/amazon/insights/core/configuration/HttpCachingConfiguration;->access$200()Lcom/amazon/insights/core/log/Logger;

    move-result-object v13

    const-string v14, "Device not connected to sync config"

    invoke-virtual {v13, v14}, Lcom/amazon/insights/core/log/Logger;->v(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_3
.end method
