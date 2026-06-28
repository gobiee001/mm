.class Lio/topvpn/vpn_api/peer_dialog$8;
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
    .line 262
    iput-object p1, p0, Lio/topvpn/vpn_api/peer_dialog$8;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog$8;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    iget-object v1, p0, Lio/topvpn/vpn_api/peer_dialog$8;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    invoke-static {v1}, Lio/topvpn/vpn_api/peer_dialog;->access$300(Lio/topvpn/vpn_api/peer_dialog;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->access$200(Lio/topvpn/vpn_api/peer_dialog;Ljava/lang/String;)V

    return-void
.end method
