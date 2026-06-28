.class public abstract Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;
.super Landroid/os/AsyncTask;
.source "AvidAsyncTask.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;,
        Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private listener:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;

.field protected final stateProvider:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;)V
    .locals 0
    .param p1, "stateProvider"    # Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->stateProvider:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;

    .line 27
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getListener()Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->listener:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;

    return-object v0
.end method

.method public getStateProvider()Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->stateProvider:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$StateProvider;

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "AvidAsyncTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :goto_0
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->onPostExecute(Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "AvidAsyncTask#onPostExecute"

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
    .line 51
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->listener:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->listener:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;

    invoke-interface {v0, p0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;->onTaskCompleted(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;)V

    .line 54
    :cond_0
    return-void
.end method

.method public setListener(Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->listener:Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask$AvidAsyncTaskListener;

    .line 31
    return-void
.end method

.method public start(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3
    .param p1, "executor"    # Ljava/util/concurrent/ThreadPoolExecutor;

    .prologue
    const/4 v2, 0x0

    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    .line 43
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/integralads/avid/library/mopub/walking/async/AvidAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
