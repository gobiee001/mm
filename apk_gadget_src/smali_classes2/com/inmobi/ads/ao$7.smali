.class final Lcom/inmobi/ads/ao$7;
.super Ljava/lang/Object;
.source "NativeLayoutInflater.java"

# interfaces
.implements Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener;


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
    .line 366
    iput-object p1, p0, Lcom/inmobi/ads/ao$7;->b:Lcom/inmobi/ads/ao;

    iput-object p2, p0, Lcom/inmobi/ads/ao$7;->a:Lcom/inmobi/ads/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;)V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/inmobi/ads/ao$7;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->e(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/bb;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Lcom/inmobi/ads/ao$9;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeVideoView$OnPlaybackEventListener$PlaybackEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 375
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ao$7;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->e(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/bb;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/bb;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
    invoke-static {}, Lcom/inmobi/ads/ao;->c()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling onVideoPrepared event; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 384
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/ao$7;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->e(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ao$7;->a:Lcom/inmobi/ads/az;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/bb;->a(Lcom/inmobi/ads/az;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 385
    :catch_1
    move-exception v0

    .line 386
    invoke-static {}, Lcom/inmobi/ads/ao;->c()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling onVideoPlayed event; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 392
    :pswitch_2
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/ads/ao$7;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->e(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ao$7;->a:Lcom/inmobi/ads/az;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/bb;->b(Lcom/inmobi/ads/az;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 393
    :catch_2
    move-exception v0

    .line 394
    invoke-static {}, Lcom/inmobi/ads/ao;->c()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling onVideoPaused event; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 400
    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/ads/ao$7;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->e(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ao$7;->a:Lcom/inmobi/ads/az;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/bb;->c(Lcom/inmobi/ads/az;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 401
    :catch_3
    move-exception v0

    .line 402
    invoke-static {}, Lcom/inmobi/ads/ao;->c()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling onVideoResumed event; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 408
    :pswitch_4
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/ads/ao$7;->b:Lcom/inmobi/ads/ao;

    invoke-static {v0}, Lcom/inmobi/ads/ao;->e(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/bb;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ao$7;->a:Lcom/inmobi/ads/az;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/bb;->e(Lcom/inmobi/ads/az;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 409
    :catch_4
    move-exception v0

    .line 410
    invoke-static {}, Lcom/inmobi/ads/ao;->c()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling fireVideoQ4Beacons event; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
