.class Lcom/mopub/common/CacheService$DiskLruCacheGetTask;
.super Landroid/os/AsyncTask;
.source "CacheService.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/CacheService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiskLruCacheGetTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private final mDiskLruCacheGetListener:Lcom/mopub/common/CacheService$DiskLruCacheGetListener;

.field private final mKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mopub/common/CacheService$DiskLruCacheGetListener;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "diskLruCacheGetListener"    # Lcom/mopub/common/CacheService$DiskLruCacheGetListener;

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 197
    iput-object p2, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->mDiskLruCacheGetListener:Lcom/mopub/common/CacheService$DiskLruCacheGetListener;

    .line 198
    iput-object p1, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->mKey:Ljava/lang/String;

    .line 199
    return-void
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "CacheService$DiskLruCacheGetTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->doInBackground([Ljava/lang/Void;)[B

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "CacheService$DiskLruCacheGetTask#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[B
    .locals 1
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->mKey:Ljava/lang/String;

    invoke-static {v0}, Lcom/mopub/common/CacheService;->getFromDiskCache(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->mDiskLruCacheGetListener:Lcom/mopub/common/CacheService$DiskLruCacheGetListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->mDiskLruCacheGetListener:Lcom/mopub/common/CacheService$DiskLruCacheGetListener;

    iget-object v1, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->mKey:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/mopub/common/CacheService$DiskLruCacheGetListener;->onComplete(Ljava/lang/String;[B)V

    .line 223
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "CacheService$DiskLruCacheGetTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    :goto_0
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->onPostExecute([B)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "CacheService$DiskLruCacheGetTask#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onPostExecute([B)V
    .locals 2
    .param p1, "bytes"    # [B

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->onCancelled()V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->mDiskLruCacheGetListener:Lcom/mopub/common/CacheService$DiskLruCacheGetListener;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->mDiskLruCacheGetListener:Lcom/mopub/common/CacheService$DiskLruCacheGetListener;

    iget-object v1, p0, Lcom/mopub/common/CacheService$DiskLruCacheGetTask;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/mopub/common/CacheService$DiskLruCacheGetListener;->onComplete(Ljava/lang/String;[B)V

    goto :goto_0
.end method
