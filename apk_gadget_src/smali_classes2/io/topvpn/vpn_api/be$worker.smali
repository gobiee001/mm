.class Lio/topvpn/vpn_api/be$worker;
.super Ljava/lang/Thread;
.source "be.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/be;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "worker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/be$worker$sock_server;
    }
.end annotation


# static fields
.field private static final SVC_EXE_DBG:Ljava/lang/String; = "libhola_svc.so.dbg"


# instance fields
.field private final m_do_install:Z

.field private m_res:I

.field private m_state:I

.field private final m_state_sync:Ljava/lang/Object;

.field private final m_workdir:Ljava/lang/String;

.field steps:[Ljava/lang/String;

.field final synthetic this$0:Lio/topvpn/vpn_api/be;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/be;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iput-object p1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/be$worker;->m_state_sync:Ljava/lang/Object;

    .line 144
    iput v2, p0, Lio/topvpn/vpn_api/be$worker;->m_state:I

    .line 281
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "starting"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "running"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "crash_start"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "crash_end"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "shutdown"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sqlite_checkpoint"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "down"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "atexit"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "reinstall"

    aput-object v2, v0, v1

    iput-object v0, p0, Lio/topvpn/vpn_api/be$worker;->steps:[Ljava/lang/String;

    .line 150
    invoke-static {p1}, Lio/topvpn/vpn_api/be;->access$300(Lio/topvpn/vpn_api/be;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->get_workdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/be$worker;->m_workdir:Ljava/lang/String;

    .line 151
    iput-boolean p2, p0, Lio/topvpn/vpn_api/be$worker;->m_do_install:Z

    .line 152
    return-void
.end method

.method static synthetic access$000(Lio/topvpn/vpn_api/be$worker;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker;->m_state_sync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lio/topvpn/vpn_api/be$worker;)I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lio/topvpn/vpn_api/be$worker;->m_state:I

    return v0
.end method

.method static synthetic access$1300(Lio/topvpn/vpn_api/be$worker;)I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lio/topvpn/vpn_api/be$worker;->m_res:I

    return v0
.end method

.method static synthetic access$200(Lio/topvpn/vpn_api/be$worker;)Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lio/topvpn/vpn_api/be$worker;->m_do_install:Z

    return v0
.end method

.method private execute()I
    .locals 13

    .prologue
    const/4 v12, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 232
    .line 235
    :try_start_0
    new-instance v4, Lio/topvpn/vpn_api/be$worker$sock_server;

    invoke-direct {v4, p0}, Lio/topvpn/vpn_api/be$worker$sock_server;-><init>(Lio/topvpn/vpn_api/be$worker;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    :try_start_1
    invoke-virtual {v4}, Lio/topvpn/vpn_api/be$worker$sock_server;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v4

    move-object v0, v3

    .line 238
    :goto_0
    if-eqz v0, :cond_0

    .line 239
    const-string v4, "die_port_fail"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " running vpn"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v8

    .line 241
    const-string v0, "svc_start"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " last run "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v10, Lio/topvpn/vpn_api/be;->m_last_sys_exec_time:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sput-wide v8, Lio/topvpn/vpn_api/be;->m_last_sys_exec_time:J

    .line 244
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$700(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->get_current_ver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    const-string v4, "1.29.537"

    invoke-static {v0, v4}, Lio/topvpn/vpn_api/util;->version_cmp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_9

    move v0, v2

    .line 248
    :goto_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v5

    if-eqz v0, :cond_4

    iget-object v4, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v4}, Lio/topvpn/vpn_api/be;->access$1000(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Lio/topvpn/vpn_api/util;->set_apkid(Ljava/lang/String;)I

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lio/topvpn/vpn_api/be$worker;->get_exe()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --service --sdk --apkid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v5}, Lio/topvpn/vpn_api/be;->access$1000(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_5

    const-string v0, " --apkid-pipe"

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " --workdir "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lio/topvpn/vpn_api/be$worker;->m_workdir:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " --confdir "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    .line 251
    invoke-static {v4}, Lio/topvpn/vpn_api/be;->access$700(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " --chdir "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v4}, Lio/topvpn/vpn_api/be;->access$700(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " --dldir "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v4}, Lio/topvpn/vpn_api/be;->access$1100(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v0, p0, Lio/topvpn/vpn_api/be$worker;->m_do_install:Z

    if-eqz v0, :cond_6

    const-string v0, " --install"

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " --parent-die-port "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez v7, :cond_7

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "svc exec "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v12, v4}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TMP="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v4}, Lio/topvpn/vpn_api/be;->access$300(Lio/topvpn/vpn_api/be;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/tmp"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ZERR="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " FD_SP_BACKTRACE=1"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-static {}, Lio/topvpn/vpn_api/util;->is_debug_exe()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v4}, Lio/topvpn/vpn_api/be;->access$500(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/libgdbserver.so :1234 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    const/4 v6, -0x1

    move-object v4, v3

    invoke-static/range {v0 .. v6}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v0

    .line 261
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    .line 263
    if-eqz v0, :cond_2

    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    .line 265
    invoke-direct {p0}, Lio/topvpn/vpn_api/be$worker;->get_last_step()Ljava/lang/String;

    move-result-object v1

    .line 266
    const-string v4, "svc_exit_err"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exit code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " up time "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v10, v2, v8

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " step "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_2
    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "execution lasted for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v10, v2, v8

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v12, v4}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 273
    const-string v1, "svc_stop"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " up time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long/2addr v2, v8

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms exit code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    if-eqz v7, :cond_3

    .line 276
    invoke-virtual {v7}, Lio/topvpn/vpn_api/be$worker$sock_server;->close()V

    .line 277
    :cond_3
    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_p_try()V

    .line 278
    return v0

    .line 237
    :catch_0
    move-exception v0

    move-object v4, v3

    :goto_7
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v7, v4

    goto/16 :goto_0

    .line 248
    :cond_4
    const-string v4, ""

    goto/16 :goto_2

    .line 249
    :cond_5
    const-string v0, ""

    goto/16 :goto_3

    .line 251
    :cond_6
    const-string v0, ""

    goto/16 :goto_4

    :cond_7
    iget v1, v7, Lio/topvpn/vpn_api/be$worker$sock_server;->m_port:I

    goto/16 :goto_5

    .line 259
    :cond_8
    const-string v0, ""

    goto/16 :goto_6

    .line 237
    :catch_1
    move-exception v0

    goto :goto_7

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method private get_exe()Ljava/lang/String;
    .locals 5

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v1}, Lio/topvpn/vpn_api/be;->access$500(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "libhola_svc.so"

    const-string v3, "hola_svc"

    .line 168
    invoke-static {}, Lio/topvpn/vpn_api/util;->sdk_version()I

    move-result v0

    const/16 v4, 0xf

    if-le v0, v4, :cond_0

    const-string v0, "topvpn_svc_pie"

    .line 167
    :goto_0
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_0
    const-string v0, "topvpn_svc_nopie"

    goto :goto_0
.end method

.method private get_last_step()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 285
    .line 287
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v2}, Lio/topvpn/vpn_api/be;->access$300(Lio/topvpn/vpn_api/be;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/files/db/reg.conf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 291
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 292
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 294
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 295
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v3, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v1

    iget-object v2, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    const/4 v3, 0x5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 299
    :goto_1
    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->steps:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0

    .line 296
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "svc_step\\("

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "\\)"

    .line 297
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1
.end method

.method private kill_wait(II)Lio/topvpn/vpn_api/util$killall_t;
    .locals 5

    .prologue
    const/4 v4, 0x5

    .line 327
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sending signal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to hola_svc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 328
    invoke-direct {p0}, Lio/topvpn/vpn_api/be$worker;->get_exe()Ljava/lang/String;

    move-result-object v1

    .line 329
    invoke-static {v1, p1}, Lio/topvpn/vpn_api/util;->killall(Ljava/lang/String;I)Lio/topvpn/vpn_api/util$killall_t;

    move-result-object v0

    .line 330
    sget-object v2, Lio/topvpn/vpn_api/util$killall_t;->KILLED:Lio/topvpn/vpn_api/util$killall_t;

    if-eq v0, v2, :cond_0

    .line 332
    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "killall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 340
    :goto_0
    return-object v0

    .line 335
    :cond_0
    invoke-static {v1, p2}, Lio/topvpn/vpn_api/util;->proc_waitfor(Ljava/lang/String;I)I

    move-result v0

    .line 336
    if-ge v0, p2, :cond_1

    .line 337
    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "killed hola_svc with signal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    .line 340
    :goto_1
    if-ge v0, p2, :cond_2

    sget-object v0, Lio/topvpn/vpn_api/util$killall_t;->KILLED:Lio/topvpn/vpn_api/util$killall_t;

    goto :goto_0

    .line 339
    :cond_1
    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hola_svc survived signal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lio/topvpn/vpn_api/be;->access$800(Lio/topvpn/vpn_api/be;ILjava/lang/String;)I

    goto :goto_1

    .line 340
    :cond_2
    sget-object v0, Lio/topvpn/vpn_api/util$killall_t;->FAILED:Lio/topvpn/vpn_api/util$killall_t;

    goto :goto_0
.end method


# virtual methods
.method public exit(Z)Lio/topvpn/vpn_api/util$killall_t;
    .locals 4

    .prologue
    const/16 v2, 0xbb8

    .line 303
    sget-object v0, Lio/topvpn/vpn_api/util$killall_t;->KILLED:Lio/topvpn/vpn_api/util$killall_t;

    .line 304
    if-nez p1, :cond_1

    .line 306
    const/16 v0, 0xf

    invoke-direct {p0, v0, v2}, Lio/topvpn/vpn_api/be$worker;->kill_wait(II)Lio/topvpn/vpn_api/util$killall_t;

    move-result-object v0

    .line 307
    sget-object v1, Lio/topvpn/vpn_api/util$killall_t;->KILLED:Lio/topvpn/vpn_api/util$killall_t;

    if-ne v0, v1, :cond_1

    .line 323
    :cond_0
    :goto_0
    return-object v0

    .line 310
    :cond_1
    sget-object v1, Lio/topvpn/vpn_api/util$killall_t;->UID_MISMATCH:Lio/topvpn/vpn_api/util$killall_t;

    if-eq v0, v1, :cond_2

    .line 313
    const/16 v0, 0xc

    const/16 v1, 0x7530

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/be$worker;->kill_wait(II)Lio/topvpn/vpn_api/util$killall_t;

    move-result-object v0

    .line 314
    sget-object v1, Lio/topvpn/vpn_api/util$killall_t;->KILLED:Lio/topvpn/vpn_api/util$killall_t;

    if-eq v0, v1, :cond_0

    .line 317
    const/16 v0, 0x9

    invoke-direct {p0, v0, v2}, Lio/topvpn/vpn_api/be$worker;->kill_wait(II)Lio/topvpn/vpn_api/util$killall_t;

    move-result-object v0

    .line 318
    sget-object v1, Lio/topvpn/vpn_api/util$killall_t;->KILLED:Lio/topvpn/vpn_api/util$killall_t;

    if-eq v0, v1, :cond_0

    .line 321
    :cond_2
    sget-object v1, Lio/topvpn/vpn_api/util$killall_t;->NOT_FOUND:Lio/topvpn/vpn_api/util$killall_t;

    if-eq v0, v1, :cond_0

    .line 322
    const-string v1, "svc_kill_failed"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 172
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$600(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$monitor;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v1}, Lio/topvpn/vpn_api/be;->access$600(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$monitor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/be$monitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/be$monitor;->sendMessage(Landroid/os/Message;)Z

    .line 173
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$600(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$monitor;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v1}, Lio/topvpn/vpn_api/be;->access$600(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$monitor;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/be$monitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/be$monitor;->sendMessage(Landroid/os/Message;)Z

    .line 174
    invoke-direct {p0}, Lio/topvpn/vpn_api/be$worker;->execute()I

    move-result v0

    iput v0, p0, Lio/topvpn/vpn_api/be$worker;->m_res:I

    .line 175
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v0}, Lio/topvpn/vpn_api/be;->access$600(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$monitor;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v1}, Lio/topvpn/vpn_api/be;->access$600(Lio/topvpn/vpn_api/be;)Lio/topvpn/vpn_api/be$monitor;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/be$monitor;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/be$monitor;->sendMessage(Landroid/os/Message;)Z

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v1}, Lio/topvpn/vpn_api/be;->access$700(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/core"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/be$worker;->m_workdir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/log/core"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->file_move(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v1}, Lio/topvpn/vpn_api/be;->access$700(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "libhola_svc.so.dbg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v1}, Lio/topvpn/vpn_api/be;->access$700(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "libhola_svc.so.dbg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    invoke-static {v2}, Lio/topvpn/vpn_api/be;->access$700(Lio/topvpn/vpn_api/be;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "libhola_svc.so.dbg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ran"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->file_move(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    return-void
.end method

.method public set_state(I)V
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/topvpn/vpn_api/be$worker;->set_state(II)V

    return-void
.end method

.method public set_state(II)V
    .locals 3

    .prologue
    .line 157
    iget-object v1, p0, Lio/topvpn/vpn_api/be$worker;->m_state_sync:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iput p1, p0, Lio/topvpn/vpn_api/be$worker;->m_state:I

    .line 159
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker;->m_state_sync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 160
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    iget-object v0, p0, Lio/topvpn/vpn_api/be$worker;->this$0:Lio/topvpn/vpn_api/be;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/be;->access$400(Lio/topvpn/vpn_api/be;Landroid/os/Message;)V

    .line 162
    return-void

    .line 160
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
