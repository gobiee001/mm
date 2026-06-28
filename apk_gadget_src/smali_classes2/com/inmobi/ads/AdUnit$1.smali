.class final Lcom/inmobi/ads/AdUnit$1;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit;->a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/inmobi/ads/InMobiAdRequestStatus;

.field final synthetic c:Lcom/inmobi/ads/AdUnit;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;JLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 0

    .prologue
    .line 654
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$1;->c:Lcom/inmobi/ads/AdUnit;

    iput-wide p2, p0, Lcom/inmobi/ads/AdUnit$1;->a:J

    iput-object p4, p0, Lcom/inmobi/ads/AdUnit$1;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 658
    :try_start_0
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit$1;->a:J

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$1;->c:Lcom/inmobi/ads/AdUnit;

    .line 1269
    iget-wide v2, v2, Lcom/inmobi/ads/AdUnit;->b:J

    .line 658
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$1;->c:Lcom/inmobi/ads/AdUnit;

    const-string v1, "AdRequestNotFilled"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->d(Ljava/lang/String;)V

    .line 664
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to fetch ad for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$1;->c:Lcom/inmobi/ads/AdUnit;

    .line 665
    invoke-static {v3}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason phrase available in onAdLoadFailed callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 664
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$1;->c:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$1;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    :cond_0
    :goto_0
    return-void

    .line 669
    :catch_0
    move-exception v0

    .line 670
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "[InMobi]"

    const-string v3, "Unable to load Ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onAdFetchFailed with error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 674
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
