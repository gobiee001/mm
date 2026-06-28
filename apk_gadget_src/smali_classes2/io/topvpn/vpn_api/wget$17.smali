.class Lio/topvpn/vpn_api/wget$17;
.super Ljava/lang/Object;
.source "wget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/wget;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/wget;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$17;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 534
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$17;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v0}, Lio/topvpn/vpn_api/wget;->access$1800(Lio/topvpn/vpn_api/wget;)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 535
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$17;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lio/topvpn/vpn_api/wget;->access$1802(Lio/topvpn/vpn_api/wget;J)J

    .line 537
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$17;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v0}, Lio/topvpn/vpn_api/wget;->access$1900(Lio/topvpn/vpn_api/wget;)Lio/topvpn/vpn_api/wget$connection_impl;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/wget$connection$state;->CANCELED:Lio/topvpn/vpn_api/wget$connection$state;

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lio/topvpn/vpn_api/wget$connection_impl;->access$1100(Lio/topvpn/vpn_api/wget$connection_impl;Lio/topvpn/vpn_api/wget$connection$state;J)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_0
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$17;->this$0:Lio/topvpn/vpn_api/wget;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HARD TIMEOUT ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/topvpn/vpn_api/wget$17;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-virtual {v3}, Lio/topvpn/vpn_api/wget;->get_duration_ms()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/wget;->access$1300(Lio/topvpn/vpn_api/wget;ILjava/lang/String;)I

    .line 541
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$17;->this$0:Lio/topvpn/vpn_api/wget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/wget;->ontimeout(Lio/topvpn/vpn_api/wget$connection;)V

    .line 542
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    const-string v0, "wget_m_attempt_null"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/wget$17;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v2}, Lio/topvpn/vpn_api/wget;->access$2000(Lio/topvpn/vpn_api/wget;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
