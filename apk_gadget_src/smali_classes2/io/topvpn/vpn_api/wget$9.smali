.class final Lio/topvpn/vpn_api/wget$9;
.super Lio/topvpn/vpn_api/wget$option;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;->proxy(Ljava/lang/String;I)Lio/topvpn/vpn_api/wget$option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$port:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$9;->val$host:Ljava/lang/String;

    iput p2, p0, Lio/topvpn/vpn_api/wget$9;->val$port:I

    invoke-direct {p0}, Lio/topvpn/vpn_api/wget$option;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/topvpn/vpn_api/wget;)V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$9;->val$host:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/topvpn/vpn_api/wget;->access$202(Lio/topvpn/vpn_api/wget;Ljava/lang/String;)Ljava/lang/String;

    .line 258
    iget v0, p0, Lio/topvpn/vpn_api/wget$9;->val$port:I

    invoke-static {p1, v0}, Lio/topvpn/vpn_api/wget;->access$302(Lio/topvpn/vpn_api/wget;I)I

    .line 259
    return-void
.end method
