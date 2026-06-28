.class Lcom/androidquery/auth/GoogleHandle$Task;
.super Landroid/os/AsyncTask;
.source "GoogleHandle.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/auth/GoogleHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic this$0:Lcom/androidquery/auth/GoogleHandle;


# direct methods
.method private constructor <init>(Lcom/androidquery/auth/GoogleHandle;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/androidquery/auth/GoogleHandle;Lcom/androidquery/auth/GoogleHandle$Task;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;-><init>(Lcom/androidquery/auth/GoogleHandle;)V

    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 162
    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {v0}, Lcom/androidquery/auth/GoogleHandle;->access$0(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {v1}, Lcom/androidquery/auth/GoogleHandle;->access$1(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/Account;

    move-result-object v1

    iget-object v2, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {v2}, Lcom/androidquery/auth/GoogleHandle;->access$2(Lcom/androidquery/auth/GoogleHandle;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {v4}, Lcom/androidquery/auth/GoogleHandle;->access$3(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 166
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 175
    :goto_0
    return-object v0

    .line 167
    :catch_0
    move-exception v0

    move-object v0, v7

    goto :goto_0

    .line 168
    :catch_1
    move-exception v0

    .line 169
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_0

    .line 170
    :catch_2
    move-exception v0

    .line 171
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    move-object v0, v7

    goto :goto_0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "GoogleHandle$Task#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;->doInBackground([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GoogleHandle$Task#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 182
    if-eqz p1, :cond_0

    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    const-string v1, "authtoken"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/androidquery/auth/GoogleHandle;->access$4(Lcom/androidquery/auth/GoogleHandle;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {v1}, Lcom/androidquery/auth/GoogleHandle;->access$3(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/androidquery/auth/GoogleHandle;->success(Landroid/content/Context;)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {v1}, Lcom/androidquery/auth/GoogleHandle;->access$3(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v1

    const/16 v2, -0x66

    const-string v3, "rejected"

    invoke-virtual {v0, v1, v2, v3}, Lcom/androidquery/auth/GoogleHandle;->failure(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle$Task;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "GoogleHandle$Task#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1
    :goto_0
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;->onPostExecute(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "GoogleHandle$Task#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
