.class public Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;
.super Ljava/lang/Object;
.source "JSONArrayInstrumentation.java"


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
    .line 16
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

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->categoryParams:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 4
    .param p0, "json"    # Ljava/lang/String;
    .annotation build Lcom/newrelic/agent/android/instrumentation/TraceConstructor;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "Failed to initialize JSONArray: json string is null."

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 28
    :cond_0
    :try_start_0
    const-string v2, "JSONArray#<init>"

    sget-object v3, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 29
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "jsonArray":Lorg/json/JSONArray;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    return-object v1

    .line 31
    .end local v1    # "jsonArray":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 33
    throw v0
.end method

.method public static toString(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 3
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "org.json.JSONArray"
    .end annotation

    .prologue
    .line 41
    const-string v1, "JSONArray#toString"

    sget-object v2, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 42
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 45
    return-object v0
.end method

.method public static toString(Lorg/json/JSONArray;I)Ljava/lang/String;
    .locals 4
    .param p0, "jsonArray"    # Lorg/json/JSONArray;
    .param p1, "indentFactor"    # I
    .annotation build Lcom/newrelic/agent/android/instrumentation/ReplaceCallSite;
        scope = "org.json.JSONArray"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    :try_start_0
    const-string v2, "JSONArray#toString"

    sget-object v3, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->categoryParams:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 54
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, "jsonString":Ljava/lang/String;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    return-object v1

    .line 56
    .end local v1    # "jsonString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Lorg/json/JSONException;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 58
    throw v0
.end method
