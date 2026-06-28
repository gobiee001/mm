.class final Lio/topvpn/vpn_api/wget$13;
.super Lio/topvpn/vpn_api/wget$option;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;->same_thread(Z)Lio/topvpn/vpn_api/wget$option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$same:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 285
    iput-boolean p1, p0, Lio/topvpn/vpn_api/wget$13;->val$same:Z

    invoke-direct {p0}, Lio/topvpn/vpn_api/wget$option;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/topvpn/vpn_api/wget;)V
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lio/topvpn/vpn_api/wget$13;->val$same:Z

    invoke-static {p1, v0}, Lio/topvpn/vpn_api/wget;->access$702(Lio/topvpn/vpn_api/wget;Z)Z

    return-void
.end method
