.class Lcom/inmobi/ads/w;
.super Lcom/inmobi/ads/AdUnit;
.source "InterstitialAdUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/w$c;,
        Lcom/inmobi/ads/w$b;,
        Lcom/inmobi/ads/w$a;
    }
.end annotation


# static fields
.field static final w:Ljava/lang/String;

.field private static final y:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/AdUnit$b;",
            ">;>;"
        }
    .end annotation
.end field

.field x:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/w;->y:Ljava/lang/String;

    .line 40
    const-class v0, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    .line 78
    iput v0, p0, Lcom/inmobi/ads/w;->z:I

    .line 79
    iput-boolean v0, p0, Lcom/inmobi/ads/w;->A:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/w;->x:I

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    .line 90
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;B)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/w;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    return-void
.end method

.method static synthetic M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/inmobi/ads/w;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    return-object v0
.end method

.method private O()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 252
    .line 7308
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 252
    sget-object v3, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    if-ne v2, v3, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->h()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()V

    .line 271
    :goto_0
    return v0

    .line 257
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/ads/w;->P()V

    move v0, v1

    .line 258
    goto :goto_0

    .line 262
    :cond_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/inmobi/ads/w;->b(Z)Z

    .line 263
    invoke-direct {p0}, Lcom/inmobi/ads/w;->P()V
    :try_end_0
    .catch Lcom/inmobi/ads/w$b; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/inmobi/ads/w$c; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 264
    goto :goto_0

    .line 271
    :catch_0
    move-exception v1

    goto :goto_0

    .line 269
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private P()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/inmobi/ads/w;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/w$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/w$1;-><init>(Lcom/inmobi/ads/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    return-void
.end method

.method private Q()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 484
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ">>> Starting "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to display interstitial ad ..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 487
    if-eqz v0, :cond_0

    sget-object v3, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v4

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v2

    .line 509
    :goto_0
    return v0

    .line 491
    :cond_1
    invoke-static {v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/ads/AdContainer;)I

    move-result v0

    .line 492
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 493
    const-string v4, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 494
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v4, 0x66

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const-string v4, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 13308
    iget-object v5, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 496
    if-ne v0, v5, :cond_3

    const/16 v0, 0xc8

    .line 495
    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 498
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 500
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/inmobi/ads/w;->x:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 501
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v3, p0, Lcom/inmobi/ads/w;->x:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    .line 503
    goto :goto_0

    .line 496
    :cond_3
    const/16 v0, 0xc9

    goto :goto_1

    .line 504
    :catch_0
    move-exception v0

    .line 505
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v3, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot show ad; SDK encountered an unexpected error"

    invoke-static {v1, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Encountered unexpected error while showing ad: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    move v0, v2

    .line 509
    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/w;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/ads/w;Lcom/inmobi/ads/AdUnit$b;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/inmobi/ads/w;->g(Lcom/inmobi/ads/AdUnit$b;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/ads/w;Lcom/inmobi/ads/AdUnit$b;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/inmobi/ads/w;->f(Lcom/inmobi/ads/AdUnit$b;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/ads/w;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/ads/w$b;,
            Lcom/inmobi/ads/w$c;
        }
    .end annotation

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/ads/w;->b(Z)Z

    move-result v0

    return v0
.end method

.method private b(Z)Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/ads/w$b;,
            Lcom/inmobi/ads/w$c;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 901
    .line 38748
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 901
    invoke-static {v0}, Lcom/inmobi/ads/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 902
    if-eqz p1, :cond_1

    .line 39413
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/h;

    .line 40269
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 41332
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 41527
    const-string v5, "int"

    .line 904
    invoke-virtual {v1, v5}, Lcom/inmobi/ads/b;->a(Ljava/lang/String;)Lcom/inmobi/ads/b$b;

    .line 41947
    sget-object v5, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 42372
    invoke-virtual {v0}, Lcom/inmobi/ads/h;->b()V

    .line 42373
    iget-object v1, v0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/c;

    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/ads/c;->c(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 42374
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 910
    :goto_0
    if-nez v4, :cond_2

    .line 911
    new-instance v0, Lcom/inmobi/ads/w$b;

    const-string v1, "No Cached Ad found for AdUnit"

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/w$b;-><init>(Lcom/inmobi/ads/w;Ljava/lang/String;)V

    throw v0

    .line 42377
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    move-object v4, v0

    goto :goto_0

    .line 42413
    :cond_1
    iget-object v7, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/h;

    .line 43269
    iget-wide v8, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 44332
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 44527
    const-string v1, "int"

    .line 908
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/b;->a(Ljava/lang/String;)Lcom/inmobi/ads/b$b;

    move-result-object v0

    .line 44582
    iget v11, v0, Lcom/inmobi/ads/b$b;->c:I

    .line 44947
    sget-object v12, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-object v10, v4

    move-object v13, v6

    .line 907
    invoke-virtual/range {v7 .. v13}, Lcom/inmobi/ads/h;->a(JLjava/lang/String;ILcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v4

    goto :goto_0

    .line 918
    :cond_2
    invoke-virtual {p0, v4}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/a;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 919
    new-instance v0, Lcom/inmobi/ads/w$c;

    const-string v1, "No Cached Asset for AdUnit"

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/w$c;-><init>(Lcom/inmobi/ads/w;Ljava/lang/String;)V

    throw v0

    .line 921
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic c(Lcom/inmobi/ads/w;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->n()V

    return-void
.end method

.method private e(Lcom/inmobi/ads/AdUnit$b;)I
    .locals 3

    .prologue
    .line 151
    const/4 v1, -0x1

    .line 152
    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 154
    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 158
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v1

    .line 152
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 165
    :cond_1
    return v2
.end method

.method private f(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 1

    .prologue
    .line 447
    const-string v0, "ShowInt"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->e(Ljava/lang/String;)V

    .line 448
    invoke-direct {p0}, Lcom/inmobi/ads/w;->Q()Z

    move-result v0

    .line 449
    if-nez v0, :cond_1

    .line 450
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 12328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 451
    const-string v0, "TrueAdViewFailedToBuild"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 452
    if-eqz p1, :cond_0

    .line 453
    invoke-interface {p1}, Lcom/inmobi/ads/AdUnit$b;->c()V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    if-eqz p1, :cond_0

    .line 457
    invoke-interface {p1}, Lcom/inmobi/ads/AdUnit$b;->d()V

    goto :goto_0
.end method

.method private g(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 2

    .prologue
    .line 925
    const-string v0, "TrueAdViewFailedToBuild"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 926
    iget-object v0, p0, Lcom/inmobi/ads/w;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/w$4;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/w$4;-><init>(Lcom/inmobi/ads/w;Lcom/inmobi/ads/AdUnit$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 937
    return-void
.end method


# virtual methods
.method public final B()V
    .locals 6

    .prologue
    .line 852
    const-string v0, "RenderTimeOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->b(Ljava/lang/String;)V

    .line 34316
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 853
    if-eqz v0, :cond_0

    .line 34413
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/h;

    .line 35316
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 854
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/h;->a(Ljava/lang/String;)V

    .line 856
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 36273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 856
    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 37273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 856
    if-ne v0, v1, :cond_2

    .line 857
    :cond_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 37328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 858
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load the Interstitial markup in the webview due to time out for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 859
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 858
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 862
    :cond_2
    return-void
.end method

.method public final D()V
    .locals 2

    .prologue
    .line 976
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 45273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 976
    if-ne v0, v1, :cond_1

    .line 977
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_PREFETCHED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 45328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 978
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 45811
    if-eqz v0, :cond_0

    .line 46811
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 979
    invoke-interface {v0, p0}, Lcom/inmobi/ads/AdUnit$d;->a(Lcom/inmobi/ads/AdUnit;)V

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 982
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 983
    if-eqz v0, :cond_2

    .line 984
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->d(Lcom/inmobi/ads/AdUnit$b;)V

    .line 991
    :cond_1
    return-void

    .line 987
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()V

    goto :goto_0
.end method

.method final G()V
    .locals 3

    .prologue
    .line 722
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->C()V

    .line 723
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    .line 25328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 724
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 725
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 726
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 727
    if-nez v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()V

    .line 724
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 734
    :cond_0
    iget-object v2, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 735
    const-string v2, "TrueValidAdRequestReceived"

    invoke-virtual {p0, v2}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 736
    const-string v2, "AdRequestFilled"

    invoke-virtual {p0, v2}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 739
    :cond_1
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->a()V

    goto :goto_1

    .line 741
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 742
    return-void
.end method

.method final H()V
    .locals 3

    .prologue
    .line 866
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 867
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 868
    if-eqz v0, :cond_0

    .line 869
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Z)V

    goto :goto_0

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()V

    goto :goto_0

    .line 874
    :cond_1
    return-void
.end method

.method public final K()Z
    .locals 2

    .prologue
    .line 514
    .line 14273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 514
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final L()V
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 519
    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 521
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/ads/w;->A:Z

    .line 522
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->a()V

    goto :goto_0
.end method

.method public final a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    .prologue
    .line 542
    iget-object v0, p0, Lcom/inmobi/ads/w;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/w$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/inmobi/ads/w$3;-><init>(Lcom/inmobi/ads/w;JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 581
    return-void
.end method

.method public final a(JZLcom/inmobi/ads/a;)V
    .locals 5

    .prologue
    .line 640
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/AdUnit;->a(JZLcom/inmobi/ads/a;)V

    .line 18269
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 641
    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 642
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 18273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 642
    if-ne v0, v1, :cond_5

    if-eqz p3, :cond_5

    .line 643
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 18328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 644
    invoke-super {p0, p4}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    const-string v0, "AdRequestFilled"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0, p4}, Lcom/inmobi/ads/w;->c(Lcom/inmobi/ads/a;)V

    .line 18501
    iget-boolean v0, p4, Lcom/inmobi/ads/a;->h:Z

    .line 647
    if-eqz v0, :cond_1

    .line 648
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/w;->s:Z

    .line 649
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->E()V

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 652
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 653
    if-eqz v0, :cond_2

    .line 654
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 687
    :catch_0
    move-exception v0

    .line 688
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v2, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling ad availability change event encountered an unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 691
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 656
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()V

    goto :goto_1

    .line 661
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 662
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 663
    if-eqz v0, :cond_4

    .line 664
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Z)V

    goto :goto_2

    .line 666
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()V

    goto :goto_2

    .line 671
    :cond_5
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 19273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 671
    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    .line 20273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 671
    if-eq v0, v1, :cond_6

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 21273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 672
    if-ne v0, v1, :cond_0

    .line 673
    :cond_6
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 21328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 674
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 675
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 676
    if-eqz v0, :cond_7

    .line 677
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_NO_LONGER_AVAILABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 682
    :goto_4
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    .line 679
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method final a(Lcom/inmobi/ads/AdUnit$b;I)V
    .locals 3

    .prologue
    .line 351
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 352
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->K()Z

    move-result v0

    if-nez v0, :cond_1

    .line 353
    const-string v0, "TrueAdViewRequestRejected"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 354
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->y:Ljava/lang/String;

    const-string v2, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v0, "ShowIntBeforeReady"

    .line 10444
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10445
    const-string v2, "errorCode"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10446
    const-string v0, "ads"

    const-string v2, "AdShowFailed"

    invoke-virtual {p0, v0, v2, v1}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 357
    if-eqz p1, :cond_0

    .line 358
    invoke-interface {p1}, Lcom/inmobi/ads/AdUnit$b;->c()V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;)V

    .line 367
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 11328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 369
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 12308
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 369
    if-ne v0, v1, :cond_4

    .line 370
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 371
    const/4 v1, -0x1

    if-eq p2, v1, :cond_2

    if-eqz v0, :cond_2

    .line 373
    invoke-interface {v0, p2}, Lcom/inmobi/ads/AdContainer;->setExitAnimation(I)V

    .line 376
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 377
    invoke-direct {p0, p1}, Lcom/inmobi/ads/w;->g(Lcom/inmobi/ads/AdUnit$b;)V

    .line 378
    if-eqz v0, :cond_0

    .line 379
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->destroy()V

    goto :goto_0

    .line 382
    :cond_3
    invoke-direct {p0, p1}, Lcom/inmobi/ads/w;->f(Lcom/inmobi/ads/AdUnit$b;)V

    goto :goto_0

    .line 385
    :cond_4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 386
    iget-object v1, p0, Lcom/inmobi/ads/w;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/inmobi/ads/w$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/inmobi/ads/w$2;-><init>(Lcom/inmobi/ads/w;Ljava/lang/ref/WeakReference;I)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 439
    :cond_5
    const-string v0, "TrueAdViewRequestRejected"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 440
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Please ensure that you call show() on the UI thread"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V
    .locals 1

    .prologue
    .line 942
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-super {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    .line 943
    return-void
.end method

.method final a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V
    .locals 2

    .prologue
    .line 586
    .line 15273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 586
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 587
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 15328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 589
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 590
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 591
    if-eqz v0, :cond_1

    .line 592
    invoke-interface {v0, p1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()V

    goto :goto_0

    .line 597
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 598
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 599
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()V

    .line 600
    return-void
.end method

.method public final a(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 759
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/rendering/RenderView;)V

    .line 27273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 760
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 761
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 27328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 762
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->H()V

    .line 764
    :cond_0
    return-void
.end method

.method public final a(Lcom/inmobi/ads/a;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)Z

    move-result v1

    .line 315
    if-nez v1, :cond_1

    .line 316
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/w;->b(Lcom/inmobi/ads/a;)V

    .line 332
    :cond_0
    :goto_0
    return v0

    .line 319
    :cond_1
    instance-of v1, p1, Lcom/inmobi/ads/ax;

    if-eqz v1, :cond_2

    .line 320
    check-cast p1, Lcom/inmobi/ads/ax;

    .line 321
    invoke-static {}, Lcom/inmobi/ads/cache/d;->a()Lcom/inmobi/ads/cache/d;

    .line 8070
    iget-object v1, p1, Lcom/inmobi/ads/ax;->i:Ljava/lang/String;

    .line 321
    invoke-static {v1}, Lcom/inmobi/ads/cache/d;->b(Ljava/lang/String;)Lcom/inmobi/ads/cache/a;

    move-result-object v1

    .line 322
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/inmobi/ads/cache/a;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    new-instance v0, Lcom/inmobi/ads/bp;

    .line 8228
    iget-object v1, v1, Lcom/inmobi/ads/cache/a;->e:Ljava/lang/String;

    .line 9074
    iget-object v2, p1, Lcom/inmobi/ads/ax;->j:Ljava/lang/String;

    .line 9078
    iget-object v3, p1, Lcom/inmobi/ads/ax;->k:Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->f()Ljava/util/List;

    move-result-object v4

    .line 329
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->g()Ljava/util/List;

    move-result-object v5

    .line 9332
    iget-object v6, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 9556
    iget-object v6, v6, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 330
    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/bp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/inmobi/ads/b$g;)V

    .line 9719
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->h:Lcom/inmobi/ads/bp;

    .line 332
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 527
    const-string v0, "int"

    return-object v0
.end method

.method public final b(JZ)V
    .locals 3

    .prologue
    .line 698
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->b(JZ)V

    .line 699
    if-nez p3, :cond_2

    .line 22269
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 700
    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 22273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 701
    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    .line 23273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 701
    if-ne v0, v1, :cond_1

    .line 705
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 23328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 706
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_NO_LONGER_AVAILABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 719
    :cond_1
    :goto_0
    return-void

    .line 24269
    :cond_2
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 709
    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 24273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 709
    if-ne v0, v1, :cond_1

    .line 24345
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->s:Z

    .line 711
    if-eqz v0, :cond_3

    .line 24349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->u:Z

    .line 713
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->F()V

    goto :goto_0

    .line 715
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->G()V

    goto :goto_0
.end method

.method final b(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 6

    .prologue
    .line 804
    .line 29273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 804
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_3

    .line 805
    iget v0, p0, Lcom/inmobi/ads/w;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/w;->z:I

    .line 806
    iget v0, p0, Lcom/inmobi/ads/w;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 807
    const-string v0, "AdRendered"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->e(Ljava/lang/String;)V

    .line 808
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully displayed Interstitial for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 809
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 808
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    if-eqz p1, :cond_1

    .line 811
    invoke-interface {p1}, Lcom/inmobi/ads/AdUnit$b;->e()V

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()V

    goto :goto_0

    .line 816
    :cond_2
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 30328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    goto :goto_0

    .line 31273
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 818
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 819
    iget v0, p0, Lcom/inmobi/ads/w;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/w;->z:I

    goto :goto_0
.end method

.method public final b(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 996
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 47273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 996
    if-ne v0, v1, :cond_1

    .line 997
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 47328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 998
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 47811
    if-eqz v0, :cond_0

    .line 48811
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    .line 999
    invoke-interface {v0, p0, p1}, Lcom/inmobi/ads/AdUnit$d;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1002
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 1005
    :cond_1
    return-void
.end method

.method protected final b(Lcom/inmobi/ads/a;)V
    .locals 1

    .prologue
    .line 337
    .line 10413
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/h;

    .line 337
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/a;)V

    .line 338
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 532
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(JLcom/inmobi/ads/a;)V
    .locals 7

    .prologue
    .line 606
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->c(JLcom/inmobi/ads/a;)V

    .line 607
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interstitial ad successfully fetched for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 608
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 607
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 17269
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 610
    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 17273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 610
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 611
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->j()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/w;->a(ZLcom/inmobi/rendering/RenderView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 613
    const/4 v0, 0x0

    .line 17304
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    .line 613
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v0

    .line 617
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->z()V

    .line 618
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 619
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v2, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Loading ad markup into container encountered an unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 626
    :catch_1
    move-exception v0

    .line 627
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Handling ad fetch successful encountered an unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method final c(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 6

    .prologue
    .line 830
    .line 32273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 830
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 831
    iget v0, p0, Lcom/inmobi/ads/w;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/w;->z:I

    .line 832
    iget v0, p0, Lcom/inmobi/ads/w;->z:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 833
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 32328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 33273
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 835
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 836
    iget v0, p0, Lcom/inmobi/ads/w;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/w;->z:I

    .line 837
    const-string v0, "IntClosed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->e(Ljava/lang/String;)V

    .line 838
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()V

    .line 839
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interstitial ad dismissed for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 840
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 839
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    if-eqz p1, :cond_2

    .line 842
    invoke-interface {p1}, Lcom/inmobi/ads/AdUnit$b;->f()V

    goto :goto_0

    .line 844
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()V

    goto :goto_0
.end method

.method public final declared-synchronized c(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 796
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 800
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->b(Lcom/inmobi/ads/AdUnit$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 801
    monitor-exit p0

    return-void

    .line 796
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 537
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    return-object v0
.end method

.method public final d(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    const/4 v0, 0x1

    .line 110
    :try_start_0
    const-class v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 111
    const-class v2, Lcom/squareup/picasso/Picasso;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    .line 2300
    iput-boolean v1, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 123
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    const-string v0, "MissingDependency"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;)V

    .line 115
    if-eqz p1, :cond_0

    .line 116
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {p1, v0}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0, p1}, Lcom/inmobi/ads/w;->e(Lcom/inmobi/ads/AdUnit$b;)I

    move-result v2

    .line 130
    if-ne v6, v2, :cond_2

    .line 131
    iget-object v2, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v2

    if-nez v2, :cond_3

    .line 139
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    goto :goto_0

    .line 135
    :cond_2
    const-string v0, "TrueAdRequestTerminated"

    const-string v1, "LoadInProgress"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3170
    :cond_3
    sget-object v2, Lcom/inmobi/ads/w$6;->a:[I

    .line 3273
    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 3170
    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit$AdState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 142
    :cond_4
    :goto_1
    if-eqz v0, :cond_7

    .line 143
    const-string v0, "AdLoadRequested"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 3172
    :pswitch_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 4269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 3175
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3172
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3179
    :pswitch_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 3182
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3179
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 3184
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 3185
    invoke-direct {p0, p1}, Lcom/inmobi/ads/w;->e(Lcom/inmobi/ads/AdUnit$b;)I

    move-result v2

    .line 3187
    if-eq v2, v6, :cond_5

    .line 3188
    iget-object v3, p0, Lcom/inmobi/ads/w;->B:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3191
    :cond_5
    if-eqz p1, :cond_4

    .line 3192
    invoke-interface {p1, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_1

    .line 3198
    :pswitch_2
    if-eqz p1, :cond_4

    .line 3199
    invoke-interface {p1, v0}, Lcom/inmobi/ads/AdUnit$b;->a(Z)V

    goto :goto_1

    .line 5308
    :pswitch_3
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 3203
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    if-ne v1, v2, :cond_6

    .line 3204
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 3207
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3204
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3209
    :cond_6
    if-eqz p1, :cond_4

    .line 3210
    invoke-interface {p1, v0}, Lcom/inmobi/ads/AdUnit$b;->a(Z)V

    goto :goto_1

    .line 145
    :cond_7
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->l()V

    goto/16 :goto_0

    .line 3170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final declared-synchronized d(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 825
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->d(Lcom/inmobi/rendering/RenderView;)V

    .line 826
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->c(Lcom/inmobi/ads/AdUnit$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 827
    monitor-exit p0

    return-void

    .line 825
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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
    .line 306
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 308
    const-string v2, "preload-request"

    .line 7968
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 308
    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    return-object v1

    .line 308
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method protected final j()Lcom/inmobi/rendering/RenderView;
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->j()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    .line 96
    iget-boolean v1, p0, Lcom/inmobi/ads/w;->A:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->a()V

    .line 99
    :cond_0
    return-object v0
.end method

.method public final k()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;
    .locals 1

    .prologue
    .line 947
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    return-object v0
.end method

.method public final l()V
    .locals 0

    .prologue
    .line 105
    return-void
.end method

.method final n()V
    .locals 2

    .prologue
    .line 952
    iget-object v0, p0, Lcom/inmobi/ads/w;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/w$5;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/w$5;-><init>(Lcom/inmobi/ads/w;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 971
    return-void
.end method

.method protected final o()I
    .locals 6

    .prologue
    .line 227
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 6273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 227
    if-ne v0, v1, :cond_0

    .line 228
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 231
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x2

    .line 242
    :goto_0
    return v0

    .line 234
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    .line 7273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 234
    if-ne v0, v1, :cond_2

    .line 235
    invoke-direct {p0}, Lcom/inmobi/ads/w;->O()Z

    move-result v0

    .line 236
    if-eqz v0, :cond_1

    .line 237
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->o()I

    move-result v0

    goto :goto_0

    .line 239
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 242
    :cond_2
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->o()I

    move-result v0

    goto :goto_0
.end method

.method protected final p()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method protected final r()V
    .locals 1

    .prologue
    .line 342
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->r()V

    .line 343
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/w;->x:I

    .line 344
    return-void
.end method

.method public final t()V
    .locals 6

    .prologue
    .line 746
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 26273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 747
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->z()V

    .line 749
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Successfully loaded Interstitial ad markup in the WebView for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 751
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 749
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()V

    .line 753
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->G()V

    .line 755
    :cond_0
    return-void
.end method

.method public final v()V
    .locals 6

    .prologue
    .line 768
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->v()V

    .line 28273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 769
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->z()V

    .line 771
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 28328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 773
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->w:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load the Interstitial markup in the WebView for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 775
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 773
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 779
    :cond_0
    return-void
.end method
