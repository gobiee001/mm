.class final Lcom/inmobi/commons/core/configs/b$a;
.super Landroid/os/Handler;
.source "ConfigComponent.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->a:Ljava/util/List;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    .line 215
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    .line 220
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 312
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 313
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/a;

    .line 314
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/h;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/configs/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 316
    if-nez v1, :cond_0

    .line 317
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 319
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v3, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/h;

    move-result-object v4

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/inmobi/commons/core/configs/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 322
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 287
    const/4 v2, 0x0

    .line 289
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/h;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/inmobi/commons/core/configs/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    .line 290
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/h;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/inmobi/commons/core/configs/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 294
    :goto_0
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    .line 295
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 298
    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessage(I)Z

    .line 362
    return-void
.end method

.method public final a(Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;)V
    .locals 6

    .prologue
    .line 326
    new-instance v1, Lcom/inmobi/commons/core/configs/c;

    invoke-direct {v1}, Lcom/inmobi/commons/core/configs/c;-><init>()V

    .line 328
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 5172
    iget-object v0, p1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a:Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse$ConfigResponseStatus;

    .line 329
    sget-object v2, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse$ConfigResponseStatus;->NOT_MODIFIED:Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse$ConfigResponseStatus;

    if-ne v0, v2, :cond_0

    .line 330
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Config not modified status from server:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6168
    iget-object v2, p1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->b:Lcom/inmobi/commons/core/configs/a;

    .line 330
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7168
    iget-object v0, p1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->b:Lcom/inmobi/commons/core/configs/a;

    .line 331
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/inmobi/commons/core/configs/c;->a(Ljava/lang/String;J)V

    .line 357
    :goto_0
    return-void

    .line 8168
    :cond_0
    iget-object v2, p1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->b:Lcom/inmobi/commons/core/configs/a;

    .line 9029
    :try_start_0
    iget-object v3, v1, Lcom/inmobi/commons/core/configs/c;->a:Lcom/inmobi/commons/core/c/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_config"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    instance-of v5, v0, Lorg/json/JSONObject;

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9030
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/inmobi/commons/core/configs/c;->a(Ljava/lang/String;J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    .line 338
    :goto_2
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 339
    const-string v1, "configName"

    .line 9168
    iget-object v2, p1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->b:Lcom/inmobi/commons/core/configs/a;

    .line 339
    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v1, "latency"

    const-string v2, "2147483647"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v1, "root"

    const-string v2, "ConfigFetched"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 348
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Config cached successfully:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10168
    iget-object v1, p1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->b:Lcom/inmobi/commons/core/configs/a;

    .line 348
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Config cached successfully:"

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11168
    iget-object v0, p1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->b:Lcom/inmobi/commons/core/configs/a;

    .line 349
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12168
    iget-object v0, p1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->b:Lcom/inmobi/commons/core/configs/a;

    .line 350
    invoke-static {v0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 353
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 9029
    :cond_1
    :try_start_3
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_1

    .line 342
    :catch_1
    move-exception v0

    .line 343
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in submitting telemetry event : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 349
    :cond_2
    :try_start_4
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v0

    goto :goto_4

    .line 355
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Config fetching failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13168
    iget-object v1, p1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->b:Lcom/inmobi/commons/core/configs/a;

    .line 355
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 13176
    iget-object v1, p1, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->c:Lcom/inmobi/commons/core/configs/d;

    .line 14033
    iget v1, v1, Lcom/inmobi/commons/core/configs/d;->a:I

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    .line 224
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/commons/core/configs/a;

    .line 227
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fetch requested for config:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". IsAlreadyScheduled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/inmobi/commons/core/configs/b$a;->a(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/commons/core/configs/b$a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 230
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-virtual {p0, v3}, Lcom/inmobi/commons/core/configs/b$a;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    invoke-virtual {p0, v3}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 236
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Config fetching already in progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 241
    :pswitch_1
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/h;

    move-result-object v0

    .line 1177
    iget v0, v0, Lcom/inmobi/commons/core/configs/h;->c:I

    .line 241
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/configs/b$a;->a(Ljava/util/List;)V

    .line 246
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 248
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    .line 250
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 257
    :pswitch_3
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 258
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 261
    :goto_1
    if-eqz v1, :cond_3

    .line 262
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    .line 263
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    .line 1302
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/h;

    move-result-object v0

    .line 2173
    iget v5, v0, Lcom/inmobi/commons/core/configs/h;->b:I

    .line 1303
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/h;

    move-result-object v0

    .line 3169
    iget v4, v0, Lcom/inmobi/commons/core/configs/h;->a:I

    .line 1304
    new-instance v2, Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/h;

    move-result-object v0

    .line 4052
    iget-object v0, v0, Lcom/inmobi/commons/core/configs/a;->q:Lcom/inmobi/commons/core/configs/a$a;

    .line 4096
    iget-object v0, v0, Lcom/inmobi/commons/core/configs/a$a;->a:Ljava/util/HashMap;

    .line 1304
    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 1305
    new-instance v0, Lcom/inmobi/commons/core/configs/f;

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/core/configs/f;-><init>(Ljava/util/Map;Lcom/inmobi/commons/core/utilities/uid/d;Ljava/lang/String;II)V

    .line 1307
    new-instance v1, Lcom/inmobi/commons/core/configs/e;

    invoke-direct {v1, p0, v0}, Lcom/inmobi/commons/core/configs/e;-><init>(Lcom/inmobi/commons/core/configs/e$a;Lcom/inmobi/commons/core/configs/f;)V

    .line 1308
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 266
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    .line 267
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 4278
    :pswitch_4
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4279
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    .line 4280
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4281
    invoke-virtual {p0, v2}, Lcom/inmobi/commons/core/configs/b$a;->removeMessages(I)V

    .line 4282
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
