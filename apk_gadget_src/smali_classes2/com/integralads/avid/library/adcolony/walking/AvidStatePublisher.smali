.class public Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;


# instance fields
.field private final a:Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;

.field private b:Lorg/json/JSONObject;

.field private final c:Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;)V
    .locals 0
    .param p1, "adSessionRegistry"    # Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;
    .param p2, "taskQueue"    # Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->a:Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;

    .line 25
    iput-object p2, p0, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->c:Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;

    .line 26
    return-void
.end method


# virtual methods
.method public cleanupCache()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->c:Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;

    new-instance v1, Lcom/integralads/avid/library/adcolony/walking/async/AvidCleanupAsyncTask;

    invoke-direct {v1, p0}, Lcom/integralads/avid/library/adcolony/walking/async/AvidCleanupAsyncTask;-><init>(Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;)V

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;->submitTask(Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask;)V

    .line 38
    return-void
.end method

.method public getPreviousState()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public publishEmptyState(Lorg/json/JSONObject;Ljava/util/HashSet;D)V
    .locals 9
    .param p1, "emptyState"    # Lorg/json/JSONObject;
    .param p3, "timestamp"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "sessionIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->c:Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;

    new-instance v1, Lcom/integralads/avid/library/adcolony/walking/async/AvidEmptyPublishAsyncTask;

    iget-object v3, p0, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->a:Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/integralads/avid/library/adcolony/walking/async/AvidEmptyPublishAsyncTask;-><init>(Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;->submitTask(Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask;)V

    .line 34
    return-void
.end method

.method public publishState(Lorg/json/JSONObject;Ljava/util/HashSet;D)V
    .locals 9
    .param p1, "state"    # Lorg/json/JSONObject;
    .param p3, "timestamp"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;D)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p2, "sessionIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->c:Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;

    new-instance v1, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;

    iget-object v3, p0, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->a:Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;-><init>(Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTaskQueue;->submitTask(Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask;)V

    .line 30
    return-void
.end method

.method public setPreviousState(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "previousState"    # Lorg/json/JSONObject;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/integralads/avid/library/adcolony/walking/AvidStatePublisher;->b:Lorg/json/JSONObject;

    .line 48
    return-void
.end method
