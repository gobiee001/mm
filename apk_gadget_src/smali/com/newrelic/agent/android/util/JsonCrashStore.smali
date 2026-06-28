.class public Lcom/newrelic/agent/android/util/JsonCrashStore;
.super Ljava/lang/Object;
.source "JsonCrashStore.java"

# interfaces
.implements Lcom/newrelic/agent/android/crashes/CrashStore;


# static fields
.field private static final STORE_FILE:Ljava/lang/String; = "NRCrashStore"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/util/JsonCrashStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .prologue
    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    const-string v3, "NRCrashStore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 76
    .local v1, "store":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 78
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 79
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 80
    monitor-exit p0

    .line 81
    return-void

    .line 80
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "store":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public count()I
    .locals 5

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "count":I
    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    const-string v3, "NRCrashStore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 67
    .local v1, "store":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    .line 68
    monitor-exit p0

    .line 69
    return v0

    .line 68
    .end local v1    # "store":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public delete(Lcom/newrelic/agent/android/harvest/crash/Crash;)V
    .locals 5
    .param p1, "crash"    # Lcom/newrelic/agent/android/harvest/crash/Crash;

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    const-string v3, "NRCrashStore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, "store":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 89
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 91
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "store":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public fetchAll()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/crash/Crash;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v5, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    const-string v6, "NRCrashStore"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 42
    .local v3, "store":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v1, "crashes":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/harvest/crash/Crash;>;"
    monitor-enter p0

    .line 46
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 47
    .local v0, "crashStrings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 50
    .local v4, "string":Ljava/lang/Object;
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 52
    :try_start_1
    check-cast v4, Ljava/lang/String;

    .end local v4    # "string":Ljava/lang/Object;
    invoke-static {v4}, Lcom/newrelic/agent/android/harvest/crash/Crash;->crashFromJsonString(Ljava/lang/String;)Lcom/newrelic/agent/android/harvest/crash/Crash;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/newrelic/agent/android/util/JsonCrashStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "Exception encountered while deserializing crash"

    invoke-interface {v6, v7, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 47
    .end local v0    # "crashStrings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 59
    .restart local v0    # "crashStrings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_1
    return-object v1
.end method

.method public store(Lcom/newrelic/agent/android/harvest/crash/Crash;)V
    .locals 6
    .param p1, "crash"    # Lcom/newrelic/agent/android/harvest/crash/Crash;

    .prologue
    .line 29
    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v3, p0, Lcom/newrelic/agent/android/util/JsonCrashStore;->context:Landroid/content/Context;

    const-string v4, "NRCrashStore"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 31
    .local v2, "store":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 32
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/crash/Crash;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v1

    .line 33
    .local v1, "jsonObj":Lcom/newrelic/com/google/gson/JsonObject;
    const-string v3, "uploadCount"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getUploadCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Number;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 34
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/crash/Crash;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/newrelic/com/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 36
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "jsonObj":Lcom/newrelic/com/google/gson/JsonObject;
    .end local v2    # "store":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
