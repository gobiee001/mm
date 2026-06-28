.class final Lio/topvpn/vpn_api/wget$2;
.super Lio/topvpn/vpn_api/wget$option;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;->cookie(Ljava/lang/String;)Lio/topvpn/vpn_api/wget$option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cookie:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$2;->val$cookie:Ljava/lang/String;

    invoke-direct {p0}, Lio/topvpn/vpn_api/wget$option;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/topvpn/vpn_api/wget$connection_impl;)V
    .locals 3

    .prologue
    .line 204
    iget-object v0, p1, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    const-string v1, "Cookie"

    iget-object v2, p0, Lio/topvpn/vpn_api/wget$2;->val$cookie:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
