.class Lio/topvpn/vpn_api/zajax$1$4;
.super Lio/topvpn/vpn_api/wget;
.source "zajax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/zajax$1;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/zajax$1;

.field final synthetic val$ajax_url:Ljava/lang/String;

.field final synthetic val$f_cb:Lcom/androidquery/callback/AjaxCallback;

.field final synthetic val$zagent:Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Lio/topvpn/vpn_api/zajax$1;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxCallback;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iput-object p4, p0, Lio/topvpn/vpn_api/zajax$1$4;->val$zagent:Ljava/lang/String;

    iput-object p5, p0, Lio/topvpn/vpn_api/zajax$1$4;->val$ajax_url:Ljava/lang/String;

    iput-object p6, p0, Lio/topvpn/vpn_api/zajax$1$4;->val$f_cb:Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {p0, p2, p3}, Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    return-void
.end method


# virtual methods
.method public ondone(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 5

    .prologue
    .line 218
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$1300(Lio/topvpn/vpn_api/zajax;)Lcom/androidquery/AQuery;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/zajax$1$4;->val$zagent:Ljava/lang/String;

    const/16 v2, 0x56ce

    invoke-virtual {v0, v1, v2}, Lcom/androidquery/AQuery;->proxy(Ljava/lang/String;I)Lcom/androidquery/AbstractAQuery;

    .line 219
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$1800(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    .line 221
    :goto_0
    iget-object v1, p0, Lio/topvpn/vpn_api/zajax$1$4;->val$ajax_url:Ljava/lang/String;

    const-string v2, "country="

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$4;->val$ajax_url:Ljava/lang/String;

    .line 223
    :goto_1
    iget-object v1, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v1, v1, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v1}, Lio/topvpn/vpn_api/zajax;->access$1300(Lio/topvpn/vpn_api/zajax;)Lcom/androidquery/AQuery;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    invoke-static {v2}, Lio/topvpn/vpn_api/zajax$1;->access$1900(Lio/topvpn/vpn_api/zajax$1;)Ljava/util/Map;

    move-result-object v2

    const-class v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lio/topvpn/vpn_api/zajax$1$4;->val$f_cb:Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/androidquery/AQuery;->ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 224
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$1300(Lio/topvpn/vpn_api/zajax;)Lcom/androidquery/AQuery;

    move-result-object v0

    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/androidquery/AQuery;->proxy(Ljava/lang/String;I)Lcom/androidquery/AbstractAQuery;

    .line 225
    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "country"

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v2, v2, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    .line 220
    invoke-static {v2}, Lio/topvpn/vpn_api/zajax;->access$1800(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1$4;->val$ajax_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onfailure(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 3

    .prologue
    .line 214
    const-string v0, "zagent_get_myip_failed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agent ip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1$4;->val$zagent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onsuccess(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 3

    .prologue
    .line 194
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->as_json()Lorg/json/JSONObject;

    move-result-object v0

    .line 195
    if-nez v0, :cond_0

    .line 197
    const-string v0, "zagent_get_myip_failed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "agent ip "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1$4;->val$zagent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nres body:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 198
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->as_string()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\nhttp code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->get_code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v1, 0x5

    const-string v2, "myip success"

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/zajax;->access$1100(ILjava/lang/String;)V

    .line 203
    iget-object v1, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v1, v1, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    const-string v2, "country"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/zajax;->access$1802(Lio/topvpn/vpn_api/zajax;Ljava/lang/String;)Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$1800(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$1800(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 206
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v0, v0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$1600(Lio/topvpn/vpn_api/zajax;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->COUNTRY_LOCAL_MYIP:Lio/topvpn/vpn_api/conf$key;

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1$4;->this$1:Lio/topvpn/vpn_api/zajax$1;

    iget-object v2, v2, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    .line 207
    invoke-static {v2}, Lio/topvpn/vpn_api/zajax;->access$1800(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 206
    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    :cond_1
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/zajax$1$4;->ondone(Lio/topvpn/vpn_api/wget$connection;)V

    goto :goto_0
.end method
