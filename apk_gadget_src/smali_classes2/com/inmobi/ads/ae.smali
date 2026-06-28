.class final Lcom/inmobi/ads/ae;
.super Lcom/inmobi/ads/AdUnit;
.source "NativeAdUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ae$a;
    }
.end annotation


# static fields
.field static final w:Ljava/lang/String;


# instance fields
.field private A:I

.field x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field y:Z

.field private z:Lcom/inmobi/ads/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-class v0, Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ae;->w:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    .line 100
    iput-boolean v0, p0, Lcom/inmobi/ads/ae;->y:Z

    .line 101
    iput v0, p0, Lcom/inmobi/ads/ae;->A:I

    .line 107
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;B)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/ae;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    return-void
.end method

.method static synthetic Z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/inmobi/ads/ae;->w:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 162
    instance-of v1, v0, Lcom/inmobi/ads/ac;

    if-eqz v1, :cond_0

    .line 163
    check-cast v0, Lcom/inmobi/ads/ac;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ac;->a(Landroid/content/Context;)V

    .line 165
    :cond_0
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 2

    .prologue
    .line 577
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 31273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 577
    if-ne v0, v1, :cond_0

    .line 578
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_PREFETCHED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 31328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 31968
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 581
    if-nez v0, :cond_1

    .line 582
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->l()V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 32811
    if-eqz v0, :cond_0

    .line 33811
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 586
    invoke-interface {v0, p0}, Lcom/inmobi/ads/AdUnit$d;->a(Lcom/inmobi/ads/AdUnit;)V

    goto :goto_0
.end method

.method final G()V
    .locals 4

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 17304
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    .line 285
    new-instance v2, Lcom/inmobi/ads/ae$1;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/ae$1;-><init>(Lcom/inmobi/ads/ae;)V

    .line 312
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    .line 285
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/AdUnit$b;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V

    .line 313
    return-void
.end method

.method public final K()V
    .locals 4

    .prologue
    .line 340
    :try_start_0
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->r()V

    .line 17324
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 342
    :catch_0
    move-exception v0

    .line 343
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not destroy native ad; SDK encountered unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in destroying native ad unit; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method final L()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    .line 399
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ai;

    .line 400
    if-eqz v0, :cond_0

    .line 17334
    iget-object v0, v0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 18149
    iget-object v0, v0, Lcom/inmobi/ads/ai$a;->a:Lorg/json/JSONObject;

    .line 404
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final M()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 409
    if-eqz v0, :cond_0

    .line 410
    check-cast v0, Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->getApkDownloader()Lcom/inmobi/ads/l;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_0

    .line 415
    :cond_0
    return v1
.end method

.method final N()I
    .locals 2

    .prologue
    const/4 v1, -0x2

    .line 419
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 420
    if-eqz v0, :cond_0

    .line 421
    check-cast v0, Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->getApkDownloader()Lcom/inmobi/ads/l;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_0

    .line 426
    :cond_0
    return v1
.end method

