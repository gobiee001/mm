.class final Lcom/inmobi/ads/w$3;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/w;->a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/inmobi/ads/InMobiAdRequestStatus;

.field final synthetic c:Lcom/inmobi/ads/w;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/w;JLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 0

    .prologue
    .line 542
    iput-object p1, p0, Lcom/inmobi/ads/w$3;->c:Lcom/inmobi/ads/w;

    iput-wide p2, p0, Lcom/inmobi/ads/w$3;->a:J

    iput-object p4, p0, Lcom/inmobi/ads/w$3;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 546
    :try_start_0
    iget-wide v0, p0, Lcom/inmobi/ads/w$3;->a:J

    iget-object v2, p0, Lcom/inmobi/ads/w$3;->c:Lcom/inmobi/ads/w;

    .line 1269
    iget-wide v2, v2, Lcom/inmobi/ads/AdUnit;->b:J

    .line 546
    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 547
    iget-object v0, p0, Lcom/inmobi/ads/w$3;->c:Lcom/inmobi/ads/w;

    const-string v1, "AdRequestNotFilled"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 552
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/w;->N()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to fetch ad for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/inmobi/ads/w$3;->a:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason phrase available in onAdLoadFailed callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/w$3;->c:Lcom/inmobi/ads/w;

    invoke-static {v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/inmobi/ads/w$3;->c:Lcom/inmobi/ads/w;

    invoke-static {v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 557
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 558
    if-nez v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/inmobi/ads/w$3;->c:Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Lcom/inmobi/ads/w;->g()V

    .line 555
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/w$3;->c:Lcom/inmobi/ads/w;

    invoke-static {v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/w;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/inmobi/ads/w$3;->c:Lcom/inmobi/ads/w;

    const-string v2, "TrueValidAdRequestReceived"

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/inmobi/ads/w$3;->c:Lcom/inmobi/ads/w;

    const-string v2, "AdRequestNotFilled"

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 572
    :catch_0
    move-exception v0

    .line 573
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "[InMobi]"

    const-string v3, "Unable to load Ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcom/inmobi/ads/w;->M()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdFetchFailed with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 576
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 579
    :cond_2
    :goto_2
    return-void

    .line 570
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/w$3;->c:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/w$3;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
