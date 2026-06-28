.class final Lio/topvpn/vpn_api/util$3;
.super Landroid/os/Handler;
.source "util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/util;->perr_init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 676
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 679
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 681
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/topvpn/vpn_api/util$perr_msg;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->access$600(Lio/topvpn/vpn_api/util$perr_msg;)V

    .line 724
    :goto_0
    return-void

    .line 684
    :cond_0
    new-instance v0, Lio/topvpn/vpn_api/util$3$1;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/util$3$1;-><init>(Lio/topvpn/vpn_api/util$3;)V

    .line 723
    invoke-static {}, Lio/topvpn/vpn_api/util;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lio/topvpn/vpn_api/util;->scandir(Ljava/lang/String;Lio/topvpn/vpn_api/util$scandir_cb_t;Ljava/lang/Object;)V

    goto :goto_0
.end method