.method final O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ai;

    .line 433
    if-eqz v0, :cond_0

    .line 18334
    iget-object v0, v0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 19161
    iget-object v0, v0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a$a;

    .line 434
    iget-object v0, v0, Lcom/inmobi/ads/ai$a$a;->a:Ljava/lang/String;

    .line 437
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 441
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_0

    .line 443
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ai;

    .line 444
    if-eqz v0, :cond_0

    .line 19334
    iget-object v0, v0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 20161
    iget-object v0, v0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a$a;

    .line 445
    iget-object v0, v0, Lcom/inmobi/ads/ai$a$a;->b:Ljava/lang/String;

    .line 448
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 453
    if-eqz v0, :cond_0

    .line 454
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ai;

    .line 455
    if-eqz v0, :cond_0

    .line 20334
    iget-object v0, v0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 21161
    iget-object v0, v0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a$a;

    .line 456
    iget-object v0, v0, Lcom/inmobi/ads/ai$a$a;->c:Ljava/lang/String;

    .line 459
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 464
    if-eqz v0, :cond_0

    .line 465
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ai;

    .line 466
    if-eqz v0, :cond_0

    .line 21334
    iget-object v0, v0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 22161
    iget-object v0, v0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a$a;

    .line 467
    iget-object v0, v0, Lcom/inmobi/ads/ai$a$a;->f:Ljava/lang/String;

    .line 470
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final S()Ljava/lang/String;
    .locals 1

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 475
    if-eqz v0, :cond_0

    .line 476
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ai;

    .line 477
    if-eqz v0, :cond_0

    .line 22334
    iget-object v0, v0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 23161
    iget-object v0, v0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a$a;

    .line 478
    iget-object v0, v0, Lcom/inmobi/ads/ai$a$a;->d:Ljava/lang/String;

    .line 481
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final T()F
    .locals 1

    .prologue
    .line 485
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_0

    .line 487
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ai;

    .line 488
    if-eqz v0, :cond_0

    .line 23334
    iget-object v0, v0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 24161
    iget-object v0, v0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a$a;

    .line 489
    iget v0, v0, Lcom/inmobi/ads/ai$a$a;->e:F

    .line 492
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final U()Z
    .locals 1

    .prologue
    .line 496
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getDataModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ai;

    .line 499
    if-eqz v0, :cond_0

    .line 24334
    iget-object v0, v0, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 25161
    iget-object v0, v0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a$a;

    .line 500
    iget-boolean v0, v0, Lcom/inmobi/ads/ai$a$a;->g:Z

    .line 503
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final V()V
    .locals 4

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_0

    .line 509
    check-cast v0, Lcom/inmobi/ads/ac;

    .line 510
    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->h()Lcom/inmobi/ads/ai;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_0

    .line 512
    const/4 v2, 0x0

    .line 25334
    iget-object v3, v1, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 26165
    iget-object v3, v3, Lcom/inmobi/ads/ai$a;->c:Lcom/inmobi/ads/NativeAsset;

    .line 512
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/ac;->a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;)V

    .line 26334
    iget-object v1, v1, Lcom/inmobi/ads/ai;->i:Lcom/inmobi/ads/ai$a;

    .line 27165
    iget-object v1, v1, Lcom/inmobi/ads/ai$a;->c:Lcom/inmobi/ads/NativeAsset;

    .line 513
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;Z)V

    .line 516
    :cond_0
    return-void
.end method

.method public final W()V
    .locals 2

    .prologue
    .line 519
    .line 27273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 520
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 521
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_0

    .line 523
    check-cast v0, Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->q()V

    .line 526
    :cond_0
    return-void
.end method

.method public final X()V
    .locals 2

    .prologue
    .line 529
    .line 28273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 530
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 532
    if-eqz v0, :cond_0

    .line 533
    check-cast v0, Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->p()V

    .line 536
    :cond_0
    return-void
.end method

.method public final Y()Z
    .locals 2

    .prologue
    .line 546
    .line 29273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 546
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Landroid/content/Context;)V

    .line 112
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ae;->b(Landroid/content/Context;)V

    .line 113
    return-void
.end method

.method final a(Z)V
    .locals 4

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const-string v0, "IllegalState"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ae;->c(Ljava/lang/String;)V

    .line 201
    :goto_0
    return-void

    .line 193
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 6328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 194
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Unable to Prefetch ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Prefetch failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final a(Lcom/inmobi/ads/a;)Z
    .locals 1

    .prologue
    .line 275
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)Z

    move-result v0

    .line 276
    if-nez v0, :cond_0

    .line 277
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/ae;->b(Lcom/inmobi/ads/a;)V

    .line 278
    const/4 v0, 0x0

    .line 280
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 551
    const-string v0, "native"

    return-object v0
.end method

