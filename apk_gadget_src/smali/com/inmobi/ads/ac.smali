.class public Lcom/inmobi/ads/ac;
.super Ljava/lang/Object;
.source "NativeAdContainer.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/inmobi/ads/AdContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ac$a;,
        Lcom/inmobi/ads/ac$c;,
        Lcom/inmobi/ads/ac$b;
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field private A:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeAsset;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/inmobi/ads/ao;

.field private D:I

.field private E:Lcom/inmobi/ads/l;

.field private F:Lcom/inmobi/ads/ac;

.field private G:Lcom/inmobi/ads/NativeAsset;

.field private H:Ljava/lang/String;

.field private I:Lcom/inmobi/ads/ac;

.field private final J:Lcom/inmobi/ads/AdContainer$a;

.field private K:Ljava/util/concurrent/ExecutorService;

.field private L:Ljava/lang/Runnable;

.field protected a:Lcom/inmobi/ads/ai;

.field public b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

.field c:Lcom/inmobi/ads/b;

.field final d:Ljava/lang/String;

.field final e:Ljava/lang/String;

.field protected f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bj;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Lcom/inmobi/ads/ViewableAd;

.field protected h:Z

.field public i:Z

.field protected j:Z

.field k:Lcom/inmobi/ads/ac;

.field protected l:Lcom/inmobi/ads/ac$c;

.field protected m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field n:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field o:Z

.field p:I

.field q:Z

.field r:Z

.field s:Landroid/content/Intent;

.field t:Lcom/inmobi/rendering/RenderView;

.field u:Lcom/inmobi/rendering/RenderView;

.field v:I

.field w:Lcom/inmobi/rendering/RenderView$a;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/rendering/RenderView;",
            ">;"
        }
    .end annotation
.end field

.field y:Lcom/inmobi/ads/ad$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ac;->z:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/ai;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/AdContainer$RenderingProperties;",
            "Lcom/inmobi/ads/ai;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bj;",
            ">;",
            "Lcom/inmobi/ads/b;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->A:Landroid/util/SparseArray;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->B:Ljava/util/List;

    .line 193
    iput-boolean v1, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 200
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    .line 202
    iput v4, p0, Lcom/inmobi/ads/ac;->D:I

    .line 206
    iput-boolean v1, p0, Lcom/inmobi/ads/ac;->o:Z

    .line 207
    iput v1, p0, Lcom/inmobi/ads/ac;->p:I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ac;->q:Z

    .line 211
    iput-boolean v1, p0, Lcom/inmobi/ads/ac;->r:Z

    .line 212
    iput-object v2, p0, Lcom/inmobi/ads/ac;->G:Lcom/inmobi/ads/NativeAsset;

    .line 213
    iput-object v2, p0, Lcom/inmobi/ads/ac;->H:Ljava/lang/String;

    .line 214
    iput-object v2, p0, Lcom/inmobi/ads/ac;->s:Landroid/content/Intent;

    .line 230
    new-instance v0, Lcom/inmobi/ads/ac$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ac$1;-><init>(Lcom/inmobi/ads/ac;)V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->J:Lcom/inmobi/ads/AdContainer$a;

    .line 262
    new-instance v0, Lcom/inmobi/ads/ac$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ac$2;-><init>(Lcom/inmobi/ads/ac;)V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->L:Ljava/lang/Runnable;

    .line 950
    new-instance v0, Lcom/inmobi/ads/ac$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ac$3;-><init>(Lcom/inmobi/ads/ac;)V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->y:Lcom/inmobi/ads/ad$a;

    .line 280
    iput-object p2, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 281
    iput-object p3, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 282
    iput-object p4, p0, Lcom/inmobi/ads/ac;->d:Ljava/lang/String;

    .line 283
    iput-object p5, p0, Lcom/inmobi/ads/ac;->e:Ljava/lang/String;

    .line 284
    invoke-virtual {p0, p0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdContainer;)V

    .line 285
    iput-boolean v1, p0, Lcom/inmobi/ads/ac;->h:Z

    .line 286
    iput-boolean v1, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 287
    iput-object p7, p0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/b;

    .line 288
    new-instance v0, Lcom/inmobi/ads/l;

    invoke-direct {v0}, Lcom/inmobi/ads/l;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->E:Lcom/inmobi/ads/l;

    .line 289
    if-eqz p6, :cond_0

    .line 290
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->f:Ljava/util/Set;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 2305
    iget-object v0, v0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3041
    iput-wide v2, v0, Lcom/inmobi/ads/ag;->z:J

    .line 293
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/ac;->a(Landroid/content/Context;)V

    .line 3631
    iput v4, p0, Lcom/inmobi/ads/ac;->v:I

    .line 295
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ac;->K:Ljava/util/concurrent/ExecutorService;

    .line 296
    iget-object v0, p0, Lcom/inmobi/ads/ac;->K:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/inmobi/ads/ac;->L:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 297
    return-void
.end method

.method private A()V
    .locals 2

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1506
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1507
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1509
    :cond_0
    return-void
.end method

