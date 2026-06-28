.class final Lcom/inmobi/ads/InMobiNative$2;
.super Ljava/lang/Object;
.source "InMobiNative.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiNative;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiNative;)V
    .locals 0

    .prologue
    .line 983
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 999
    return-void
.end method

.method public final a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    .prologue
    .line 1003
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_0

    .line 1004
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    const-string v1, "TrueAdRequestTerminated"

    const-string v2, "MissingRequiredDependencies"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    :goto_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1017
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1018
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1019
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v1}, Lcom/inmobi/ads/InMobiNative;->access$400(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiNative$a;->sendMessage(Landroid/os/Message;)Z

    .line 1020
    return-void

    .line 1005
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_1

    .line 1006
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    const-string v1, "TrueAdRequestTerminated"

    const-string v2, "NetworkNotAvailable"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1007
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_2

    .line 1008
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    const-string v1, "TrueAdRequestTerminated"

    const-string v2, "FrequentRequests"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_3

    .line 1010
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    const-string v1, "TrueAdRequestTerminated"

    const-string v2, "ReloadNotPermitted"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-eq v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_5

    .line 1012
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    const-string v1, "TrueAdRequestTerminated"

    const-string v2, "LoadInProgress"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/ae;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1014
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    const-string v1, "TrueAdFailed"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

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
    .line 1050
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    const-string v1, "TrueAdViewClicked"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 1051
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$400(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 1052
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 994
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    const-string v1, "TrueAdReady"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$400(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 989
    return-void
.end method

.method public final b(Ljava/util/Map;)V
    .locals 0
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
    .line 1061
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 1024
    invoke-static {}, Lcom/inmobi/ads/InMobiNative;->access$200()Ljava/lang/String;

    .line 1025
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$400(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 1030
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 1034
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    const-string v1, "TrueAdViewExpanded"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 1037
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$400(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 1038
    return-void
.end method

.method public final f()V
    .locals 2

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$300(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/ae;

    move-result-object v0

    const-string v1, "TrueAdViewCollapsed"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->d(Ljava/lang/String;)V

    .line 1045
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$400(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 1046
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$400(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 1057
    return-void
.end method

.method public final h()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$400(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 1066
    return-void
.end method

.method public final i()V
    .locals 2

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative$2;->a:Lcom/inmobi/ads/InMobiNative;

    invoke-static {v0}, Lcom/inmobi/ads/InMobiNative;->access$400(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->sendEmptyMessage(I)Z

    .line 1071
    return-void
.end method
