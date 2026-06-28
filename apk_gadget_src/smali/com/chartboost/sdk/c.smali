.class public Lcom/chartboost/sdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/c$c;,
        Lcom/chartboost/sdk/c$a;,
        Lcom/chartboost/sdk/c$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/chartboost/sdk/d;

.field b:Lcom/chartboost/sdk/Libraries/j;

.field c:Lcom/chartboost/sdk/CBImpressionActivity;

.field d:Lcom/chartboost/sdk/Model/c;

.field final e:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final f:Lcom/chartboost/sdk/impl/ac;

.field private final g:Lcom/chartboost/sdk/h;

.field private final h:Lcom/chartboost/sdk/Tracking/a;

.field private final i:Landroid/os/Handler;

.field private j:Z

.field private final k:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/lang/Runnable;

.field private m:Lcom/chartboost/sdk/Libraries/j;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/chartboost/sdk/impl/ac;Lcom/chartboost/sdk/h;Lcom/chartboost/sdk/Tracking/a;Landroid/os/Handler;Lcom/chartboost/sdk/d;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v2, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    .line 43
    iput-object v2, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 44
    iput-object v2, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/c;->j:Z

    .line 50
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->k:Ljava/util/HashSet;

    .line 70
    iput-object p2, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/impl/ac;

    .line 71
    iput-object p3, p0, Lcom/chartboost/sdk/c;->g:Lcom/chartboost/sdk/h;

    .line 72
    iput-object p4, p0, Lcom/chartboost/sdk/c;->h:Lcom/chartboost/sdk/Tracking/a;

    .line 73
    iput-object p5, p0, Lcom/chartboost/sdk/c;->i:Landroid/os/Handler;

    .line 74
    iput-object p6, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/d;

    .line 76
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    .line 77
    const-string v0, "CBUIManager.assignHostActivityRef"

    iget-object v1, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    new-instance v0, Lcom/chartboost/sdk/c$b;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/c$b;-><init>(Lcom/chartboost/sdk/c;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->l:Ljava/lang/Runnable;

    .line 81
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Lcom/chartboost/sdk/c$a;

    invoke-direct {v0, p0, v2}, Lcom/chartboost/sdk/c$a;-><init>(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/c$1;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iput-object v2, p0, Lcom/chartboost/sdk/c;->e:Landroid/app/Application$ActivityLifecycleCallbacks;

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/c;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/c;->l:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/c;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/chartboost/sdk/c;->l:Ljava/lang/Runnable;

    return-object p1
.end method

.method private a(IZ)V
    .locals 2

    .prologue
    .line 175
    if-eqz p2, :cond_0

    .line 176
    iget-object v0, p0, Lcom/chartboost/sdk/c;->k:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->k:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Lcom/chartboost/sdk/Libraries/j;Z)V
    .locals 1

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 191
    :goto_0
    return-void

    .line 190
    :cond_0
    iget v0, p1, Lcom/chartboost/sdk/Libraries/j;->a:I

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/c;->a(IZ)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/Libraries/j;Z)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/Libraries/j;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/c;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/c;->i:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Lcom/chartboost/sdk/Libraries/j;Z)V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method private b(Lcom/chartboost/sdk/Libraries/j;)Z
    .locals 2

    .prologue
    .line 211
    if-nez p1, :cond_0

    .line 212
    const/4 v0, 0x0

    .line 213
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->k:Ljava/util/HashSet;

    iget v1, p1, Lcom/chartboost/sdk/Libraries/j;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private c(Lcom/chartboost/sdk/Libraries/j;)Z
    .locals 1

    .prologue
    .line 244
    if-nez p1, :cond_1

    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    .line 245
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/chartboost/sdk/c;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/chartboost/sdk/c;->l()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/c;)Lcom/chartboost/sdk/h;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/chartboost/sdk/c;->g:Lcom/chartboost/sdk/h;

    return-object v0
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result v0

    return v0
.end method

