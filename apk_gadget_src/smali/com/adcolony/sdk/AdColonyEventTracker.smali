.class public Lcom/adcolony/sdk/AdColonyEventTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/adcolony/sdk/AdColonyEventTracker;->a:Ljava/util/List;

    .line 19
    return-void
.end method

.method static a()V
    .locals 3

    .prologue
    .line 45
    invoke-static {}, Lcom/adcolony/sdk/l;->C()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    sget-object v1, Lcom/adcolony/sdk/AdColonyEventTracker;->a:Ljava/util/List;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/AdColonyEventTracker;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 48
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/adcolony/sdk/ADCNative;->EventTracker__logEvent(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 51
    :cond_0
    :try_start_1
    sget-object v0, Lcom/adcolony/sdk/AdColonyEventTracker;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 52
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :cond_1
    return-void
.end method

.method static a(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 32
    sget-object v1, Lcom/adcolony/sdk/AdColonyEventTracker;->a:Ljava/util/List;

    monitor-enter v1

    .line 33
    const/16 v0, 0xc8

    :try_start_0
    sget-object v2, Lcom/adcolony/sdk/AdColonyEventTracker;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v0, v2, :cond_0

    .line 34
    sget-object v0, Lcom/adcolony/sdk/AdColonyEventTracker;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    monitor-exit v1

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static b()Z
    .locals 2

    .prologue
    .line 61
    sget-object v1, Lcom/adcolony/sdk/AdColonyEventTracker;->a:Ljava/util/List;

    monitor-enter v1

    .line 62
    :try_start_0
    sget-object v0, Lcom/adcolony/sdk/AdColonyEventTracker;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
