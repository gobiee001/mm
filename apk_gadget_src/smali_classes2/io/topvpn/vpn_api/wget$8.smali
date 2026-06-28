.class final Lio/topvpn/vpn_api/wget$8;
.super Lio/topvpn/vpn_api/wget$option;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;->follow_redirects(Z)Lio/topvpn/vpn_api/wget$option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$follow:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 248
    iput-boolean p1, p0, Lio/topvpn/vpn_api/wget$8;->val$follow:Z

    invoke-direct {p0}, Lio/topvpn/vpn_api/wget$option;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/topvpn/vpn_api/wget$connection_impl;)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p1, Lio/topvpn/vpn_api/wget$connection_impl;->m_conn:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lio/topvpn/vpn_api/wget$8;->val$follow:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    return-void
.end method