.method private l(Landroid/app/Activity;)Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 535
    const-string v1, "CBUIManager.closeImpressionImpl"

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v1

    .line 537
    if-eqz v1, :cond_1

    iget v2, v1, Lcom/chartboost/sdk/Model/c;->l:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 538
    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/c;->q()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    :goto_0
    return v0

    .line 540
    :cond_0
    new-instance v1, Lcom/chartboost/sdk/c$c;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    invoke-static {v1}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 543
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/c;->m:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/c;->m:Lcom/chartboost/sdk/Libraries/j;

    iget v0, v0, Lcom/chartboost/sdk/Libraries/j;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 90
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Libraries/j;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/chartboost/sdk/c;->m:Lcom/chartboost/sdk/Libraries/j;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/c;->m:Lcom/chartboost/sdk/Libraries/j;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 315
    new-instance v4, Landroid/content/Intent;

    const-class v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v4, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    move v0, v1

    .line 319
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_2

    move v3, v1

    .line 321
    :goto_1
    const-string v5, "paramFullscreen"

    if-eqz v0, :cond_0

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    const-string v0, "isChartboost"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 324
    :try_start_0
    invoke-virtual {p1, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/c;->j:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 317
    goto :goto_0

    :cond_2
    move v3, v2

    .line 319
    goto :goto_1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    const-string v0, "CBUIManager"

    const-string v1, "Chartboost impression activity not declared in manifest. Please add the following inside your manifest\'s <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    .line 332
    const-string v0, "CBUIManager"

    const-string v1, "CBImpression Activity is missing in the manifest"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_2
.end method

.method a(Landroid/app/Activity;Z)V
    .locals 1

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 203
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/c;->a(IZ)V

    goto :goto_0
.end method

.method a(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .locals 2

    .prologue
    .line 151
    const-string v0, "CBUIManager.setImpressionActivity"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p1}, Lcom/chartboost/sdk/CBImpressionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 154
    iput-object p1, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method a(Lcom/chartboost/sdk/Libraries/j;)V
    .locals 1

    .prologue
    .line 339
    const-string v0, "CBUIManager.onStop"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/j;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->g:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->c()V

    .line 344
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Model/c;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 258
    const-string v0, "CBUIManager.queueDisplayView"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 259
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    .line 312
    :goto_0
    return-void

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/d;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_0

    .line 270
    :cond_1
    invoke-direct {p0}, Lcom/chartboost/sdk/c;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 271
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 275
    :cond_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->a()Landroid/app/Activity;

    move-result-object v0

    .line 276
    if-nez v0, :cond_3

    .line 277
    const-string v0, "CBUIManager"

    const-string v1, "Failed to display impression as the host activity reference has been lost!"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 281
    :cond_3
    iget-object v1, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    if-eq v1, p1, :cond_4

    .line 283
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Model/c;->a(Lcom/chartboost/sdk/Model/CBError$CBImpressionError;)V

    goto :goto_0

    .line 287
    :cond_4
    iput-object p1, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    .line 289
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    if-eqz v1, :cond_6

    .line 290
    iget v1, p1, Lcom/chartboost/sdk/Model/c;->n:I

    if-eq v1, v3, :cond_5

    iget v1, p1, Lcom/chartboost/sdk/Model/c;->n:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_7

    .line 292
    :cond_5
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/chartboost/sdk/a;->willDisplayVideo(Ljava/lang/String;)V

    .line 298
    :cond_6
    :goto_1
    sget-object v1, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v1, :cond_8

    .line 304
    new-instance v1, Lcom/chartboost/sdk/c$c;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 305
    iput-object v0, v1, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 306
    iput-object p1, v1, Lcom/chartboost/sdk/c$c;->d:Lcom/chartboost/sdk/Model/c;

    .line 307
    iget-object v0, p0, Lcom/chartboost/sdk/c;->i:Landroid/os/Handler;

    int-to-long v2, v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 293
    :cond_7
    iget v1, p1, Lcom/chartboost/sdk/Model/c;->n:I

    if-nez v1, :cond_6

    .line 294
    sget-object v1, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/chartboost/sdk/a;->willDisplayInterstitial(Ljava/lang/String;)V

    goto :goto_1

    .line 311
    :cond_8
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)V

    goto :goto_0
.end method

.method public b()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object v0
.end method

