.class final Lio/topvpn/vpn_api/wget$14;
.super Lio/topvpn/vpn_api/wget$option;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;->filename(Ljava/lang/String;)Lio/topvpn/vpn_api/wget$option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 291
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$14;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Lio/topvpn/vpn_api/wget$option;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/topvpn/vpn_api/wget;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$14;->val$name:Ljava/lang/String;

    invoke-static {p1, v0}, Lio/topvpn/vpn_api/wget;->access$802(Lio/topvpn/vpn_api/wget;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
