.class Lio/topvpn/vpn_api/svc$svc_update$1;
.super Lio/topvpn/vpn_api/wget;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc$svc_update;->get_sha1(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/svc$svc_update;

.field final synthetic val$index:I


# direct methods
.method varargs constructor <init>(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;I)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iput p4, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->val$index:I

    invoke-direct {p0, p2, p3}, Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    return-void
.end method


# virtual methods
.method public onfailure(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 5

    .prologue
    .line 331
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v1, v0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v2, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed get sha1 cdn "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$2500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->val$index:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 332
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget v1, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->val$index:I

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$2700(Lio/topvpn/vpn_api/svc$svc_update;I)I

    move-result v0

    .line 333
    if-gez v0, :cond_0

    .line 335
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v0, v0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    const-string v2, "failed get sha1 all cdn"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 336
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$2600(Lio/topvpn/vpn_api/svc$svc_update;I)V

    .line 340
    :goto_0
    return-void

    .line 339
    :cond_0
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$2800(Lio/topvpn/vpn_api/svc$svc_update;I)V

    goto :goto_0
.end method

.method public onsuccess(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 5

    .prologue
    .line 316
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->as_string()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/svc$svc_update$1;->onfailure(Lio/topvpn/vpn_api/wget$connection;)V

    .line 328
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->as_string()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$2302(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 324
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget v1, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->val$index:I

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$2402(Lio/topvpn/vpn_api/svc$svc_update;I)I

    .line 325
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v1, v0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v2, 0x7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "have sha1 cdn "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$2500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/util/ArrayList;

    move-result-object v0

    iget v4, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->val$index:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    .line 326
    invoke-static {v3}, Lio/topvpn/vpn_api/svc$svc_update;->access$2300(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-static {v1, v2, v0}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 327
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$1;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$2600(Lio/topvpn/vpn_api/svc$svc_update;I)V

    goto :goto_0
.end method
