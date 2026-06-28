.class Lcom/adcolony/sdk/bb$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bb;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bb;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bb;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/adcolony/sdk/bb$8;->a:Lcom/adcolony/sdk/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 545
    const-string v0, ""

    .line 546
    iget-object v1, p0, Lcom/adcolony/sdk/bb$8;->a:Lcom/adcolony/sdk/bb;

    invoke-static {v1}, Lcom/adcolony/sdk/bb;->f(Lcom/adcolony/sdk/bb;)Lorg/json/JSONArray;

    move-result-object v1

    monitor-enter v1

    .line 547
    :try_start_0
    iget-object v2, p0, Lcom/adcolony/sdk/bb$8;->a:Lcom/adcolony/sdk/bb;

    invoke-static {v2}, Lcom/adcolony/sdk/bb;->f(Lcom/adcolony/sdk/bb;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 548
    iget-object v2, p0, Lcom/adcolony/sdk/bb$8;->a:Lcom/adcolony/sdk/bb;

    invoke-static {v2}, Lcom/adcolony/sdk/bb;->g(Lcom/adcolony/sdk/bb;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 549
    iget-object v0, p0, Lcom/adcolony/sdk/bb$8;->a:Lcom/adcolony/sdk/bb;

    invoke-static {v0}, Lcom/adcolony/sdk/bb;->f(Lcom/adcolony/sdk/bb;)Lorg/json/JSONArray;

    move-result-object v0

    instance-of v2, v0, Lorg/json/JSONArray;

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/adcolony/sdk/bb$8;->a:Lcom/adcolony/sdk/bb;

    invoke-static {}, Lcom/adcolony/sdk/y;->b()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/adcolony/sdk/bb;->a(Lcom/adcolony/sdk/bb;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 553
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    iget-object v1, p0, Lcom/adcolony/sdk/bb$8;->a:Lcom/adcolony/sdk/bb;

    invoke-static {v1}, Lcom/adcolony/sdk/bb;->g(Lcom/adcolony/sdk/bb;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 555
    iget-object v1, p0, Lcom/adcolony/sdk/bb$8;->a:Lcom/adcolony/sdk/bb;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NativeLayer.dispatch_messages(ADC3_update("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "));"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/bb;->a(Ljava/lang/String;)V

    .line 557
    :cond_2
    return-void

    .line 549
    :cond_3
    :try_start_1
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 553
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
