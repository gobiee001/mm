.class Lio/topvpn/vpn_api/util$3$1;
.super Ljava/lang/Object;
.source "util.java"

# interfaces
.implements Lio/topvpn/vpn_api/util$scandir_cb_t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/util$3;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/topvpn/vpn_api/util$3;


# direct methods
.method constructor <init>(Lio/topvpn/vpn_api/util$3;)V
    .locals 0

    .prologue
    .line 684
    iput-object p1, p0, Lio/topvpn/vpn_api/util$3$1;->this$0:Lio/topvpn/vpn_api/util$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 688
    invoke-static {}, Lio/topvpn/vpn_api/util;->access$700()Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 720
    :cond_0
    :goto_0
    return v6

    .line 691
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".sent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 692
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 694
    invoke-static {v1}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 695
    invoke-static {p3}, Lio/topvpn/vpn_api/util;->file_read(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_0

    .line 699
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 700
    const-string v4, "^[0-9]+_[0-9]+_(perr_)*"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 702
    invoke-static {}, Lio/topvpn/vpn_api/util;->access$800()Lio/topvpn/vpn_api/conf;

    move-result-object v0

    if-nez v0, :cond_2

    .line 704
    const-string v0, "perr send failed m_conf null"

    invoke-static {v7, v0}, Lio/topvpn/vpn_api/util;->access$900(ILjava/lang/String;)I

    goto :goto_0

    .line 707
    :cond_2
    invoke-static {}, Lio/topvpn/vpn_api/util;->access$800()Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v5, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v5}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 708
    const-string v0, "vpn_api_crash"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "vpn_api_host_app_crash"

    .line 709
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 710
    :cond_3
    invoke-static {v3}, Lio/topvpn/vpn_api/util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    .line 713
    :goto_1
    invoke-static {v2}, Lio/topvpn/vpn_api/util;->access$1000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v4, v2, p2, v0}, Lio/topvpn/vpn_api/util;->access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 716
    const-string v0, ""

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->file_write(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 711
    :cond_4
    invoke-static {v3, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 712
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 719
    :cond_5
    const-string v0, "perr_p_send failed"

    invoke-static {v7, v0}, Lio/topvpn/vpn_api/util;->access$900(ILjava/lang/String;)I

    goto/16 :goto_0
.end method
