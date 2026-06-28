.class final Lcom/inmobi/ads/w$2;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:I

.field final synthetic c:Lcom/inmobi/ads/w;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/w;Ljava/lang/ref/WeakReference;I)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    iput-object p2, p0, Lcom/inmobi/ads/w$2;->a:Ljava/lang/ref/WeakReference;

    iput p3, p0, Lcom/inmobi/ads/w$2;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/inmobi/ads/w$2;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 391
    if-eqz v0, :cond_0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    invoke-static {v1}, Lcom/inmobi/ads/w;->b(Lcom/inmobi/ads/w;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    iget-object v1, p0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    iget-object v1, v1, Lcom/inmobi/ads/w;->r:Landroid/os/Handler;

    new-instance v2, Lcom/inmobi/ads/w$2$1;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/ads/w$2$1;-><init>(Lcom/inmobi/ads/w$2;Lcom/inmobi/ads/AdUnit$b;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 435
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v2, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to Show Ad, canShowAd Failed"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    invoke-static {v1, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;Lcom/inmobi/ads/AdUnit$b;)V
    :try_end_0
    .catch Lcom/inmobi/ads/w$b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/inmobi/ads/w$c; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 426
    :catch_0
    move-exception v1

    .line 427
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v3, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 428
    invoke-virtual {v1}, Lcom/inmobi/ads/w$b;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 427
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    invoke-static {v1, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;Lcom/inmobi/ads/AdUnit$b;)V

    goto :goto_0

    .line 430
    :catch_1
    move-exception v1

    .line 431
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v3, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-virtual {v1}, Lcom/inmobi/ads/w$c;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v1, p0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    invoke-static {v1, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;Lcom/inmobi/ads/AdUnit$b;)V

    goto :goto_0
.end method