.method protected final b(JZ)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .line 223
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->b(JZ)V

    .line 224
    if-nez p3, :cond_2

    .line 9269
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 225
    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 9273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 226
    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    .line 10273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 226
    if-ne v0, v1, :cond_1

    .line 227
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 10328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 228
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_NO_LONGER_AVAILABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 250
    :cond_1
    :goto_0
    return-void

    .line 11269
    :cond_2
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 233
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 11273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 233
    if-ne v0, v2, :cond_1

    .line 234
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v8

    .line 235
    if-eqz v8, :cond_1

    .line 11316
    iget-object v0, p0, Lcom/inmobi/ads/ae;->z:Lcom/inmobi/ads/a;

    if-nez v0, :cond_3

    move v0, v1

    .line 236
    :goto_1
    if-nez v0, :cond_7

    .line 237
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v8, v0}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 11319
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/ae;->z:Lcom/inmobi/ads/a;

    instance-of v0, v0, Lcom/inmobi/ads/ax;

    if-eqz v0, :cond_6

    .line 11320
    iget-object v0, p0, Lcom/inmobi/ads/ae;->z:Lcom/inmobi/ads/a;

    move-object v5, v0

    check-cast v5, Lcom/inmobi/ads/ax;

    .line 11321
    invoke-static {}, Lcom/inmobi/ads/cache/d;->a()Lcom/inmobi/ads/cache/d;

    .line 12070
    iget-object v0, v5, Lcom/inmobi/ads/ax;->i:Ljava/lang/String;

    .line 11321
    invoke-static {v0}, Lcom/inmobi/ads/cache/d;->b(Ljava/lang/String;)Lcom/inmobi/ads/cache/a;

    move-result-object v2

    .line 11322
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/inmobi/ads/cache/a;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v1

    .line 11323
    goto :goto_1

    .line 11325
    :cond_5
    new-instance v0, Lcom/inmobi/ads/bp;

    .line 12228
    iget-object v1, v2, Lcom/inmobi/ads/cache/a;->e:Ljava/lang/String;

    .line 13074
    iget-object v2, v5, Lcom/inmobi/ads/ax;->j:Ljava/lang/String;

    .line 13078
    iget-object v3, v5, Lcom/inmobi/ads/ax;->k:Ljava/lang/String;

    .line 11328
    invoke-virtual {v5}, Lcom/inmobi/ads/ax;->f()Ljava/util/List;

    move-result-object v4

    .line 11329
    invoke-virtual {v5}, Lcom/inmobi/ads/ax;->g()Ljava/util/List;

    move-result-object v5

    .line 13332
    iget-object v6, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 13556
    iget-object v6, v6, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 11330
    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/bp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/inmobi/ads/b$g;)V

    .line 13719
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->h:Lcom/inmobi/ads/bp;

    :cond_6
    move v0, v7

    .line 11332
    goto :goto_1

    .line 240
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14345
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->s:Z

    .line 241
    if-eqz v0, :cond_8

    .line 14349
    iput-boolean v7, p0, Lcom/inmobi/ads/AdUnit;->u:Z

    .line 243
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->F()V

    goto :goto_0

    .line 245
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->G()V

    goto :goto_0
.end method

