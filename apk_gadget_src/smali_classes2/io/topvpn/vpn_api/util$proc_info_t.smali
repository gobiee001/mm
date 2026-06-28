.class public Lio/topvpn/vpn_api/util$proc_info_t;
.super Ljava/lang/Object;
.source "util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "proc_info_t"
.end annotation


# instance fields
.field public pid:I

.field public uid:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
