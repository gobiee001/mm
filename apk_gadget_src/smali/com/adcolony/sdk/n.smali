.class Lcom/adcolony/sdk/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adcolony/sdk/n$a;
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Z

.field c:Z

.field d:Z

.field e:Lorg/json/JSONObject;

.field f:I

.field g:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Lorg/json/JSONArray;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/n;->a:Ljava/lang/String;

    .line 41
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/n;->e:Lorg/json/JSONObject;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/adcolony/sdk/n;->f:I

    .line 48
    const-string v0, "android"

    iput-object v0, p0, Lcom/adcolony/sdk/n;->i:Ljava/lang/String;

    .line 49
    const-string v0, "android_native"

    iput-object v0, p0, Lcom/adcolony/sdk/n;->j:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/n;->g:Ljava/lang/String;

    .line 62
    invoke-static {}, Lcom/adcolony/sdk/y;->b()Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/n;->k:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method A()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/adcolony/sdk/n;->k:Lorg/json/JSONArray;

    return-object v0
.end method

.method B()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 366
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    :goto_0
    return v0

    .line 370
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 374
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 372
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method C()I
    .locals 2

    .prologue
    .line 384
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    .line 387
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 388
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 389
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0
.end method

.method D()Ljava/lang/String;
    .locals 1

    .prologue
    .line 398
    const-string v0, "3.3.0"

    return-object v0
.end method

.method E()Z
    .locals 7

    .prologue
    const/16 v6, 0xe

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 405
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v2

    if-nez v2, :cond_1

    .line 437
    :cond_0
    :goto_0
    return v0

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/adcolony/sdk/n;->B()I

    move-result v2

    .line 411
    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 425
    :pswitch_0
    iget v3, p0, Lcom/adcolony/sdk/n;->f:I

    if-ne v3, v1, :cond_0

    .line 426
    sget-object v3, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v4, "Sending device info update"

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 427
    iput v2, p0, Lcom/adcolony/sdk/n;->f:I

    .line 428
    invoke-virtual {p0}, Lcom/adcolony/sdk/n;->s()I

    move-result v2

    if-ge v2, v6, :cond_3

    .line 429
    new-instance v2, Lcom/adcolony/sdk/n$a;

    invoke-direct {v2, p0, v5, p0, v1}, Lcom/adcolony/sdk/n$a;-><init>(Lcom/adcolony/sdk/n;Lcom/adcolony/sdk/af;Lcom/adcolony/sdk/n;Z)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/n$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_1
    move v0, v1

    .line 433
    goto :goto_0

    .line 413
    :pswitch_1
    iget v3, p0, Lcom/adcolony/sdk/n;->f:I

    if-nez v3, :cond_0

    .line 414
    sget-object v3, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v4, "Sending device info update"

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 415
    iput v2, p0, Lcom/adcolony/sdk/n;->f:I

    .line 416
    invoke-virtual {p0}, Lcom/adcolony/sdk/n;->s()I

    move-result v2

    if-ge v2, v6, :cond_2

    .line 417
    new-instance v2, Lcom/adcolony/sdk/n$a;

    invoke-direct {v2, p0, v5, p0, v1}, Lcom/adcolony/sdk/n$a;-><init>(Lcom/adcolony/sdk/n;Lcom/adcolony/sdk/af;Lcom/adcolony/sdk/n;Z)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/n$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_2
    move v0, v1

    .line 421
    goto :goto_0

    .line 419
    :cond_2
    new-instance v2, Lcom/adcolony/sdk/n$a;

    invoke-direct {v2, p0, v5, p0, v1}, Lcom/adcolony/sdk/n$a;-><init>(Lcom/adcolony/sdk/n;Lcom/adcolony/sdk/af;Lcom/adcolony/sdk/n;Z)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v0}, Lcom/adcolony/sdk/n$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 431
    :cond_3
    new-instance v2, Lcom/adcolony/sdk/n$a;

    invoke-direct {v2, p0, v5, p0, v1}, Lcom/adcolony/sdk/n$a;-><init>(Lcom/adcolony/sdk/n;Lcom/adcolony/sdk/af;Lcom/adcolony/sdk/n;Z)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v0}, Lcom/adcolony/sdk/n$a;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 411
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Landroid/content/Context;)D
    .locals 6

    .prologue
    const/4 v5, -0x1

    const-wide/16 v0, 0x0

    .line 274
    if-nez p1, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-wide v0

    .line 278
    :cond_1
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 279
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 281
    if-eqz v2, :cond_0

    .line 285
    const-string v3, "level"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 286
    const-string v4, "scale"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 288
    if-ltz v3, :cond_0

    if-ltz v2, :cond_0

    .line 291
    int-to-double v0, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    goto :goto_0
