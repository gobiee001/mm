.class Lio/topvpn/vpn_api/svc$svc_fsm$4$1;
.super Ljava/lang/Object;
.source "svc.java"

# interfaces
.implements Lio/topvpn/vpn_api/svc$callback_json_cb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc$svc_fsm$4;->enter(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc$svc_fsm$4;

.field final synthetic val$svc:Lio/topvpn/vpn_api/svc;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc$svc_fsm$4;Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->this$0:Lio/topvpn/vpn_api/svc$svc_fsm$4;

    iput-object p2, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->val$svc:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cb(ZLorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 170
    const-string v0, "hola_svc_stuck"

    const-string v1, "hola_svc stuck stopping"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :try_start_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->val$svc:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1100(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/be;

    move-result-object v0

    invoke-virtual {v0}, Lio/topvpn/vpn_api/be;->stop_with_dump()V

    .line 173
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->val$svc:Lio/topvpn/vpn_api/svc;

    const-string v1, "exe_off"

    iput-object v1, v0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->val$svc:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->del(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->val$svc:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->access$1202(Lio/topvpn/vpn_api/svc;Z)Z

    .line 179
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->val$svc:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1300(Lio/topvpn/vpn_api/svc;)V

    .line 180
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->val$svc:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1400(Lio/topvpn/vpn_api/svc;)V

    .line 181
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->val$svc:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1500(Lio/topvpn/vpn_api/svc;)V

    .line 184
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->val$svc:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1600(Lio/topvpn/vpn_api/svc;)V

    .line 185
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_fsm$4$1;->val$svc:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->access$1700(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/state$key;)V

    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    goto :goto_0
.end method
