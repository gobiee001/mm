.class Lio/topvpn/vpn_api/ajax_ccgi;
.super Ljava/lang/Object;
.source "zajax.java"


# instance fields
.field m_zajax:Lio/topvpn/vpn_api/zajax;


# direct methods
.method public constructor <init>(Lcom/androidquery/AQuery;Ljava/lang/String;Lio/topvpn/vpn_api/conf;)V
    .locals 1

    .prologue
    .line 276
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/topvpn/vpn_api/ajax_ccgi;-><init>(Lcom/androidquery/AQuery;Ljava/lang/String;Lio/topvpn/vpn_api/conf;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/androidquery/AQuery;Ljava/lang/String;Lio/topvpn/vpn_api/conf;Z)V
    .locals 6

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance v0, Lio/topvpn/vpn_api/zajax;

    invoke-static {}, Lio/topvpn/vpn_api/util;->ccgi_host()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lio/topvpn/vpn_api/zajax;-><init>(Lcom/androidquery/AQuery;Ljava/lang/String;Ljava/lang/String;Lio/topvpn/vpn_api/conf;Z)V

    iput-object v0, p0, Lio/topvpn/vpn_api/ajax_ccgi;->m_zajax:Lio/topvpn/vpn_api/zajax;

    return-void
.end method


# virtual methods
.method public ajax(Ljava/util/Map;Lcom/androidquery/callback/AjaxCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v0, p0, Lio/topvpn/vpn_api/ajax_ccgi;->m_zajax:Lio/topvpn/vpn_api/zajax;

    invoke-virtual {v0, p1, p2}, Lio/topvpn/vpn_api/zajax;->ajax(Ljava/util/Map;Lcom/androidquery/callback/AjaxCallback;)V

    return-void
.end method
