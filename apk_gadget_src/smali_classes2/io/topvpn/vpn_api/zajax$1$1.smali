.class Lio/topvpn/vpn_api/zajax$1$1;
.super Lcom/androidquery/callback/AjaxCallback;
.source "zajax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/zajax$1;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/androidquery/callback/AjaxCallback",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/zajax$1;

.field final synthetic val$fip:Ljava/lang/String;

.field final synthetic val$sub_cb:Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/zajax$1;Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lio/topvpn/vpn_api/zajax$1$1;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iput-object p2, p0, Lio/topvpn/vpn_api/zajax$1$1;->val$sub_cb:Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;

    iput-object p3, p0, Lio/topvpn/vpn_api/zajax$1$1;->val$fip:Ljava/lang/String;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 129
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/topvpn/vpn_api/zajax$1$1;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 4

    .prologue
    .line 134
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$1;->val$sub_cb:Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;

    invoke-virtual {v0, p1, p2, p3}, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$1;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    const-string v1, "http://"

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1$1;->val$fip:Ljava/lang/String;

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lio/topvpn/vpn_api/zajax;->access$1000(Lio/topvpn/vpn_api/zajax;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ajax direct "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/zajax;->access$1100(ILjava/lang/String;)V

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$1;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$200(Lio/topvpn/vpn_api/zajax;)V

    goto :goto_0
.end method