.end method

.method a()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/adcolony/sdk/n;->e:Lorg/json/JSONObject;

    return-object v0
.end method

.method a(Lcom/adcolony/sdk/n;)Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 480
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 481
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    .line 482
    const-string v2, "carrier_name"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->h()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 483
    const-string v2, "data_path"

    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/l;->o()Lcom/adcolony/sdk/ar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/ar;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 484
    const-string v2, "device_api"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->s()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 485
    const-string v2, "device_id"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->p()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 486
    const-string v2, "display_width"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->q()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 487
    const-string v2, "display_height"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->r()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 488
    const-string v2, "screen_width"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->q()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 489
    const-string v2, "screen_height"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->r()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 490
    const-string v2, "display_dpi"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->C()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 491
    const-string v2, "device_type"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 492
    const-string v2, "locale_language_code"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->u()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 493
    const-string v2, "ln"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->u()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 494
    const-string v2, "locale_country_code"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 495
    const-string v2, "locale"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 496
    const-string v2, "mac_address"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->w()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 497
    const-string v2, "manufacturer"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 498
    const-string v2, "device_brand"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->x()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 499
    const-string v2, "media_path"

    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/l;->o()Lcom/adcolony/sdk/ar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/ar;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 500
    const-string v2, "temp_storage_path"

    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/l;->o()Lcom/adcolony/sdk/ar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adcolony/sdk/ar;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 501
    const-string v2, "memory_class"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->i()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 502
    const-string v2, "network_speed"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 503
    const-string v2, "memory_used_mb"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->n()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;J)Z

    .line 504
    const-string v2, "model"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 505
    const-string v2, "device_model"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->y()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 506
    const-string v2, "sdk_type"

    const-string v3, "android_native"

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 507
    const-string v2, "sdk_version"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->D()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 508
    const-string v2, "network_type"

    iget-object v3, v0, Lcom/adcolony/sdk/l;->e:Lcom/adcolony/sdk/aj;

    invoke-virtual {v3}, Lcom/adcolony/sdk/aj;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 509
    const-string v2, "os_version"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->z()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 510
    const-string v2, "os_name"

    const-string v3, "android"

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 511
    const-string v2, "platform"

    const-string v3, "android"

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 512
    const-string v2, "arch"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 513
    const-string v2, "user_id"

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->d()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v3

    iget-object v3, v3, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    const-string v4, "user_id"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 514
    const-string v2, "app_id"

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->d()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v3

    iget-object v3, v3, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 515
    const-string v2, "immersion"

    iget-boolean v3, p0, Lcom/adcolony/sdk/n;->d:Z

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 516
    const-string v2, "app_bundle_name"

    invoke-static {}, Lcom/adcolony/sdk/az;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 517
    const-string v2, "app_bundle_version"

    invoke-static {}, Lcom/adcolony/sdk/az;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 518
    const-string v2, "battery_level"

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/n;->a(Landroid/content/Context;)D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 519
    const-string v2, "cell_service_country_code"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->j()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 520
    const-string v2, "timezone_ietf"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 521
    const-string v2, "timezone_gmt_m"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->l()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 522
    const-string v2, "timezone_dst_m"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->m()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 523
    const-string v2, "launch_metadata"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->a()Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 524
    const-string v2, "controller_version"

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 525
    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->B()I

    move-result v0

    iput v0, p0, Lcom/adcolony/sdk/n;->f:I

    .line 526
    const-string v0, "current_orientation"

    iget v2, p0, Lcom/adcolony/sdk/n;->f:I

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 527
    invoke-static {}, Lcom/adcolony/sdk/y;->b()Lorg/json/JSONArray;

    move-result-object v0

    .line 530
    const-string v2, "com.android.vending"

    invoke-static {v2}, Lcom/adcolony/sdk/az;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    const-string v2, "google"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 533
    :cond_0
    const-string v2, "com.amazon.venezia"

    invoke-static {v2}, Lcom/adcolony/sdk/az;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    const-string v2, "amazon"

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 536
    :cond_1
    const-string v2, "available_stores"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 539
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/az;->b(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/n;->k:Lorg/json/JSONArray;

    .line 540
    const-string v0, "permissions"

    iget-object v2, p0, Lcom/adcolony/sdk/n;->k:Lorg/json/JSONArray;

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 544
    const/16 v0, 0x28

    .line 545
    :goto_0
    iget-boolean v2, p1, Lcom/adcolony/sdk/n;->b:Z

    if-nez v2, :cond_2

    if-lez v0, :cond_2

    .line 547
    const-wide/16 v2, 0x32

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 553
    :cond_2
    const-string v0, "advertiser_id"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 554
    const-string v0, "limit_tracking"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->g()Z

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 555
    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->c()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 556
    :cond_3
    const-string v0, "android_id_sha1"

    invoke-virtual {p1}, Lcom/adcolony/sdk/n;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/adcolony/sdk/az;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 558
    :cond_4
    return-object v1

    .line 550
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method a(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adcolony/sdk/n;->e:Lorg/json/JSONObject;

    .line 66
    return-void
.end method

.method b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const-string v0, ""

    .line 80
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/adcolony/sdk/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method e()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/n;->b:Z

    .line 102
    const-string v0, "Device.get_info"

    new-instance v1, Lcom/adcolony/sdk/n$1;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/n$1;-><init>(Lcom/adcolony/sdk/n;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 117
    const-string v0, "Device.application_exists"

    new-instance v1, Lcom/adcolony/sdk/n$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/n$2;-><init>(Lcom/adcolony/sdk/n;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 125
    return-void
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/adcolony/sdk/n;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "tablet"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "phone"

    goto :goto_0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/adcolony/sdk/n;->c:Z

    return v0
.end method

.method h()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    const-string v0, ""

    .line 156
    :cond_0
    :goto_0
    return-object v0

    .line 151
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 152
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 154
    const-string v0, "unknown"

    goto :goto_0
.end method

.method i()I
    .locals 2

    .prologue
    .line 163
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x0

    .line 167
    :goto_0
    return v0

    .line 166
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 167
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    goto :goto_0
.end method

.method j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 174
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    const-string v0, ""

    .line 179
    :cond_0
    :goto_0
    return-object v0

    .line 177
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 178
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    .line 179
    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0
.end method

.method k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 187
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method l()I
    .locals 4

    .prologue
    .line 194
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 195
    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    return v0
.end method

.method m()I
    .locals 2

    .prologue
    .line 202
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 203
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    const/4 v0, 0x0

    .line 206
    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v0

    const v1, 0xea60

    div-int/2addr v0, v1

    goto :goto_0
.end method

.method n()J
    .locals 6

    .prologue
    .line 213
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 214
    const/high16 v1, 0x100000

    .line 215
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    int-to-long v0, v1

    div-long v0, v2, v0

    return-wide v0
.end method

.method o()F
    .locals 1

    .prologue
    .line 222
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 v0, 0x0

    .line 225
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    goto :goto_0
.end method

.method p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const-string v0, ""

    .line 235
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/bg;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method q()I
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 243
    const/4 v0, 0x0

    .line 247
    :goto_0
    return v0

    .line 245
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 246
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 247
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method r()I
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    .line 259
    :goto_0
    return v0

    .line 257
    :cond_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 258
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 259
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method s()I
    .locals 1

    .prologue
    .line 266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method t()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 300
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 304
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v3

    .line 305
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v1, v3, v1

    .line 306
    mul-float/2addr v2, v2

    mul-float/2addr v1, v1

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 308
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const-string v0, ""

    return-object v0
.end method

.method x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method