.method private static a(Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v2, 0x1

    .line 675
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v5, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 678
    const/4 v0, 0x0

    .line 689
    :goto_1
    :pswitch_0
    return v0

    .line 675
    :sswitch_0
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v2

    goto :goto_0

    :sswitch_1
    const-string v7, "skip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v0

    goto :goto_0

    :sswitch_2
    const-string v7, "reload"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v1

    goto :goto_0

    :sswitch_3
    const-string v7, "replay"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v3

    goto :goto_0

    :sswitch_4
    const-string v7, "exit"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    move v5, v4

    goto :goto_0

    :sswitch_5
    const-string v7, "fullscreen"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x6

    goto :goto_0

    :sswitch_6
    const-string v7, "play"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 683
    goto :goto_1

    :pswitch_2
    move v0, v2

    .line 685
    goto :goto_1

    :pswitch_3
    move v0, v3

    .line 687
    goto :goto_1

    :pswitch_4
    move v0, v4

    .line 689
    goto :goto_1

    .line 675
    :sswitch_data_0
    .sparse-switch
        -0x37b57e67 -> :sswitch_2
        -0x37b3b819 -> :sswitch_3
        0x0 -> :sswitch_0
        0x2fb91e -> :sswitch_4
        0x348b34 -> :sswitch_6
        0x35e57f -> :sswitch_1
        0x68f7bbb -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/ai;Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 621
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/inmobi/commons/core/utilities/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    :goto_0
    return-object p1

    .line 624
    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 625
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {p2, v0}, Lcom/inmobi/ads/ai;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    .line 626
    if-nez v0, :cond_1

    .line 15326
    iget-object v0, p2, Lcom/inmobi/ads/ai;->f:Lcom/inmobi/ads/ai;

    .line 627
    invoke-direct {p0, v0, p1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/NativeAsset;

    move-result-object p1

    goto :goto_0

    .line 629
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    const/4 p1, 0x0

    goto :goto_0

    .line 632
    :cond_2
    array-length v2, v1

    if-eq v4, v2, :cond_3

    array-length v2, v1

    if-ne v3, v2, :cond_4

    .line 633
    :cond_3
    invoke-virtual {v0, v4}, Lcom/inmobi/ads/NativeAsset;->e(I)V

    move-object p1, v0

    .line 634
    goto :goto_0

    .line 636
    :cond_4
    array-length v2, v1

    if-le v2, v3, :cond_5

    .line 637
    aget-object v1, v1, v3

    invoke-static {v1}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeAsset;->e(I)V

    :cond_5
    move-object p1, v0

    .line 639
    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/NativeAsset;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 602
    if-nez p1, :cond_1

    .line 617
    :cond_0
    :goto_0
    return-object v0

    .line 603
    :cond_1
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->r()Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->s()Ljava/lang/String;

    move-result-object v2

    .line 606
    if-eqz v1, :cond_2

    .line 607
    invoke-direct {p0, p2, p1, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/ai;Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    .line 609
    :cond_2
    if-nez v0, :cond_3

    .line 610
    if-eqz v2, :cond_3

    .line 611
    invoke-direct {p0, p2, p1, v2}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/ai;Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v0

    .line 614
    :cond_3
    if-eqz v0, :cond_0

    .line 615
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Referenced asset ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(ILcom/inmobi/ads/ag;)V
    .locals 2

    .prologue
    .line 429
    .line 9532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 429
    if-eqz v0, :cond_0

    .line 439
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ac;->A:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 10041
    iput-wide v0, p2, Lcom/inmobi/ads/ag;->z:J

    .line 10592
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->h:Z

    .line 433
    if-eqz v0, :cond_1

    .line 435
    invoke-direct {p0, p2}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;

    move-result-object v0

    .line 434
    invoke-direct {p0, p2, v0}, Lcom/inmobi/ads/ac;->b(Lcom/inmobi/ads/NativeAsset;Ljava/util/Map;)V

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->B:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/NativeAsset;ILjava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1454
    const/4 v0, 0x1

    if-ne v0, p2, :cond_2

    .line 1455
    invoke-static {p3}, Lcom/inmobi/commons/core/utilities/b;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50050
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 50051
    if-eqz v0, :cond_0

    .line 50054
    invoke-static {v1}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/rendering/RenderView;)V

    .line 50055
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50056
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 50058
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50059
    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1464
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    invoke-direct {p0, p3, v1, p1}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset;)V

    goto :goto_0

    .line 1461
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->s()Ljava/lang/String;

    move-result-object v0

    .line 1462
    invoke-direct {p0, p3, v0, p1}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset;)V

    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/NativeAsset;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeAsset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 870
    const-string v0, "ads"

    const-string v1, "ReportClick"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 873
    const/4 v0, 0x2

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->m()I

    move-result v1

    if-ne v0, v1, :cond_3

    move-object v0, p1

    .line 874
    check-cast v0, Lcom/inmobi/ads/az;

    invoke-virtual {v0}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v0

    .line 875
    invoke-interface {v0}, Lcom/inmobi/ads/bq;->f()Lcom/inmobi/ads/bm;

    move-result-object v0

    .line 878
    if-eqz v0, :cond_1

    .line 29189
    iget-object v1, v0, Lcom/inmobi/ads/bm;->d:Ljava/lang/String;

    .line 878
    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->r()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 30170
    :cond_0
    iget-object v1, v0, Lcom/inmobi/ads/bm;->c:Ljava/util/List;

    .line 879
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 880
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLICK:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/bm;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;)Ljava/util/List;

    move-result-object v0

    .line 881
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTracker;

    .line 882
    invoke-static {v0, p2}, Lcom/inmobi/ads/NativeAsset;->a(Lcom/inmobi/ads/NativeTracker;Ljava/util/Map;)V

    goto :goto_0

    .line 886
    :cond_1
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLICK:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeAsset;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 891
    :cond_2
    :goto_1
    return-void

    .line 889
    :cond_3
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLICK:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeAsset;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/inmobi/ads/ac;)V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 85
    .line 50103
    iget-object v3, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 50104
    iget-object v0, v3, Lcom/inmobi/ads/ai;->e:Lorg/json/JSONArray;

    .line 50068
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50071
    invoke-virtual {v3}, Lcom/inmobi/ads/ai;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 50072
    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    .line 50074
    :cond_1
    new-instance v0, Lcom/inmobi/ads/ai;

    .line 50105
    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 50106
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-object v5, v4

    .line 50074
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ai;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/b$g;Lcom/inmobi/ads/bp;)V

    .line 50107
    iget-boolean v1, v3, Lcom/inmobi/ads/ai;->c:Z

    .line 50108
    iput-boolean v1, v0, Lcom/inmobi/ads/ai;->c:Z

    .line 50110
    iget-boolean v1, v3, Lcom/inmobi/ads/ai;->j:Z

    .line 50111
    iput-boolean v1, v0, Lcom/inmobi/ads/ai;->j:Z

    .line 50078
    iget-object v1, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 50079
    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v4, :cond_0

    .line 50080
    new-instance v5, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-direct {v5, v1}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    .line 50113
    iget-object v7, p0, Lcom/inmobi/ads/ac;->d:Ljava/lang/String;

    .line 50114
    iget-object v8, p0, Lcom/inmobi/ads/ac;->e:Ljava/lang/String;

    .line 50082
    iget-object v9, p0, Lcom/inmobi/ads/ac;->f:Ljava/util/Set;

    iget-object v10, p0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/b;

    move-object v6, v0

    .line 50081
    invoke-static/range {v4 .. v10}, Lcom/inmobi/ads/ac$b;->a(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/ai;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/b;)Lcom/inmobi/ads/ac;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ac;->F:Lcom/inmobi/ads/ac;

    .line 50087
    iget-object v0, p0, Lcom/inmobi/ads/ac;->F:Lcom/inmobi/ads/ac;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdContainer;)V

    .line 50115
    iget-object v0, p0, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 50088
    if-eqz v0, :cond_2

    .line 50089
    iget-object v0, p0, Lcom/inmobi/ads/ac;->F:Lcom/inmobi/ads/ac;

    .line 50116
    iget-object v1, p0, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 50117
    iput-object v1, v0, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 50119
    :cond_2
    iget-boolean v0, v3, Lcom/inmobi/ads/ai;->c:Z

    .line 50092
    if-eqz v0, :cond_0

    .line 50093
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/ac$4;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/ac$4;-><init>(Lcom/inmobi/ads/ac;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ac;)V
    .locals 0

    .prologue
    .line 85
    .line 50120
    iput-object p1, p0, Lcom/inmobi/ads/ac;->I:Lcom/inmobi/ads/ac;

    .line 85
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ac;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(Lcom/inmobi/ads/az;Lcom/inmobi/ads/ac;)V
    .locals 4

    .prologue
    .line 1221
    invoke-virtual {p1}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/bq;->f()Lcom/inmobi/ads/bm;

    move-result-object v1

    .line 1222
    if-eqz v1, :cond_1

    .line 49193
    iget-boolean v0, v1, Lcom/inmobi/ads/bm;->f:Z

    .line 1222
    if-eqz v0, :cond_1

    .line 1224
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_END_CARD_CLOSE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 1225
    invoke-virtual {v1, v0}, Lcom/inmobi/ads/bm;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;)Ljava/util/List;

    move-result-object v0

    .line 1226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTracker;

    .line 1227
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/NativeTracker;Ljava/util/Map;)V

    goto :goto_0

    .line 49197
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/inmobi/ads/bm;->f:Z

    .line 1232
    const-string v0, "EndCardClosed"

    .line 1233
    invoke-direct {p2}, Lcom/inmobi/ads/ac;->y()Ljava/util/Map;

    move-result-object v1

    .line 1232
    invoke-virtual {p2, v0, v1}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1235
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset;)V
    .locals 3

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1502
    :cond_0
    :goto_0
    return-void

    .line 1484
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/inmobi/commons/core/utilities/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1486
    if-eqz v0, :cond_0

    .line 1487
    invoke-static {p0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    move-result-object v1

    .line 1488
    if-eqz v1, :cond_0

    .line 50061
    iget-object v1, v1, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 1492
    if-eqz v1, :cond_2

    .line 50062
    iget-boolean v2, p0, Lcom/inmobi/ads/ac;->r:Z

    .line 1492
    if-nez v2, :cond_2

    .line 1493
    invoke-interface {v1}, Lcom/inmobi/ads/ac$c;->g()V

    .line 1497
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1498
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_FALLBACK_URL:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 1499
    invoke-direct {p0, p3}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;

    move-result-object v1

    .line 1498
    invoke-virtual {p3, v0, v1}, Lcom/inmobi/ads/NativeAsset;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1304
    invoke-static {p0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    move-result-object v0

    .line 1305
    if-eqz v0, :cond_1

    .line 50044
    iget-object v0, v0, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 1307
    if-eqz v0, :cond_0

    .line 1308
    invoke-interface {v0, p1, p2, p3}, Lcom/inmobi/ads/ac$c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1317
    :goto_0
    return-void

    .line 1310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InteractionCallback is null. Discarding telemetry event : ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1314
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Target container is null. Discarding telemetry event : ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static b(Landroid/view/View;)Lcom/inmobi/ads/NativeTimerView;
    .locals 1

    .prologue
    .line 1073
    if-eqz p0, :cond_0

    .line 1074
    const-string v0, "timerView"

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTimerView;

    .line 1076
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/inmobi/ads/ac;->F:Lcom/inmobi/ads/ac;

    return-object v0
.end method

.method private b(Lcom/inmobi/ads/NativeAsset;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeAsset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 922
    if-nez p1, :cond_0

    .line 945
    :goto_0
    return-void

    .line 927
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 929
    :try_start_0
    const-string v0, "id"

    .line 930
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->g()Ljava/lang/String;

    move-result-object v2

    .line 929
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 931
    const-string v0, "asset"

    .line 932
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->e()Lorg/json/JSONObject;

    move-result-object v2

    .line 931
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 938
    const-string v2, "type"

    const-string v3, "native"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string v2, "impId"

    iget-object v3, p0, Lcom/inmobi/ads/ac;->d:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    const-string v2, "pageJson"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v1, "ads"

    const-string v2, "PageRendered"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 944
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_PAGE_VIEW:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeAsset;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method private static c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;
    .locals 2

    .prologue
    .line 1330
    move-object v0, p0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1334
    :cond_0
    return-object v0

    .line 1333
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->l()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 50047
    iget-object v1, v0, Lcom/inmobi/ads/ac;->k:Lcom/inmobi/ads/ac;

    .line 1333
    if-eq v0, v1, :cond_0

    .line 50048
    iget-object v0, v0, Lcom/inmobi/ads/ac;->k:Lcom/inmobi/ads/ac;

    goto :goto_0
.end method

.method private c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeAsset;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 905
    const-string v0, "$LTS"

    iget-object v1, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 30305
    iget-object v1, v1, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 31045
    iget-wide v4, v1, Lcom/inmobi/ads/ag;->z:J

    .line 906
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 905
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    invoke-static {p1}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/ag;

    move-result-object v3

    .line 909
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 910
    if-eqz v3, :cond_0

    const-wide/16 v4, 0x0

    .line 32045
    iget-wide v6, v3, Lcom/inmobi/ads/ag;->z:J

    .line 910
    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 33045
    iget-wide v0, v3, Lcom/inmobi/ads/ag;->z:J

    .line 913
    :cond_0
    const-string v3, "$STS"

    .line 914
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 913
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v0, "$TS"

    .line 916
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 915
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    return-object v2
.end method

.method protected static c(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1083
    invoke-static {p0}, Lcom/inmobi/ads/ac;->b(Landroid/view/View;)Lcom/inmobi/ads/NativeTimerView;

    move-result-object v0

    .line 1084
    if-eqz v0, :cond_0

    .line 43193
    iget-object v1, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43194
    iget-object v1, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/inmobi/ads/NativeTimerView;->b:J

    .line 43195
    iget-object v0, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1087
    :cond_0
    return-void
.end method

.method protected static d(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1093
    invoke-static {p0}, Lcom/inmobi/ads/ac;->b(Landroid/view/View;)Lcom/inmobi/ads/NativeTimerView;

    move-result-object v0

    .line 1094
    if-eqz v0, :cond_0

    .line 43200
    iget-object v1, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 43201
    iget-object v1, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    iget-wide v2, v0, Lcom/inmobi/ads/NativeTimerView;->b:J

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 43202
    iget-object v0, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1097
    :cond_0
    return-void
.end method

.method static synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/inmobi/ads/ac;->z:Ljava/lang/String;

    return-object v0
.end method

.method private v()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 781
    iget-object v0, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/ai;->a(I)Lcom/inmobi/ads/ag;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/inmobi/ads/ac;->A:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 784
    invoke-direct {p0, v2, v0}, Lcom/inmobi/ads/ac;->a(ILcom/inmobi/ads/ag;)V

    .line 786
    :cond_0
    return-void
.end method

.method private w()V
    .locals 6

    .prologue
    .line 1120
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->z()Lcom/inmobi/ads/ao;

    move-result-object v0

    .line 1121
    if-eqz v0, :cond_1

    .line 44114
    iget-object v0, v0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/k;

    .line 44150
    iget-boolean v1, v0, Lcom/inmobi/ads/k;->b:Z

    if-nez v1, :cond_1

    .line 44151
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/inmobi/ads/k;->b:Z

    .line 44152
    iget-object v0, v0, Lcom/inmobi/ads/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/k$a;

    .line 44153
    iget-boolean v1, v0, Lcom/inmobi/ads/k$a;->c:Z

    if-nez v1, :cond_0

    .line 44154
    iget-object v1, v0, Lcom/inmobi/ads/k$a;->a:Landroid/animation/Animator;

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 44155
    iget-wide v4, v0, Lcom/inmobi/ads/k$a;->b:J

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 44156
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1124
    :cond_1
    return-void
.end method

.method private x()V
    .locals 8

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->z()Lcom/inmobi/ads/ao;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_1

    .line 45114
    iget-object v0, v0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/k;

    .line 45163
    iget-boolean v1, v0, Lcom/inmobi/ads/k;->b:Z

    if-eqz v1, :cond_1

    .line 45164
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/ads/k;->b:Z

    .line 45165
    iget-object v0, v0, Lcom/inmobi/ads/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/k$a;

    .line 45166
    iget-object v1, v0, Lcom/inmobi/ads/k$a;->a:Landroid/animation/Animator;

    check-cast v1, Landroid/animation/ValueAnimator;

    .line 45167
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/inmobi/ads/k$a;->b:J

    .line 45168
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v3

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v3, v4, v6

    if-nez v3, :cond_0

    .line 45169
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/inmobi/ads/k$a;->c:Z

    .line 45171
    :cond_0
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_0

    .line 1131
    :cond_1
    return-void
.end method

.method private y()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/inmobi/ads/ac;->I:Lcom/inmobi/ads/ac;

    iget-object v0, v0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    sget-object v1, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_WEBVIEW:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeAsset$AssetType;)Ljava/util/List;

    move-result-object v0

    .line 1240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 1241
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ba;

    move-object v1, v0

    .line 1242
    :goto_0
    if-nez v1, :cond_1

    const-string v0, "Static"

    .line 1244
    :goto_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1245
    const-string v3, "type"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    const-string v3, "dataType"

    if-nez v1, :cond_2

    const-string v0, "URL"

    :goto_2
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    return-object v2

    .line 1241
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 1242
    :cond_1
    const-string v0, "Rich"

    goto :goto_1

    .line 50036
    :cond_2
    iget-object v0, v1, Lcom/inmobi/ads/ba;->z:Lcom/inmobi/ads/ba$a;

    goto :goto_2
.end method

.method private z()Lcom/inmobi/ads/ao;
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 1343
    :goto_0
    if-eqz v0, :cond_0

    .line 50049
    iget-object v0, v0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    .line 1344
    iput-object v0, p0, Lcom/inmobi/ads/ac;->C:Lcom/inmobi/ads/ao;

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ac;->C:Lcom/inmobi/ads/ao;

    return-object v0

    .line 1341
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    .line 1342
    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->f()Lcom/inmobi/ads/ViewableAd$a;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/an;

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 355
    return-void
.end method

.method protected final a(ILcom/inmobi/ads/NativeAsset;)V
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcom/inmobi/ads/ac;->A:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 23532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 763
    if-eqz v0, :cond_1

    .line 768
    :cond_0
    :goto_0
    return-void

    .line 766
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->v()V

    .line 767
    check-cast p2, Lcom/inmobi/ads/ag;

    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/ac;->a(ILcom/inmobi/ads/ag;)V

    goto :goto_0
.end method

.method final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->A()V

    .line 368
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    .line 369
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 370
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 372
    :cond_0
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 830
    .line 23592
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->h:Z

    .line 830
    if-nez v0, :cond_0

    .line 24532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 830
    if-eqz v0, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 833
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ac;->h:Z

    .line 836
    iget-object v0, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 25305
    iget-object v0, v0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 836
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_RENDER:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    iget-object v2, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 26305
    iget-object v2, v2, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 838
    invoke-direct {p0, v2}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;

    move-result-object v2

    .line 837
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ag;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    .line 839
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 840
    const-string v2, "type"

    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 841
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v3

    .line 27070
    iget-object v3, v3, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 841
    if-ne v0, v3, :cond_2

    const-string v0, "int"

    .line 840
    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string v0, "clientRequestId"

    .line 27385
    iget-object v2, p0, Lcom/inmobi/ads/ac;->e:Ljava/lang/String;

    .line 843
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const-string v0, "impId"

    .line 27596
    iget-object v2, p0, Lcom/inmobi/ads/ac;->d:Ljava/lang/String;

    .line 844
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "ads"

    const-string v2, "AdRendered"

    invoke-static {v0, v2, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 850
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "ads"

    const-string v2, "ViewableBeaconFired"

    invoke-static {v0, v2, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 852
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->v()V

    .line 853
    iget-object v0, p0, Lcom/inmobi/ads/ac;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeAsset;

    .line 855
    invoke-direct {p0, v0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;

    move-result-object v2

    .line 854
    invoke-direct {p0, v0, v2}, Lcom/inmobi/ads/ac;->b(Lcom/inmobi/ads/NativeAsset;Ljava/util/Map;)V

    goto :goto_2

    .line 841
    :cond_2
    const-string v0, "native"

    goto :goto_1

    .line 857
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/ac;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 859
    invoke-static {p0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    move-result-object v0

    .line 860
    if-eqz v0, :cond_0

    .line 28403
    iget-object v0, v0, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 864
    if-eqz v0, :cond_0

    .line 865
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->d()V

    goto :goto_0
.end method

.method final a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 694
    .line 15532
    iget-boolean v1, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 694
    if-eqz v1, :cond_1

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 696
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->v()V

    .line 699
    iget-object v1, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 700
    invoke-direct {p0, v1, p2}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v1

    .line 701
    if-eqz v1, :cond_6

    .line 702
    invoke-direct {p0, v1}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;

    move-result-object v2

    .line 703
    invoke-direct {p0, v1, v2}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;Ljava/util/Map;)V

    .line 706
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 707
    invoke-direct {p0, p2, v2}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;Ljava/util/Map;)V

    .line 715
    :cond_2
    :goto_1
    invoke-static {p0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    move-result-object v1

    .line 716
    if-eqz v1, :cond_0

    .line 721
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 16403
    iget-object v1, v1, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 723
    if-eqz v1, :cond_3

    .line 724
    invoke-interface {v1}, Lcom/inmobi/ads/ac$c;->e()V

    .line 728
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    move-object v2, v1

    .line 16645
    :goto_2
    if-nez v2, :cond_7

    .line 730
    :cond_4
    :goto_3
    if-eqz v0, :cond_0

    .line 733
    if-eqz p1, :cond_5

    sget-object v1, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x5

    .line 734
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeAsset;->k()I

    move-result v2

    if-ne v1, v2, :cond_5

    .line 735
    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 736
    invoke-virtual {p2, v6}, Lcom/inmobi/ads/NativeAsset;->b(I)V

    .line 738
    :cond_5
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;)V

    goto :goto_0

    .line 711
    :cond_6
    invoke-direct {p0, p2}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;

    move-result-object v1

    .line 712
    invoke-direct {p0, p2, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;Ljava/util/Map;)V

    goto :goto_1

    .line 16646
    :cond_7
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->q()Ljava/lang/String;

    move-result-object v1

    .line 16647
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_9

    .line 16648
    :cond_8
    invoke-virtual {p2, v4}, Lcom/inmobi/ads/NativeAsset;->c(I)V

    move-object v0, p2

    .line 16649
    goto :goto_3

    .line 16652
    :cond_9
    const-string v3, "\\|"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 16653
    array-length v1, v3

    if-ne v5, v1, :cond_a

    .line 16654
    aget-object v0, v3, v4

    invoke-static {v0}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/inmobi/ads/NativeAsset;->c(I)V

    move-object v0, p2

    .line 16655
    goto :goto_3

    .line 16658
    :cond_a
    aget-object v1, v3, v4

    invoke-virtual {v2, v1}, Lcom/inmobi/ads/ai;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v1

    .line 16659
    if-nez v1, :cond_b

    .line 17326
    iget-object v1, v2, Lcom/inmobi/ads/ai;->f:Lcom/inmobi/ads/ai;

    move-object v2, v1

    .line 16660
    goto :goto_2

    .line 16663
    :cond_b
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 16665
    aget-object v0, v3, v5

    invoke-static {v0}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeAsset;->c(I)V

    .line 16667
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Referenced asset ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, v1

    .line 16668
    goto :goto_3
.end method

.method public final a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/AdContainer$EventType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 301
    .line 4532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 301
    if-eqz v0, :cond_0

    .line 316
    :goto_0
    :pswitch_0
    return-void

    .line 303
    :cond_0
    sget-object v0, Lcom/inmobi/ads/ac$8;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/AdContainer$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 310
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 5305
    iget-object v0, v0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 5895
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_LOAD:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {v0, v1, p2}, Lcom/inmobi/ads/NativeAsset;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    goto :goto_0

    .line 313
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 6305
    iget-object v0, v0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 6900
    sget-object v1, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CLIENT_FILL:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {v0, v1, p2}, Lcom/inmobi/ads/NativeAsset;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    goto :goto_0

    .line 303
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/inmobi/ads/AdContainer;)V
    .locals 1

    .prologue
    .line 396
    instance-of v0, p1, Lcom/inmobi/ads/ac;

    if-eqz v0, :cond_0

    .line 397
    check-cast p1, Lcom/inmobi/ads/ac;

    iput-object p1, p0, Lcom/inmobi/ads/ac;->k:Lcom/inmobi/ads/ac;

    .line 399
    :cond_0
    return-void
.end method

.method protected a(Lcom/inmobi/ads/NativeAsset;)V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 968
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->k()I

    move-result v0

    .line 970
    packed-switch v0, :pswitch_data_0

    .line 977
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ac;->o:Z

    .line 33606
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 978
    if-eqz v0, :cond_0

    .line 34606
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 33647
    if-eqz v0, :cond_0

    .line 35606
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 36008
    const-string v1, "window.imraid.broadcastEvent(\'skip\');"

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 981
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->f()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/ac;->c(Landroid/view/View;)V

    .line 982
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/ac;->b(Lcom/inmobi/ads/NativeAsset;)V

    .line 1070
    :cond_1
    :goto_0
    :pswitch_1
    return-void

    .line 36606
    :pswitch_2
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 986
    if-eqz v0, :cond_2

    .line 37606
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 38003
    const-string v1, "window.imraid.broadcastEvent(\'replay\');"

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 990
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 991
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->f()Landroid/view/View;

    move-result-object v1

    .line 992
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 993
    if-eqz v0, :cond_3

    .line 994
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38391
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/ac;->k:Lcom/inmobi/ads/ac;

    .line 1001
    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->f()Landroid/view/View;

    move-result-object v0

    .line 39103
    invoke-static {v0}, Lcom/inmobi/ads/ac;->b(Landroid/view/View;)Lcom/inmobi/ads/NativeTimerView;

    move-result-object v0

    .line 39104
    if-eqz v0, :cond_4

    .line 39186
    iget-object v2, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 39187
    iget-object v2, v0, Lcom/inmobi/ads/NativeTimerView;->c:Landroid/animation/ValueAnimator;

    iget-wide v4, v0, Lcom/inmobi/ads/NativeTimerView;->a:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 39188
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/NativeTimerView;->a(F)V

    .line 1003
    :cond_4
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v2

    if-eq v0, v2, :cond_5

    .line 1004
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Action 3 not valid for asset of type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in handling replay action on video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1037
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in replaying video"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 1008
    :cond_5
    :try_start_1
    instance-of v0, v1, Lcom/inmobi/ads/ay;

    if-eqz v0, :cond_1

    .line 1010
    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 1011
    if-eqz v0, :cond_1

    .line 1012
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v2

    .line 1013
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 1014
    if-eqz v0, :cond_7

    .line 39194
    iget-boolean v3, v0, Lcom/inmobi/ads/az;->A:Z

    .line 1015
    if-eqz v3, :cond_6

    .line 1016
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->e()V

    .line 1030
    :goto_1
    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/az;Lcom/inmobi/ads/ac;)V

    .line 1031
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->start()V

    goto/16 :goto_0

    .line 1018
    :cond_6
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->d()V

    goto :goto_1

    .line 1021
    :cond_7
    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 39363
    iget-object v4, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 40070
    iget-object v4, v4, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 1021
    if-ne v3, v4, :cond_8

    .line 1022
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->e()V

    goto :goto_1

    .line 1024
    :cond_8
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeVideoView;->d()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 40606
    :pswitch_3
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 1044
    if-eqz v0, :cond_9

    .line 41606
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 42013
    const-string v1, "window.imraid.broadcastEvent(\'close\');"

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 1047
    :cond_9
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1048
    :catch_1
    move-exception v0

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in handling exit action on video: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1051
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in exiting video"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 1058
    :pswitch_4
    :try_start_3
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 42363
    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 43070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 1058
    if-ne v0, v1, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->m()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 1061
    :catch_2
    move-exception v0

    .line 1062
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in handling fullscreen action "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1064
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in launching fullscreen ad"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 970
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method final a(Lcom/inmobi/ads/NativeAsset;Z)V
    .locals 6

    .prologue
    .line 746
    iget-object v0, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 18318
    iget-boolean v0, v0, Lcom/inmobi/ads/ai;->j:Z

    .line 746
    if-eqz v0, :cond_0

    .line 18532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 747
    if-eqz v0, :cond_1

    .line 19447
    :cond_0
    :goto_0
    return-void

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 750
    invoke-direct {p0, v0, p1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeAsset;)Lcom/inmobi/ads/NativeAsset;

    move-result-object v1

    .line 752
    if-eqz v1, :cond_0

    .line 753
    invoke-direct {p0, v1}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;

    move-result-object v3

    .line 754
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeAsset;->i()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeAsset;->a(I)V

    .line 19401
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->a()Lcom/inmobi/ads/NativeAsset$AssetType;

    move-result-object v0

    sget-object v2, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19402
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    if-eqz v0, :cond_3

    .line 19403
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v2, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_CLICK_THRU:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 19406
    :cond_3
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->i()I

    move-result v4

    .line 19407
    if-eqz v4, :cond_0

    .line 19410
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->r()Ljava/lang/String;

    move-result-object v2

    .line 19412
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->q:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq v0, v4, :cond_0

    .line 19418
    :cond_4
    const/4 v0, 0x2

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->m()I

    move-result v5

    if-ne v0, v5, :cond_7

    move-object v0, v1

    .line 19419
    check-cast v0, Lcom/inmobi/ads/az;

    invoke-virtual {v0}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v0

    .line 19420
    invoke-interface {v0}, Lcom/inmobi/ads/bq;->f()Lcom/inmobi/ads/bm;

    move-result-object v0

    .line 19421
    if-eqz v0, :cond_7

    .line 20189
    iget-object v5, v0, Lcom/inmobi/ads/bm;->d:Ljava/lang/String;

    .line 19421
    if-eqz v5, :cond_7

    .line 21189
    iget-object v5, v0, Lcom/inmobi/ads/bm;->d:Ljava/lang/String;

    .line 19422
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 22189
    iget-object v0, v0, Lcom/inmobi/ads/bm;->d:Ljava/lang/String;

    .line 19427
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 19431
    invoke-static {v0, v3}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 22589
    iget-boolean v2, p0, Lcom/inmobi/ads/ac;->r:Z

    .line 19432
    if-eqz v2, :cond_6

    if-nez p2, :cond_6

    .line 19433
    invoke-static {p0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    move-result-object v2

    .line 19434
    if-eqz v2, :cond_0

    .line 23403
    iget-object v2, v2, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 19439
    if-eqz v2, :cond_5

    const/4 v3, 0x1

    if-ne v3, v4, :cond_5

    .line 19440
    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 19441
    invoke-interface {v2}, Lcom/inmobi/ads/ac$c;->c()V

    .line 19445
    :goto_2
    iput-object v1, p0, Lcom/inmobi/ads/ac;->G:Lcom/inmobi/ads/NativeAsset;

    .line 19446
    iput-object v0, p0, Lcom/inmobi/ads/ac;->H:Ljava/lang/String;

    goto/16 :goto_0

    .line 19443
    :cond_5
    invoke-interface {v2}, Lcom/inmobi/ads/ac$c;->g()V

    goto :goto_2

    .line 19448
    :cond_6
    invoke-direct {p0, v1, v4, v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v2

    goto :goto_1
.end method

.method public final a(Lcom/inmobi/ads/ac$c;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 408
    return-void
.end method

.method public final a(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/inmobi/ads/ac;->x:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1367
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->x:Ljava/util/List;

    .line 1370
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ac;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/ac;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1371
    :cond_1
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1321
    :try_start_0
    const-string v0, "clientRequestId"

    .line 50045
    iget-object v1, p0, Lcom/inmobi/ads/ac;->e:Ljava/lang/String;

    .line 1321
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    const-string v0, "impId"

    .line 50046
    iget-object v1, p0, Lcom/inmobi/ads/ac;->d:Ljava/lang/String;

    .line 1322
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "ads"

    invoke-static {v0, p1, p2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1327
    :goto_0
    return-void

    .line 1324
    :catch_0
    move-exception v0

    .line 1325
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in sendTelemetryEvent : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 959
    if-eqz p1, :cond_0

    .line 960
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->w()V

    .line 964
    :goto_0
    return-void

    .line 962
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->x()V

    goto :goto_0
.end method

.method public final b()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 1253
    .line 50037
    :try_start_0
    iget-boolean v1, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 1253
    if-eqz v1, :cond_1

    .line 1301
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    invoke-static {p0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    move-result-object v2

    .line 1257
    if-eqz v2, :cond_0

    .line 1261
    invoke-virtual {v2}, Lcom/inmobi/ads/ac;->o()V

    .line 1263
    invoke-static {v2}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Ljava/lang/Object;)V

    .line 1264
    instance-of v1, v2, Lcom/inmobi/ads/ay;

    if-eqz v1, :cond_3

    .line 1265
    move-object v0, v2

    check-cast v0, Lcom/inmobi/ads/ay;

    move-object v1, v0

    .line 1266
    invoke-virtual {v1}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 1267
    if-eqz v3, :cond_3

    .line 1268
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v4

    .line 1269
    invoke-virtual {v4}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/az;

    .line 1273
    invoke-virtual {v3}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v6

    const-string v7, "seekPosition"

    invoke-virtual {v4}, Lcom/inmobi/ads/NativeVideoView;->getCurrentPosition()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    invoke-virtual {v3}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v6

    const-string v7, "lastMediaVolume"

    invoke-virtual {v4}, Lcom/inmobi/ads/NativeVideoView;->getVolume()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50038
    iget-object v4, v3, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 1276
    if-eqz v4, :cond_2

    .line 50039
    iget-object v4, v3, Lcom/inmobi/ads/NativeAsset;->y:Lcom/inmobi/ads/NativeAsset;

    .line 1277
    check-cast v4, Lcom/inmobi/ads/az;

    invoke-virtual {v4, v3}, Lcom/inmobi/ads/az;->a(Lcom/inmobi/ads/az;)V

    .line 1280
    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/az;Lcom/inmobi/ads/ac;)V

    .line 1283
    :cond_3
    iget-object v1, v2, Lcom/inmobi/ads/ac;->n:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_5

    move-object v2, v5

    .line 1285
    :goto_1
    if-eqz v2, :cond_4

    instance-of v1, v2, Lcom/inmobi/rendering/InMobiAdActivity;

    if-eqz v1, :cond_4

    .line 1286
    move-object v0, v2

    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity;

    move-object v1, v0

    .line 50040
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    .line 1287
    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 1288
    iget v1, p0, Lcom/inmobi/ads/ac;->D:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_4

    .line 1289
    const/4 v1, 0x0

    iget v3, p0, Lcom/inmobi/ads/ac;->D:I

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 50042
    :cond_4
    iget-object v1, p0, Lcom/inmobi/ads/ac;->k:Lcom/inmobi/ads/ac;

    .line 1292
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/inmobi/ads/ac;->F:Lcom/inmobi/ads/ac;

    .line 50043
    iget-object v1, p0, Lcom/inmobi/ads/ac;->k:Lcom/inmobi/ads/ac;

    .line 1293
    iget-object v1, v1, Lcom/inmobi/ads/ac;->K:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/inmobi/ads/ac;->L:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1294
    :catch_0
    move-exception v1

    .line 1295
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Encountered unexpected error in handling exit action on video: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v3, "InMobi"

    const-string v4, "SDK encountered unexpected error in exiting video"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 1283
    :cond_5
    :try_start_1
    iget-object v1, v2, Lcom/inmobi/ads/ac;->n:Ljava/lang/ref/WeakReference;

    .line 1284
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    goto :goto_1
.end method

.method public final b(Lcom/inmobi/ads/NativeAsset;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1664
    const-string v0, "EndCardRequested"

    invoke-direct {p0}, Lcom/inmobi/ads/ac;->y()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 50063
    iget-object v1, p0, Lcom/inmobi/ads/ac;->I:Lcom/inmobi/ads/ac;

    .line 1666
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->f()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1668
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->f()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1669
    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1671
    if-eqz v2, :cond_0

    .line 1672
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1674
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1675
    invoke-direct {v1}, Lcom/inmobi/ads/ac;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    const-string v0, "EndCardDisplayed"

    invoke-direct {p0}, Lcom/inmobi/ads/ac;->y()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 1691
    instance-of v0, p1, Lcom/inmobi/ads/az;

    if-eqz v0, :cond_1

    .line 1692
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;

    move-result-object v1

    .line 1693
    check-cast p1, Lcom/inmobi/ads/az;

    invoke-virtual {p1}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/bq;->f()Lcom/inmobi/ads/bm;

    move-result-object v2

    .line 1694
    if-eqz v2, :cond_1

    .line 1695
    sget-object v0, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_CREATIVE_VIEW:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/bm;->a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;)Ljava/util/List;

    move-result-object v0

    .line 1696
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTracker;

    .line 1697
    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeAsset;->a(Lcom/inmobi/ads/NativeTracker;Ljava/util/Map;)V

    goto :goto_0

    .line 1679
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1711
    :cond_1
    :goto_1
    return-void

    .line 1683
    :catch_0
    move-exception v0

    .line 1685
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->b()V

    .line 1686
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1

    .line 50064
    :cond_2
    iput-boolean v5, v2, Lcom/inmobi/ads/bm;->f:Z

    goto :goto_1

    .line 1707
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "Failed to show end card"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->b()V

    goto :goto_1
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 532
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    return v0
.end method

.method public final d()Landroid/content/Context;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method public destroy()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 536
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->i:Z

    if-eqz v0, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    iput-boolean v1, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 540
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/ac;->D:I

    .line 541
    iget-object v0, p0, Lcom/inmobi/ads/ac;->F:Lcom/inmobi/ads/ac;

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/inmobi/ads/ac;->F:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->b()V

    .line 545
    :cond_2
    iput-boolean v1, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 546
    iput-object v4, p0, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 548
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->z()Lcom/inmobi/ads/ao;

    move-result-object v1

    .line 549
    if-eqz v1, :cond_4

    .line 13114
    iget-object v2, v1, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/k;

    .line 13177
    iget-object v0, v2, Lcom/inmobi/ads/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/k$a;

    .line 13178
    iget-object v0, v0, Lcom/inmobi/ads/k$a;->a:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_1

    .line 13180
    :cond_3
    iget-object v0, v2, Lcom/inmobi/ads/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 551
    invoke-virtual {v1}, Lcom/inmobi/ads/ao;->b()V

    .line 553
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/ac;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 554
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    if-eqz v0, :cond_5

    .line 555
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 556
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    .line 558
    :cond_5
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->A()V

    .line 559
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 560
    iget-object v0, p0, Lcom/inmobi/ads/ac;->n:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_6

    .line 561
    iget-object v0, p0, Lcom/inmobi/ads/ac;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 563
    :cond_6
    iget-object v0, p0, Lcom/inmobi/ads/ac;->x:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 564
    iget-object v0, p0, Lcom/inmobi/ads/ac;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 566
    :cond_7
    iput-object v4, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 567
    iput-object v4, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 569
    iget-object v0, p0, Lcom/inmobi/ads/ac;->I:Lcom/inmobi/ads/ac;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/inmobi/ads/ac;->I:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->destroy()V

    .line 571
    iput-object v4, p0, Lcom/inmobi/ads/ac;->I:Lcom/inmobi/ads/ac;

    goto :goto_0
.end method

.method public final e()Lcom/inmobi/ads/ac$c;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    return-object v0
.end method

.method public final f()Landroid/view/View;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method final g()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 11305
    iget-object v0, v0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ag;

    .line 448
    invoke-direct {p0, v0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/NativeAsset;)Ljava/util/Map;

    move-result-object v0

    .line 449
    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_LOADED:Lcom/inmobi/ads/AdContainer$EventType;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V

    .line 450
    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_SERVED:Lcom/inmobi/ads/AdContainer$EventType;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V

    .line 451
    return-void
.end method

.method public getApkDownloader()Lcom/inmobi/ads/l;
    .locals 1

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/inmobi/ads/ac;->E:Lcom/inmobi/ads/l;

    return-object v0
.end method

.method public bridge synthetic getDataModel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 85
    .line 50066
    iget-object v0, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 85
    return-object v0
.end method

.method public getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/inmobi/ads/ac;->J:Lcom/inmobi/ads/AdContainer$a;

    return-object v0
.end method

.method public getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;
    .locals 1

    .prologue
    .line 359
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    return-object v0
.end method

.method public getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    return-object v0
.end method

.method public getVideoContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewableAd()Lcom/inmobi/ads/ViewableAd;
    .locals 7

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->j()Landroid/content/Context;

    move-result-object v2

    .line 457
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    if-nez v0, :cond_1

    if-eqz v2, :cond_1

    .line 458
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->g()V

    .line 459
    new-instance v0, Lcom/inmobi/ads/u;

    new-instance v1, Lcom/inmobi/ads/bt;

    iget-object v3, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    invoke-direct {v1, p0, v3}, Lcom/inmobi/ads/bt;-><init>(Lcom/inmobi/ads/ac;Lcom/inmobi/rendering/RenderView;)V

    invoke-direct {v0, v2, p0, v1}, Lcom/inmobi/ads/u;-><init>(Landroid/content/Context;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ViewableAd;)V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    .line 461
    iget-object v0, p0, Lcom/inmobi/ads/ac;->f:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 462
    instance-of v0, v2, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 464
    :try_start_0
    check-cast v2, Landroid/app/Activity;

    .line 465
    iget-object v0, p0, Lcom/inmobi/ads/ac;->f:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bj;

    .line 466
    sget-object v1, Lcom/inmobi/ads/ac$8;->b:[I

    iget-object v3, v0, Lcom/inmobi/ads/bj;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit$AdTrackerType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 11627
    :pswitch_0
    iget v1, p0, Lcom/inmobi/ads/ac;->v:I

    .line 471
    if-nez v1, :cond_0

    .line 472
    iget-object v1, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v3, "avidAdSession"

    .line 473
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;

    .line 474
    iget-object v1, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v3, "deferred"

    .line 475
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v1, "deferred"

    .line 476
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v5, 0x1

    .line 477
    :goto_1
    if-eqz v4, :cond_0

    .line 478
    new-instance v0, Lcom/inmobi/ads/p;

    iget-object v3, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/p;-><init>(Lcom/inmobi/ads/AdContainer;Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;Z)V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception occurred while creating the Display viewable ad : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 510
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    return-object v0

    .line 476
    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    .line 12627
    :pswitch_1
    :try_start_1
    iget v1, p0, Lcom/inmobi/ads/ac;->v:I

    .line 487
    if-nez v1, :cond_3

    .line 488
    new-instance v1, Lcom/inmobi/ads/y;

    iget-object v3, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    iget-object v0, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/inmobi/ads/y;-><init>(Lcom/inmobi/ads/AdContainer;Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    goto :goto_0

    .line 490
    :cond_3
    iget-object v1, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v3, "zMoatIID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    new-instance v1, Lcom/inmobi/ads/z;

    iget-object v3, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    iget-object v0, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v0}, Lcom/inmobi/ads/z;-><init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 503
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 504
    const-string v1, "type"

    const-string v2, "native"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v1, "impId"

    iget-object v2, p0, Lcom/inmobi/ads/ac;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v1, "ads"

    const-string v2, "TrackersForService"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final h()Lcom/inmobi/ads/ai;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    return-object v0
.end method

.method i()Z
    .locals 2

    .prologue
    .line 581
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 13363
    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 14070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 582
    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->l()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 581
    goto :goto_0
.end method

.method protected final j()Landroid/content/Context;
    .locals 2

    .prologue
    .line 587
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 14363
    iget-object v1, p0, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 15070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 587
    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 588
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->l()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method protected final k()Z
    .locals 1

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->h:Z

    return v0
.end method

.method public final l()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/inmobi/ads/ac;->n:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ac;->n:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method final m()V
    .locals 2

    .prologue
    .line 1172
    invoke-static {p0}, Lcom/inmobi/ads/ac;->c(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    move-result-object v0

    .line 1173
    if-nez v0, :cond_0

    .line 1201
    :goto_0
    return-void

    .line 45403
    :cond_0
    iget-object v0, v0, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 1176
    if-eqz v0, :cond_1

    .line 1177
    invoke-interface {v0}, Lcom/inmobi/ads/ac$c;->c()V

    .line 1180
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->K:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/ads/ac$5;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/ac$5;-><init>(Lcom/inmobi/ads/ac;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method n()Z
    .locals 1

    .prologue
    .line 1204
    const/4 v0, 0x0

    return v0
.end method

.method final o()V
    .locals 2

    .prologue
    .line 1208
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1209
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ac;->o:Z

    .line 46403
    iget-object v0, p0, Lcom/inmobi/ads/ac;->l:Lcom/inmobi/ads/ac$c;

    .line 1211
    if-eqz v0, :cond_0

    .line 46528
    iget-object v1, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 47347
    iget-object v1, v1, Lcom/inmobi/ads/ai;->g:Ljava/util/Map;

    .line 1211
    if-eqz v1, :cond_0

    .line 47528
    iget-object v1, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 48347
    iget-object v1, v1, Lcom/inmobi/ads/ai;->g:Ljava/util/Map;

    .line 1212
    invoke-interface {v0, v1}, Lcom/inmobi/ads/ac$c;->a(Ljava/util/Map;)V

    .line 1215
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1513
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1579
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    if-eqz v0, :cond_0

    .line 1580
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$ActivityState;->ACTIVITY_DESTROYED:Lcom/inmobi/ads/ViewableAd$ActivityState;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    .line 1582
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1547
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1543
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1575
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1517
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->l()Landroid/app/Activity;

    move-result-object v0

    .line 1519
    if-nez v0, :cond_0

    .line 1520
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1522
    :cond_0
    if-eqz v0, :cond_1

    .line 1523
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1524
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->p()V

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    if-eqz v0, :cond_2

    .line 1529
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$ActivityState;->ACTIVITY_STARTED:Lcom/inmobi/ads/ViewableAd$ActivityState;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    .line 1531
    :cond_2
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 1551
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->l()Landroid/app/Activity;

    move-result-object v0

    .line 1553
    if-nez v0, :cond_0

    .line 1554
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1556
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1557
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->q()V

    .line 1560
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    if-eqz v0, :cond_2

    .line 1561
    iget-object v0, p0, Lcom/inmobi/ads/ac;->g:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$ActivityState;->ACTIVITY_STOPPED:Lcom/inmobi/ads/ViewableAd$ActivityState;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    .line 1563
    :cond_2
    return-void
.end method

.method final p()V
    .locals 1

    .prologue
    .line 1534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/ac;->j:Z

    .line 1535
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->f()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/ac;->d(Landroid/view/View;)V

    .line 1538
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->w()V

    .line 1539
    return-void
.end method

.method q()V
    .locals 1

    .prologue
    .line 1566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ac;->j:Z

    .line 1567
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->f()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/ac;->c(Landroid/view/View;)V

    .line 1570
    invoke-direct {p0}, Lcom/inmobi/ads/ac;->x()V

    .line 1571
    return-void
.end method

.method final r()V
    .locals 3

    .prologue
    .line 1593
    iget-object v0, p0, Lcom/inmobi/ads/ac;->G:Lcom/inmobi/ads/NativeAsset;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/ac;->H:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1594
    iget-object v0, p0, Lcom/inmobi/ads/ac;->G:Lcom/inmobi/ads/NativeAsset;

    iget-object v1, p0, Lcom/inmobi/ads/ac;->G:Lcom/inmobi/ads/NativeAsset;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeAsset;->i()I

    move-result v1

    iget-object v2, p0, Lcom/inmobi/ads/ac;->H:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/NativeAsset;ILjava/lang/String;)V

    .line 1598
    :cond_0
    :goto_0
    return-void

    .line 1595
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac;->s:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Lcom/inmobi/ads/ac;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/inmobi/ads/ac;->s:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method final s()Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/inmobi/ads/ac;->u:Lcom/inmobi/rendering/RenderView;

    .line 1614
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    goto :goto_0
.end method

.method public setExitAnimation(I)V
    .locals 0

    .prologue
    .line 350
    iput p1, p0, Lcom/inmobi/ads/ac;->D:I

    .line 351
    return-void
.end method

.method public setFullScreenActivityContext(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 772
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/ac;->n:Ljava/lang/ref/WeakReference;

    .line 773
    return-void
.end method

.method public setRequestedScreenOrientation()V
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->l()Landroid/app/Activity;

    move-result-object v0

    .line 321
    if-eqz v0, :cond_0

    .line 7532
    iget-boolean v1, p0, Lcom/inmobi/ads/ac;->i:Z

    .line 321
    if-nez v1, :cond_0

    .line 8528
    iget-object v1, p0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 9310
    iget v1, v1, Lcom/inmobi/ads/ai;->a:I

    .line 323
    packed-switch v1, :pswitch_data_0

    .line 332
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 325
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 328
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final t()V
    .locals 1

    .prologue
    .line 1643
    new-instance v0, Lcom/inmobi/ads/ac$a;

    invoke-direct {v0, p0, p0}, Lcom/inmobi/ads/ac$a;-><init>(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ac;)V

    invoke-virtual {v0}, Lcom/inmobi/ads/ac$a;->start()V

    .line 1644
    return-void
.end method
