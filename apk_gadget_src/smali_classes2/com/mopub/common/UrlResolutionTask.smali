.class public Lcom/mopub/common/UrlResolutionTask;
.super Landroid/os/AsyncTask;
.source "UrlResolutionTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/mopub/common/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;
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

.field private final mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;


# direct methods
.method constructor <init>(Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    .line 42
    return-void
.end method

.method private getRedirectLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    .local v4, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 89
    .local v2, "httpUrlConnection":Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 90
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 92
    invoke-static {p1, v2}, Lcom/mopub/common/UrlResolutionTask;->resolveRedirectLocation(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 94
    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 96
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_0

    .line 98
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 92
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_1
    return-object v5

    .line 99
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 100
    .local v1, "e":Ljava/io/IOException;
    const-string v6, "IOException when closing httpUrlConnection. Ignoring."

    invoke-static {v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    if-eqz v2, :cond_3

    .line 95
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 96
    .restart local v3    # "is":Ljava/io/InputStream;
    if-eqz v3, :cond_2

    .line 98
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 104
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_3
    throw v5

    .line 99
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 100
    .restart local v1    # "e":Ljava/io/IOException;
    const-string v6, "IOException when closing httpUrlConnection. Ignoring."

    invoke-static {v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getResolvedUrl(Ljava/lang/String;Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V
    .locals 4
    .param p0, "urlString"    # Ljava/lang/String;
    .param p1, "listener"    # Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    .prologue
    .line 31
    new-instance v1, Lcom/mopub/common/UrlResolutionTask;

    invoke-direct {v1, p1}, Lcom/mopub/common/UrlResolutionTask;-><init>(Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;)V

    .line 34
    .local v1, "urlResolutionTask":Lcom/mopub/common/UrlResolutionTask;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Failed to resolve url"

    invoke-interface {p1, v2, v0}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static resolveRedirectLocation(Ljava/lang/String;Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 7
    .param p0, "baseUrl"    # Ljava/lang/String;
    .param p1, "httpUrlConnection"    # Ljava/net/HttpURLConnection;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "baseUri":Ljava/net/URI;
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 114
    .local v3, "responseCode":I
    const-string v5, "Location"

    invoke-virtual {p1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "redirectUrl":Ljava/lang/String;
    const/4 v4, 0x0

    .line 117
    .local v4, "result":Ljava/lang/String;
    const/16 v5, 0x12c

    if-lt v3, v5, :cond_0

    const/16 v5, 0x190

    if-ge v3, v5, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 128
    :cond_0
    return-object v4

    .line 122
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/net/URISyntaxException;

    const-string v6, "Unable to parse invalid URL"

    invoke-direct {v5, v2, v6}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mopub/common/UrlResolutionTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "UrlResolutionTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/common/UrlResolutionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UrlResolutionTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "urls"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 47
    if-eqz p1, :cond_0

    array-length v5, p1

    if-nez v5, :cond_2

    :cond_0
    move-object v1, v4

    .line 79
    :cond_1
    :goto_0
    return-object v1

    .line 51
    :cond_2
    const/4 v2, 0x0

    .line 53
    .local v2, "previousUrl":Ljava/lang/String;
    const/4 v5, 0x0

    :try_start_0
    aget-object v1, p1, v5

    .line 55
    .local v1, "locationUrl":Ljava/lang/String;
    const/4 v3, 0x0

    .line 56
    .local v3, "redirectCount":I
    :goto_1
    if-eqz v1, :cond_3

    const/16 v5, 0xa

    if-ge v3, v5, :cond_3

    .line 59
    sget-object v5, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 64
    sget-object v5, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mopub/common/UrlAction;->shouldTryHandlingUrl(Landroid/net/Uri;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 68
    move-object v2, v1

    .line 69
    invoke-direct {p0, v1}, Lcom/mopub/common/UrlResolutionTask;->getRedirectLocation(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    .end local v1    # "locationUrl":Ljava/lang/String;
    .end local v3    # "redirectCount":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v4

    .line 74
    goto :goto_0

    .line 75
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/net/URISyntaxException;
    move-object v1, v4

    .line 76
    goto :goto_0

    .end local v0    # "e":Ljava/net/URISyntaxException;
    .restart local v1    # "locationUrl":Ljava/lang/String;
    .restart local v3    # "redirectCount":I
    :cond_3
    move-object v1, v2

    .line 79
    goto :goto_0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 144
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 146
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    const-string v1, "Task for resolving url was cancelled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onFailure(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 147
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "UrlResolutionTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/common/UrlResolutionTask;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "UrlResolutionTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "resolvedUrl"    # Ljava/lang/String;

    .prologue
    .line 133
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 135
    invoke-virtual {p0}, Lcom/mopub/common/UrlResolutionTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/common/UrlResolutionTask;->onCancelled()V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/mopub/common/UrlResolutionTask;->mListener:Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;

    invoke-interface {v0, p1}, Lcom/mopub/common/UrlResolutionTask$UrlResolutionListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method
