.class final Lcom/inmobi/ads/InMobiNative$1;
.super Ljava/lang/Object;
.source "InMobiNative.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiNative;->requestAd(Landroid/content/Context;Lcom/inmobi/ads/InMobiAdRequest;Lcom/inmobi/ads/InMobiNative$NativeAdRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/bc;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/bc;)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative$1;->a:Lcom/inmobi/ads/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/ads/AdUnit;)V
    .locals 6

    .prologue
    .line 383
    instance-of v0, p1, Lcom/inmobi/ads/ae;

    if-nez v0, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative$1;->a:Lcom/inmobi/ads/bc;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 386
    if-eqz v0, :cond_0

    .line 387
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative$NativeAdRequestListener;

    .line 389
    if-eqz v0, :cond_0

    .line 1269
    iget-wide v2, p1, Lcom/inmobi/ads/AdUnit;->b:J

    .line 1748
    iget-object v1, p1, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 391
    const-string v4, "native"

    .line 2740
    iget-object v5, p1, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 390
    invoke-static {v2, v3, v1, v4, v5}, Lcom/inmobi/ads/bc;->a(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/bc;

    move-result-object v1

    .line 392
    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->k()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v2

    .line 3073
    iput-object v2, v1, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 393
    new-instance v2, Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v3

    .line 394
    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->k()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/inmobi/ads/InMobiNative;-><init>(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Lcom/inmobi/ads/InMobiNative$1;)V

    .line 3740
    iget-object v1, p1, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 395
    invoke-virtual {v2, v1}, Lcom/inmobi/ads/InMobiNative;->setKeywords(Ljava/lang/String;)V

    .line 3748
    iget-object v1, p1, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 396
    invoke-virtual {v2, v1}, Lcom/inmobi/ads/InMobiNative;->setExtras(Ljava/util/Map;)V

    .line 397
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/InMobiNative$NativeAdRequestListener;->onAdRequestCompleted(Lcom/inmobi/ads/InMobiAdRequestStatus;Lcom/inmobi/ads/InMobiNative;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$200()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in onAdPrefetchSucceeded "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    .prologue
    .line 410
    instance-of v0, p1, Lcom/inmobi/ads/ae;

    if-nez v0, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/g;->a:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative$1;->a:Lcom/inmobi/ads/bc;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 413
    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$000()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiNative$NativeAdRequestListener;

    .line 416
    if-eqz v0, :cond_0

    .line 417
    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/inmobi/ads/InMobiNative$NativeAdRequestListener;->onAdRequestCompleted(Lcom/inmobi/ads/InMobiAdRequestStatus;Lcom/inmobi/ads/InMobiNative;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 420
    :catch_0
    move-exception v0

    .line 421
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$200()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in onAdPrefetchFailed "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
