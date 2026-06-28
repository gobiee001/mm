.class Lio/topvpn/vpn_api/util;
.super Ljava/lang/Object;
.source "util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/util$rc4_t;,
        Lio/topvpn/vpn_api/util$ipc_thread;,
        Lio/topvpn/vpn_api/util$ipc_request;,
        Lio/topvpn/vpn_api/util$killall_t;,
        Lio/topvpn/vpn_api/util$proc_info_t;,
        Lio/topvpn/vpn_api/util$scandir_cb_t;,
        Lio/topvpn/vpn_api/util$perr_msg;,
        Lio/topvpn/vpn_api/util$ipc_result;
    }
.end annotation


# static fields
.field public static final LALERT:I = 0x1

.field public static final LCONSOLE:I = 0x100

.field public static final LCRIT:I = 0x2

.field public static final LDEBUG:I = 0x7

.field public static final LDOCANCEL:I = 0x400

.field public static final LDOEXIT:I = 0x200

.field public static final LDOFLUSH:I = 0x2000

.field public static final LDOPASS:I = 0x1000

.field public static final LEMERG:I = 0x0

.field public static final LERR:I = 0x3

.field public static final LEXIT:I = 0x202

.field public static final LFLAGS_MASK:I = 0xff00

.field public static final LINFO:I = 0x6

.field public static final LLONGMSG:I = 0x800

.field public static final LNOTICE:I = 0x5

.field public static final LPANIC:I = 0x200

.field public static final LSEVERITY_MASK:I = 0xf

.field public static final LWARNING:I = 0x4

.field public static final MS_MIN:I = 0xea60

.field public static final MS_SEC:I = 0x3e8

.field public static final NSEC_PER_MS:I = 0xf4240

.field private static final PERR_SEND:I = 0x1

.field public static final SIGKILL:I = 0x9

.field public static final SIGTERM:I = 0xf

.field public static final SIGUSR2:I = 0xc

.field public static instance:Lio/topvpn/vpn_api/util;

.field private static m_cachedir:Ljava/lang/String;

.field private static m_conf:Lio/topvpn/vpn_api/conf;

.field public static m_curr_uid:I

.field private static m_dbg_set_prev_thread:Landroid/os/StrictMode$ThreadPolicy;

.field private static m_dbg_set_prev_vm:Landroid/os/StrictMode$VmPolicy;

.field private static m_encrypt_post:Z

.field public static m_file:Ljava/io/File;

.field private static m_fw:Ljava/io/FileWriter;

.field private static m_is_debug:Ljava/lang/Boolean;

.field private static m_is_debug_exe:Ljava/lang/Boolean;

.field private static m_is_debug_layout:Ljava/lang/Boolean;

.field private static m_membuf:Ljava/lang/String;

.field private static m_path:Ljava/lang/String;

.field private static m_perr_handler:Landroid/os/Handler;

.field static m_perr_inited:Z

.field private static final m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static m_perr_thread:Landroid/os/HandlerThread;

.field private static m_ref:I

.field private static m_sdf_sql:Ljava/text/SimpleDateFormat;

.field private static m_sdf_ts:Ljava/text/SimpleDateFormat;

.field static m_util_init_ret:I

.field private static m_zerr_ex:Ljava/util/concurrent/ExecutorService;

.field private static final m_zerr_lock:Ljava/lang/Object;

.field private static perr_cid_rx:Ljava/util/regex/Pattern;

.field private static perr_file_rx:Ljava/util/regex/Pattern;

.field private static perr_id_rx:Ljava/util/regex/Pattern;

.field public static use_rt:Z

.field public static final use_rt_sync:Ljava/lang/Object;

.field private static zerr_level:I

