.class Lcom/adcolony/sdk/n$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adcolony/sdk/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field a:Lcom/adcolony/sdk/af;

.field b:Lcom/adcolony/sdk/n;

.field c:Z

.field final synthetic d:Lcom/adcolony/sdk/n;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/n;Lcom/adcolony/sdk/af;Lcom/adcolony/sdk/n;Z)V
    .locals 0

    .prologue
    .line 449
    iput-object p1, p0, Lcom/adcolony/sdk/n$a;->d:Lcom/adcolony/sdk/n;

    .line 450
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 451
    iput-object p2, p0, Lcom/adcolony/sdk/n$a;->a:Lcom/adcolony/sdk/af;

    .line 452
    iput-object p3, p0, Lcom/adcolony/sdk/n$a;->b:Lcom/adcolony/sdk/n;

    .line 453
    iput-boolean p4, p0, Lcom/adcolony/sdk/n$a;->c:Z

    .line 454
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/adcolony/sdk/n$a;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Void;)Lorg/json/JSONObject;
    .locals 2

    .prologue
    .line 458
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 459
    const/4 v0, 0x0

    .line 462
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/n$a;->d:Lcom/adcolony/sdk/n;

    iget-object v1, p0, Lcom/adcolony/sdk/n$a;->b:Lcom/adcolony/sdk/n;

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/n;->a(Lcom/adcolony/sdk/n;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 467
    iget-boolean v0, p0, Lcom/adcolony/sdk/n$a;->c:Z

    if-eqz v0, :cond_0

    .line 468
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v1, "Device.update_info"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 472
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/n$a;->a:Lcom/adcolony/sdk/af;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/n$a;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "n$a#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/n$a;->a([Ljava/lang/Void;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "n$a#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/n$a;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "n$a#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/adcolony/sdk/n$a;->a(Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "n$a#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
