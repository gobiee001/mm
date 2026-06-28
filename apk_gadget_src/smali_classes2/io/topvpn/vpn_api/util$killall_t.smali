.class final enum Lio/topvpn/vpn_api/util$killall_t;
.super Ljava/lang/Enum;
.source "util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "killall_t"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/topvpn/vpn_api/util$killall_t;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/topvpn/vpn_api/util$killall_t;

.field public static final enum FAILED:Lio/topvpn/vpn_api/util$killall_t;

.field public static final enum KILLED:Lio/topvpn/vpn_api/util$killall_t;

.field public static final enum NOT_FOUND:Lio/topvpn/vpn_api/util$killall_t;

.field public static final enum UID_MISMATCH:Lio/topvpn/vpn_api/util$killall_t;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1047
    new-instance v0, Lio/topvpn/vpn_api/util$killall_t;

    const-string v1, "KILLED"

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/util$killall_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/util$killall_t;->KILLED:Lio/topvpn/vpn_api/util$killall_t;

    new-instance v0, Lio/topvpn/vpn_api/util$killall_t;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v3}, Lio/topvpn/vpn_api/util$killall_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/util$killall_t;->NOT_FOUND:Lio/topvpn/vpn_api/util$killall_t;

    new-instance v0, Lio/topvpn/vpn_api/util$killall_t;

    const-string v1, "FAILED"

    invoke-direct {v0, v1, v4}, Lio/topvpn/vpn_api/util$killall_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/util$killall_t;->FAILED:Lio/topvpn/vpn_api/util$killall_t;

    new-instance v0, Lio/topvpn/vpn_api/util$killall_t;

    const-string v1, "UID_MISMATCH"

    invoke-direct {v0, v1, v5}, Lio/topvpn/vpn_api/util$killall_t;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/util$killall_t;->UID_MISMATCH:Lio/topvpn/vpn_api/util$killall_t;

    const/4 v0, 0x4

    new-array v0, v0, [Lio/topvpn/vpn_api/util$killall_t;

    sget-object v1, Lio/topvpn/vpn_api/util$killall_t;->KILLED:Lio/topvpn/vpn_api/util$killall_t;

    aput-object v1, v0, v2

    sget-object v1, Lio/topvpn/vpn_api/util$killall_t;->NOT_FOUND:Lio/topvpn/vpn_api/util$killall_t;

    aput-object v1, v0, v3

    sget-object v1, Lio/topvpn/vpn_api/util$killall_t;->FAILED:Lio/topvpn/vpn_api/util$killall_t;

    aput-object v1, v0, v4

    sget-object v1, Lio/topvpn/vpn_api/util$killall_t;->UID_MISMATCH:Lio/topvpn/vpn_api/util$killall_t;

    aput-object v1, v0, v5

    sput-object v0, Lio/topvpn/vpn_api/util$killall_t;->$VALUES:[Lio/topvpn/vpn_api/util$killall_t;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 1047
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/topvpn/vpn_api/util$killall_t;
    .locals 1

    .prologue
    .line 1047
    const-class v0, Lio/topvpn/vpn_api/util$killall_t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/topvpn/vpn_api/util$killall_t;

    return-object v0
.end method

.method public static values()[Lio/topvpn/vpn_api/util$killall_t;
    .locals 1

    .prologue
    .line 1047
    sget-object v0, Lio/topvpn/vpn_api/util$killall_t;->$VALUES:[Lio/topvpn/vpn_api/util$killall_t;

    invoke-virtual {v0}, [Lio/topvpn/vpn_api/util$killall_t;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/topvpn/vpn_api/util$killall_t;

    return-object v0
.end method
