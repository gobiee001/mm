.class public Lio/topvpn/vpn_api/fsm$state;
.super Ljava/lang/Object;
.source "fsm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/fsm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "state"
.end annotation


# instance fields
.field public final m_name:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 17
    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/topvpn/vpn_api/fsm$state;->m_name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected enter(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V
    .locals 0

    .prologue
    .line 22
    return-void
.end method

.method protected exit(Lio/topvpn/vpn_api/fsm;Lio/topvpn/vpn_api/fsm$state;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method