.method final b(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 6

    .prologue
    .line 633
    .line 37273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 633
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_2

    .line 634
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 37328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 638
    :cond_0
    :goto_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully displayed fullscreen for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 639
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 638
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    iget v0, p0, Lcom/inmobi/ads/ae;->A:I

    if-nez v0, :cond_1

    .line 641
    if-eqz p1, :cond_3

    .line 642
    invoke-interface {p1}, Lcom/inmobi/ads/AdUnit$b;->e()V

    .line 647
    :cond_1
    :goto_1
    return-void

    .line 38273
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 635
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 636
    iget v0, p0, Lcom/inmobi/ads/ae;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/ae;->A:I

    goto :goto_0

    .line 644
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->g()V

    goto :goto_1
.end method

.method public final b(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 593
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 34273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 593
    if-ne v0, v1, :cond_0

    .line 594
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 34328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 595
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 34968
    iget-boolean v1, p0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 596
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 599
    const-string v1, "TrueValidAdRequestReceived"

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 600
    const-string v1, "AdRequestNotFilled"

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 601
    invoke-interface {v0, p1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 35811
    if-eqz v0, :cond_0

    .line 36811
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 605
    invoke-interface {v0, p0, p1}, Lcom/inmobi/ads/AdUnit$d;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0
.end method

.method protected final b(Lcom/inmobi/ads/a;)V
    .locals 1

    .prologue
    .line 219
    .line 8413
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/h;

    .line 219
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/a;)V

    .line 220
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final c(JLcom/inmobi/ads/a;)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 254
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->c(JLcom/inmobi/ads/a;)V

    .line 255
    iput-object p3, p0, Lcom/inmobi/ads/ae;->z:Lcom/inmobi/ads/a;

    .line 256
    invoke-virtual {p0, p3}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15337
    iget v0, p0, Lcom/inmobi/ads/AdUnit;->q:I

    .line 261
    if-nez v0, :cond_1

    .line 15501
    iget-boolean v0, p3, Lcom/inmobi/ads/a;->h:Z

    .line 261
    if-nez v0, :cond_1

    .line 262
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ae;->a(ZLcom/inmobi/rendering/RenderView;)V

    .line 16501
    :goto_0
    iget-boolean v0, p3, Lcom/inmobi/ads/a;->h:Z

    .line 266
    if-eqz v0, :cond_0

    .line 267
    iput-boolean v1, p0, Lcom/inmobi/ads/ae;->s:Z

    .line 268
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->E()V

    .line 271
    :cond_0
    return-void

    .line 264
    :cond_1
    invoke-virtual {p0, p3}, Lcom/inmobi/ads/ae;->c(Lcom/inmobi/ads/a;)V

    goto :goto_0
.end method

.method final c(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 6

    .prologue
    .line 650
    .line 39273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 650
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 651
    iget v0, p0, Lcom/inmobi/ads/ae;->A:I

    if-lez v0, :cond_2

    .line 652
    iget v0, p0, Lcom/inmobi/ads/ae;->A:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/ae;->A:I

    .line 657
    :cond_0
    :goto_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully dismissed fullscreen for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 658
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 657
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    iget v0, p0, Lcom/inmobi/ads/ae;->A:I

    if-nez v0, :cond_1

    .line 40273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 659
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 660
    if-eqz p1, :cond_3

    .line 661
    invoke-interface {p1}, Lcom/inmobi/ads/AdUnit$b;->f()V

    .line 666
    :cond_1
    :goto_1
    return-void

    .line 654
    :cond_2
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    .line 39328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    goto :goto_0

    .line 663
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->g()V

    goto :goto_1
.end method

.method protected final d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 561
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    return-object v0
.end method

.method protected final e()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 568
    const-string v0, "a-parentViewWidth"

    .line 29611
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v2

    .line 30019
    iget v2, v2, Lcom/inmobi/commons/core/utilities/b/d;->a:I

    .line 568
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v0, "a-productVersion"

    .line 30615
    const-string v2, "NS-1.0.0-20160411"

    .line 569
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const-string v0, "trackerType"

    const-string v2, "url_ping"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    const-string v2, "preload-request"

    .line 30968
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 571
    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    return-object v1

    .line 571
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public final l()V
    .locals 6

    .prologue
    .line 117
    .line 2295
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 117
    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 124
    :try_start_0
    const-class v1, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 125
    const-class v1, Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 3273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 135
    if-eq v1, v2, :cond_2

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 4273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 135
    if-ne v1, v2, :cond_3

    .line 136
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ae;->w:Ljava/lang/String;

    const-string v2, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "TrueAdRequestTerminated"

    const-string v1, "LoadInProgress"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    const-string v1, "MissingDependency"

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/ae;->a(Ljava/lang/String;)V

    .line 129
    if-eqz v0, :cond_0

    .line 130
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 144
    :cond_3
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ae;->w:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Fetching a Native ad for placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 145
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    .line 5273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 146
    if-ne v1, v2, :cond_4

    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->h()Z

    move-result v1

    if-nez v1, :cond_4

    .line 148
    const-string v1, "TrueValidAdRequestReceived"

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 149
    const-string v1, "AdRequestFilled"

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 150
    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/ads/ae;->b(Landroid/content/Context;)V

    .line 152
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->b()V

    goto :goto_0

    .line 157
    :cond_4
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->l()V

    goto :goto_0
.end method

.method final n()V
    .locals 4

    .prologue
    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "IllegalState"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ae;->c(Ljava/lang/String;)V

    .line 183
    :goto_0
    return-void

    .line 175
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 5328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 176
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Unable to Prefetch ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Prefetch failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method protected final p()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 7273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 205
    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 8273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 205
    if-ne v1, v2, :cond_1

    .line 206
    :cond_0
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 207
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ae;->w:Ljava/lang/String;

    const-string v2, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    .line 214
    :cond_1
    return v0
.end method
