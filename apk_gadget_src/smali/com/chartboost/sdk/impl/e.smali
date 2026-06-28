.class public Lcom/chartboost/sdk/impl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ad$a;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/c;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/chartboost/sdk/impl/e;->a:Lcom/chartboost/sdk/impl/c;

    .line 17
    iput-object p2, p0, Lcom/chartboost/sdk/impl/e;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ad;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 3

    .prologue
    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/a;->h:Z

    if-eqz v0, :cond_0

    .line 32
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->a:Lcom/chartboost/sdk/impl/c;

    monitor-enter v1

    .line 33
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/c;->b(Ljava/lang/String;)V

    .line 34
    monitor-exit v1

    .line 36
    :cond_0
    return-void

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Lcom/chartboost/sdk/impl/ad;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 22
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/c;->e:Lcom/chartboost/sdk/impl/a;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/a;->h:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->t:Z

    if-eqz v0, :cond_1

    .line 23
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->a:Lcom/chartboost/sdk/impl/c;

    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->a:Lcom/chartboost/sdk/impl/c;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/c;->b(Ljava/lang/String;)V

    .line 25
    monitor-exit v1

    .line 27
    :cond_1
    return-void

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
