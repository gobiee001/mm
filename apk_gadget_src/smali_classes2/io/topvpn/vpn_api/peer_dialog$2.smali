.class Lio/topvpn/vpn_api/peer_dialog$2;
.super Ljava/lang/Object;
.source "peer_dialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/peer_dialog;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/peer_dialog;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/peer_dialog;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lio/topvpn/vpn_api/peer_dialog$2;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 153
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog$2;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    invoke-static {v0}, Lio/topvpn/vpn_api/peer_dialog;->access$000(Lio/topvpn/vpn_api/peer_dialog;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->NON_FIRST_CHOICE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const-string v0, "first_user_chose_not_peer"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog$2;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    invoke-static {v0}, Lio/topvpn/vpn_api/peer_dialog;->access$000(Lio/topvpn/vpn_api/peer_dialog;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->NON_FIRST_CHOICE:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 158
    :cond_0
    const-string v0, "user_chose_not_peer"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog$2;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->access$102(Lio/topvpn/vpn_api/peer_dialog;I)I

    .line 160
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog$2;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/peer_dialog;->dismiss()V

    .line 161
    return-void
.end method
