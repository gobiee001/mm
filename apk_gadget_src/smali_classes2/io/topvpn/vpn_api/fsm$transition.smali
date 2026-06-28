.class public final Lio/topvpn/vpn_api/fsm$transition;
.super Ljava/lang/Object;
.source "fsm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/fsm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "transition"
.end annotation


# instance fields
.field public final m_from:Lio/topvpn/vpn_api/fsm$state;

.field public final m_to:[Lio/topvpn/vpn_api/fsm$state;


# direct methods
.method public varargs constructor <init>(Lio/topvpn/vpn_api/fsm$state;[Lio/topvpn/vpn_api/fsm$state;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lio/topvpn/vpn_api/fsm$transition;->m_from:Lio/topvpn/vpn_api/fsm$state;

    .line 33
    invoke-virtual {p2}, [Lio/topvpn/vpn_api/fsm$state;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/topvpn/vpn_api/fsm$state;

    iput-object v0, p0, Lio/topvpn/vpn_api/fsm$transition;->m_to:[Lio/topvpn/vpn_api/fsm$state;

    .line 34
    return-void
.end method
