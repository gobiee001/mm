.class final Lcom/inmobi/ads/ao$6;
.super Ljava/lang/Object;
.source "NativeLayoutInflater.java"

# interfaces
.implements Lcom/inmobi/ads/NativeVideoView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/az;

.field final synthetic b:Lcom/inmobi/ads/ao;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ao;Lcom/inmobi/ads/az;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/inmobi/ads/ao$6;->b:Lcom/inmobi/ads/ao;

    iput-object p2, p0, Lcom/inmobi/ads/ao$6;->a:Lcom/inmobi/ads/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lcom/inmobi/ads/ao$6;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->e(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/bb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/inmobi/ads/ao$6;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->e(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ao$6;->a:Lcom/inmobi/ads/az;

    invoke-interface {v0, v1, p1}, Lcom/inmobi/ads/bb;->b(Lcom/inmobi/ads/az;I)V

    .line 354
    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ao$6;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->e(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ao$6;->a:Lcom/inmobi/ads/az;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/bb;->d(Lcom/inmobi/ads/az;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 357
    :catch_0
    move-exception v0

    .line 358
    invoke-static {}, Lcom/inmobi/ads/ao;->c()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling the onVideoCompleted event; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
