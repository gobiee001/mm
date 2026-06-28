.class Lio/topvpn/vpn_api/peer_dialog$7;
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

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/peer_dialog;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lio/topvpn/vpn_api/peer_dialog$7;->this$0:Lio/topvpn/vpn_api/peer_dialog;

    iput-object p2, p0, Lio/topvpn/vpn_api/peer_dialog$7;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lio/topvpn/vpn_api/peer_dialog$7;->val$view:Landroid/view/View;

    sget v1, Lio/topvpn/vpn_api/R$id;->more_popover:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    .line 253
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    return-void
.end method
