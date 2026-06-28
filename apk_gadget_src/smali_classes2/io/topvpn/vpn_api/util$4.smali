.class final Lio/topvpn/vpn_api/util$4;
.super Ljava/lang/Object;
.source "util.java"

# interfaces
.implements Lio/topvpn/vpn_api/util$scandir_cb_t;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/topvpn/vpn_api/util;->proc_find(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$exe:Ljava/lang/String;

.field final synthetic val$res:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1064
    iput-object p1, p0, Lio/topvpn/vpn_api/util$4;->val$exe:Ljava/lang/String;

    iput-object p2, p0, Lio/topvpn/vpn_api/util$4;->val$res:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cmdline"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_read_line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1067
    if-nez v0, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return v4

    .line 1069
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1070
    if-ltz v1, :cond_2

    .line 1071
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1072
    :cond_2
    iget-object v1, p0, Lio/topvpn/vpn_api/util$4;->val$exe:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    const-string v0, ""

    .line 1076
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1078
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 1079
    if-eqz v1, :cond_4

    const-string v2, "Uid"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1080
    :cond_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1082
    if-eqz v1, :cond_0

    .line 1084
    const-string v0, "\\t"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1085
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 1087
    new-instance v1, Lio/topvpn/vpn_api/util$proc_info_t;

    invoke-direct {v1}, Lio/topvpn/vpn_api/util$proc_info_t;-><init>()V

    .line 1088
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lio/topvpn/vpn_api/util$proc_info_t;->pid:I

    .line 1089
    const/4 v2, 0x1

    :try_start_1
    aget-object v0, v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lio/topvpn/vpn_api/util$proc_info_t;->uid:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1091
    iget-object v0, p0, Lio/topvpn/vpn_api/util$4;->val$res:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1090
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1081
    :catch_1
    move-exception v0

    goto :goto_0
.end method
