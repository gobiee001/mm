.class Lio/topvpn/vpn_api/be$worker$sock_server$1;
.super Ljava/lang/Object;
.source "be.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/be$worker$sock_server;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lio/topvpn/vpn_api/be$worker$sock_server;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/be$worker$sock_server;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lio/topvpn/vpn_api/be$worker$sock_server$1;->this$2:Lio/topvpn/vpn_api/be$worker$sock_server;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 209
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server$1;->this$2:Lio/topvpn/vpn_api/be$worker$sock_server;

    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker$sock_server$1;->this$2:Lio/topvpn/vpn_api/be$worker$sock_server;

    invoke-virtual {v1}, Lio/topvpn/vpn_api/be$worker$sock_server;->accept()Ljava/net/Socket;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/be$worker$sock_server;->access$902(Lio/topvpn/vpn_api/be$worker$sock_server;Ljava/net/Socket;)Ljava/net/Socket;

    .line 210
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server$1;->this$2:Lio/topvpn/vpn_api/be$worker$sock_server;

    invoke-static {v0}, Lio/topvpn/vpn_api/be$worker$sock_server;->access$900(Lio/topvpn/vpn_api/be$worker$sock_server;)Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 211
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server$1;->this$2:Lio/topvpn/vpn_api/be$worker$sock_server;

    invoke-static {v0}, Lio/topvpn/vpn_api/be$worker$sock_server;->access$900(Lio/topvpn/vpn_api/be$worker$sock_server;)Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0

    .line 212
    :catch_1
    move-exception v0

    goto :goto_0
.end method
