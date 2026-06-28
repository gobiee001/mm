.class Lcom/adcolony/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyInterstitial;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/bd;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyNativeAdViewListener;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/bc;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/d;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->j(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/d;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->k(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->l(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private d(Lcom/adcolony/sdk/af;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v6

    .line 52
    const-string v1, "id"

    invoke-static {v6, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 53
    iget-object v1, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/adcolony/sdk/bd;

    .line 54
    iget-object v1, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    .line 57
    if-nez v2, :cond_1

    if-nez v5, :cond_1

    .line 58
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v4}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_0
    :goto_0
    return v0

    .line 62
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    new-instance v0, Lcom/adcolony/sdk/d$1;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/adcolony/sdk/d$1;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/bd;Lcom/adcolony/sdk/af;Ljava/lang/String;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 94
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic d(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->m(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private e(Lcom/adcolony/sdk/af;)Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    iget-object v0, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bd;

    .line 110
    iget-object v1, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/AdColonyNativeAdViewListener;

    .line 113
    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 140
    :goto_0
    return v0

    .line 118
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    new-instance v2, Lcom/adcolony/sdk/d$12;

    invoke-direct {v2, p0, v0, v1}, Lcom/adcolony/sdk/d$12;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/bd;Lcom/adcolony/sdk/AdColonyNativeAdViewListener;)V

    invoke-static {v2}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 137
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 140
    goto :goto_0
.end method

.method static synthetic e(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->i(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private f(Lcom/adcolony/sdk/af;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 475
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 480
    const-string v3, "id"

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 482
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v1

    if-nez v1, :cond_0

    .line 484
    const-string v1, "has_audio"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 485
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    .line 495
    :goto_0
    return v0

    .line 489
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Landroid/media/AudioManager;)Z

    move-result v0

    .line 490
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/adcolony/sdk/az;->a(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-static {v1}, Lcom/adcolony/sdk/az;->b(Landroid/media/AudioManager;)D

    move-result-wide v4

    .line 491
    const-string v1, "has_audio"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 492
    const-string v1, "volume"

    invoke-static {v2, v1, v4, v5}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 493
    invoke-virtual {p1, v2}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->h(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private g(Lcom/adcolony/sdk/af;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 503
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 504
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 507
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 508
    :cond_0
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 530
    :goto_0
    return v0

    .line 512
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 513
    goto :goto_0

    .line 516
    :cond_2
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ias"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lorg/json/JSONObject;)V

    .line 517
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "creative_id"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->b(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 520
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->h()Lcom/adcolony/sdk/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/g;->b()V

    .line 523
    :cond_3
    new-instance v1, Lcom/adcolony/sdk/d$24;

    invoke-direct {v1, p0, v0}, Lcom/adcolony/sdk/d$24;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;)V

    invoke-static {v1}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 530
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic g(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->d(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private h(Lcom/adcolony/sdk/af;)Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 661
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    .line 698
    :goto_0
    return v0

    .line 665
    :cond_0
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v4

    .line 666
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v5

    .line 667
    const-string v0, "id"

    invoke-static {v4, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 668
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 669
    iget-object v1, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/bc;

    .line 671
    const-string v7, "orientation"

    const/4 v8, -0x1

    invoke-static {v4, v7, v8}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v7

    .line 672
    if-eqz v1, :cond_1

    move v4, v3

    .line 675
    :goto_1
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    .line 676
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v6}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 677
    goto :goto_0

    :cond_1
    move v4, v2

    .line 672
    goto :goto_1

    .line 680
    :cond_2
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 681
    const-string v8, "id"

    invoke-static {v2, v8, v6}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 684
    if-eqz v0, :cond_4

    .line 685
    const-string v1, "module_id"

    invoke-static {v2, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(I)V

    .line 686
    invoke-virtual {v0, v7}, Lcom/adcolony/sdk/AdColonyInterstitial;->b(I)V

    .line 687
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->a()Z

    :cond_3
    :goto_2
    move v0, v3

    .line 698
    goto :goto_0

    .line 690
    :cond_4
    if-eqz v4, :cond_3

    .line 691
    iput v7, v1, Lcom/adcolony/sdk/bc;->b:I

    .line 692
    invoke-virtual {v1}, Lcom/adcolony/sdk/bc;->getExpandedContainer()Lcom/adcolony/sdk/c;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/c;)V

    .line 693
    invoke-virtual {v5, v1}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/bc;)V

    .line 694
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/adcolony/sdk/AdColonyAdViewActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 695
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method static synthetic h(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->e(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private i(Lcom/adcolony/sdk/af;)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 709
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 710
    const-string v3, "status"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 713
    const/4 v4, 0x5

    if-eq v3, v4, :cond_0

    if-eq v3, v2, :cond_0

    if-eqz v3, :cond_0

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v1

    .line 746
    :goto_0
    return v0

    .line 718
    :cond_1
    const-string v3, "id"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 719
    sget-object v0, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v4, "Removing ad 3"

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 720
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 723
    if-nez v0, :cond_2

    .line 724
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 725
    goto :goto_0

    .line 729
    :cond_2
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v1

    .line 731
    sget-object v3, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v4, "Ad attempt finished. Attempting to contact ad listener."

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 733
    if-eqz v1, :cond_3

    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 734
    new-instance v3, Lcom/adcolony/sdk/d$26;

    invoke-direct {v3, p0, v1, v0}, Lcom/adcolony/sdk/d$26;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyInterstitial;)V

    invoke-static {v3}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 744
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lcom/adcolony/sdk/c;)V

    move v0, v2

    .line 746
    goto :goto_0
.end method

.method static synthetic i(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->n(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private j(Lcom/adcolony/sdk/af;)Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 756
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 802
    :goto_0
    return v0

    .line 760
    :cond_0
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 761
    const-string v3, "ad_session_id"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 764
    new-instance v4, Lcom/adcolony/sdk/c;

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/adcolony/sdk/c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 765
    invoke-virtual {v4, p1}, Lcom/adcolony/sdk/c;->b(Lcom/adcolony/sdk/af;)V

    .line 768
    iget-object v5, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 770
    iget-object v0, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bc;

    .line 771
    if-nez v0, :cond_1

    move v0, v1

    .line 772
    goto :goto_0

    .line 775
    :cond_1
    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/bc;->setExpandedContainer(Lcom/adcolony/sdk/c;)V

    move v0, v2

    .line 776
    goto :goto_0

    .line 778
    :cond_2
    sget-object v5, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v6, "Inserting container into hash map tied to ad session id: "

    invoke-virtual {v5, v6}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 779
    iget-object v5, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v5, "width"

    invoke-static {v0, v5}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 785
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 788
    if-nez v0, :cond_3

    .line 789
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 790
    goto :goto_0

    .line 793
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lcom/adcolony/sdk/c;)V

    .line 798
    :goto_1
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 799
    const-string v1, "success"

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 800
    invoke-virtual {p1, v0}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    move v0, v2

    .line 802
    goto :goto_0

    .line 795
    :cond_4
    invoke-virtual {v4, v1}, Lcom/adcolony/sdk/c;->a(Z)V

    goto :goto_1
.end method

.method static synthetic j(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->o(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private k(Lcom/adcolony/sdk/af;)Z
    .locals 2

    .prologue
    .line 812
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 814
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    .line 817
    if-nez v0, :cond_0

    .line 818
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    const/4 v0, 0x0

    .line 825
    :goto_0
    return v0

    .line 822
    :cond_0
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V

    .line 825
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic k(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->p(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private l(Lcom/adcolony/sdk/af;)Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 908
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 909
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v3

    .line 910
    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 911
    const-string v1, "view_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v5

    .line 913
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    .line 914
    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->m()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 917
    if-nez v0, :cond_0

    .line 918
    invoke-virtual {p0, v3, v4}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 928
    :goto_0
    return v0

    .line 921
    :cond_0
    if-nez v1, :cond_1

    .line 922
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 923
    goto :goto_0

    .line 926
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    .line 928
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic l(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->q(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private m(Lcom/adcolony/sdk/af;)Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 938
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    .line 939
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v4

    .line 940
    const-string v0, "ad_session_id"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 941
    const-string v0, "view_id"

    invoke-static {v1, v0}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v6

    .line 943
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    .line 946
    if-nez v0, :cond_0

    .line 947
    invoke-virtual {p0, v4, v5}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 969
    :goto_0
    return v0

    .line 952
    :cond_0
    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->d()I

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "id"

    invoke-static {v1, v7}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 953
    iget-object v1, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/bc;

    .line 954
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/adcolony/sdk/bc;->getExpandedContainer()Lcom/adcolony/sdk/c;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 955
    invoke-virtual {v1}, Lcom/adcolony/sdk/bc;->getExpandedContainer()Lcom/adcolony/sdk/c;

    move-result-object v0

    move-object v1, v0

    .line 959
    :goto_1
    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->m()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 961
    if-nez v0, :cond_1

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 963
    goto :goto_0

    .line 966
    :cond_1
    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 967
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v0, v3

    .line 969
    goto :goto_0

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method static synthetic m(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->r(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private n(Lcom/adcolony/sdk/af;)Z
    .locals 3

    .prologue
    .line 982
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 985
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    .line 986
    if-nez v0, :cond_0

    .line 987
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    const/4 v0, 0x0

    .line 1000
    :goto_0
    return v0

    .line 992
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/f;

    .line 993
    if-nez v1, :cond_1

    .line 994
    new-instance v1, Lcom/adcolony/sdk/f;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->c()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/adcolony/sdk/f;-><init>(Ljava/lang/String;I)V

    .line 995
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    :cond_1
    invoke-virtual {v1, p1}, Lcom/adcolony/sdk/f;->a(Lcom/adcolony/sdk/af;)V

    .line 1000
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic n(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->g(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private o(Lcom/adcolony/sdk/af;)Z
    .locals 2

    .prologue
    .line 1011
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1013
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 1015
    if-nez v0, :cond_0

    .line 1016
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v0, 0x0

    .line 1022
    :goto_0
    return v0

    .line 1020
    :cond_0
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/f;->d(Lcom/adcolony/sdk/af;)V

    .line 1022
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic o(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/d;->f(Lcom/adcolony/sdk/af;)Z

    move-result v0

    return v0
.end method

.method private p(Lcom/adcolony/sdk/af;)Z
    .locals 2

    .prologue
    .line 1033
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1035
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 1037
    if-nez v0, :cond_0

    .line 1038
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    const/4 v0, 0x0

    .line 1044
    :goto_0
    return v0

    .line 1042
    :cond_0
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/f;->c(Lcom/adcolony/sdk/af;)V

    .line 1044
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private q(Lcom/adcolony/sdk/af;)Z
    .locals 2

    .prologue
    .line 1055
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1057
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 1059
    if-nez v0, :cond_0

    .line 1060
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const/4 v0, 0x0

    .line 1066
    :goto_0
    return v0

    .line 1064
    :cond_0
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/f;->b(Lcom/adcolony/sdk/af;)V

    .line 1066
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private r(Lcom/adcolony/sdk/af;)Z
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1079
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/f;

    .line 1081
    if-nez v0, :cond_0

    .line 1082
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const/4 v0, 0x0

    .line 1088
    :goto_0
    return v0

    .line 1086
    :cond_0
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/f;->e(Lcom/adcolony/sdk/af;)V

    .line 1088
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 2

    .prologue
    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->c:Ljava/util/HashMap;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->d:Ljava/util/HashMap;

    .line 151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    .line 152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    .line 155
    const-string v0, "AdContainer.create"

    new-instance v1, Lcom/adcolony/sdk/d$23;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$23;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 162
    const-string v0, "AdContainer.destroy"

    new-instance v1, Lcom/adcolony/sdk/d$28;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$28;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 169
    const-string v0, "AdContainer.move_view_to_index"

    new-instance v1, Lcom/adcolony/sdk/d$29;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$29;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 176
    const-string v0, "AdContainer.move_view_to_front"

    new-instance v1, Lcom/adcolony/sdk/d$30;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$30;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 183
    const-string v0, "AdSession.finish_fullscreen_ad"

    new-instance v1, Lcom/adcolony/sdk/d$31;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$31;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 190
    const-string v0, "AdSession.start_fullscreen_ad"

    new-instance v1, Lcom/adcolony/sdk/d$32;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$32;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 197
    const-string v0, "AdSession.native_ad_view_available"

    new-instance v1, Lcom/adcolony/sdk/d$33;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$33;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 204
    const-string v0, "AdSession.native_ad_view_unavailable"

    new-instance v1, Lcom/adcolony/sdk/d$2;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$2;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 211
    const-string v0, "AdSession.expiring"

    new-instance v1, Lcom/adcolony/sdk/d$3;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$3;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 218
    const-string v0, "AdSession.audio_stopped"

    new-instance v1, Lcom/adcolony/sdk/d$4;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$4;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 233
    const-string v0, "AdSession.audio_started"

    new-instance v1, Lcom/adcolony/sdk/d$5;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$5;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 248
    const-string v0, "AudioPlayer.create"

    new-instance v1, Lcom/adcolony/sdk/d$6;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$6;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 255
    const-string v0, "AudioPlayer.destroy"

    new-instance v1, Lcom/adcolony/sdk/d$7;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$7;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 264
    const-string v0, "AudioPlayer.play"

    new-instance v1, Lcom/adcolony/sdk/d$8;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$8;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 273
    const-string v0, "AudioPlayer.pause"

    new-instance v1, Lcom/adcolony/sdk/d$9;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$9;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 283
    const-string v0, "AudioPlayer.stop"

    new-instance v1, Lcom/adcolony/sdk/d$10;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$10;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 292
    const-string v0, "AdSession.interstitial_available"

    new-instance v1, Lcom/adcolony/sdk/d$11;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$11;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 299
    const-string v0, "AdSession.interstitial_unavailable"

    new-instance v1, Lcom/adcolony/sdk/d$13;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$13;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 306
    const-string v0, "AdSession.has_audio"

    new-instance v1, Lcom/adcolony/sdk/d$14;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$14;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 313
    const-string v0, "WebView.prepare"

    new-instance v1, Lcom/adcolony/sdk/d$15;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$15;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 322
    const-string v0, "AdSession.iap_event"

    new-instance v1, Lcom/adcolony/sdk/d$16;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$16;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 339
    const-string v0, "AdSession.native_ad_view_finished"

    new-instance v1, Lcom/adcolony/sdk/d$17;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$17;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 354
    const-string v0, "AdSession.native_ad_view_started"

    new-instance v1, Lcom/adcolony/sdk/d$18;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$18;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 369
    const-string v0, "AdSession.destroy_native_ad_view"

    new-instance v1, Lcom/adcolony/sdk/d$19;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$19;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 386
    const-string v0, "AdSession.expanded"

    new-instance v1, Lcom/adcolony/sdk/d$20;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$20;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 399
    const-string v0, "AdSession.native_ad_muted"

    new-instance v1, Lcom/adcolony/sdk/d$21;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/d$21;-><init>(Lcom/adcolony/sdk/d;)V

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 421
    return-void
.end method

.method a(Lcom/adcolony/sdk/c;)V
    .locals 2

    .prologue
    .line 835
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    new-instance v0, Lcom/adcolony/sdk/d$27;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/d$27;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/c;)V

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 882
    iget-object v0, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bc;

    .line 883
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adcolony/sdk/bc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v1, "Removing ad 4"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 885
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    .line 889
    :cond_1
    return-void
.end method

.method a(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 625
    invoke-static {}, Lcom/adcolony/sdk/az;->e()Ljava/lang/String;

    move-result-object v0

    .line 626
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v1

    .line 628
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 629
    const-string v3, "zone_id"

    invoke-static {v2, v3, p1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 630
    const-string v3, "fullscreen"

    invoke-static {v2, v3, v5}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 631
    const-string v3, "width"

    iget-object v4, v1, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v4}, Lcom/adcolony/sdk/n;->q()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 632
    const-string v3, "height"

    iget-object v1, v1, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v1}, Lcom/adcolony/sdk/n;->r()I

    move-result v1

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 633
    const-string v1, "type"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 634
    const-string v1, "id"

    invoke-static {v2, v1, v0}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 636
    sget-object v1, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v3, "AdSession request with id = "

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 639
    new-instance v1, Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-direct {v1, v0, p2, p1}, Lcom/adcolony/sdk/AdColonyInterstitial;-><init>(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Ljava/lang/String;)V

    .line 640
    iget-object v3, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {v1, p3}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Lcom/adcolony/sdk/AdColonyAdOptions;)V

    .line 645
    const-string v0, "options"

    iget-object v1, p3, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    invoke-static {v2, v0, v1}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 649
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/aa;->a:Lcom/adcolony/sdk/aa;

    const-string v1, "Requesting AdColony interstitial advertisement."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 650
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v1, "AdSession.on_request"

    invoke-direct {v0, v1, v5, v2}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 651
    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 898
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v1, "Message \'"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    const-string v1, "\' sent with invalid id: "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 899
    return-void
.end method

.method a(Lcom/adcolony/sdk/af;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 431
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 432
    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 433
    const-string v3, "type"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 435
    packed-switch v0, :pswitch_data_0

    .line 464
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 437
    :pswitch_0
    sget-object v0, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v3, "Removing ad 1"

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 438
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 439
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 440
    :cond_0
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 441
    goto :goto_1

    .line 444
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 445
    goto :goto_1

    .line 448
    :cond_2
    new-instance v1, Lcom/adcolony/sdk/d$22;

    invoke-direct {v1, p0, v0}, Lcom/adcolony/sdk/d$22;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;)V

    invoke-static {v1}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 435
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    return-object v0
.end method

.method b(Lcom/adcolony/sdk/af;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 537
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 538
    sget-object v0, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    const-string v3, "Removing ad 2"

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 539
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 541
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v3

    if-nez v3, :cond_1

    .line 542
    :cond_0
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 563
    :goto_0
    return v0

    .line 546
    :cond_1
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 547
    goto :goto_0

    .line 550
    :cond_2
    new-instance v1, Lcom/adcolony/sdk/d$25;

    invoke-direct {v1, p0, v0}, Lcom/adcolony/sdk/d$25;-><init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/AdColonyInterstitial;)V

    invoke-static {v1}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 563
    const/4 v0, 0x1

    goto :goto_0
.end method

.method c()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyInterstitial;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/adcolony/sdk/d;->b:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method c(Lcom/adcolony/sdk/af;)Z
    .locals 3

    .prologue
    .line 573
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 574
    iget-object v0, p0, Lcom/adcolony/sdk/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/c;

    .line 575
    iget-object v2, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/f;

    .line 577
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 578
    :cond_0
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v1, "Invalid AudioPlayer message!"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 579
    const/4 v0, 0x0

    .line 581
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method f()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/bc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/adcolony/sdk/d;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method g()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/adcolony/sdk/d;->f:Ljava/util/HashMap;

    return-object v0
.end method
