.class Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;
.super Landroid/os/AsyncTask;
.source "DA2Activity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsomniacs/da2/DA2Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnlineCheckTask"
.end annotation

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


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appsomniacs/da2/DA2Activity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/appsomniacs/da2/DA2Activity$1;

    .prologue
    .line 246
    invoke-direct {p0}, Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;-><init>()V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "DA2Activity$OnlineCheckTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/appsomniacs/da2/DA2Activity$OnlineCheckTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "DA2Activity$OnlineCheckTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 250
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    :try_start_0
    const-string v0, "google.com"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->access$200(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->access$102(Z)Z

    .line 253
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string v0, "appsomniacs.azurewebsites.net"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->access$200(Ljava/lang/String;I)Z

    move-result v0

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->access$102(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 263
    :cond_1
    return-object v2

    .line 257
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/appsomniacs/da2/DA2Activity;->access$000()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
