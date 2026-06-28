.class Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;
.super Ljava/lang/Object;
.source "CrashReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/newrelic/agent/android/crashes/CrashReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CrashSender"
.end annotation


# instance fields
.field private final crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

.field final synthetic this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;


# direct methods
.method constructor <init>(Lcom/newrelic/agent/android/crashes/CrashReporter;Lcom/newrelic/agent/android/harvest/crash/Crash;)V
    .locals 0
    .param p2, "crash"    # Lcom/newrelic/agent/android/harvest/crash/Crash;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p2, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    .line 274
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 279
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$200()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/newrelic/agent/android/AgentConfiguration;->useSsl()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v3, "https://"

    .line 280
    .local v3, "protocol":Ljava/lang/String;
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$200()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newrelic/agent/android/AgentConfiguration;->getCrashCollectorHost()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/mobile_crash"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 281
    .local v6, "urlString":Ljava/lang/String;
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 282
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 284
    .local v0, "connection":Ljava/net/HttpURLConnection;
    new-instance v4, Lcom/newrelic/agent/android/stats/TicToc;

    invoke-direct {v4}, Lcom/newrelic/agent/android/stats/TicToc;-><init>()V

    .line 285
    .local v4, "timer":Lcom/newrelic/agent/android/stats/TicToc;
    invoke-virtual {v4}, Lcom/newrelic/agent/android/stats/TicToc;->tic()V

    .line 287
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 288
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 289
    const-string v7, "Content-Type"

    const-string v8, "application/json"

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v7, "X-App-License-Key"

    invoke-static {}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$200()Lcom/newrelic/agent/android/AgentConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v7, "X-NewRelic-OS-Name"

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string v7, "X-NewRelic-App-Version"

    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v8

    invoke-virtual {v8}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const/16 v7, 0x1388

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 294
    const/16 v7, 0x1388

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    :try_start_1
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/crash/Crash;->incrementUploadCount()V

    .line 299
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v7}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/crashes/CrashStore;

    move-result-object v7

    iget-object v8, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-interface {v7, v8}, Lcom/newrelic/agent/android/crashes/CrashStore;->store(Lcom/newrelic/agent/android/harvest/crash/Crash;)V

    .line 301
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 302
    .local v2, "out":Ljava/io/OutputStream;
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-virtual {v7}, Lcom/newrelic/agent/android/harvest/crash/Crash;->toJsonString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/OutputStream;->write([B)V

    .line 303
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 305
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 319
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Something went wrong while submitting a crash (will try again later) - Response code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/newrelic/agent/android/crashes/CrashReporter;->recordFailedUpload(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 328
    .end local v2    # "out":Ljava/io/OutputStream;
    :goto_2
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v7}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$100(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Crash collection took "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/newrelic/agent/android/stats/TicToc;->toc()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ms"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 333
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "timer":Lcom/newrelic/agent/android/stats/TicToc;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlString":Ljava/lang/String;
    :goto_3
    return-void

    .line 279
    :cond_0
    const-string v3, "http://"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 307
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "protocol":Ljava/lang/String;
    .restart local v4    # "timer":Lcom/newrelic/agent/android/stats/TicToc;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "urlString":Ljava/lang/String;
    :sswitch_0
    :try_start_3
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v7}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/crashes/CrashStore;

    move-result-object v7

    iget-object v8, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-interface {v7, v8}, Lcom/newrelic/agent/android/crashes/CrashStore;->delete(Lcom/newrelic/agent/android/harvest/crash/Crash;)V

    .line 308
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v7

    const-string v8, "Supportability/AgentHealth/Crash/UploadTime"

    invoke-virtual {v4}, Lcom/newrelic/agent/android/stats/TicToc;->peek()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    .line 309
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v7}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$100(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Crash "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-virtual {v9}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getUuid()Ljava/util/UUID;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " successfully submitted."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 322
    .end local v2    # "out":Ljava/io/OutputStream;
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Crash upload failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/newrelic/agent/android/crashes/CrashReporter;->recordFailedUpload(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 325
    :try_start_5
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_2

    .line 330
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "protocol":Ljava/lang/String;
    .end local v4    # "timer":Lcom/newrelic/agent/android/stats/TicToc;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlString":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 331
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to report crash to New Relic, will try again later. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/newrelic/agent/android/crashes/CrashReporter;->recordFailedUpload(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 313
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    .restart local v2    # "out":Ljava/io/OutputStream;
    .restart local v3    # "protocol":Ljava/lang/String;
    .restart local v4    # "timer":Lcom/newrelic/agent/android/stats/TicToc;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "urlString":Ljava/lang/String;
    :sswitch_1
    :try_start_6
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    invoke-static {v7}, Lcom/newrelic/agent/android/crashes/CrashReporter;->access$300(Lcom/newrelic/agent/android/crashes/CrashReporter;)Lcom/newrelic/agent/android/crashes/CrashStore;

    move-result-object v7

    iget-object v8, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->crash:Lcom/newrelic/agent/android/harvest/crash/Crash;

    invoke-interface {v7, v8}, Lcom/newrelic/agent/android/crashes/CrashStore;->delete(Lcom/newrelic/agent/android/harvest/crash/Crash;)V

    .line 314
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v7

    const-string v8, "Supportability/AgentHealth/Crash/Removed/Rejected"

    invoke-virtual {v7, v8}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 315
    iget-object v7, p0, Lcom/newrelic/agent/android/crashes/CrashReporter$CrashSender;->this$0:Lcom/newrelic/agent/android/crashes/CrashReporter;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The crash was rejected and will be deleted - Response code "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/newrelic/agent/android/crashes/CrashReporter;->recordFailedUpload(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 325
    .end local v2    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v7

    :try_start_7
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v7
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 305
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x1f4 -> :sswitch_1
    .end sparse-switch
.end method