.method b(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 347
    const-string v0, "CBUIManager.onCreateCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 348
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 351
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 352
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public b(Lcom/chartboost/sdk/Model/c;)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 582
    iget v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 583
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->b(Lcom/chartboost/sdk/Model/c;)V

    .line 593
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    iget-object v0, p0, Lcom/chartboost/sdk/c;->h:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_1
    return-void

    .line 586
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v0, v0, Lcom/chartboost/sdk/Model/a;->b:I

    if-ne v0, v2, :cond_0

    iget v0, p1, Lcom/chartboost/sdk/Model/c;->l:I

    if-ne v0, v2, :cond_0

    .line 587
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v0

    .line 588
    if-eqz v0, :cond_0

    .line 589
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_0

    .line 596
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/c;->h:Lcom/chartboost/sdk/Tracking/a;

    iget-object v1, p1, Lcom/chartboost/sdk/Model/c;->a:Lcom/chartboost/sdk/impl/a;

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/a;->a(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/Model/c;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Model/c;->o()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/chartboost/sdk/Tracking/a;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method b(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)Z
    .locals 4

    .prologue
    .line 622
    .line 623
    if-eqz p2, :cond_0

    .line 624
    iget v0, p2, Lcom/chartboost/sdk/Model/c;->l:I

    packed-switch v0, :pswitch_data_0

    .line 654
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 629
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_0

    .line 632
    :pswitch_2
    invoke-virtual {p2}, Lcom/chartboost/sdk/Model/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 636
    const/4 v0, 0x0

    goto :goto_1

    .line 639
    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_0

    .line 641
    const-string v1, "CBUIManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error onActivityStart "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/chartboost/sdk/Model/c;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_0

    .line 624
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public c()Lcom/chartboost/sdk/d;
    .locals 1

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->b()Landroid/app/Activity;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->a:Lcom/chartboost/sdk/d;

    goto :goto_0
.end method

.method c(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 363
    const-string v0, "CBUIManager.onCreateImpl"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Libraries/j;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/chartboost/sdk/c;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;)V

    .line 367
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 373
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    .line 374
    const-string v0, "CBUIManager.assignHostActivityRef"

    iget-object v1, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    return-void
.end method

.method d()Lcom/chartboost/sdk/Model/c;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v1

    .line 128
    if-nez v1, :cond_1

    move-object v1, v0

    .line 130
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/au;->f()Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    :cond_0
    :goto_1
    return-object v0

    .line 128
    :cond_1
    invoke-virtual {v1}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/impl/au;

    move-result-object v1

    goto :goto_0

    .line 133
    :cond_2
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/au;->e()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    goto :goto_1
.end method

.method d(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 378
    const-string v0, "CBUIManager.onStartCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 380
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 383
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 384
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 385
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method e(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 396
    const-string v0, "CBUIManager.onStartImpl"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 398
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 399
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    .line 400
    const-string v0, "CBUIManager.assignHostActivityRef"

    iget-object v3, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    invoke-static {v0, v3}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 407
    :goto_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->i:Landroid/os/Handler;

    iget-object v3, p0, Lcom/chartboost/sdk/c;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 412
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$CBFramework;->doesWrapperUseCustomBackgroundingBehavior()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 413
    :goto_1
    if-eqz p1, :cond_0

    if-nez v0, :cond_3

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/c;->l(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 429
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-object v0, p1

    .line 404
    check-cast v0, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 412
    goto :goto_1

    .line 416
    :cond_3
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 418
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_4

    .line 419
    iput-boolean v2, p0, Lcom/chartboost/sdk/c;->j:Z

    .line 422
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/c;->b(Landroid/app/Activity;Lcom/chartboost/sdk/Model/c;)Z

    move-result v0

    .line 423
    if-eqz v0, :cond_5

    .line 424
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    .line 426
    :cond_5
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 427
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->s()V

    goto :goto_2
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "CBUIManager.clearImpressionActivity"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 166
    return-void
.end method

.method f(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 432
    const-string v0, "CBUIManager.onResumeCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 433
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/c;->g:Lcom/chartboost/sdk/h;

    invoke-virtual {v0}, Lcom/chartboost/sdk/h;->e()V

    .line 437
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 438
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 439
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method g()V
    .locals 2

    .prologue
    .line 443
    const-string v0, "CBUIManager.onResumeImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/impl/ac;

    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ac;->b(Landroid/content/Context;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 449
    sget-object v1, Lcom/chartboost/sdk/Chartboost$CBFramework;->CBFrameworkUnity:Lcom/chartboost/sdk/Chartboost$CBFramework;

    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Lcom/chartboost/sdk/Chartboost$CBFramework;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/chartboost/sdk/c;->g:Lcom/chartboost/sdk/h;

    invoke-virtual {v1}, Lcom/chartboost/sdk/h;->b()V

    .line 452
    :cond_0
    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->r()V

    .line 455
    :cond_1
    return-void
.end method

.method g(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 458
    const-string v0, "CBUIManager.onPauseCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 459
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 462
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 463
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method h()V
    .locals 2

    .prologue
    .line 468
    const-string v0, "CBUIManager.onPauseImpl"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 470
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {v0}, Lcom/chartboost/sdk/Model/c;->t()V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/c;->f:Lcom/chartboost/sdk/impl/ac;

    sget-object v1, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ac;->c(Landroid/content/Context;)V

    .line 475
    return-void
.end method

.method h(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 478
    const-string v0, "CBUIManager.onStopCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 479
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 482
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 483
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method i(Landroid/app/Activity;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 494
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    .line 495
    const-string v1, "CBUIManager.onStopImpl"

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 496
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v1

    .line 497
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/chartboost/sdk/Model/c;->p:Lcom/chartboost/sdk/Model/a;

    iget v2, v2, Lcom/chartboost/sdk/Model/a;->b:I

    if-nez v2, :cond_1

    .line 498
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v2

    .line 499
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/c;->c(Lcom/chartboost/sdk/Libraries/j;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 500
    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/d;->c(Lcom/chartboost/sdk/Model/c;)V

    .line 501
    iput-object v1, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    .line 502
    invoke-direct {p0, v0, v4}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 505
    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/j;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v1, :cond_1

    .line 506
    invoke-direct {p0, v0, v4}, Lcom/chartboost/sdk/c;->a(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 509
    :cond_1
    return-void
.end method

.method i()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 512
    const-string v1, "CBUIManager.onBackPressedCallback"

    invoke-static {v1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 513
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v1

    if-nez v1, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    if-nez v1, :cond_2

    .line 516
    const-string v1, "CBUIManager"

    const-string v2, "The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly."

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 521
    :cond_2
    iget-boolean v1, p0, Lcom/chartboost/sdk/c;->j:Z

    if-eqz v1, :cond_0

    .line 522
    iput-boolean v0, p0, Lcom/chartboost/sdk/c;->j:Z

    .line 523
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->j()Z

    .line 524
    const/4 v0, 0x1

    goto :goto_0
.end method

.method j(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 548
    const-string v0, "CBUIManager.onDestroyCallback"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 549
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 551
    :cond_1
    new-instance v0, Lcom/chartboost/sdk/c$c;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/c$c;-><init>(Lcom/chartboost/sdk/c;I)V

    .line 552
    iput-object p1, v0, Lcom/chartboost/sdk/c$c;->b:Landroid/app/Activity;

    .line 553
    invoke-static {v0}, Lcom/chartboost/sdk/h;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method j()Z
    .locals 1

    .prologue
    .line 530
    const-string v0, "CBUIManager.onBackPressedImpl"

    invoke-static {v0}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;)V

    .line 531
    invoke-direct {p0}, Lcom/chartboost/sdk/c;->m()Z

    move-result v0

    return v0
.end method

.method k(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 557
    const-string v0, "CBUIManager.onDestroyImpl"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 559
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Libraries/j;Z)V

    .line 561
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v0

    .line 562
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/c;->c:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    if-eqz v1, :cond_0

    .line 567
    iget-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->c()Lcom/chartboost/sdk/d;

    move-result-object v1

    .line 570
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 571
    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/d;->d(Lcom/chartboost/sdk/Model/c;)V

    .line 573
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Model/c;

    .line 574
    return-void
.end method

.method k()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0}, Lcom/chartboost/sdk/c;->d()Lcom/chartboost/sdk/Model/c;

    move-result-object v1

    .line 606
    if-nez v1, :cond_0

    .line 607
    const/4 v0, 0x0

    .line 610
    :goto_0
    return v0

    .line 608
    :cond_0
    iput-boolean v0, v1, Lcom/chartboost/sdk/Model/c;->z:Z

    .line 609
    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/c;->b(Lcom/chartboost/sdk/Model/c;)V

    goto :goto_0
.end method
