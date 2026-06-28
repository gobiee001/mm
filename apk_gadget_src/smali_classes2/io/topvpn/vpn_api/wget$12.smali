.class final Lio/topvpn/vpn_api/wget$12;
.super Lio/topvpn/vpn_api/wget$option;
.source "wget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;->retry_interval_ms(I)Lio/topvpn/vpn_api/wget$option;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$interval_ms:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 278
    iput p1, p0, Lio/topvpn/vpn_api/wget$12;->val$interval_ms:I

    invoke-direct {p0}, Lio/topvpn/vpn_api/wget$option;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/topvpn/vpn_api/wget;)V
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lio/topvpn/vpn_api/wget$12;->val$interval_ms:I

    invoke-static {p1, v0}, Lio/topvpn/vpn_api/wget;->access$602(Lio/topvpn/vpn_api/wget;I)I

    return-void
.end method
