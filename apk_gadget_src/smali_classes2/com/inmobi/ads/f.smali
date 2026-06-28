.class final Lcom/inmobi/ads/f;
.super Ljava/lang/Object;
.source "AdNetworkResponse.java"


# instance fields
.field a:Lcom/inmobi/commons/core/network/c;

.field b:Lcom/inmobi/ads/InMobiAdRequestStatus;

.field c:Lcom/inmobi/ads/e;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/e;Lcom/inmobi/commons/core/network/c;)V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/inmobi/ads/f;->c:Lcom/inmobi/ads/e;

    .line 17
    iput-object p2, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    .line 19
    iget-object v0, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    .line 1078
    iget-object v0, v0, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 19
    if-eqz v0, :cond_0

    .line 2025
    sget-object v0, Lcom/inmobi/ads/f$1;->a:[I

    iget-object v1, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    .line 2078
    iget-object v1, v1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 3067
    iget-object v1, v1, Lcom/inmobi/commons/core/network/NetworkError;->a:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    .line 2025
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 2048
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 2046
    :cond_0
    :goto_0
    return-void

    .line 2027
    :pswitch_0
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    goto :goto_0

    .line 2030
    :pswitch_1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 2033
    iget-object v0, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    .line 3078
    iget-object v0, v0, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 4075
    iget-object v0, v0, Lcom/inmobi/commons/core/network/NetworkError;->b:Ljava/lang/String;

    .line 2033
    if-eqz v0, :cond_0

    .line 2034
    iget-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    iget-object v1, p0, Lcom/inmobi/ads/f;->a:Lcom/inmobi/commons/core/network/c;

    .line 4078
    iget-object v1, v1, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkError;

    .line 5075
    iget-object v1, v1, Lcom/inmobi/commons/core/network/NetworkError;->b:Ljava/lang/String;

    .line 2034
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    goto :goto_0

    .line 2038
    :pswitch_2
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    goto :goto_0

    .line 2045
    :pswitch_3
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v0, p0, Lcom/inmobi/ads/f;->b:Lcom/inmobi/ads/InMobiAdRequestStatus;

    goto :goto_0

    .line 2025
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method
