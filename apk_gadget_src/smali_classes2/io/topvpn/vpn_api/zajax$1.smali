.class Lio/topvpn/vpn_api/zajax$1;
.super Lcom/androidquery/callback/AjaxCallback;
.source "zajax.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/zajax;->ajax(Ljava/util/Map;Lcom/androidquery/callback/AjaxCallback;)V
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
.field final synthetic this$0:Lio/topvpn/vpn_api/zajax;

.field final synthetic val$cb:Lcom/androidquery/callback/AjaxCallback;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/zajax;Lcom/androidquery/callback/AjaxCallback;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    iput-object p2, p0, Lio/topvpn/vpn_api/zajax$1;->val$cb:Lcom/androidquery/callback/AjaxCallback;

    invoke-direct {p0}, Lcom/androidquery/callback/AjaxCallback;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lio/topvpn/vpn_api/zajax$1;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1;->params:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 0

    .prologue
    .line 87
    check-cast p2, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, p2, p3}, Lio/topvpn/vpn_api/zajax$1;->callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V

    return-void
.end method

.method public callback(Ljava/lang/String;Lorg/json/JSONObject;Lcom/androidquery/callback/AjaxStatus;)V
    .locals 8

    .prologue
    .line 92
    invoke-virtual {p3}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1;->val$cb:Lcom/androidquery/callback/AjaxCallback;

    invoke-virtual {v0, p1, p2, p3}, Lcom/androidquery/callback/AjaxCallback;->callback(Ljava/lang/String;Ljava/lang/Object;Lcom/androidquery/callback/AjaxStatus;)V

    .line 227
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$000(Lio/topvpn/vpn_api/zajax;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$100(Lio/topvpn/vpn_api/zajax;)V

    .line 102
    :goto_1
    invoke-static {}, Lio/topvpn/vpn_api/zajax;->access$300()[Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/zajax;->access$400()I

    move-result v1

    aget-object v0, v0, v1

    .line 103
    invoke-static {}, Lio/topvpn/vpn_api/zajax;->access$500()[Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lio/topvpn/vpn_api/zajax;->access$600()I

    move-result v2

    aget-object v4, v1, v2

    .line 122
    new-instance v1, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;-><init>(Lio/topvpn/vpn_api/zajax$1;)V

    .line 126
    if-eqz v0, :cond_1

    .line 129
    new-instance v2, Lio/topvpn/vpn_api/zajax$1$1;

    invoke-direct {v2, p0, v1, v0}, Lio/topvpn/vpn_api/zajax$1$1;-><init>(Lio/topvpn/vpn_api/zajax$1;Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;Ljava/lang/String;)V

    .line 142
    iget-object v3, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v3}, Lio/topvpn/vpn_api/zajax;->access$1300(Lio/topvpn/vpn_api/zajax;)Lcom/androidquery/AQuery;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v5}, Lio/topvpn/vpn_api/zajax;->access$1200(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p0, Lio/topvpn/vpn_api/zajax$1;->params:Ljava/util/Map;

    const-class v6, Lorg/json/JSONObject;

    invoke-virtual {v3, v0, v5, v6, v2}, Lcom/androidquery/AQuery;->ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v2}, Lio/topvpn/vpn_api/zajax;->access$1400(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v2}, Lio/topvpn/vpn_api/zajax;->access$1500(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v2}, Lio/topvpn/vpn_api/zajax;->access$1200(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 146
    new-instance v0, Lio/topvpn/vpn_api/zajax$1$2;

    invoke-direct {v0, p0, v1}, Lio/topvpn/vpn_api/zajax$1$2;-><init>(Lio/topvpn/vpn_api/zajax$1;Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;)V

    .line 157
    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v2}, Lio/topvpn/vpn_api/zajax;->access$1300(Lio/topvpn/vpn_api/zajax;)Lcom/androidquery/AQuery;

    move-result-object v2

    iget-object v3, p0, Lio/topvpn/vpn_api/zajax$1;->params:Ljava/util/Map;

    const-class v6, Lorg/json/JSONObject;

    invoke-virtual {v2, v5, v3, v6, v0}, Lcom/androidquery/AQuery;->ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 158
    new-instance v6, Lio/topvpn/vpn_api/zajax$1$3;

    invoke-direct {v6, p0, v1, v4}, Lio/topvpn/vpn_api/zajax$1$3;-><init>(Lio/topvpn/vpn_api/zajax$1;Lio/topvpn/vpn_api/zajax$1$1ajax_sub_cb;Ljava/lang/String;)V

    .line 171
    const-string v0, ""

    .line 172
    const-string v0, "country="

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    .line 173
    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$1600(Lio/topvpn/vpn_api/zajax;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->COUNTRY_LOCAL_MYIP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->exist(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "country"

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    .line 176
    invoke-static {v2}, Lio/topvpn/vpn_api/zajax;->access$1600(Lio/topvpn/vpn_api/zajax;)Lio/topvpn/vpn_api/conf;

    move-result-object v2

    sget-object v3, Lio/topvpn/vpn_api/conf;->COUNTRY_LOCAL_MYIP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    :goto_2
    const-string v1, "country="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v1}, Lio/topvpn/vpn_api/zajax;->access$1700(Lio/topvpn/vpn_api/zajax;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 182
    :cond_2
    iget-object v1, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v1}, Lio/topvpn/vpn_api/zajax;->access$1300(Lio/topvpn/vpn_api/zajax;)Lcom/androidquery/AQuery;

    move-result-object v1

    const/16 v2, 0x56ce

    invoke-virtual {v1, v4, v2}, Lcom/androidquery/AQuery;->proxy(Ljava/lang/String;I)Lcom/androidquery/AbstractAQuery;

    .line 183
    iget-object v1, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v1}, Lio/topvpn/vpn_api/zajax;->access$1300(Lio/topvpn/vpn_api/zajax;)Lcom/androidquery/AQuery;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/zajax$1;->params:Ljava/util/Map;

    const-class v3, Lorg/json/JSONObject;

    invoke-virtual {v1, v0, v2, v3, v6}, Lcom/androidquery/AQuery;->ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 184
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ajax with zagent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " url "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/zajax;->access$1100(ILjava/lang/String;)V

    .line 185
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$1300(Lio/topvpn/vpn_api/zajax;)Lcom/androidquery/AQuery;

    move-result-object v0

    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/androidquery/AQuery;->proxy(Ljava/lang/String;I)Lcom/androidquery/AbstractAQuery;

    goto/16 :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax$1;->this$0:Lio/topvpn/vpn_api/zajax;

    invoke-static {v0}, Lio/topvpn/vpn_api/zajax;->access$200(Lio/topvpn/vpn_api/zajax;)V

    goto/16 :goto_1

    :cond_4
    move-object v0, v5

    .line 179
    goto :goto_2

    .line 189
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":22222/myip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    new-instance v0, Lio/topvpn/vpn_api/zajax$1$4;

    const/4 v1, 0x1

    new-array v3, v1, [Lio/topvpn/vpn_api/wget$option;

    const/4 v1, 0x0

    const/4 v7, 0x2

    invoke-static {v7}, Lio/topvpn/vpn_api/wget;->attempts(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v7

    aput-object v7, v3, v1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lio/topvpn/vpn_api/zajax$1$4;-><init>(Lio/topvpn/vpn_api/zajax$1;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;Ljava/lang/String;Ljava/lang/String;Lcom/androidquery/callback/AjaxCallback;)V

    goto/16 :goto_0
.end method
