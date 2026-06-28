.class Lio/topvpn/vpn_api/peer_dialog$4;
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
    .line 212
    iput-object p1, p0, Lio/topvpn/vpn_api/peer_dialog$4;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog$4;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    const-string v1, "http://hola.org/faq#intro-more"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/peer_dialog;->access$200(Lio/topvpn/vpn_api/peer_dialog;Ljava/lang/String;)V

    return-void
.end method
