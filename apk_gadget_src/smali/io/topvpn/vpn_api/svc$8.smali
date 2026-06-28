.class Lio/topvpn/vpn_api/svc$8;
.super Lio/topvpn/vpn_api/ram$listener;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Lio/topvpn/vpn_api/ram$listener;-><init>()V

    return-void
.end method


# virtual methods
.method public on_changed(Lio/topvpn/vpn_api/ram$key;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 925
    sget-object v0, Lio/topvpn/vpn_api/ram;->APK_ADDED_STAMP:Lio/topvpn/vpn_api/ram$key;

    if-ne p1, v0, :cond_2

    .line 927
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/ram;->APK_ADDED_STAMP:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->get_int(Ljava/lang/Object;)I

    move-result v0

    .line 928
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/ram;->SVC_UP:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 976
    :cond_0
    :goto_0
    return-void

    .line 930
    :cond_1
    new-instance v1, Lio/topvpn/vpn_api/svc$8$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "route_update_stamp.json?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "stamp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 931
    invoke-static {v3, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 930
    invoke-static {v2}, Lio/topvpn/vpn_api/util;->cmd2url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Lio/topvpn/vpn_api/wget$option;

    const/4 v4, 0x0

    const/16 v5, 0xa

    .line 931
    invoke-static {v5}, Lio/topvpn/vpn_api/wget;->attempts(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, p0, v2, v3, v0}, Lio/topvpn/vpn_api/svc$8$1;-><init>(Lio/topvpn/vpn_api/svc$8;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;I)V

    goto :goto_0

    .line 954
    :cond_2
    sget-object v0, Lio/topvpn/vpn_api/ram;->SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

    if-ne p1, v0, :cond_6

    .line 956
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/ram;->SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 957
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_SVC_CONNECTED:Lio/topvpn/vpn_api/conf$key;

    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    goto :goto_0

    .line 960
    :cond_3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 961
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$5200(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    .line 962
    invoke-static {v2}, Lio/topvpn/vpn_api/svc;->access$5200(Lio/topvpn/vpn_api/svc;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v4, 0x1499700

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 964
    :cond_4
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-virtual {v2}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lio/topvpn/vpn_api/auth;->get_instance(Landroid/content/Context;)Lio/topvpn/vpn_api/auth;

    move-result-object v2

    invoke-virtual {v2, v7, v6}, Lio/topvpn/vpn_api/auth;->login(Lio/topvpn/vpn_api/auth$login_cb;Z)V

    .line 966
    iget-object v2, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v2, v0, v1}, Lio/topvpn/vpn_api/svc;->access$5202(Lio/topvpn/vpn_api/svc;J)J

    .line 968
    :cond_5
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0, v7}, Lio/topvpn/vpn_api/svc;->access$1700(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/state$key;)V

    goto/16 :goto_0

    .line 971
    :cond_6
    sget-object v0, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    if-ne p1, v0, :cond_0

    .line 973
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$8;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$4700(Lio/topvpn/vpn_api/svc;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic on_changed(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 923
    check-cast p1, Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {p0, p1}, Lio/topvpn/vpn_api/svc$8;->on_changed(Lio/topvpn/vpn_api/ram$key;)V

    return-void
.end method
