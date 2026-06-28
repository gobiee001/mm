.class final Lio/topvpn/vpn_api/wget$6;
.super Lio/topvpn/vpn_api/wget$option;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;->body(Ljava/lang/String;Ljava/lang/String;)Lio/topvpn/vpn_api/wget$option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$content:Ljava/lang/String;

.field final synthetic val$content_type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$6;->val$content_type:Ljava/lang/String;

    iput-object p2, p0, Lio/topvpn/vpn_api/wget$6;->val$content:Ljava/lang/String;

    invoke-direct {p0}, Lio/topvpn/vpn_api/wget$option;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/topvpn/vpn_api/wget$connection_impl;)V
    .locals 3

    .prologue
    .line 230
    iget-object v0, p1, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lio/topvpn/vpn_api/wget$6;->val$content_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$6;->val$content:Ljava/lang/String;

    iput-object v0, p1, Lio/topvpn/vpn_api/wget$connection_impl;->m_req_body:Ljava/lang/String;

    .line 232
    return-void
.end method
