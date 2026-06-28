.class Lio/topvpn/vpn_api/svc$13;
.super Ljava/lang/Object;
.source "svc.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 1148
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1151
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->log_3g_usage(Landroid/content/Context;)V

    .line 1152
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->log_mobile_usage(Landroid/content/Context;)V

    .line 1153
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$5300(Lio/topvpn/vpn_api/svc;)V

    .line 1154
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lio/topvpn/vpn_api/svc;->access$5402(Lio/topvpn/vpn_api/svc;J)J

    .line 1155
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$2100(Lio/topvpn/vpn_api/svc;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1156
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$5500(Lio/topvpn/vpn_api/svc;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1157
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    .line 1158
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    .line 1159
    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1161
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$13;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_ON_MOBILE:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1163
    :cond_2
    return-void
.end method
