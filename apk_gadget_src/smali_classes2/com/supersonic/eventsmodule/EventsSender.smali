.class public Lcom/supersonic/eventsmodule/EventsSender;
.super Landroid/os/AsyncTask;
.source "EventsSender.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final SERVER_REQUEST_ENCODING:Ljava/lang/String;

.field private final SERVER_REQUEST_METHOD:Ljava/lang/String;

.field private final SERVER_REQUEST_TIMEOUT:I

.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mResultListener:Lcom/supersonic/eventsmodule/IEventsSenderResultListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/supersonic/eventsmodule/EventsSender;->SERVER_REQUEST_TIMEOUT:I

    .line 20
    const-string v0, "POST"

    iput-object v0, p0, Lcom/supersonic/eventsmodule/EventsSender;->SERVER_REQUEST_METHOD:Ljava/lang/String;

    .line 21
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/supersonic/eventsmodule/EventsSender;->SERVER_REQUEST_ENCODING:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/supersonic/eventsmodule/IEventsSenderResultListener;)V
    .locals 1
    .param p1, "resultListener"    # Lcom/supersonic/eventsmodule/IEventsSenderResultListener;

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 19
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/supersonic/eventsmodule/EventsSender;->SERVER_REQUEST_TIMEOUT:I

    .line 20
    const-string v0, "POST"

    iput-object v0, p0, Lcom/supersonic/eventsmodule/EventsSender;->SERVER_REQUEST_METHOD:Ljava/lang/String;

    .line 21
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/supersonic/eventsmodule/EventsSender;->SERVER_REQUEST_ENCODING:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/supersonic/eventsmodule/EventsSender;->mResultListener:Lcom/supersonic/eventsmodule/IEventsSenderResultListener;

    .line 31
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/supersonic/eventsmodule/EventsSender;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "strings"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 44
    :try_start_0
    new-instance v3, Ljava/net/URL;

    const/4 v8, 0x1

    aget-object v8, p1, v8

    invoke-direct {v3, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    .local v3, "requestURL":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    invoke-static {v8}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 47
    .local v0, "conn":Ljava/net/HttpURLConnection;
    const/16 v8, 0x3a98

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 48
    const/16 v8, 0x3a98

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 49
    const-string v8, "POST"

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 50
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 51
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 53
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 55
    .local v2, "os":Ljava/io/OutputStream;
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    const-string v9, "UTF-8"

    invoke-direct {v8, v2, v9}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 57
    .local v5, "writer":Ljava/io/BufferedWriter;
    const/4 v8, 0x0

    aget-object v8, p1, v8

    invoke-virtual {v5, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 59
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 61
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 63
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 65
    .local v4, "responseCode":I
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 67
    const/16 v8, 0xc8

    if-ne v4, v8, :cond_0

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 69
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "requestURL":Ljava/net/URL;
    .end local v4    # "responseCode":I
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :goto_1
    return-object v6

    .restart local v0    # "conn":Ljava/net/HttpURLConnection;
    .restart local v2    # "os":Ljava/io/OutputStream;
    .restart local v3    # "requestURL":Ljava/net/URL;
    .restart local v4    # "responseCode":I
    .restart local v5    # "writer":Ljava/io/BufferedWriter;
    :cond_0
    move v6, v7

    .line 67
    goto :goto_0

    .line 68
    .end local v0    # "conn":Ljava/net/HttpURLConnection;
    .end local v2    # "os":Ljava/io/OutputStream;
    .end local v3    # "requestURL":Ljava/net/URL;
    .end local v4    # "responseCode":I
    .end local v5    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 69
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/eventsmodule/EventsSender;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "EventsSender#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/supersonic/eventsmodule/EventsSender;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "EventsSender#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/supersonic/eventsmodule/EventsSender;->mResultListener:Lcom/supersonic/eventsmodule/IEventsSenderResultListener;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/supersonic/eventsmodule/EventsSender;->mResultListener:Lcom/supersonic/eventsmodule/IEventsSenderResultListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/supersonic/eventsmodule/IEventsSenderResultListener;->onEventsSenderResult(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/supersonic/eventsmodule/EventsSender;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "EventsSender#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/supersonic/eventsmodule/EventsSender;->onPostExecute(Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "EventsSender#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
