.class public Lcom/integralads/avid/library/mopub/DownloadAvidTask;
.super Landroid/os/AsyncTask;
.source "DownloadAvidTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;
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

.field private listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;


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
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DownloadAvidTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

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
    .locals 12
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 39
    aget-object v7, p1, v10

    .line 40
    .local v7, "urlString":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 41
    const-string v10, "AvidLoader: URL is empty"

    invoke-static {v10}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-object v9

    .line 45
    :cond_1
    const/4 v3, 0x0

    .line 47
    .local v3, "inputStream":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 48
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    invoke-static {v10}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v6

    .line 49
    .local v6, "urlConnection":Ljava/net/URLConnection;
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 50
    new-instance v4, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v8, Ljava/io/StringWriter;

    invoke-direct {v8}, Ljava/io/StringWriter;-><init>()V

    .line 54
    .local v8, "writer":Ljava/io/Writer;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 55
    .local v0, "buf":[B
    :goto_1
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "data":I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_2

    .line 56
    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v10, v0, v11, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v8, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 59
    .end local v0    # "buf":[B
    .end local v1    # "data":I
    .end local v8    # "writer":Ljava/io/Writer;
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 60
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlConnection":Ljava/net/URLConnection;
    .local v2, "e":Ljava/net/MalformedURLException;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :goto_2
    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AvidLoader: something is wrong with the URL \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    if-eqz v3, :cond_0

    .line 68
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 70
    :catch_1
    move-exception v2

    .line 71
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "AvidLoader: can not close Stream"

    invoke-static {v10, v2}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 58
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "data":I
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "urlConnection":Ljava/net/URLConnection;
    .restart local v8    # "writer":Ljava/io/Writer;
    :cond_2
    :try_start_4
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v10

    .line 67
    if-eqz v4, :cond_3

    .line 68
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    move-object v9, v10

    .line 72
    goto :goto_0

    .line 70
    :catch_2
    move-exception v2

    .line 71
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "AvidLoader: can not close Stream"

    invoke-static {v10, v2}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 62
    .end local v0    # "buf":[B
    .end local v1    # "data":I
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlConnection":Ljava/net/URLConnection;
    .end local v8    # "writer":Ljava/io/Writer;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    :catch_3
    move-exception v2

    .line 63
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AvidLoader: IO error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 67
    if-eqz v3, :cond_0

    .line 68
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 70
    :catch_4
    move-exception v2

    .line 71
    const-string v10, "AvidLoader: can not close Stream"

    invoke-static {v10, v2}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 66
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 67
    :goto_4
    if-eqz v3, :cond_4

    .line 68
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 72
    :cond_4
    throw v10

    .line 70
    :catch_5
    move-exception v2

    .line 71
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v10, "AvidLoader: can not close Stream"

    invoke-static {v10, v2}, Lcom/integralads/avid/library/mopub/utils/AvidLogs;->e(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 66
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "urlConnection":Ljava/net/URLConnection;
    :catchall_1
    move-exception v10

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_4

    .line 62
    .end local v3    # "inputStream":Ljava/io/InputStream;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    :catch_6
    move-exception v2

    move-object v3, v4

    .end local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v3    # "inputStream":Ljava/io/InputStream;
    goto :goto_3

    .line 59
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlConnection":Ljava/net/URLConnection;
    :catch_7
    move-exception v2

    goto :goto_2
.end method

.method public getListener()Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {v0}, Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;->failedToLoadAvid()V

    .line 93
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DownloadAvidTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->onPostExecute(Ljava/lang/String;)V

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
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {v0, p1}, Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;->onLoadAvid(Ljava/lang/String;)V

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    invoke-interface {v0}, Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;->failedToLoadAvid()V

    goto :goto_0
.end method

.method public setListener(Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/DownloadAvidTask;->listener:Lcom/integralads/avid/library/mopub/DownloadAvidTask$DownloadAvidTaskListener;

    .line 35
    return-void
.end method
