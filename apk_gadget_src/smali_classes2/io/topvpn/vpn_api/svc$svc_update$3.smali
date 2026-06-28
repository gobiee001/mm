.class Lio/topvpn/vpn_api/svc$svc_update$3;
.super Lio/topvpn/vpn_api/wget;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/svc$svc_update;->get_setup_json()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lio/topvpn/vpn_api/svc$svc_update;


# direct methods
.method varargs constructor <init>(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-direct {p0, p2, p3}, Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    return-void
.end method


# virtual methods
.method public onfailure(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v0, v0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    const-string v2, "failed hola_setup setting json get"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 523
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$2600(Lio/topvpn/vpn_api/svc$svc_update;I)V

    .line 524
    return-void
.end method

.method public onsuccess(Lio/topvpn/vpn_api/wget$connection;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 473
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v0, v0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v2, 0x3

    const-string v3, "success hola_setup setting json get"

    invoke-static {v0, v2, v3}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 474
    invoke-interface {p1}, Lio/topvpn/vpn_api/wget$connection;->as_json()Lorg/json/JSONObject;

    move-result-object v0

    .line 475
    if-nez v0, :cond_0

    .line 477
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/svc$svc_update$3;->onfailure(Lio/topvpn/vpn_api/wget$connection;)V

    .line 519
    :goto_0
    return-void

    .line 480
    :cond_0
    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 482
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v0, v0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x4

    const-string v2, "update disabled by server"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    goto :goto_0

    .line 485
    :cond_1
    const-string v2, "topvpn"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 486
    const-string v3, "cdn_list"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 487
    const-string v4, "apk"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 488
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const-string v5, "link"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lio/topvpn/vpn_api/svc$svc_update;->access$3702(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const-string v5, "force"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v0, v5}, Lio/topvpn/vpn_api/svc$svc_update;->access$3802(Lio/topvpn/vpn_api/svc$svc_update;Z)Z

    .line 490
    iget-object v5, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const-string v0, "use"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    .line 491
    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3800(Lio/topvpn/vpn_api/svc$svc_update;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3900(Lio/topvpn/vpn_api/svc$svc_update;)Lio/topvpn/vpn_api/svc;

    move-result-object v0

    const-string v6, "com.android.vending"

    invoke-static {v0, v6}, Lio/topvpn/vpn_api/util;->apk_exist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 490
    :goto_1
    invoke-static {v5, v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3302(Lio/topvpn/vpn_api/svc$svc_update;Z)Z

    .line 492
    if-eqz v2, :cond_3

    if-nez v3, :cond_5

    .line 494
    :cond_3
    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/svc$svc_update$3;->onfailure(Lio/topvpn/vpn_api/wget$connection;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 491
    goto :goto_1

    .line 497
    :cond_5
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v5}, Lio/topvpn/vpn_api/svc$svc_update;->access$2502(Lio/topvpn/vpn_api/svc$svc_update;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 499
    :goto_2
    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 500
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$2500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 501
    :catch_0
    move-exception v0

    .line 503
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 504
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$2600(Lio/topvpn/vpn_api/svc$svc_update;I)V

    .line 506
    :cond_6
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3300(Lio/topvpn/vpn_api/svc$svc_update;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "version"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-static {v1, v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$4002(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 508
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3300(Lio/topvpn/vpn_api/svc$svc_update;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "file"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v1, v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3502(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 510
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v3, v3, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc;->access$3200(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc$svc_update;->access$3500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$3602(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$3500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$3402(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v3, v3, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc;->access$3200(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v3}, Lio/topvpn/vpn_api/svc$svc_update;->access$3500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$3002(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 513
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc$svc_update;->access$3100(Lio/topvpn/vpn_api/svc$svc_update;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 515
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const-string v1, "file_zip"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v4}, Lio/topvpn/vpn_api/svc$svc_update;->access$3500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$3402(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 516
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    iget-object v2, v2, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$3200(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc$svc_update;->access$3400(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$3002(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;

    .line 518
    :cond_7
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update$3;->this$1:Lio/topvpn/vpn_api/svc$svc_update;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_update;->access$2600(Lio/topvpn/vpn_api/svc$svc_update;I)V

    goto/16 :goto_0

    .line 506
    :cond_8
    const-string v0, "version"

    .line 507
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 508
    :cond_9
    const-string v0, "file"

    .line 509
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method
