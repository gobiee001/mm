.class public Lcom/integralads/avid/library/inmobi/DownloadAvidTask;
.super Landroid/os/AsyncTask;
.source "DownloadAvidTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private listener:Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DownloadAvidTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DownloadAvidTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 39
    aget-object v3, p1, v1

    .line 40
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const-string v1, "AvidLoader: URL is empty"

    invoke-static {v1}, Lcom/integralads/avid/library/inmobi/utils/AvidLogs;->e(Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-object v0

    .line 47
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v1

    .line 49
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 50
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 54
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 55
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 56
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 60
    :catch_0
    move-exception v1

    move-object v1, v2

    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "AvidLoader: something is wrong with the URL \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/integralads/avid/library/inmobi/utils/AvidLogs;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 67
    if-eqz v1, :cond_0

    .line 68
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v1

    .line 71
    const-string v2, "AvidLoader: can not close Stream"

    invoke-static {v2, v1}, Lcom/integralads/avid/library/inmobi/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 58
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 68
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v0, v1

    .line 72
    goto :goto_0

    .line 70
    :catch_2
    move-exception v1

    .line 71
    const-string v2, "AvidLoader: can not close Stream"

    invoke-static {v2, v1}, Lcom/integralads/avid/library/inmobi/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 62
    :catch_3
    move-exception v1

    move-object v2, v0

    .line 63
    :goto_3
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AvidLoader: IO error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/integralads/avid/library/inmobi/utils/AvidLogs;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 67
    if-eqz v2, :cond_0

    .line 68
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 70
    :catch_4
    move-exception v1

    .line 71
    const-string v2, "AvidLoader: can not close Stream"

    invoke-static {v2, v1}, Lcom/integralads/avid/library/inmobi/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 66
    :catchall_0
    move-exception v1

    move-object v2, v0

    .line 67
    :goto_4
    if-eqz v2, :cond_3

    .line 68
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 72
    :cond_3
    throw v1

    .line 70
    :catch_5
    move-exception v1

    .line 71
    const-string v2, "AvidLoader: can not close Stream"

    invoke-static {v2, v1}, Lcom/integralads/avid/library/inmobi/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 66
    :catchall_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_4

    .line 62
    :catch_6
    move-exception v1

    goto :goto_3

    .line 60
    :catch_7
    move-exception v1

    move-object v1, v0

    goto :goto_2
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->listener:Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->listener:Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;->failedToLoadAvid()V

    .line 93
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DownloadAvidTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DownloadAvidTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->listener:Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->listener:Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {v0, p1}, Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;->onLoadAvid(Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->listener:Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;->failedToLoadAvid()V

    goto :goto_0
.end method

.method public setListener(Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/DownloadAvidTask;->listener:Lcom/integralads/avid/library/inmobi/DownloadAvidTask$DownloadAvidTaskListener;

    .line 35
    return-void
.end method
