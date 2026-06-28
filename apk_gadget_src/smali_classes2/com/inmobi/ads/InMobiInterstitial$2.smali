.class final Lcom/inmobi/ads/InMobiInterstitial$2;
.super Ljava/lang/Object;
.source "InMobiInterstitial.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiInterstitial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiInterstitial;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0

    .prologue
    .line 749
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$400(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/w;

    move-result-object v0

    const-string v1, "TrueAdReady"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 777
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 778
    return-void
.end method

.method public final a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    .prologue
    .line 782
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_0

    .line 783
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$400(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/w;

    move-result-object v0

    const-string v1, "TrueAdRequestTerminated"

    const-string v2, "MissingRequiredDependencies"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 794
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 795
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 796
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 797
    return-void

    .line 784
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_1

    .line 785
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$400(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/w;

    move-result-object v0

    const-string v1, "TrueAdRequestTerminated"

    const-string v2, "NetworkNotAvailable"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 786
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_2

    .line 787
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$400(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/w;

    move-result-object v0

    const-string v1, "TrueAdRequestTerminated"

    const-string v2, "FrequentRequests"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 788
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_4

    .line 789
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$400(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/w;

    move-result-object v0

    const-string v1, "TrueAdRequestTerminated"

    const-string v2, "LoadInProgress"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 791
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$400(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/w;

    move-result-object v0

    const-string v1, "TrueAdFailed"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 827
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$400(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/w;

    move-result-object v0

    const-string v1, "TrueAdViewClicked"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 828
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 829
    const/16 v1, 0x9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 830
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 831
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 832
    return-void
.end method

.method public final a(Z)V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 753
    if-eqz p1, :cond_0

    .line 754
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 755
    iput v1, v0, Landroid/os/Message;->what:I

    .line 756
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 757
    const-string v2, "available"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 758
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 759
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 768
    :goto_0
    return-void

    .line 761
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 762
    iput v1, v0, Landroid/os/Message;->what:I

    .line 763
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 764
    const-string v2, "available"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 765
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 766
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 841
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 842
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 843
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 844
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendMessage(Landroid/os/Message;)Z

    .line 845
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 802
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 807
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$400(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/w;

    move-result-object v0

    const-string v1, "TrueAdViewDisplayed"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 812
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 814
    return-void
.end method

.method public final f()V
    .locals 6

    .prologue
    .line 818
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$400(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/w;

    move-result-object v0

    const-string v1, "TrueAdViewClosed"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 819
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 820
    invoke-static {}, Lcom/inmobi/ads/x;->d()Lcom/inmobi/ads/x;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    .line 821
    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$500(Lcom/inmobi/ads/InMobiInterstitial;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiInterstitial;->access$600(Lcom/inmobi/ads/InMobiInterstitial;)Ljava/util/Map;

    move-result-object v1

    const-string v4, "int"

    iget-object v5, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v5}, Lcom/inmobi/ads/InMobiInterstitial;->access$700(Lcom/inmobi/ads/InMobiInterstitial;)Ljava/lang/String;

    move-result-object v5

    .line 820
    invoke-static {v2, v3, v1, v4, v5}, Lcom/inmobi/ads/bc;->a(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/bc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/x;->b(Lcom/inmobi/ads/bc;)V

    .line 823
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial$2;->a:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiInterstitial;->access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->sendEmptyMessage(I)Z

    .line 837
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 850
    return-void
.end method

.method public final i()V
    .locals 0

    .prologue
    .line 855
    return-void
.end method
