.class Lio/topvpn/vpn_api/svc$svc_update$2;
.super Lio/topvpn/vpn_api/wget;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc$svc_update;->get_svc_attempt(I)V
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
    .line 379
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iput p4, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->val$index:I

    invoke-direct {p0, p2, p3}, Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    return-void
.end method

.method private next_cdn()Z
    .locals 3

    .prologue
    .line 381
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget v1, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->val$index:I

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$2700(Lio/topvpn/vpn_api/svc$svc_update;I)I

    move-result v0

    .line 382
    if-gez v0, :cond_0

    .line 384
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v0, v0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    const-string v2, "failed get svc lib all cdn"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 385
    const/4 v0, 0x0

    .line 389
    :goto_0
    return v0

    .line 388
    :cond_0
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$2900(Lio/topvpn/vpn_api/svc$svc_update;I)V

    .line 389
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onfailure(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 3

    .prologue
    .line 412
    const-string v1, "failed_get_svc_cdn"

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3300(Lio/topvpn/vpn_api/svc$svc_update;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "apk"

    :goto_0
    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc$svc_update$2;->next_cdn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$2600(Lio/topvpn/vpn_api/svc$svc_update;I)V

    .line 416
    :cond_0
    return-void

    .line 412
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    .line 413
    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$2500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->val$index:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public onsuccess(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 393
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v0, v0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "success get svc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc$svc_update;->access$3000(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 394
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3100(Lio/topvpn/vpn_api/svc$svc_update;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3000(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v1, v1, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc;->access$3200(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    .line 395
    invoke-static {v2}, Lio/topvpn/vpn_api/svc$svc_update;->access$3300(Lio/topvpn/vpn_api/svc$svc_update;)Z

    move-result v2

    .line 394
    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/util;->unzip(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v0, v0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed unzip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc$svc_update;->access$3000(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc$svc_update$2;->next_cdn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3000(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_rm(Ljava/lang/String;)Z

    .line 401
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0, v4}, Lio/topvpn/vpn_api/svc$svc_update;->access$3102(Lio/topvpn/vpn_api/svc$svc_update;Z)Z

    .line 402
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$3500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$3402(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$3600(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$3002(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0, v4}, Lio/topvpn/vpn_api/svc$svc_update;->access$2900(Lio/topvpn/vpn_api/svc$svc_update;I)V

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3000(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_rm(Ljava/lang/String;)Z

    .line 408
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$2;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$2600(Lio/topvpn/vpn_api/svc$svc_update;I)V

    goto :goto_0
.end method
