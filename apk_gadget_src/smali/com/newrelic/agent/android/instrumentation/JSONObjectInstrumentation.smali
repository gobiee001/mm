.class public Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;
.super Ljava/lang/Object;
.source "JSONObjectInstrumentation.java"


# static fields
.field private static final categoryParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "category"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/newrelic/agent/android/instrumentation/MetricCategory;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "JSON"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->categoryParams:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5
    .param p0, "json"    # Ljava/lang/String;
    .annotation build Lcom/newrelic/agent/android/instrumentation/TraceConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Failed to initialize JSONObject: json string is null."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 25
    :cond_0
    const/4 v2, 0x0

    :try_start_0
    const-string v3, "JSONObject#<init>"

    sget-object v4, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 26
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v1, "jsonObject":Lorg/json/JSONObject;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    return-object v1

    .line 28
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 29
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 30
    throw v0
.end method

.method public static toString(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "org.json.JSONObject"
    .end annotation

    .prologue
    .line 38
    const/4 v1, 0x0

    const-string v2, "JSONObject#toString"

    sget-object v3, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 39
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 42
    return-object v0
.end method

.method public static toString(Lorg/json/JSONObject;I)Ljava/lang/String;
    .locals 5
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "indentFactor"    # I
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "org.json.JSONObject"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 49
    const/4 v2, 0x0

    const-string v3, "JSONObject#toString"

    sget-object v4, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 52
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    return-object v1

    .line 54
    .end local v1    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 56
    throw v0
.end method
