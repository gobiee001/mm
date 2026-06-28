.class Lio/topvpn/vpn_api/zajax$1$2;
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

.field final synthetic val$sub_cb:Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/zajax$1;Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lio/topvpn/vpn_api/zajax$1$2;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iput-object p2, p0, Lio/topvpn/vpn_api/zajax$1$2;->val$sub_cb:Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 146
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/topvpn/vpn_api/zajax$1$2;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 4

    .prologue
    .line 151
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$2;->val$sub_cb:Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;

    invoke-virtual {v0, p1, p2, p3}, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;->cb(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$2;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    iget-object v1, p0, Lio/topvpn/vpn_api/zajax$1$2;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v1, v1, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v1}, Lio/topvpn/vpn_api/zajax;->access$1400(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1$2;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v2, v2, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v2}, Lio/topvpn/vpn_api/zajax;->access$1500(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v0, v1, v2, v3}, Lio/topvpn/vpn_api/zajax;->access$1000(Lio/topvpn/vpn_api/zajax;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ajax retry "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/zajax;->access$1100(ILjava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method
