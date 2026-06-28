.class public Lcom/cuebiq/cuebiqsdk/task/LogTask;
.super Landroid/os/AsyncTask;
.source "LogTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private final mContext:Landroid/content/Context;

.field private final mException:Ljava/lang/Throwable;

.field private final mMessage:Ljava/lang/String;

.field private final mPayload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "payload"    # Ljava/lang/String;
    .param p4, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mContext:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mMessage:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mException:Ljava/lang/Throwable;

    .line 39
    iput-object p3, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mPayload:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mMessage:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mException:Ljava/lang/Throwable;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mPayload:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "LogTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/cuebiq/cuebiqsdk/task/LogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "LogTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 44
    sget-object v2, Lcom/cuebiq/cuebiqsdk/BuildConfig;->SDK_VERSION_INT:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAlve()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 46
    new-instance v0, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;

    invoke-direct {v0}, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;-><init>()V

    .line 47
    .local v0, "log":Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mMessage:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->setMessage(Ljava/lang/String;)V

    .line 48
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mPayload:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->setPayload(Ljava/lang/String;)V

    .line 49
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mException:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mException:Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;->setStackTrace(Ljava/lang/String;)V

    .line 54
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/injection/Injection;->provideNetworkLayer()Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;

    move-result-object v1

    .line 55
    .local v1, "networkLayer":Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
    new-instance v2, Lcom/cuebiq/cuebiqsdk/api/LogRequest;

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/cuebiq/cuebiqsdk/task/LogTask;->mContext:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->retrieveAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lcom/cuebiq/cuebiqsdk/api/LogRequest;-><init>(Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;->callSync(Lcom/cuebiq/cuebiqsdk/api/CuebiqRequest;)Lokhttp3/Response;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "log":Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;
    .end local v1    # "networkLayer":Lcom/cuebiq/cuebiqsdk/model/manager/NetworkLayer;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 56
    .restart local v0    # "log":Lcom/cuebiq/cuebiqsdk/model/wrapper/LogAppBean;
    :catch_0
    move-exception v2

    goto :goto_0
.end method