.field private static final zerr_severity_str:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v0, 0x5

    const/4 v4, 0x0

    const/4 v2, -0x1

    .line 82
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lio/topvpn/vpn_api/util;->use_rt_sync:Ljava/lang/Object;

    .line 173
    sput v2, Lio/topvpn/vpn_api/util;->m_util_init_ret:I

    .line 175
    sput v2, Lio/topvpn/vpn_api/util;->m_curr_uid:I

    .line 301
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "EMERGENCY"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string v3, "ALERT"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "CRITICAL"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "ERROR"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "WARNING"

    aput-object v3, v1, v2

    const-string v2, "NOTICE"

    aput-object v2, v1, v0

    const/4 v2, 0x6

    const-string v3, "INFO"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "DEBUG"

    aput-object v3, v1, v2

    sput-object v1, Lio/topvpn/vpn_api/util;->zerr_severity_str:[Ljava/lang/String;

    .line 303
    const-string v1, ""

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    :goto_0
    sput v0, Lio/topvpn/vpn_api/util;->zerr_level:I

    .line 310
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_zerr_lock:Ljava/lang/Object;

    .line 311
    const-string v0, ""

    sput-object v0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;

    .line 385
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_zerr_ex:Ljava/util/concurrent/ExecutorService;

    .line 552
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 557
    sput-boolean v4, Lio/topvpn/vpn_api/util;->m_encrypt_post:Z

    .line 657
    const-string v0, "^((\\d{8}_\\d{6})_[a-z0-9_]+)\\.log$"

    .line 658
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->perr_file_rx:Ljava/util/regex/Pattern;

    .line 660
    const-string v0, "^(?:perr_)?([a-z0-9_]+)"

    .line 661
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->perr_id_rx:Ljava/util/regex/Pattern;

    .line 663
    const-string v0, "^Cid:\\s*(\\S+)"

    .line 664
    invoke-static {v0, v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->perr_cid_rx:Ljava/util/regex/Pattern;

    .line 1335
    const/4 v0, 0x0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    return-void

    .line 303
    :cond_0
    const-string v0, ""

    .line 304
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->zerr_str2level(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _perr_p(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpn_api_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 561
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_now2ts()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr_p_filename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v3, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    .line 562
    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, p2, p3}, Lio/topvpn/vpn_api/util;->perr_p_file_str(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr_p_file(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_p_try()V

    .line 564
    const/4 v0, -0x1

    return v0
.end method

.method public static _zerr(Ljava/lang/String;ILjava/lang/String;)I
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 432
    invoke-static {p1}, Lio/topvpn/vpn_api/util;->zerr_check(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 440
    :cond_0
    return v2

    .line 435
    :cond_1
    invoke-static {p0, p1, p2}, Lio/topvpn/vpn_api/util;->zerr2log(Ljava/lang/String;ILjava/lang/String;)V

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->date_now2sql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lio/topvpn/vpn_api/util;->zerr_level2severity_str(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->zerr_printf(Ljava/lang/String;)I

    .line 438
    invoke-static {p1}, Lio/topvpn/vpn_api/util;->zerr_get_flags(I)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zexit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lio/topvpn/vpn_api/util;->m_path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lio/topvpn/vpn_api/util;->m_zerr_lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->date_ts2sql(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 67
    invoke-static {p0, p1, p2, p3, p4}, Lio/topvpn/vpn_api/util;->perr_p_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lio/topvpn/vpn_api/util;->m_ref:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 67
    sput-object p0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400()Ljava/io/FileWriter;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    return-object v0
.end method

.method static synthetic access$402(Ljava/io/FileWriter;)Ljava/io/FileWriter;
    .locals 0

    .prologue
    .line 67
    sput-object p0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    return-object p0
.end method

.method static synthetic access$500(Ljava/io/File;)I
    .locals 1

    .prologue
    .line 67
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->file_unlink(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lio/topvpn/vpn_api/util$perr_msg;)V
    .locals 0

    .prologue
    .line 67
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->perr_send(Lio/topvpn/vpn_api/util$perr_msg;)V

    return-void
.end method

.method static synthetic access$700()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lio/topvpn/vpn_api/util;->perr_file_rx:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$800()Lio/topvpn/vpn_api/conf;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    return-object v0
.end method

.method static synthetic access$900(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 67
    invoke-static {p0, p1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static apk_exist(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1691
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1692
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    const/4 v0, 0x1

    .line 1697
    :goto_0
    return v0

    .line 1695
    :catch_0
    move-exception v1

    .line 1696
    const-string v2, "transaction_too_large_exception"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1694
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static atoi(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1154
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1156
    :goto_0
    return v0

    .line 1155
    :catch_0
    move-exception v0

    .line 1156
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bt_get()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1392
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 1393
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1392
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1394
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static byte2str([B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1214
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1217
    :goto_0
    return-object v0

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cant convert byte2str "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 1217
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bytes2hex([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 1382
    if-nez p0, :cond_0

    .line 1383
    const-string v0, "null"

    .line 1387
    :goto_0
    return-object v0

    .line 1384
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1385
    array-length v3, p0

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-byte v4, p0, v0

    .line 1386
    const-string v5, "%02X "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1385
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1387
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static ccgi_host()Ljava/lang/String;
    .locals 2

    .prologue
    .line 477
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_CLIENT_CGI_IP_PORT:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "clientsdk.luminati.io"

    :cond_0
    return-object v0
.end method

.method public static ccgi_link()Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->ccgi_host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ccgi_type()Ljava/lang/String;
    .locals 1

    .prologue
    .line 489
    const-string v0, "/client_cgi"

    return-object v0
.end method

.method public static check_3g_usage(Landroid/content/Context;Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1476
    const-string v0, "connectivity"

    .line 1477
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1479
    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1481
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1482
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-float v0, v4

    sget-object v4, Lio/topvpn/vpn_api/conf;->PEER_3G_USAGE_PER:Lio/topvpn/vpn_api/conf$key;

    .line 1483
    invoke-virtual {p1, v4}, Lio/topvpn/vpn_api/conf;->get_float(Ljava/lang/Object;)F

    move-result v4

    mul-float/2addr v0, v4

    sget-object v4, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    .line 1484
    invoke-virtual {p1, v4}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v4

    long-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    move v0, v1

    .line 1485
    :goto_0
    sget-object v4, Lio/topvpn/vpn_api/state;->ROAMING:Lio/topvpn/vpn_api/state$key;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p2, v4, v1}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 1486
    sget-object v1, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {p2, v1, v0}, Lio/topvpn/vpn_api/state;->set(Ljava/lang/Object;Z)V

    .line 1487
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 1484
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1485
    goto :goto_1

    .line 1480
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method public static cmd2url(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://127.0.0.1:6880/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static date_init()V
    .locals 3

    .prologue
    .line 245
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_sql:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 247
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss.SSS"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_sdf_sql:Ljava/text/SimpleDateFormat;

    .line 248
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_sql:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 249
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_sdf_ts:Ljava/text/SimpleDateFormat;

    .line 250
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_ts:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0
.end method

.method private static date_now2sql()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_init()V

    .line 255
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_sql:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static date_now2ts()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_init()V

    .line 266
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_ts:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static date_ts2sql(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 259
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_init()V

    .line 260
    :try_start_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_sdf_sql:Ljava/text/SimpleDateFormat;

    sget-object v1, Lio/topvpn/vpn_api/util;->m_sdf_ts:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dir_size(Ljava/io/File;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 995
    .line 996
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1008
    :cond_0
    return-wide v0

    .line 998
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 999
    const/4 v2, 0x0

    :goto_0
    if-eqz v3, :cond_0

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 1001
    aget-object v4, v3, v2

    invoke-static {v4}, Lio/topvpn/vpn_api/util;->file_is_symlink(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 999
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1003
    :cond_2
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1004
    aget-object v4, v3, v2

    invoke-static {v4}, Lio/topvpn/vpn_api/util;->dir_size(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1

    .line 1006
    :cond_3
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    add-long/2addr v0, v4

    goto :goto_1
.end method

.method public static dir_size(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1011
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->dir_size(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static dp_to_px(Landroid/content/Context;I)I
    .locals 2

    .prologue
    .line 1408
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1409
    int-to-float v1, p1

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method static escape_sh(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1682
    if-nez p0, :cond_1

    .line 1683
    const-string p0, ""

    .line 1686
    :cond_0
    :goto_0
    return-object p0

    .line 1684
    :cond_1
    const-string v0, "^[a-z0-9_\\-\\./:]+$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "([\\\"`$])"

    const-string v2, "\\\\$1"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static file_copy(Ljava/io/File;Ljava/io/File;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 1117
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1118
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1119
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 1121
    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x400

    invoke-virtual {v1, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    if-lez v4, :cond_0

    .line 1122
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    .line 1126
    :goto_1
    return v0

    .line 1123
    :cond_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 1124
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static file_copy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1130
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->file_copy(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static file_exists(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 948
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static file_is_exec(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 951
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    return v0
.end method

.method public static file_is_symlink(Ljava/io/File;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 959
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 966
    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 968
    :cond_0
    :goto_1
    return v0

    .line 963
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    .line 964
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, v1

    goto :goto_0

    .line 967
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static file_is_symlink(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 972
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_is_symlink(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method private static file_move(Ljava/io/File;Ljava/io/File;)I
    .locals 1

    .prologue
    .line 1138
    invoke-static {p0, p1}, Lio/topvpn/vpn_api/util;->file_copy(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0}, Lio/topvpn/vpn_api/util;->file_unlink(Ljava/io/File;)I

    move-result v0

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static file_move(Ljava/io/File;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1144
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0}, Lio/topvpn/vpn_api/util;->file_move(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static file_move(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->file_move(Ljava/io/File;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static file_read(Ljava/lang/String;)[B
    .locals 12

    .prologue
    const-wide/32 v10, 0x10000

    const/4 v1, 0x0

    const/4 v8, 0x3

    .line 885
    .line 888
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 895
    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v0, v6

    new-array v0, v0, [B

    .line 896
    cmp-long v3, v4, v10

    if-lez v3, :cond_0

    .line 897
    const-string v3, "file to bigger than 65536"

    invoke-static {v8, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 898
    :cond_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 903
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 908
    :goto_1
    return-object v0

    .line 889
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 891
    :catch_1
    move-exception v0

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed getting length of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    move-object v0, v1

    .line 893
    goto :goto_1

    .line 899
    :catch_2
    move-exception v3

    .line 900
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file_read failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    goto :goto_0

    .line 901
    :catch_3
    move-exception v3

    .line 902
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file_read failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    goto :goto_0

    .line 904
    :catch_4
    move-exception v0

    .line 905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file_read failed closing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    move-object v0, v1

    .line 906
    goto :goto_1
.end method

.method public static file_read_line(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 914
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 915
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 916
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 918
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static file_rm(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 954
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    return v0
.end method

.method public static file_size(Ljava/lang/String;)J
    .locals 2

    .prologue
    .line 1111
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1112
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method private static file_unlink(Ljava/io/File;)I
    .locals 1

    .prologue
    .line 1132
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static file_unlink(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 1135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_unlink(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public static file_write(Ljava/lang/String;Ljava/io/InputStream;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 933
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 934
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 936
    :goto_0
    const/4 v3, 0x0

    const/16 v4, 0x400

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_0

    .line 937
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 940
    :catch_0
    move-exception v0

    const/4 v0, -0x1

    .line 941
    :goto_1
    return v0

    .line 938
    :cond_0
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 939
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static file_write(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 923
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 924
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 925
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    const/4 v0, 0x0

    .line 928
    :goto_0
    return v0

    .line 927
    :catch_0
    move-exception v0

    .line 928
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static file_write_line(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 945
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/topvpn/vpn_api/util;->file_write(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static get_cachedir(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 1337
    sget-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1338
    sget-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    .line 1348
    :goto_0
    return-object v0

    .line 1339
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1340
    if-eqz v0, :cond_1

    .line 1341
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    .line 1348
    sget-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    goto :goto_0

    .line 1343
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/cache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    .line 1344
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context.getCacheDir() = null, falling back to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 1346
    sget-object v0, Lio/topvpn/vpn_api/util;->m_cachedir:Ljava/lang/String;

    goto :goto_0
.end method

.method public static get_cid(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_confdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "hola_svc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cid"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_read_line(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_confdir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 279
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 282
    :goto_1
    return-object v0

    .line 280
    :catch_0
    move-exception v1

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static get_current_ver(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libhola_svc.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1414
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1415
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1425
    :cond_0
    :goto_0
    return-object v0

    .line 1417
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/topvpn/vpn_api/util;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1418
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1420
    const-string v2, "lib(hola|topvpn)_svc-(\\d+\\.\\d+\\.\\d+)\\.so$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 1422
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1423
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1425
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static get_device()Ljava/lang/String;
    .locals 2

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_dldir(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1378
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Hola"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1377
    return-object v0
.end method

.method public static get_field(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 1270
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1273
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1274
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 1290
    :cond_0
    :goto_0
    return-object v0

    .line 1275
    :catch_0
    move-exception v1

    .line 1276
    if-eqz p2, :cond_0

    .line 1278
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1279
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1284
    :catch_1
    move-exception v1

    .line 1285
    if-eqz p2, :cond_0

    .line 1287
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1288
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal access to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static get_libdir(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    return-object v0
.end method

.method static get_mobile_usage_json(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1640
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1644
    :try_start_0
    new-instance v2, Lio/topvpn/vpn_api/db_helper;

    invoke-direct {v2, p0}, Lio/topvpn/vpn_api/db_helper;-><init>(Landroid/content/Context;)V

    .line 1645
    invoke-virtual {v2}, Lio/topvpn/vpn_api/db_helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1646
    :try_start_1
    const-string v2, "SELECT * FROM mobile_usage ORDER BY _id DESC LIMIT 8"

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    .line 1648
    if-nez v4, :cond_2

    .line 1673
    if-eqz v4, :cond_0

    .line 1674
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1675
    :cond_0
    if-eqz v5, :cond_1

    .line 1676
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1678
    :cond_1
    :goto_0
    return-object v3

    .line 1650
    :cond_2
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v6

    .line 1651
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1653
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1654
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v6, :cond_3

    .line 1657
    :try_start_3
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v8

    .line 1658
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1657
    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1654
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1661
    :cond_3
    :try_start_4
    invoke-virtual {v3, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 1670
    :catch_0
    move-exception v2

    .line 1671
    :goto_4
    :try_start_5
    const-string v6, "get_mobile_usage_json_sql_error"

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1673
    if-eqz v4, :cond_4

    .line 1674
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1675
    :cond_4
    if-eqz v5, :cond_1

    .line 1676
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1663
    :cond_5
    :try_start_6
    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    if-eqz v2, :cond_6

    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v6, Lio/topvpn/vpn_api/conf;->CURR_MOBILE_USAGE_DATE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v6}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v6

    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v8, Lio/topvpn/vpn_api/conf;->LAST_USAGE_PERR:Lio/topvpn/vpn_api/conf$key;

    .line 1664
    invoke-virtual {v2, v8}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v8

    cmp-long v2, v6, v8

    if-eqz v2, :cond_6

    .line 1666
    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v6, Lio/topvpn/vpn_api/conf;->LAST_USAGE_PERR:Lio/topvpn/vpn_api/conf$key;

    sget-object v7, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v8, Lio/topvpn/vpn_api/conf;->CURR_MOBILE_USAGE_DATE:Lio/topvpn/vpn_api/conf$key;

    .line 1667
    invoke-virtual {v7, v8}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v8

    .line 1666
    invoke-virtual {v2, v6, v8, v9}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1668
    const-string v6, "mobile_bw_usage"

    instance-of v2, v3, Lorg/json/JSONArray;

    if-nez v2, :cond_8

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_5
    invoke-static {v6, v2}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1673
    :cond_6
    if-eqz v4, :cond_7

    .line 1674
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1675
    :cond_7
    if-eqz v5, :cond_1

    .line 1676
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1668
    :cond_8
    :try_start_7
    move-object v0, v3

    check-cast v0, Lorg/json/JSONArray;

    move-object v2, v0

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_7
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v2

    goto :goto_5

    .line 1673
    :catchall_0
    move-exception v2

    move-object v5, v4

    :goto_6
    if-eqz v4, :cond_9

    .line 1674
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 1675
    :cond_9
    if-eqz v5, :cond_a

    .line 1676
    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v2

    .line 1673
    :catchall_1
    move-exception v2

    goto :goto_6

    .line 1670
    :catch_1
    move-exception v2

    move-object v5, v4

    goto :goto_4

    .line 1659
    :catch_2
    move-exception v8

    goto :goto_3
.end method

.method public static get_os_ver()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Android "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static get_workdir(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 1352
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 1353
    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1357
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1359
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/topvpn/vpn_api/util;->path_writeable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1360
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1373
    :goto_1
    return-object v1

    .line 1358
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 1361
    :cond_0
    const-string v0, "no free space on external storage"

    invoke-static {v8, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 1363
    :cond_1
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_cachedir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1364
    new-instance v2, Landroid/os/StatFs;

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    const-wide/32 v6, 0x40000000

    cmp-long v3, v4, v6

    if-gez v3, :cond_2

    .line 1368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "less than 1GB in internal memory: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1369
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v3

    int-to-long v6, v3

    mul-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " block "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1370
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " count "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1368
    invoke-static {v8, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    goto :goto_1

    .line 1373
    :cond_2
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->path_writeable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    move-object v1, v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public static getgid()I
    .locals 1

    .prologue
    .line 1267
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util;->jni_getgid()I

    move-result v0

    return v0
.end method

.method public static getuid()I
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    return v0
.end method

.method private static http_send(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/topvpn/vpn_api/util;->http_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static http_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 541
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 543
    if-eqz p1, :cond_0

    .line 544
    :try_start_0
    const-string v0, "filehead"

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 545
    :cond_0
    if-eqz p2, :cond_1

    .line 546
    const-string v0, "bt"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    :cond_1
    :goto_0
    new-instance v0, Lio/topvpn/vpn_api/wget;

    const/4 v2, 0x1

    new-array v2, v2, [Lio/topvpn/vpn_api/wget$option;

    invoke-static {v1}, Lio/topvpn/vpn_api/wget;->body(Lorg/json/JSONObject;)Lio/topvpn/vpn_api/wget$option;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-direct {v0, p0, v2}, Lio/topvpn/vpn_api/wget;-><init>(Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    .line 549
    return v3

    .line 547
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static is_debug()Z
    .locals 2

    .prologue
    .line 224
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->IS_DEBUG:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_is_debug:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static is_debug_exe()Z
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_exe:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 232
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_exe:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_HOLA_SVC:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_exe:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static is_debug_layout()Z
    .locals 2

    .prologue
    .line 238
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_layout:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_layout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->IS_DEBUG_LAYOUT:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_is_debug_layout:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public static is_online(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1398
    const-string v0, "connectivity"

    .line 1399
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1401
    if-nez v0, :cond_0

    .line 1404
    :goto_0
    return v1

    .line 1403
    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1404
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static killall(Ljava/lang/String;I)Lio/topvpn/vpn_api/util$killall_t;
    .locals 5

    .prologue
    .line 1050
    sget-object v0, Lio/topvpn/vpn_api/util$killall_t;->NOT_FOUND:Lio/topvpn/vpn_api/util$killall_t;

    .line 1051
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->proc_find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/topvpn/vpn_api/util$proc_info_t;

    .line 1053
    iget v2, v0, Lio/topvpn/vpn_api/util$proc_info_t;->uid:I

    sget v3, Lio/topvpn/vpn_api/util;->m_curr_uid:I

    if-eq v2, v3, :cond_1

    .line 1054
    sget-object v0, Lio/topvpn/vpn_api/util$killall_t;->UID_MISMATCH:Lio/topvpn/vpn_api/util$killall_t;

    .line 1059
    :cond_0
    return-object v0

    .line 1055
    :cond_1
    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sending signal "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lio/topvpn/vpn_api/util$proc_info_t;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 1056
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    iget v0, v0, Lio/topvpn/vpn_api/util$proc_info_t;->pid:I

    invoke-virtual {v2, v0, p1}, Lio/topvpn/vpn_api/util;->jni_kill(II)I

    .line 1057
    sget-object v0, Lio/topvpn/vpn_api/util$killall_t;->KILLED:Lio/topvpn/vpn_api/util$killall_t;

    goto :goto_0
.end method

.method static log_3g_usage(Landroid/content/Context;)V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 1491
    new-instance v1, Lio/topvpn/vpn_api/state;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/state;-><init>(Landroid/content/Context;)V

    .line 1492
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    if-eqz v0, :cond_1

    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    .line 1493
    :goto_0
    invoke-static {}, Lio/topvpn/vpn_api/util;->getuid()I

    move-result v2

    .line 1494
    sget-object v3, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v1, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v3

    .line 1495
    sget-object v4, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v1, v4}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v4

    .line 1496
    sget-object v5, Lio/topvpn/vpn_api/conf;->LAST_ON_3G:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v5}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v5

    .line 1497
    sget-object v6, Lio/topvpn/vpn_api/conf;->LAST_USAGE_BYTES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v6}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v6

    .line 1498
    sget-object v8, Lio/topvpn/vpn_api/conf;->LAST_USAGE_TS:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v8}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v8

    .line 1499
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 1500
    if-nez v5, :cond_2

    if-eqz v4, :cond_2

    .line 1502
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    cmp-long v1, v2, v8

    if-lez v1, :cond_0

    .line 1504
    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_USAGE_TS:Lio/topvpn/vpn_api/conf$key;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1505
    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_USAGE_BYTES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1, v12, v13}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1506
    sget-object v1, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1, v12, v13}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1525
    :cond_0
    :goto_1
    return-void

    .line 1492
    :cond_1
    new-instance v0, Lio/topvpn/vpn_api/conf;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 1510
    :cond_2
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 1511
    invoke-static {v2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v12

    add-long/2addr v8, v12

    .line 1512
    if-eqz v5, :cond_6

    .line 1514
    sget-object v2, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    sget-object v5, Lio/topvpn/vpn_api/conf;->SINCE_BOOT_3G_BYTES:Lio/topvpn/vpn_api/conf$key;

    .line 1515
    invoke-virtual {v0, v5}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v12

    add-long/2addr v12, v8

    sub-long v6, v12, v6

    .line 1514
    invoke-virtual {v0, v2, v6, v7}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1516
    if-eqz v3, :cond_3

    if-eqz v4, :cond_4

    .line 1517
    :cond_3
    sget-object v2, Lio/topvpn/vpn_api/conf;->LAST_ON_3G:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->del(Ljava/lang/Object;)V

    .line 1518
    :cond_4
    if-eqz v3, :cond_5

    .line 1519
    invoke-static {p0, v0, v1}, Lio/topvpn/vpn_api/util;->check_3g_usage(Landroid/content/Context;Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V

    .line 1523
    :cond_5
    :goto_2
    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_USAGE_BYTES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1, v8, v9}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1524
    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_USAGE_TS:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    goto :goto_1

    .line 1521
    :cond_6
    if-eqz v3, :cond_5

    .line 1522
    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_ON_3G:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    goto :goto_2
.end method

.method public static log_build_info()Ljava/lang/String;
    .locals 4

    .prologue
    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version: 1.80.401 android arm\nTag: Ntag-1_80_401\nBuild date: 23-Jan-18 18:17:26\nMakeflags: DIST=APP ARCH=ANDROID RELEASE=y AUTO_SIGN=y CONFIG_BATREQ=y CONFIG_BAT_CYCLE=y CONFIG_BAT_PLATFORM=app_androidr\nOS Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 130
    invoke-static {}, Lio/topvpn/vpn_api/util;->get_os_ver()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 131
    invoke-static {}, Lio/topvpn/vpn_api/util;->get_device()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nCPU ABI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nCPU ABI2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APKID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v3, Lio/topvpn/vpn_api/conf;->APKID:Lio/topvpn/vpn_api/conf$key;

    .line 132
    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    return-object v0

    .line 132
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static log_get_hostname()Ljava/lang/String;
    .locals 3

    .prologue
    .line 140
    const-string v0, "net.hostname"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private static log_hdr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hola app logger\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->log_build_info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->log_get_hostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static log_mobile_usage(Landroid/content/Context;)V
    .locals 22

    .prologue
    .line 1528
    new-instance v4, Lio/topvpn/vpn_api/state;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lio/topvpn/vpn_api/state;-><init>(Landroid/content/Context;)V

    .line 1529
    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    if-eqz v2, :cond_1

    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    .line 1530
    :goto_0
    invoke-static {}, Lio/topvpn/vpn_api/util;->getuid()I

    move-result v3

    .line 1531
    sget-object v5, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v4, v5}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v5

    .line 1532
    sget-object v6, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v4, v6}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v6

    .line 1533
    sget-object v7, Lio/topvpn/vpn_api/conf;->LAST_ON_MOBILE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v7}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v7

    .line 1534
    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v8

    .line 1535
    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    .line 1536
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v10

    .line 1537
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v12

    add-long/2addr v10, v12

    .line 1538
    sget-object v3, Lio/topvpn/vpn_api/conf;->USAGE_SINCE_BOOT_APP:Lio/topvpn/vpn_api/conf$key;

    .line 1539
    invoke-virtual {v2, v3, v8, v9}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;J)J

    move-result-wide v12

    .line 1540
    sget-object v3, Lio/topvpn/vpn_api/conf;->MOBILE_USAGE_SINCE_BOOT:Lio/topvpn/vpn_api/conf$key;

    .line 1541
    invoke-virtual {v2, v3, v10, v11}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;J)J

    move-result-wide v14

    .line 1542
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1543
    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v16, v16, v18

    .line 1544
    new-instance v16, Ljava/util/GregorianCalendar;

    invoke-direct/range {v16 .. v16}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1545
    const/16 v3, 0xb

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 1546
    const/16 v3, 0xc

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 1547
    const/16 v3, 0xd

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 1548
    const/16 v3, 0xe

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 1549
    sget-object v3, Lio/topvpn/vpn_api/conf;->CURR_MOBILE_USAGE_DATE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v18

    .line 1550
    if-eqz v5, :cond_2

    if-nez v6, :cond_2

    const/4 v3, 0x1

    .line 1551
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    cmp-long v17, v20, v18

    if-eqz v17, :cond_3

    .line 1553
    const-wide/16 v6, 0x0

    cmp-long v5, v18, v6

    if-eqz v5, :cond_0

    .line 1554
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/util;->save_mobile_usage_to_sql(Landroid/content/Context;Lio/topvpn/vpn_api/conf;)V

    .line 1555
    :cond_0
    invoke-static {v2, v4}, Lio/topvpn/vpn_api/util;->reset_daily_mobile_usage_counters(Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V

    .line 1556
    sget-object v4, Lio/topvpn/vpn_api/conf;->CURR_MOBILE_USAGE_DATE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1557
    sget-object v4, Lio/topvpn/vpn_api/conf;->LAST_ON_MOBILE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v4, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1595
    :goto_2
    return-void

    .line 1529
    :cond_1
    new-instance v2, Lio/topvpn/vpn_api/conf;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1550
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 1560
    :cond_3
    cmp-long v16, v12, v8

    if-lez v16, :cond_4

    .line 1562
    invoke-static {v2, v4}, Lio/topvpn/vpn_api/util;->reset_daily_mobile_usage_counters(Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V

    .line 1563
    sget-object v4, Lio/topvpn/vpn_api/conf;->LAST_ON_MOBILE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v4, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1564
    const-string v2, "since_boot_gt_total"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "{\"app\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"app_total\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"mobile\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"mobile_total\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1569
    :cond_4
    if-nez v7, :cond_5

    .line 1571
    sget-object v4, Lio/topvpn/vpn_api/conf;->USAGE_SINCE_BOOT_APP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v4, v8, v9}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1572
    sget-object v4, Lio/topvpn/vpn_api/conf;->LAST_ON_MOBILE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v4, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    goto :goto_2

    .line 1575
    :cond_5
    if-eqz v7, :cond_8

    .line 1577
    sget-object v7, Lio/topvpn/vpn_api/conf;->DAILY_MOBILE_USAGE_APP:Lio/topvpn/vpn_api/conf$key;

    sget-object v16, Lio/topvpn/vpn_api/conf;->DAILY_MOBILE_USAGE_APP:Lio/topvpn/vpn_api/conf$key;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v16

    add-long v16, v16, v8

    sub-long v12, v16, v12

    invoke-virtual {v2, v7, v12, v13}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1579
    if-eqz v5, :cond_6

    if-eqz v6, :cond_7

    .line 1580
    :cond_6
    sget-object v7, Lio/topvpn/vpn_api/conf;->LAST_ON_MOBILE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v7}, Lio/topvpn/vpn_api/conf;->del(Ljava/lang/Object;)V

    .line 1581
    :cond_7
    if-eqz v5, :cond_8

    if-nez v6, :cond_8

    .line 1582
    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lio/topvpn/vpn_api/util;->check_3g_usage(Landroid/content/Context;Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V

    .line 1584
    :cond_8
    sget-object v4, Lio/topvpn/vpn_api/conf;->LAST_ON_MOBILE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v4, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1587
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-lez v3, :cond_9

    .line 1589
    sget-object v3, Lio/topvpn/vpn_api/conf;->DAILY_MOBILE_USAGE:Lio/topvpn/vpn_api/conf$key;

    sget-object v4, Lio/topvpn/vpn_api/conf;->DAILY_MOBILE_USAGE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v4}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v4

    add-long/2addr v4, v10

    sub-long/2addr v4, v14

    invoke-virtual {v2, v3, v4, v5}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1591
    sget-object v3, Lio/topvpn/vpn_api/conf;->MOBILE_USAGE_SINCE_BOOT:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v3, v10, v11}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1593
    :cond_9
    sget-object v3, Lio/topvpn/vpn_api/conf;->USAGE_SINCE_BOOT_APP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v3, v8, v9}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1594
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/util;->save_mobile_usage_to_sql(Landroid/content/Context;Lio/topvpn/vpn_api/conf;)V

    goto/16 :goto_2
.end method

.method public static mkdir(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1012
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    return v0
.end method

.method public static mkdir_p(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1013
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    return v0
.end method

.method public static path_writeable(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1325
    :try_start_0
    const-string v1, "hola"

    const-string v2, "tmp"

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1326
    if-eqz v1, :cond_0

    .line 1328
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1329
    const/4 v0, 0x1

    .line 1332
    :cond_0
    :goto_0
    return v0

    .line 1331
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static perr(ILjava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 647
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vpn_api_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "perr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 613
    const-string v1, "vpn_api_[a-z0-9_]+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 615
    const-string v1, "perr_invalid_errid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " msg "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_0
    return v4

    .line 618
    :cond_0
    new-instance v1, Lio/topvpn/vpn_api/util$perr_msg;

    invoke-direct {v1}, Lio/topvpn/vpn_api/util$perr_msg;-><init>()V

    .line 619
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_now2sql()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_date:Ljava/lang/String;

    .line 620
    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_errid:Ljava/lang/String;

    .line 621
    iput-object p3, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_body:Ljava/lang/String;

    .line 622
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    if-eqz v0, :cond_3

    .line 624
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->APKID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_apkid:Ljava/lang/String;

    .line 625
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->CID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_cid:Ljava/lang/String;

    .line 626
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->UUID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    .line 627
    iget-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->UUID_TMP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    .line 632
    :cond_1
    :goto_1
    const-string v0, ""

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_msg:Ljava/lang/String;

    .line 633
    if-eqz p2, :cond_2

    .line 634
    iput-object p2, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_msg:Ljava/lang/String;

    .line 635
    :cond_2
    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_init()V

    .line 636
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 637
    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 638
    :try_start_0
    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 639
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0

    .line 631
    :cond_3
    const-string v0, ""

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_apkid:Ljava/lang/String;

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    iput-object v0, v1, Lio/topvpn/vpn_api/util$perr_msg;->m_cid:Ljava/lang/String;

    goto :goto_1

    .line 639
    :catchall_0
    move-exception v0

    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public static perr(Ljava/lang/String;)I
    .locals 3

    .prologue
    .line 652
    const/4 v0, 0x3

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, p0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static perr(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 650
    const/4 v0, 0x3

    const-string v1, ""

    invoke-static {v0, p0, p1, v1}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static perr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 644
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static perr(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 3

    .prologue
    .line 655
    const/4 v0, 0x3

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v0, p0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static perr_host()Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    if-nez v0, :cond_1

    .line 484
    const-string v0, "perr.luminati.io"

    .line 486
    :cond_0
    :goto_0
    return-object v0

    .line 485
    :cond_1
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_CLIENT_CGI_IP_PORT:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "perr.luminati.io"

    goto :goto_0
.end method

.method private static perr_init()V
    .locals 3

    .prologue
    .line 667
    sget-boolean v0, Lio/topvpn/vpn_api/util;->m_perr_inited:Z

    if-eqz v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 669
    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 671
    :try_start_0
    sget-boolean v0, Lio/topvpn/vpn_api/util;->m_perr_inited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 727
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 673
    :cond_1
    :try_start_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "perr"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    .line 675
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 676
    new-instance v0, Lio/topvpn/vpn_api/util$3;

    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/topvpn/vpn_api/util$3;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_perr_handler:Landroid/os/Handler;

    .line 726
    const/4 v0, 0x1

    sput-boolean v0, Lio/topvpn/vpn_api/util;->m_perr_inited:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 727
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public static perr_link()Ljava/lang/String;
    .locals 2

    .prologue
    .line 491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->ccgi_type()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static perr_p(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 577
    invoke-static {p0, p1, p2, p3}, Lio/topvpn/vpn_api/util;->_perr_p(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static perr_p_file(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 469
    sget-object v1, Lio/topvpn/vpn_api/util;->m_zerr_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 470
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lio/topvpn/vpn_api/util;->m_path:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lio/topvpn/vpn_api/util;->file_write(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const/4 v0, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perr failed creating file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    move-result v0

    monitor-exit v1

    .line 472
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_0

    .line 473
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static perr_p_file_str(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "perr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->log_build_info()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 463
    invoke-static {}, Lio/topvpn/vpn_api/util;->log_get_hostname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    return-object v0

    .line 463
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " release\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static perr_p_filename(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_perr_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static perr_p_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 508
    const-string v0, "vpn_api_crash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cause:"

    invoke-virtual {p4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cause:"

    .line 509
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 510
    :goto_0
    const-string v2, ""

    .line 511
    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v2, v1, 0x1

    array-length v4, v0

    if-ne v2, v4, :cond_1

    const-string v2, ""

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 511
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 509
    :cond_0
    new-array v0, v6, [Ljava/lang/String;

    goto :goto_0

    .line 512
    :cond_1
    const-string v2, "cause:"

    goto :goto_2

    .line 513
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_link()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/perr?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v1, p1}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "file"

    .line 514
    invoke-static {v1, p3}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ver"

    const-string v3, "1.80.401"

    invoke-static {v1, v3}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "build"

    .line 515
    invoke-static {}, Lio/topvpn/vpn_api/util;->log_build_info()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 516
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->UUID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->UUID_TMP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 518
    :cond_3
    const/4 v1, 0x0

    .line 519
    sget-boolean v4, Lio/topvpn/vpn_api/util;->m_encrypt_post:Z

    if-eqz v4, :cond_8

    .line 521
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v4

    .line 522
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    .line 523
    new-instance v1, Lio/topvpn/vpn_api/util$rc4_t;

    invoke-direct {v1, v5}, Lio/topvpn/vpn_api/util$rc4_t;-><init>([B)V

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "&"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "key"

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v1

    move-object v1, v3

    move-object v3, v7

    .line 526
    :goto_3
    if-eqz p0, :cond_4

    .line 527
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "cid"

    invoke-static {v4, p0}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 529
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "&"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "uuid"

    invoke-static {v4, v0}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    :goto_4
    if-eqz p2, :cond_5

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp"

    invoke-static {v1, p2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    :cond_5
    if-nez v3, :cond_6

    .line 534
    :goto_5
    invoke-static {v0, p4, v2}, Lio/topvpn/vpn_api/util;->http_send(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    .line 533
    :cond_6
    invoke-virtual {v3, p4}, Lio/topvpn/vpn_api/util$rc4_t;->encrypt(Ljava/lang/String;)[B

    move-result-object v1

    .line 532
    invoke-static {v1, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p4

    goto :goto_5

    :cond_7
    move-object v0, v1

    goto :goto_4

    :cond_8
    move-object v7, v1

    move-object v1, v3

    move-object v3, v7

    goto :goto_3
.end method

.method public static perr_p_try()V
    .locals 2

    .prologue
    .line 568
    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_init()V

    .line 570
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->tryLock()Z

    move-result v0

    if-nez v0, :cond_0

    .line 574
    :goto_0
    return-void

    .line 572
    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 573
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    goto :goto_0
.end method

.method private static perr_send(Lio/topvpn/vpn_api/util$perr_msg;)V
    .locals 4

    .prologue
    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_link()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/perr?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_errid:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ver"

    const-string v2, "1.80.401"

    .line 594
    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "build"

    .line 595
    invoke-static {}, Lio/topvpn/vpn_api/util;->log_build_info()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 596
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 597
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "info"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_msg:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 598
    :cond_0
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_cid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cid"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_cid:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    :cond_1
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_apkid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "apkid"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_apkid:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 602
    :cond_2
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 603
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "uuid"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_uuid:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 604
    :cond_3
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_date:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timestamp"

    iget-object v2, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_date:Ljava/lang/String;

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    :cond_4
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->http_send(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_5

    .line 607
    const/4 v1, 0x3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perr_send_failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 608
    :cond_5
    return-void

    .line 606
    :cond_6
    iget-object v1, p0, Lio/topvpn/vpn_api/util$perr_msg;->m_body:Ljava/lang/String;

    goto :goto_0
.end method

.method private static perr_uninit()V
    .locals 4

    .prologue
    .line 731
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 733
    :try_start_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 735
    const/4 v0, 0x3

    const-string v1, "perr thread quit failed"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 743
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 744
    :goto_0
    return-void

    .line 738
    :cond_0
    :try_start_1
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 741
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lio/topvpn/vpn_api/util;->m_perr_thread:Landroid/os/HandlerThread;

    .line 742
    const/4 v0, 0x0

    sput-boolean v0, Lio/topvpn/vpn_api/util;->m_perr_inited:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 743
    sget-object v0, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .line 740
    const/4 v1, 0x3

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "perr thread interrupt failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 743
    :catchall_0
    move-exception v0

    sget-object v1, Lio/topvpn/vpn_api/util;->m_perr_lock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method public static proc_find(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lio/topvpn/vpn_api/util$proc_info_t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1063
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1064
    const-string v1, "/proc"

    new-instance v2, Lio/topvpn/vpn_api/util$4;

    invoke-direct {v2, p0, v0}, Lio/topvpn/vpn_api/util$4;-><init>(Ljava/lang/String;Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/topvpn/vpn_api/util;->scandir(Ljava/lang/String;Lio/topvpn/vpn_api/util$scandir_cb_t;Ljava/lang/Object;)V

    .line 1095
    return-object v0
.end method

.method public static proc_waitfor(Ljava/lang/String;I)I
    .locals 4

    .prologue
    .line 1100
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    .line 1101
    const/4 v0, 0x0

    .line 1102
    :goto_0
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->proc_find(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1103
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v0

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-ge v0, p1, :cond_0

    .line 1105
    const/16 v1, 0xa

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->sleep_ms(I)V

    goto :goto_0

    .line 1107
    :cond_0
    return v0
.end method

.method static reset_daily_mobile_usage_counters(Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 1598
    sget-object v0, Lio/topvpn/vpn_api/conf;->DAILY_MOBILE_USAGE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {p0, v0, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1599
    sget-object v0, Lio/topvpn/vpn_api/conf;->DAILY_MOBILE_USAGE_APP:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {p0, v0, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1600
    sget-object v0, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {p1, v0}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1602
    sget-object v0, Lio/topvpn/vpn_api/conf;->MOBILE_USAGE_SINCE_BOOT:Lio/topvpn/vpn_api/conf$key;

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    .line 1603
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1602
    invoke-virtual {p0, v0, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1605
    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/conf;->USAGE_SINCE_BOOT_APP:Lio/topvpn/vpn_api/conf$key;

    .line 1606
    invoke-static {}, Lio/topvpn/vpn_api/util;->getuid()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 1607
    invoke-static {}, Lio/topvpn/vpn_api/util;->getuid()I

    move-result v1

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 1605
    invoke-virtual {p0, v0, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 1608
    return-void
.end method

.method public static rmdir_recursive(Ljava/io/File;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 975
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 977
    const/4 v1, 0x7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 988
    :cond_0
    :goto_0
    return v0

    .line 980
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    move v1, v0

    .line 981
    :goto_1
    if-eqz v2, :cond_3

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 983
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 984
    aget-object v3, v2, v1

    invoke-static {v3}, Lio/topvpn/vpn_api/util;->rmdir_recursive(Ljava/io/File;)I

    .line 981
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 986
    :cond_2
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 988
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static rmdir_recursive(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 992
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->rmdir_recursive(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method static save_mobile_usage_to_sql(Landroid/content/Context;Lio/topvpn/vpn_api/conf;)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1611
    .line 1613
    :try_start_0
    new-instance v0, Lio/topvpn/vpn_api/db_helper;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/db_helper;-><init>(Landroid/content/Context;)V

    .line 1614
    invoke-virtual {v0}, Lio/topvpn/vpn_api/db_helper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1615
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1616
    const-string v2, "app_bw"

    sget-object v3, Lio/topvpn/vpn_api/conf;->DAILY_MOBILE_USAGE_APP:Lio/topvpn/vpn_api/conf$key;

    .line 1617
    invoke-virtual {p1, v3}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1616
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1618
    const-string v2, "device_bw_since_boot"

    .line 1619
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v4

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1618
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1620
    const-string v2, "device_daily_bw"

    sget-object v3, Lio/topvpn/vpn_api/conf;->DAILY_MOBILE_USAGE:Lio/topvpn/vpn_api/conf$key;

    .line 1621
    invoke-virtual {p1, v3}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1620
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1622
    const-string v2, "mobile_usage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/topvpn/vpn_api/conf;->CURR_MOBILE_USAGE_DATE:Lio/topvpn/vpn_api/conf$key;

    .line 1623
    invoke-virtual {p1, v4}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 1622
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 1624
    if-nez v2, :cond_0

    .line 1626
    const-string v2, "date"

    sget-object v3, Lio/topvpn/vpn_api/conf;->CURR_MOBILE_USAGE_DATE:Lio/topvpn/vpn_api/conf$key;

    .line 1627
    invoke-virtual {p1, v3}, Lio/topvpn/vpn_api/conf;->get_long(Ljava/lang/Object;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1626
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1628
    const-string v2, "mobile_usage"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1630
    :cond_0
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_mobile_usage_json(Landroid/content/Context;)Lorg/json/JSONArray;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1634
    if-eqz v1, :cond_1

    .line 1635
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 1637
    :cond_1
    :goto_0
    return-void

    .line 1631
    :catch_0
    move-exception v0

    .line 1632
    :try_start_1
    const-string v2, "save_mobile_usage_to_sql_sql_error"

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCantOpenDatabaseException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1634
    if-eqz v1, :cond_1

    .line 1635
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 1634
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_2

    .line 1635
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    throw v0
.end method

.method public static scandir(Ljava/lang/String;Lio/topvpn/vpn_api/util$scandir_cb_t;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 1027
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1028
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 1029
    if-nez v1, :cond_1

    .line 1039
    :cond_0
    return-void

    .line 1031
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 1033
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p0, v4, v3, p2}, Lio/topvpn/vpn_api/util$scandir_cb_t;->cb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1031
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static sdk_version()I
    .locals 2

    .prologue
    .line 447
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_API:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_int(Ljava/lang/Object;)I

    move-result v0

    .line 448
    if-lez v0, :cond_0

    .line 450
    :goto_0
    return v0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    goto :goto_0
.end method

.method public static set_field_enum(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1298
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1299
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :goto_0
    return v0

    .line 1300
    :catch_0
    move-exception v1

    .line 1301
    if-eqz p3, :cond_0

    .line 1303
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed access "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static site_host()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    const-string v0, "luminati.io"

    return-object v0
.end method

.method public static site_link()Ljava/lang/String;
    .locals 2

    .prologue
    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lio/topvpn/vpn_api/util;->site_prot()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lio/topvpn/vpn_api/util;->site_host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static site_prot()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    const-string v0, "https://"

    return-object v0
.end method

.method public static sleep_ms(I)V
    .locals 2

    .prologue
    .line 1016
    int-to-long v0, p0

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static str2bytes(Ljava/lang/String;)[B
    .locals 1

    .prologue
    .line 1211
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public static str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 498
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8"

    invoke-static {p0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    .line 499
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 502
    :goto_0
    return-object v0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    const/4 v0, 0x3

    const-string v1, "unsupported encoding"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static sys_exec(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 749
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static sys_exec(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 747
    const-string v5, ""

    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    invoke-static/range {v0 .. v6}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I
    .locals 14

    .prologue
    .line 763
    if-nez p3, :cond_0

    if-eqz p4, :cond_c

    :cond_0
    const/4 v1, 0x1

    move v10, v1

    .line 764
    :goto_0
    const/4 v6, -0x1

    .line 766
    if-eqz p0, :cond_1

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 768
    :cond_1
    const-string v1, ""

    const/4 v11, 0x0

    .line 769
    const/4 v7, -0x1

    const/4 v5, -0x1

    const/4 v4, -0x1

    const/4 v3, -0x1

    .line 770
    const/4 v2, -0x1

    const/4 v1, -0x1

    .line 772
    if-eqz p5, :cond_1d

    .line 773
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v9, v8

    .line 774
    :goto_1
    if-eqz v10, :cond_3

    .line 777
    if-eqz p3, :cond_2

    .line 779
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3}, Lio/topvpn/vpn_api/util;->jni_pipe()[I

    move-result-object v4

    .line 780
    const/4 v3, 0x0

    aget v3, v4, v3

    .line 781
    const/4 v8, 0x1

    aget v4, v4, v8

    .line 782
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v3, v10}, Lio/topvpn/vpn_api/util;->fcntl_cloexec(II)I

    .line 784
    :cond_2
    if-eqz p4, :cond_3

    .line 786
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v5

    invoke-virtual {v5}, Lio/topvpn/vpn_api/util;->jni_pipe()[I

    move-result-object v7

    .line 787
    const/4 v5, 0x0

    aget v5, v7, v5

    .line 788
    const/4 v8, 0x1

    aget v7, v7, v8

    .line 789
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v8

    const/4 v10, 0x1

    invoke-virtual {v8, v5, v10}, Lio/topvpn/vpn_api/util;->fcntl_cloexec(II)I

    :cond_3
    move v8, v5

    move v5, v7

    move v7, v3

    .line 792
    if-nez p2, :cond_4

    if-eqz v11, :cond_5

    .line 794
    :cond_4
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3}, Lio/topvpn/vpn_api/util;->jni_pipe()[I

    move-result-object v3

    .line 795
    if-nez v3, :cond_d

    .line 797
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3}, Lio/topvpn/vpn_api/util;->get_errno()I

    move-result v3

    .line 798
    const/4 v10, 0x3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "exec pipe failed "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v12, " "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 808
    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " 0>"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ltz v1, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " 1>"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " 2>"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p4, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "&"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 811
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 812
    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sys_exec "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 813
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "|u "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/topvpn/vpn_api/util;->jni_sys_exec_bg(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_11

    .line 814
    const/4 v9, 0x3

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "exec failed "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    move v3, v4

    move v4, v5

    move v5, v6

    .line 859
    :goto_6
    const/4 v6, -0x1

    if-eq v8, v6, :cond_6

    .line 860
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v6

    invoke-virtual {v6, v8}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 861
    :cond_6
    const/4 v6, -0x1

    if-eq v4, v6, :cond_7

    .line 862
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v6

    invoke-virtual {v6, v4}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 863
    :cond_7
    const/4 v4, -0x1

    if-eq v7, v4, :cond_8

    .line 864
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v4

    invoke-virtual {v4, v7}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 865
    :cond_8
    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 866
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v4

    invoke-virtual {v4, v3}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 867
    :cond_9
    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    .line 868
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3, v1}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 869
    :cond_a
    const/4 v1, -0x1

    if-eq v2, v1, :cond_b

    .line 870
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 871
    :cond_b
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exec ret "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 872
    return v5

    .line 763
    :cond_c
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_0

    .line 803
    :cond_d
    const/4 v1, 0x0

    aget v1, v3, v1

    .line 804
    const/4 v2, 0x1

    aget v2, v3, v2

    .line 805
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    const/4 v10, 0x1

    invoke-virtual {v3, v2, v10}, Lio/topvpn/vpn_api/util;->fcntl_cloexec(II)I

    goto/16 :goto_2

    .line 808
    :cond_e
    const-string v3, "/dev/null"

    goto/16 :goto_3

    :cond_f
    const-string v3, "/dev/null"

    goto/16 :goto_4

    :cond_10
    const-string v3, "/dev/null"

    goto/16 :goto_5

    .line 817
    :cond_11
    if-eqz v11, :cond_12

    .line 818
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3, v2, v11}, Lio/topvpn/vpn_api/util;->jni_write_str(ILjava/lang/String;)I

    .line 819
    :cond_12
    if-eqz p3, :cond_13

    .line 820
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 821
    :cond_13
    if-eqz p4, :cond_14

    .line 822
    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 823
    :cond_14
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v9, v0}, Lio/topvpn/vpn_api/util;->jni_sys_waitpid(II)I

    move-result v6

    const/16 v3, -0x100

    if-ne v6, v3, :cond_15

    if-ltz p6, :cond_15

    .line 826
    const/4 v3, 0x5

    const-string v10, "sys_exec timeout send SIGTERM"

    invoke-static {v3, v10}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 827
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    const/16 v10, 0xf

    invoke-virtual {v3, v9, v10}, Lio/topvpn/vpn_api/util;->jni_kill(II)I

    .line 828
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    const/16 v10, 0x1f4

    invoke-virtual {v3, v9, v10}, Lio/topvpn/vpn_api/util;->jni_sys_waitpid(II)I

    move-result v3

    const/16 v10, -0x100

    if-ne v3, v10, :cond_15

    .line 830
    const/4 v3, 0x5

    const-string v10, "sys_exec timeout send SIGKILL"

    invoke-static {v3, v10}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 831
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    const/16 v10, 0x9

    invoke-virtual {v3, v9, v10}, Lio/topvpn/vpn_api/util;->jni_kill(II)I

    .line 832
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    const/16 v10, 0x1f4

    invoke-virtual {v3, v9, v10}, Lio/topvpn/vpn_api/util;->jni_sys_waitpid(II)I

    move-result v3

    const/16 v9, -0x100

    if-ne v3, v9, :cond_15

    .line 833
    const/4 v3, 0x3

    const-string v9, "failed to kill timed out exec"

    invoke-static {v3, v9}, Lio/topvpn/vpn_api/util;->zerr(ILjava/lang/String;)I

    .line 836
    :cond_15
    if-ltz v6, :cond_18

    if-eqz p3, :cond_18

    .line 838
    const/4 v3, -0x1

    if-eq v4, v3, :cond_16

    .line 839
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 840
    :cond_16
    const/4 v4, -0x1

    .line 841
    :cond_17
    :goto_7
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3, v7}, Lio/topvpn/vpn_api/util;->jni_read(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_18

    .line 843
    if-eqz p3, :cond_17

    .line 844
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_18
    move v3, v4

    .line 847
    if-ltz v6, :cond_1c

    if-eqz p4, :cond_1c

    .line 849
    const/4 v4, -0x1

    if-eq v5, v4, :cond_19

    .line 850
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v4

    invoke-virtual {v4, v5}, Lio/topvpn/vpn_api/util;->pipe_close(I)I

    .line 851
    :cond_19
    const/4 v4, -0x1

    .line 852
    :cond_1a
    :goto_8
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v5

    invoke-virtual {v5, v8}, Lio/topvpn/vpn_api/util;->jni_read(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1b

    .line 854
    if-eqz p4, :cond_1a

    .line 855
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, "\n"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    :cond_1b
    move v5, v6

    goto/16 :goto_6

    :cond_1c
    move v4, v5

    move v5, v6

    goto/16 :goto_6

    :cond_1d
    move-object v9, p1

    goto/16 :goto_1
.end method

.method public static sys_exec(Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 752
    const/4 v2, 0x0

    const/4 v6, -0x1

    move-object v1, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static sys_exec(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 757
    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p3

    invoke-static/range {v0 .. v6}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static sys_get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/topvpn/vpn_api/util;->sys_get(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sys_get(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x0

    .line 876
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 877
    const/4 v2, 0x0

    move-object v1, p0

    move-object v4, p1

    move-object v5, v0

    invoke-static/range {v0 .. v6}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v6, :cond_0

    :goto_0
    return-object v0

    .line 878
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static time_monotonic_ms()J
    .locals 4

    .prologue
    .line 1150
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public static unzip(Ljava/io/File;Ljava/io/File;Z)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 1429
    const/4 v3, 0x0

    .line 1430
    const/4 v0, 0x1

    .line 1434
    const/16 v2, 0x1000

    :try_start_0
    new-array v5, v2, [B

    .line 1435
    new-instance v2, Ljava/util/zip/ZipInputStream;

    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1437
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 1439
    if-eqz p2, :cond_1

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "libtopvpn_svc-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1441
    :cond_1
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1442
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1443
    new-instance v4, Ljava/io/File;

    if-eqz p2, :cond_4

    :goto_1
    invoke-direct {v4, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_5

    move-object v3, v4

    .line 1445
    :goto_2
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1447
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to ensure directory: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1448
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1460
    :catch_0
    move-exception v0

    .line 1461
    :goto_3
    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1465
    if-eqz v2, :cond_2

    .line 1466
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    move v0, v1

    .line 1469
    :cond_3
    :goto_4
    return v0

    .line 1443
    :cond_4
    :try_start_4
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 1444
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    goto :goto_2

    .line 1450
    :cond_6
    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1452
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1454
    :goto_5
    :try_start_5
    invoke-virtual {v2, v5}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    .line 1455
    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_5

    .line 1457
    :catchall_0
    move-exception v0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1464
    :catchall_1
    move-exception v0

    .line 1465
    :goto_6
    if-eqz v2, :cond_7

    .line 1466
    :try_start_7
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 1467
    :cond_7
    :goto_7
    throw v0

    .line 1457
    :cond_8
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    .line 1465
    :cond_9
    if-eqz v2, :cond_3

    .line 1466
    :try_start_9
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_4

    .line 1467
    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v0

    move v0, v1

    .line 1468
    goto :goto_4

    .line 1467
    :catch_3
    move-exception v1

    goto :goto_7

    .line 1464
    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_6

    .line 1460
    :catch_4
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method public static unzip(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .prologue
    .line 1473
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lio/topvpn/vpn_api/util;->unzip(Ljava/io/File;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public static util_dbg_set(Z)V
    .locals 2

    .prologue
    .line 155
    sget-object v0, Lio/topvpn/vpn_api/util;->m_dbg_set_prev_thread:Landroid/os/StrictMode$ThreadPolicy;

    if-nez v0, :cond_0

    .line 157
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_dbg_set_prev_thread:Landroid/os/StrictMode$ThreadPolicy;

    .line 158
    invoke-static {}, Landroid/os/StrictMode;->getVmPolicy()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_dbg_set_prev_vm:Landroid/os/StrictMode$VmPolicy;

    .line 160
    :cond_0
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 161
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectDiskReads()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 162
    new-instance v0, Landroid/os/StrictMode$VmPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$VmPolicy$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->detectAll()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->penaltyDeath()Landroid/os/StrictMode$VmPolicy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/StrictMode$VmPolicy$Builder;->build()Landroid/os/StrictMode$VmPolicy;

    move-result-object v0

    .line 164
    if-nez p0, :cond_1

    .line 166
    sget-object v1, Lio/topvpn/vpn_api/util;->m_dbg_set_prev_thread:Landroid/os/StrictMode$ThreadPolicy;

    .line 167
    sget-object v0, Lio/topvpn/vpn_api/util;->m_dbg_set_prev_vm:Landroid/os/StrictMode$VmPolicy;

    .line 169
    :cond_1
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 170
    invoke-static {v0}, Landroid/os/StrictMode;->setVmPolicy(Landroid/os/StrictMode$VmPolicy;)V

    .line 171
    return-void
.end method

.method public static util_get()Lio/topvpn/vpn_api/util;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lio/topvpn/vpn_api/util;->instance:Lio/topvpn/vpn_api/util;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Lio/topvpn/vpn_api/util;

    invoke-direct {v0}, Lio/topvpn/vpn_api/util;-><init>()V

    sput-object v0, Lio/topvpn/vpn_api/util;->instance:Lio/topvpn/vpn_api/util;

    .line 117
    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/util;->instance:Lio/topvpn/vpn_api/util;

    return-object v0
.end method

.method public static util_init(Landroid/content/Context;)I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 177
    const-class v1, Lio/topvpn/vpn_api/util;

    monitor-enter v1

    .line 178
    :try_start_0
    sget v0, Lio/topvpn/vpn_api/util;->m_ref:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lio/topvpn/vpn_api/util;->m_ref:I

    .line 179
    sget v0, Lio/topvpn/vpn_api/util;->m_ref:I

    if-le v0, v2, :cond_0

    .line 180
    sget v0, Lio/topvpn/vpn_api/util;->m_util_init_ret:I

    monitor-exit v1

    .line 199
    :goto_0
    return v0

    .line 183
    :cond_0
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_workdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 184
    new-instance v2, Lio/topvpn/vpn_api/conf;

    invoke-direct {v2, p0}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    sput-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    .line 185
    invoke-static {}, Lio/topvpn/vpn_api/util;->getuid()I

    move-result v2

    sput v2, Lio/topvpn/vpn_api/util;->m_curr_uid:I

    .line 186
    if-eqz v0, :cond_1

    .line 187
    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v3, Lio/topvpn/vpn_api/conf;->WORKDIR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v3, v0}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->date_init()V

    .line 189
    sget-object v2, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    invoke-static {p0, v0, v2}, Lio/topvpn/vpn_api/util;->zerr_init(Landroid/content/Context;Ljava/lang/String;Lio/topvpn/vpn_api/conf;)V

    .line 190
    invoke-static {}, Lio/topvpn/vpn_api/util;->log_hdr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->zerr_printf(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    const-string v0, "jni_util"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 194
    :try_start_2
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util;->jni_init()V

    .line 195
    const/4 v0, 0x0

    sput v0, Lio/topvpn/vpn_api/util;->m_util_init_ret:I

    .line 196
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->DBG_ANDROID_OS:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    const/4 v0, 0x1

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->util_dbg_set(Z)V

    .line 198
    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    sget v0, Lio/topvpn/vpn_api/util;->m_util_init_ret:I

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    :try_start_3
    const-string v2, "apk_install"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cant load jni_util "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_0

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static util_mkdir(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 148
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->zerr_mkdir(Landroid/content/Context;)Ljava/lang/String;

    .line 149
    sget-object v0, Lio/topvpn/vpn_api/util;->m_path:Ljava/lang/String;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->mkdir_p(Ljava/lang/String;)Z

    .line 150
    return-void
.end method

.method public static util_reinit_workdir(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 203
    const-class v1, Lio/topvpn/vpn_api/util;

    monitor-enter v1

    .line 204
    :try_start_0
    invoke-static {}, Lio/topvpn/vpn_api/util;->zerr_uninit()V

    .line 205
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->WORKDIR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v2, p1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    sget-object v0, Lio/topvpn/vpn_api/util;->m_conf:Lio/topvpn/vpn_api/conf;

    invoke-static {p0, p1, v0}, Lio/topvpn/vpn_api/util;->zerr_init(Landroid/content/Context;Ljava/lang/String;Lio/topvpn/vpn_api/conf;)V

    .line 207
    invoke-static {}, Lio/topvpn/vpn_api/util;->log_hdr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->zerr_printf(Ljava/lang/String;)I

    .line 208
    monitor-exit v1

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static util_uninit()V
    .locals 2

    .prologue
    .line 212
    const-class v1, Lio/topvpn/vpn_api/util;

    monitor-enter v1

    .line 213
    :try_start_0
    sget v0, Lio/topvpn/vpn_api/util;->m_ref:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lio/topvpn/vpn_api/util;->m_ref:I

    .line 214
    sget v0, Lio/topvpn/vpn_api/util;->m_ref:I

    if-eqz v0, :cond_0

    .line 215
    monitor-exit v1

    .line 220
    :goto_0
    return-void

    .line 216
    :cond_0
    sget-boolean v0, Lio/topvpn/vpn_api/util;->m_perr_inited:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-static {}, Lio/topvpn/vpn_api/util;->perr_uninit()V

    .line 218
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->zerr_uninit()V

    .line 219
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static version_cmp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1313
    if-nez p0, :cond_1

    .line 1314
    const/4 v1, -0x1

    .line 1319
    :cond_0
    :goto_0
    return v1

    .line 1315
    :cond_1
    if-nez p1, :cond_2

    .line 1316
    const/4 v1, 0x1

    goto :goto_0

    .line 1317
    :cond_2
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 1318
    :goto_1
    array-length v4, v2

    if-ge v0, v4, :cond_3

    array-length v4, v3

    if-ge v0, v4, :cond_3

    aget-object v4, v2, v0

    invoke-static {v4}, Lio/topvpn/vpn_api/util;->atoi(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v3, v0

    invoke-static {v5}, Lio/topvpn/vpn_api/util;->atoi(Ljava/lang/String;)I

    move-result v5

    if-ne v4, v5, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1319
    :cond_3
    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    aget-object v1, v2, v0

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->atoi(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v3, v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->atoi(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method private static zerr(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 444
    const-string v0, "util"

    invoke-static {v0, p0, p1}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static zerr2log(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 419
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    .line 420
    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 421
    :cond_1
    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 422
    :cond_2
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 423
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 424
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 426
    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 427
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 428
    invoke-static {p0, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static zerr_check(I)Z
    .locals 2

    .prologue
    .line 328
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->zerr_get_severity(I)I

    move-result v0

    sget v1, Lio/topvpn/vpn_api/util;->zerr_level:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zerr_get_flags(I)I
    .locals 1

    .prologue
    .line 330
    const v0, 0xff00

    and-int/2addr v0, p0

    return v0
.end method

.method private static zerr_get_severity(I)I
    .locals 1

    .prologue
    .line 313
    and-int/lit8 v0, p0, 0xf

    return v0
.end method

.method private static zerr_init(Landroid/content/Context;Ljava/lang/String;Lio/topvpn/vpn_api/conf;)V
    .locals 5

    .prologue
    .line 350
    sget-object v1, Lio/topvpn/vpn_api/util;->m_zerr_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 353
    :try_start_0
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->zerr_mkdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/log"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/util;->m_path:Ljava/lang/String;

    .line 355
    if-eqz p1, :cond_0

    .line 357
    sget-object v0, Lio/topvpn/vpn_api/util;->m_path:Ljava/lang/String;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->mkdir_p(Ljava/lang/String;)Z

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/ext/log"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lio/topvpn/vpn_api/util$1;

    invoke-direct {v3}, Lio/topvpn/vpn_api/util$1;-><init>()V

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Lio/topvpn/vpn_api/util;->scandir(Ljava/lang/String;Lio/topvpn/vpn_api/util$scandir_cb_t;Ljava/lang/Object;)V

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/ext"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->rmdir_recursive(Ljava/lang/String;)I

    .line 370
    :cond_0
    monitor-exit v1

    .line 371
    return-void

    .line 354
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/ext"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static zerr_level2severity_str(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 316
    sget-object v0, Lio/topvpn/vpn_api/util;->zerr_severity_str:[Ljava/lang/String;

    invoke-static {p0}, Lio/topvpn/vpn_api/util;->zerr_get_severity(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static zerr_mkdir(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 333
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_cachedir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->mkdir_p(Ljava/lang/String;)Z

    .line 336
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/app.log"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v2, Lio/topvpn/vpn_api/util;->m_file:Ljava/io/File;

    .line 338
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    sget-object v2, Lio/topvpn/vpn_api/util;->m_file:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    sput-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    .line 339
    sget-object v0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    sget-object v0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->zerr_printf(Ljava/lang/String;)I

    .line 342
    const-string v0, ""

    sput-object v0, Lio/topvpn/vpn_api/util;->m_membuf:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    :goto_0
    return-object v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    const-string v2, "api/util"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "zerr_mkdir failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static zerr_printf(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 387
    new-instance v0, Lio/topvpn/vpn_api/util$2;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/util$2;-><init>(Ljava/lang/String;)V

    .line 414
    sget-object v1, Lio/topvpn/vpn_api/util;->m_zerr_ex:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 415
    const/4 v0, -0x1

    return v0
.end method

.method private static zerr_str2level(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 319
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lio/topvpn/vpn_api/util;->zerr_severity_str:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 321
    sget-object v1, Lio/topvpn/vpn_api/util;->zerr_severity_str:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    :goto_1
    return v0

    .line 319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 324
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static zerr_uninit()V
    .locals 2

    .prologue
    .line 374
    sget-object v1, Lio/topvpn/vpn_api/util;->m_zerr_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 375
    :try_start_0
    sget-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    if-nez v0, :cond_0

    .line 376
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 383
    :goto_0
    return-void

    .line 378
    :cond_0
    :try_start_1
    sget-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->flush()V

    .line 379
    sget-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :goto_1
    const/4 v0, 0x0

    :try_start_2
    sput-object v0, Lio/topvpn/vpn_api/util;->m_fw:Ljava/io/FileWriter;

    .line 382
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 380
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public native chmod(Ljava/lang/String;I)I
.end method

.method public native fcntl_cloexec(II)I
.end method

.method public native get_errno()I
.end method

.method public native ipc([Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;I)I
.end method

.method public native ipc_fd_pass([Ljava/lang/String;ILio/topvpn/vpn_api/util$ipc_result;I)I
.end method

.method public native jni_getgid()I
.end method

.method public native jni_init()V
.end method

.method public native jni_kill(II)I
.end method

.method public native jni_pipe()[I
.end method

.method public native jni_read(I)Ljava/lang/String;
.end method

.method public native jni_sys_exec(Ljava/lang/String;)I
.end method

.method public native jni_sys_exec_bg(Ljava/lang/String;)I
.end method

.method public native jni_sys_waitpid(II)I
.end method

.method public native jni_write_str(ILjava/lang/String;)I
.end method

.method public native pipe_close(I)I
.end method

.method public native pipe_fds_to_protect_ack(II)V
.end method

.method public native pipe_fds_to_protect_get(I)[I
.end method

.method public native pipe_server_accept(II)I
.end method

.method public native pipe_server_listen([B)I
.end method

.method public native pipe_wake(I)V
.end method

.method public native readlink(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public native set_apkid(Ljava/lang/String;)I
.end method

.method public native symlink(Ljava/lang/String;Ljava/lang/String;)I
.end method
