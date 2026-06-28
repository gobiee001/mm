.class final Lcom/inmobi/ads/AdUnit$a;
.super Landroid/os/Handler;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/AdUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;)V
    .locals 1

    .prologue
    .line 1514
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1515
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit$a;->a:Ljava/lang/ref/WeakReference;

    .line 1516
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1558
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1522
    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 1523
    const-string v0, "placementId"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1524
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit;

    .line 1526
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    .line 1530
    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/inmobi/ads/a;

    .line 1531
    const-string v3, "adAvailable"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1532
    invoke-virtual {v0, v4, v5, v2, v1}, Lcom/inmobi/ads/AdUnit;->a(JZLcom/inmobi/ads/a;)V

    goto :goto_0

    .line 1535
    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/inmobi/ads/a;

    .line 1536
    invoke-virtual {v0, v4, v5, v1}, Lcom/inmobi/ads/AdUnit;->c(JLcom/inmobi/ads/a;)V

    goto :goto_0

    .line 1541
    :pswitch_4
    const-string v1, "assetAvailable"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1542
    invoke-virtual {v0, v4, v5, v1}, Lcom/inmobi/ads/AdUnit;->b(JZ)V

    goto :goto_0

    .line 1545
    :pswitch_5
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->t()V

    goto :goto_0

    .line 1548
    :pswitch_6
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->v()V

    goto :goto_0

    .line 1551
    :pswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 1552
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 1555
    :pswitch_8
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->D()V

    goto :goto_0

    .line 1526
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
