.class Lio/topvpn/vpn_api/util$ipc_thread$1;
.super Landroid/os/Handler;
.source "util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/util$ipc_thread;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/util$ipc_thread;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/util$ipc_thread;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1183
    iput-object p1, p0, Lio/topvpn/vpn_api/util$ipc_thread$1;->this$1:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    .line 1186
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lio/topvpn/vpn_api/util$ipc_request;

    .line 1187
    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ipc cmd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lio/topvpn/vpn_api/util$ipc_request;->m_argv:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->access$900(ILjava/lang/String;)I

    .line 1188
    const/4 v1, -0x1

    .line 1190
    :try_start_0
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    iget-object v3, v0, Lio/topvpn/vpn_api/util$ipc_request;->m_argv:[Ljava/lang/String;

    iget-object v4, v0, Lio/topvpn/vpn_api/util$ipc_request;->m_ipc_result:Lio/topvpn/vpn_api/util$ipc_result;

    iget v5, v0, Lio/topvpn/vpn_api/util$ipc_request;->m_timeout:I

    invoke-virtual {v2, v3, v4, v5}, Lio/topvpn/vpn_api/util;->ipc([Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;I)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1197
    :goto_0
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/util$ipc_request;->on_ipc_finish(I)V

    .line 1198
    return-void

    .line 1192
    :catch_0
    move-exception v2

    .line 1193
    const-string v3, "apk_install"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ipc cmd "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lio/topvpn/vpn_api/util$ipc_request;->m_argv:[Ljava/lang/String;

    .line 1194
    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cant load util_get().ipc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1193
    invoke-static {v3, v2}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
