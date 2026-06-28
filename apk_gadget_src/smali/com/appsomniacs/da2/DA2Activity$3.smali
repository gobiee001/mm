.class Lcom/appsomniacs/da2/DA2Activity$3;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->showLuminatiOptInDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsomniacs/da2/DA2Activity;

.field final synthetic val$activity:Lcom/appsomniacs/da2/DA2Activity;


# direct methods
.method constructor <init>(Lcom/appsomniacs/da2/DA2Activity;Lcom/appsomniacs/da2/DA2Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/appsomniacs/da2/DA2Activity;

    .prologue
    .line 1118
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$3;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    iput-object p2, p0, Lcom/appsomniacs/da2/DA2Activity$3;->val$activity:Lcom/appsomniacs/da2/DA2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 1121
    sget-object v0, Lio/topvpn/vpn_api/api$DIALOG_TYPE;->PEER1:Lio/topvpn/vpn_api/api$DIALOG_TYPE;

    invoke-static {v0}, Lio/topvpn/vpn_api/api;->set_dialog_type(Lio/topvpn/vpn_api/api$DIALOG_TYPE;)V

    .line 1122
    const-string v0, "http://appsomniacs.com/home/terms"

    invoke-static {v0}, Lio/topvpn/vpn_api/api;->set_tos_link(Ljava/lang/String;)V

    .line 1123
    sget-object v0, Lio/topvpn/vpn_api/api$BTN_PEER_TXT;->I_AGREE:Lio/topvpn/vpn_api/api$BTN_PEER_TXT;

    invoke-static {v0}, Lio/topvpn/vpn_api/api;->set_btn_peer_txt(Lio/topvpn/vpn_api/api$BTN_PEER_TXT;)V

    .line 1124
    sget-object v0, Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;->I_DISAGREE:Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;

    invoke-static {v0}, Lio/topvpn/vpn_api/api;->set_btn_not_peer_txt(Lio/topvpn/vpn_api/api$BTN_NOT_PEER_TXT;)V

    .line 1125
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$3;->this$0:Lcom/appsomniacs/da2/DA2Activity;

    invoke-static {v0}, Lcom/appsomniacs/da2/DA2Activity;->access$700(Lcom/appsomniacs/da2/DA2Activity;)Lio/topvpn/vpn_api/api$on_selection_listener;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/api;->set_selection_listener(Lio/topvpn/vpn_api/api$on_selection_listener;)V

    .line 1126
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$3;->val$activity:Lcom/appsomniacs/da2/DA2Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/api;->init(Landroid/app/Activity;Z)V

    .line 1127
    return-void
.end method
