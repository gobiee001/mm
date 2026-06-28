.class Lio/topvpn/vpn_api/wget$16;
.super Ljava/lang/Object;
.source "wget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/wget;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/wget;)V
    .locals 0

    .prologue
    .line 522
    iput-object p1, p0, Lio/topvpn/vpn_api/wget$16;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 524
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$16;->this$0:Lio/topvpn/vpn_api/wget;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SOFT TIMEOUT ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/topvpn/vpn_api/wget$16;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-static {v3}, Lio/topvpn/vpn_api/wget;->access$100(Lio/topvpn/vpn_api/wget;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/wget;->access$1300(Lio/topvpn/vpn_api/wget;ILjava/lang/String;)I

    .line 525
    iget-object v0, p0, Lio/topvpn/vpn_api/wget$16;->this$0:Lio/topvpn/vpn_api/wget;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/wget;->onslow()V

    .line 526
    return-void
.end method
