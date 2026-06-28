.class final Lio/topvpn/vpn_api/be$worker$sock_server;
.super Ljava/net/ServerSocket;
.source "be.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/be$worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "sock_server"
.end annotation


# instance fields
.field public m_port:I

.field private m_sock:Ljava/net/Socket;

.field private m_thread:Landroid/os/HandlerThread;

.field final synthetic this$1:Lio/topvpn/vpn_api/be$worker;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/be$worker;)V
    .locals 4

    .prologue
    .line 189
    iput-object p1, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->this$1:Lio/topvpn/vpn_api/be$worker;

    .line 192
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "127.0.0.1"

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    .line 193
    invoke-virtual {p0}, Lio/topvpn/vpn_api/be$worker$sock_server;->isBound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lio/topvpn/vpn_api/be$worker$sock_server;->getLocalPort()I

    move-result v0

    iput v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_port:I

    .line 196
    iget-object v0, p1, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "opened port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_port:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for self terminate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 200
    :goto_0
    return-void

    .line 199
    :cond_0
    iget-object v0, p1, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    const/4 v1, 0x3

    const-string v2, "failed creating socket not bound"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$900(Lio/topvpn/vpn_api/be$worker$sock_server;)Ljava/net/Socket;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_sock:Ljava/net/Socket;

    return-object v0
.end method

.method static synthetic access$902(Lio/topvpn/vpn_api/be$worker$sock_server;Ljava/net/Socket;)Ljava/net/Socket;
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_sock:Ljava/net/Socket;

    return-object p1
.end method


# virtual methods
.method public close()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 219
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_sock:Ljava/net/Socket;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_sock:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 221
    :cond_0
    invoke-super {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 223
    :goto_0
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->this$1:Lio/topvpn/vpn_api/be$worker;

    iget-object v0, v0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    const-string v1, "sock_server thread quit failed"

    invoke-static {v0, v4, v1}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 225
    :cond_1
    :try_start_1
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    :goto_1
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->this$1:Lio/topvpn/vpn_api/be$worker;

    iget-object v1, v1, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sock_server thread interrupt failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    goto :goto_1

    .line 222
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->this$1:Lio/topvpn/vpn_api/be$worker;

    iget-object v0, v0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    const/4 v1, 0x5

    const-string v2, "sock_server start"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 204
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sock_server_accept"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_thread:Landroid/os/HandlerThread;

    .line 205
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 206
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker$sock_server;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    new-instance v1, Lio/topvpn/vpn_api/be$worker$sock_server$1;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/be$worker$sock_server$1;-><init>(Lio/topvpn/vpn_api/be$worker$sock_server;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method
