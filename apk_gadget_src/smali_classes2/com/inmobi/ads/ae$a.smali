.class final Lcom/inmobi/ads/ae$a;
.super Ljava/lang/Object;
.source "NativeAdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# direct methods
.method static a(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/AdUnit$b;I)Lcom/inmobi/ads/ae;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 58
    sget-object v0, Lcom/inmobi/ads/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit;

    .line 61
    instance-of v2, v0, Lcom/inmobi/ads/ae;

    if-eqz v2, :cond_4

    .line 62
    check-cast v0, Lcom/inmobi/ads/ae;

    .line 68
    :goto_0
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-ne v2, p3, :cond_0

    move-object v0, v1

    .line 89
    :goto_1
    return-object v0

    .line 72
    :cond_0
    if-nez v0, :cond_2

    .line 73
    invoke-static {}, Lcom/inmobi/ads/ae;->Z()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating new adUnit for placement-ID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1057
    iget-wide v2, p1, Lcom/inmobi/ads/bc;->a:J

    .line 73
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    new-instance v0, Lcom/inmobi/ads/ae;

    .line 2057
    iget-wide v2, p1, Lcom/inmobi/ads/bc;->a:J

    .line 74
    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ae;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;B)V

    .line 75
    if-eqz p3, :cond_1

    .line 76
    sget-object v1, Lcom/inmobi/ads/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_1
    :goto_2
    invoke-virtual {v0, p2}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/AdUnit$b;)V

    .line 3069
    iget-object v1, p1, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 88
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V

    goto :goto_1

    .line 79
    :cond_2
    invoke-static {}, Lcom/inmobi/ads/ae;->Z()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Found pre-loading adUnit for placement-ID : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3057
    iget-wide v2, p1, Lcom/inmobi/ads/bc;->a:J

    .line 79
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 80
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_3

    .line 81
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/ae;->a(Landroid/app/Activity;)V

    .line 85
    :goto_3
    sget-object v1, Lcom/inmobi/ads/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 83
    :cond_3
    invoke-virtual {v0, p0}, Lcom/inmobi/ads/ae;->a(Landroid/content/Context;)V

    goto :goto_3

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method
