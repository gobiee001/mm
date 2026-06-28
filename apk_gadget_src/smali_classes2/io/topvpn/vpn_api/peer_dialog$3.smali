.class Lio/topvpn/vpn_api/peer_dialog$3;
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
    .line 196
    iput-object p1, p0, Lio/topvpn/vpn_api/peer_dialog$3;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 197
    iget-object v1, p0, Lio/topvpn/vpn_api/peer_dialog$3;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog$3;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/peer_dialog;->getView()Landroid/view/View;

    move-result-object v0

    sget v2, Lio/topvpn/vpn_api/R$id;->radio_group:I

    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 197
    invoke-static {v1, v0}, Lio/topvpn/vpn_api/peer_dialog;->access$102(Lio/topvpn/vpn_api/peer_dialog;I)I

    .line 199
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog$3;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/peer_dialog;->dismiss()V

    .line 200
    return-void
.end method
