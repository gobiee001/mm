.class final Lcom/inmobi/ads/q$a;
.super Landroid/database/ContentObserver;
.source "IasTrackedNativeV2VideoAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/q;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/q;)V
    .locals 1

    .prologue
    .line 348
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 349
    iput-object p1, p0, Lcom/inmobi/ads/q$a;->a:Landroid/content/Context;

    .line 350
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/q$a;->b:I

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/q$a;->d:Z

    .line 352
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/q$a;->c:Ljava/lang/ref/WeakReference;

    .line 353
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/q$a;Z)Z
    .locals 0

    .prologue
    .line 340
    iput-boolean p1, p0, Lcom/inmobi/ads/q$a;->d:Z

    return p1
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 3

    .prologue
    .line 357
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 359
    iget-object v0, p0, Lcom/inmobi/ads/q$a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/inmobi/ads/q$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/b;->a(Landroid/content/Context;)I

    move-result v1

    .line 362
    iget v0, p0, Lcom/inmobi/ads/q$a;->b:I

    if-eq v1, v0, :cond_0

    .line 363
    iput v1, p0, Lcom/inmobi/ads/q$a;->b:I

    .line 365
    iget-object v0, p0, Lcom/inmobi/ads/q$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/q;

    .line 366
    iget-boolean v2, p0, Lcom/inmobi/ads/q$a;->d:Z

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 367
    invoke-static {v0, v1}, Lcom/inmobi/ads/q;->a(Lcom/inmobi/ads/q;I)V

    .line 371
    :cond_0
    return-void
.end method
