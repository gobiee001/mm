.class public Lio/topvpn/vpn_api/svc;
.super Landroid/app/Service;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/topvpn/vpn_api/svc$hola_svc_binder;,
        Lio/topvpn/vpn_api/svc$svc_be_mon;,
        Lio/topvpn/vpn_api/svc$callback_json_cb;,
        Lio/topvpn/vpn_api/svc$svc_update;,
        Lio/topvpn/vpn_api/svc$svc_fsm;,
        Lio/topvpn/vpn_api/svc$ipc;
    }
.end annotation


# static fields
.field private static final BE_FAILURE_RESTART_THRESHOLD:I = 0x3

.field public static final TYPE_MOBILE_IMS:I = 0xb


# instance fields
.field private final DEF_IDLE_TIME:J

.field private m_aq:Lcom/androidquery/AQuery;

.field private m_bcast_recv:Landroid/content/BroadcastReceiver;

.field private m_be:Lio/topvpn/vpn_api/be;

.field private m_be_failure_restarts_left:I

.field private m_be_last_restart:J

.field private m_be_mon:Lio/topvpn/vpn_api/svc$svc_be_mon;

.field private m_be_mon_msgr:Landroid/os/Messenger;

.field private m_be_mon_thread:Landroid/os/HandlerThread;

.field private m_be_workdir:Ljava/lang/String;

.field private m_callback_json_request:Lio/topvpn/vpn_api/wget;

.field private m_conf:Lio/topvpn/vpn_api/conf;

.field private m_conf_listener:Lio/topvpn/vpn_api/conf$listener;

.field private m_confdir:Ljava/lang/String;

.field private m_curr_apk_id:Ljava/lang/String;

.field private m_destroyed:Z

.field public m_exe_mode:Ljava/lang/String;

.field private m_force_idle:Z

.field private m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

.field private m_idle_time:J

.field private m_idle_timer:Ljava/util/Timer;

.field public final m_idle_timer_lock:Ljava/lang/Object;

.field private m_ipc:Lio/topvpn/vpn_api/svc$ipc;

.field private final m_ipc_lock:Ljava/util/concurrent/locks/ReentrantLock;

.field private m_ipc_retry_timer:Ljava/util/Timer;

.field private m_ipc_set_notify_retry:Z

.field private m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

.field private m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

.field private m_last_3g_report:J

.field private m_last_login_after_conn:J

.field private m_libdir:Ljava/lang/String;

.field private m_ram:Lio/topvpn/vpn_api/ram;

.field private m_ram_listener:Lio/topvpn/vpn_api/ram$listener;

.field private m_slow_conn_internet_reported:Z

.field private m_slow_conn_zserver_reported:Z

.field private m_state:Lio/topvpn/vpn_api/state;

.field private m_state_listener:Lio/topvpn/vpn_api/state$listener;

.field private m_time_callback_connected:J

.field private m_time_callback_internet:J

.field private m_time_callback_up:J

.field private mobile_uage_handler:Landroid/os/Handler;

.field private report_3g_usage_run:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 601
    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_up:J

    .line 602
    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_internet:J

    .line 603
    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_connected:J

    .line 604
    iput-boolean v2, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_internet_reported:Z

    .line 605
    iput-boolean v2, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_zserver_reported:Z

    .line 730
    new-instance v0, Lio/topvpn/vpn_api/svc$2;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$2;-><init>(Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf_listener:Lio/topvpn/vpn_api/conf$listener;

    .line 774
    new-instance v0, Lio/topvpn/vpn_api/svc$3;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$3;-><init>(Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state_listener:Lio/topvpn/vpn_api/state$listener;

    .line 813
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->DEF_IDLE_TIME:J

    .line 815
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer_lock:Ljava/lang/Object;

    .line 923
    new-instance v0, Lio/topvpn/vpn_api/svc$8;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$8;-><init>(Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram_listener:Lio/topvpn/vpn_api/ram$listener;

    .line 1148
    new-instance v0, Lio/topvpn/vpn_api/svc$13;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$13;-><init>(Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->report_3g_usage_run:Ljava/lang/Runnable;

    .line 1165
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->mobile_uage_handler:Landroid/os/Handler;

    .line 1290
    const-string v0, "exe_off"

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    .line 1371
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_lock:Ljava/util/concurrent/locks/ReentrantLock;

    return-void
.end method

.method private static T(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1499
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    return-object v0
.end method

.method static synthetic access$1100(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/be;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    return-object v0
.end method

.method static synthetic access$1200(Lio/topvpn/vpn_api/svc;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_set_notify_retry:Z

    return v0
.end method

.method static synthetic access$1202(Lio/topvpn/vpn_api/svc;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_set_notify_retry:Z

    return p1
.end method

.method static synthetic access$1300(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_notify_screen_on()V

    return-void
.end method

.method static synthetic access$1400(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_notify_mobile_enable()V

    return-void
.end method

.method static synthetic access$1500(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_set_notify_multi()V

    return-void
.end method

.method static synthetic access$1600(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->start_vpn()V

    return-void
.end method

.method static synthetic access$1700(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/state$key;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/svc;->check_active(Lio/topvpn/vpn_api/state$key;)V

    return-void
.end method

.method static synthetic access$1800(Lio/topvpn/vpn_api/svc;ILio/topvpn/vpn_api/svc$callback_json_cb;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lio/topvpn/vpn_api/svc;->callback_json(ILio/topvpn/vpn_api/svc$callback_json_cb;)V

    return-void
.end method

.method static synthetic access$1900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/wget;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_callback_json_request:Lio/topvpn/vpn_api/wget;

    return-object v0
.end method

.method static synthetic access$1902(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/wget;)Lio/topvpn/vpn_api/wget;
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lio/topvpn/vpn_api/svc;->m_callback_json_request:Lio/topvpn/vpn_api/wget;

    return-object p1
.end method

.method static synthetic access$200(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/util$ipc_thread;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    return-object v0
.end method

.method static synthetic access$2000(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->stop_be()V

    return-void
.end method

.method static synthetic access$2100(Lio/topvpn/vpn_api/svc;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_destroyed:Z

    return v0
.end method

.method static synthetic access$2200(Lio/topvpn/vpn_api/svc;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_be_last_restart:J

    return-wide v0
.end method

.method static synthetic access$300(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/ram;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    return-object v0
.end method

.method static synthetic access$3200(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lio/topvpn/vpn_api/svc;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/svc;->ipc_notify_user_status(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Lio/topvpn/vpn_api/svc;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_up:J

    return-wide v0
.end method

.method static synthetic access$4202(Lio/topvpn/vpn_api/svc;J)J
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_up:J

    return-wide p1
.end method

.method static synthetic access$4300(Lio/topvpn/vpn_api/svc;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_internet:J

    return-wide v0
.end method

.method static synthetic access$4302(Lio/topvpn/vpn_api/svc;J)J
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_internet:J

    return-wide p1
.end method

.method static synthetic access$4400(Lio/topvpn/vpn_api/svc;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_internet_reported:Z

    return v0
.end method

.method static synthetic access$4402(Lio/topvpn/vpn_api/svc;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_internet_reported:Z

    return p1
.end method

.method static synthetic access$4500(Lio/topvpn/vpn_api/svc;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_connected:J

    return-wide v0
.end method

.method static synthetic access$4502(Lio/topvpn/vpn_api/svc;J)J
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lio/topvpn/vpn_api/svc;->m_time_callback_connected:J

    return-wide p1
.end method

.method static synthetic access$4600(Lio/topvpn/vpn_api/svc;)Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_zserver_reported:Z

    return v0
.end method

.method static synthetic access$4602(Lio/topvpn/vpn_api/svc;Z)Z
    .locals 0

    .prologue
    .line 59
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc;->m_slow_conn_zserver_reported:Z

    return p1
.end method

.method static synthetic access$4700(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->propagate_auth_info()V

    return-void
.end method

.method static synthetic access$4800(Lio/topvpn/vpn_api/svc;Z)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/svc;->force_idle(Z)V

    return-void
.end method

.method static synthetic access$4900(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/state;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    return-object v0
.end method

.method static synthetic access$500(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/svc$svc_fsm;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    return-object v0
.end method

.method static synthetic access$5000(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->monitor_3g_usage()V

    return-void
.end method

.method static synthetic access$5100(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->report_3g_usage()V

    return-void
.end method

.method static synthetic access$5200(Lio/topvpn/vpn_api/svc;)J
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_last_login_after_conn:J

    return-wide v0
.end method

.method static synthetic access$5202(Lio/topvpn/vpn_api/svc;J)J
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lio/topvpn/vpn_api/svc;->m_last_login_after_conn:J

    return-wide p1
.end method

.method static synthetic access$5300(Lio/topvpn/vpn_api/svc;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_report_3g()V

    return-void
.end method

.method static synthetic access$5402(Lio/topvpn/vpn_api/svc;J)J
    .locals 1

    .prologue
    .line 59
    iput-wide p1, p0, Lio/topvpn/vpn_api/svc;->m_last_3g_report:J

    return-wide p1
.end method

.method static synthetic access$5500(Lio/topvpn/vpn_api/svc;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->mobile_uage_handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5600(Lio/topvpn/vpn_api/svc;)I
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->create_hola_id()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lio/topvpn/vpn_api/svc;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lio/topvpn/vpn_api/svc;->m_be_failure_restarts_left:I

    return v0
.end method

.method static synthetic access$802(Lio/topvpn/vpn_api/svc;I)I
    .locals 0

    .prologue
    .line 59
    iput p1, p0, Lio/topvpn/vpn_api/svc;->m_be_failure_restarts_left:I

    return p1
.end method

.method static synthetic access$810(Lio/topvpn/vpn_api/svc;)I
    .locals 2

    .prologue
    .line 59
    iget v0, p0, Lio/topvpn/vpn_api/svc;->m_be_failure_restarts_left:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/topvpn/vpn_api/svc;->m_be_failure_restarts_left:I

    return v0
.end method

.method static synthetic access$900(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->start_be()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private callback_json(ILio/topvpn/vpn_api/svc$callback_json_cb;)V
    .locals 5

    .prologue
    .line 608
    new-instance v0, Lio/topvpn/vpn_api/svc$1;

    const-string v1, "callback.json"

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->cmd2url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lio/topvpn/vpn_api/wget$option;

    const/4 v3, 0x0

    .line 609
    invoke-static {p1}, Lio/topvpn/vpn_api/wget;->attempts(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/16 v4, 0x64

    .line 610
    invoke-static {v4}, Lio/topvpn/vpn_api/wget;->retry_interval_ms(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x1f4

    .line 611
    invoke-static {v4}, Lio/topvpn/vpn_api/wget;->soft_timeout_ms(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, p0, v1, v2, p2}, Lio/topvpn/vpn_api/svc$1;-><init>(Lio/topvpn/vpn_api/svc;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;Lio/topvpn/vpn_api/svc$callback_json_cb;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_callback_json_request:Lio/topvpn/vpn_api/wget;

    .line 706
    return-void
.end method

.method private check_active(Lio/topvpn/vpn_api/state$key;)V
    .locals 6

    .prologue
    .line 818
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_force_idle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.hola.test_vpn_api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 866
    :goto_0
    return-void

    .line 820
    :cond_0
    sget-object v0, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    if-eq p1, v0, :cond_1

    .line 821
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    invoke-static {p0, v0, v1}, Lio/topvpn/vpn_api/util;->check_3g_usage(Landroid/content/Context;Lio/topvpn/vpn_api/conf;Lio/topvpn/vpn_api/state;)V

    .line 822
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->BATTERY_LEVEL:Lio/topvpn/vpn_api/state$key;

    .line 823
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_float(Ljava/lang/Object;)F

    move-result v0

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->PEER_3G_BATTERY_LEVEL:Lio/topvpn/vpn_api/conf$key;

    .line 824
    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_float(Ljava/lang/Object;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    .line 825
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    .line 826
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    .line 827
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    .line 828
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    .line 829
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    .line 830
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->ON_CALL:Lio/topvpn/vpn_api/state$key;

    .line 831
    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 833
    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time:J

    .line 834
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->exist(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 835
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_int(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time:J

    .line 836
    :cond_4
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DBG_IDLE_TIME:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 837
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 839
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_time:J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 842
    :cond_5
    :goto_1
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting timer to idle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lio/topvpn/vpn_api/svc;->m_idle_time:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 843
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 844
    :try_start_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer:Ljava/util/Timer;

    .line 845
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer:Ljava/util/Timer;

    new-instance v2, Lio/topvpn/vpn_api/svc$4;

    invoke-direct {v2, p0}, Lio/topvpn/vpn_api/svc$4;-><init>(Lio/topvpn/vpn_api/svc;)V

    iget-wide v4, p0, Lio/topvpn/vpn_api/svc;->m_idle_time:J

    invoke-virtual {v0, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 852
    monitor-exit v1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 855
    :cond_6
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 856
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_ACTIVE:Lio/topvpn/vpn_api/conf$key;

    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;J)V

    .line 857
    :cond_7
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer_lock:Ljava/lang/Object;

    monitor-enter v1

    .line 858
    :try_start_2
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer:Ljava/util/Timer;

    if-eqz v0, :cond_8

    .line 860
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 861
    const/4 v0, 0x0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_idle_timer:Ljava/util/Timer;

    .line 863
    :cond_8
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 864
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Z)V

    .line 865
    const-string v0, "active"

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/svc;->ipc_notify_user_status(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 863
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 840
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private create_hola_id()I
    .locals 6

    .prologue
    .line 1307
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->get_dev_type()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/db"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1310
    iget-object v3, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v4, Lio/topvpn/vpn_api/conf;->JS_CONF:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1311
    invoke-static {v1}, Lio/topvpn/vpn_api/util;->mkdir_p(Ljava/lang/String;)Z

    .line 1312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/hola.id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "os_id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    .line 1313
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\nandroid_ver: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "1.80.401"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v0, ""

    .line 1315
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1312
    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->file_write_line(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 1317
    const/4 v0, 0x3

    const-string v1, "failed creating hola.id with android ids"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    move-result v0

    .line 1320
    :goto_2
    return v0

    .line 1313
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\ndev_type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1315
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\njs_conf: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1319
    :cond_2
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_zid_update()V

    .line 1320
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private force_idle(Z)V
    .locals 2

    .prologue
    .line 590
    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "org.hola.test_vpn_api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    const-string v0, "force_idle_called"

    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :goto_0
    return-void

    .line 595
    :cond_0
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc;->m_force_idle:Z

    .line 596
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->IS_ACTIVE_PEER:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1, p1}, Lio/topvpn/vpn_api/ram;->set(Ljava/lang/Object;Z)V

    .line 597
    if-eqz p1, :cond_1

    const-string v0, "idle"

    :goto_1
    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/svc;->ipc_notify_user_status(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "active"

    goto :goto_1
.end method

.method public static get_abi()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1507
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1508
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 1511
    :goto_0
    return-object v0

    .line 1510
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private get_dev_type()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1324
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1325
    const-string v2, ""

    .line 1344
    :goto_0
    return-object v2

    .line 1326
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DEV_TYPES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1327
    const-string v0, "connectivity"

    .line 1328
    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/svc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1329
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v3

    .line 1330
    const/4 v1, 0x0

    :goto_1
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 1332
    aget-object v4, v3, v1

    .line 1333
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 1334
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v4

    .line 1335
    if-nez v4, :cond_2

    .line 1330
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1337
    :cond_2
    invoke-virtual {v4}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 1338
    const/4 v6, 0x5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "net device "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1339
    if-eqz v4, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1341
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    invoke-direct {p0, v5, v4}, Lio/topvpn/vpn_api/svc;->get_net_type(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 1343
    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->DEV_TYPES:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private get_net_type(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1350
    packed-switch p1, :pswitch_data_0

    .line 1366
    :pswitch_0
    const-string v0, "other"

    :goto_0
    return-object v0

    .line 1358
    :pswitch_1
    const-string v0, "3g"

    goto :goto_0

    .line 1359
    :pswitch_2
    const-string v0, "wl"

    goto :goto_0

    .line 1360
    :pswitch_3
    const-string v0, "eth"

    goto :goto_0

    .line 1361
    :pswitch_4
    const-string v0, "vpn"

    goto :goto_0

    .line 1364
    :pswitch_5
    const-string v0, "other"

    goto :goto_0

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private hola_svc_start()V
    .locals 3

    .prologue
    .line 998
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    if-nez v0, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1000
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$702(Lio/topvpn/vpn_api/svc$svc_fsm;Z)Z

    .line 1001
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE_ERR:Lio/topvpn/vpn_api/fsm$state;

    .line 1002
    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1004
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->get_state()Lio/topvpn/vpn_api/fsm$state;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTING:Lio/topvpn/vpn_api/fsm$state;

    if-eq v0, v1, :cond_0

    .line 1005
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->schedule_start()V

    goto :goto_0
.end method

.method private hola_svc_stop()V
    .locals 3

    .prologue
    .line 1010
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    if-nez v0, :cond_1

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1012
    :cond_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc$svc_fsm;->access$602(Lio/topvpn/vpn_api/svc$svc_fsm;Z)Z

    .line 1013
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1014
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->schedule_stop()V

    goto :goto_0
.end method

.method private init_bcast_recv()V
    .locals 2

    .prologue
    .line 1455
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1466
    :goto_0
    return-void

    .line 1457
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1458
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1459
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1460
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1461
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1462
    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1463
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1464
    new-instance v1, Lio/topvpn/vpn_api/bcast_recv;

    invoke-direct {v1}, Lio/topvpn/vpn_api/bcast_recv;-><init>()V

    iput-object v1, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    .line 1465
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lio/topvpn/vpn_api/svc;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private install_check()I
    .locals 2

    .prologue
    .line 1502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libhola_svc.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_libdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libjni_util.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1503
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 1502
    :goto_0
    return v0

    .line 1503
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private ipc_init()V
    .locals 3

    .prologue
    .line 1376
    new-instance v0, Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/util$ipc_thread;-><init>(Lio/topvpn/vpn_api/util;Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    .line 1377
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util$ipc_thread;->start()V

    .line 1378
    new-instance v0, Lio/topvpn/vpn_api/util$ipc_thread;

    .line 1379
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lio/topvpn/vpn_api/util$ipc_thread;-><init>(Lio/topvpn/vpn_api/util;Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    .line 1380
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util$ipc_thread;->start()V

    .line 1381
    return-void
.end method

.method private ipc_notify_mobile_enable()V
    .locals 7

    .prologue
    .line 1433
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->MOBILE_ENABLE:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v5

    .line 1434
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify mobile_enable _1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1435
    new-instance v4, Lio/topvpn/vpn_api/util$ipc_result;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    .line 1436
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "notify_mobile_enable"

    aput-object v1, v3, v0

    const/4 v1, 0x1

    if-eqz v5, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v3, v1

    .line 1437
    new-instance v0, Lio/topvpn/vpn_api/svc$17;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lio/topvpn/vpn_api/svc$17;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;ZLio/topvpn/vpn_api/util$ipc_result;)V

    .line 1445
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    .line 1446
    return-void

    .line 1436
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private ipc_notify_screen_on()V
    .locals 7

    .prologue
    .line 1417
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v1, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v5

    .line 1418
    const/4 v0, 0x7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify screen _1 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1419
    new-instance v4, Lio/topvpn/vpn_api/util$ipc_result;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    .line 1420
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "notify_screen"

    aput-object v1, v3, v0

    const/4 v1, 0x1

    if-eqz v5, :cond_0

    const-string v0, "1"

    :goto_0
    aput-object v0, v3, v1

    .line 1421
    new-instance v0, Lio/topvpn/vpn_api/svc$16;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lio/topvpn/vpn_api/svc$16;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;ZLio/topvpn/vpn_api/util$ipc_result;)V

    .line 1429
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    .line 1430
    return-void

    .line 1420
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method private ipc_notify_user_status(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 869
    new-instance v4, Lio/topvpn/vpn_api/util$ipc_result;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    .line 870
    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "force_user_away"

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p1, v3, v0

    .line 871
    new-instance v0, Lio/topvpn/vpn_api/svc$5;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v5, p1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lio/topvpn/vpn_api/svc$5;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V

    .line 878
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    .line 880
    :cond_0
    return-void
.end method

.method private ipc_report_3g()V
    .locals 6

    .prologue
    .line 896
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    if-nez v0, :cond_0

    .line 919
    :goto_0
    return-void

    .line 898
    :cond_0
    new-instance v4, Lio/topvpn/vpn_api/util$ipc_result;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    .line 899
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 901
    :try_start_0
    const-string v1, "bw"

    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_mobile_usage_json(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 902
    const-string v1, "battery_level"

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->BATTERY_LEVEL:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/state;->get_float(Ljava/lang/Object;)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 903
    const-string v1, "using_battery"

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->USING_BATTERY:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 904
    const-string v1, "screen_on"

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->SCREEN_ON:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 905
    const-string v1, "mobile_connected"

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->MOBILE_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 906
    const-string v1, "wifi_connected"

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->WIFI_CONNECTED:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 907
    const-string v1, "on_call"

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->ON_CALL:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 908
    const-string v1, "roaming"

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    sget-object v3, Lio/topvpn/vpn_api/state;->ROAMING:Lio/topvpn/vpn_api/state$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/state;->get_bool(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 910
    const/4 v1, 0x2

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "3g_usage"

    aput-object v2, v3, v1

    const/4 v1, 0x1

    instance-of v2, v0, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    aput-object v0, v3, v1

    .line 911
    new-instance v0, Lio/topvpn/vpn_api/svc$7;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lio/topvpn/vpn_api/svc$7;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;Lio/topvpn/vpn_api/util$ipc_result;)V

    .line 918
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    goto/16 :goto_0

    .line 910
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 909
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private ipc_set_notify_multi()V
    .locals 4

    .prologue
    .line 1390
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "set_notify_multi_once"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "/svc/ram/system/network/verified"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "/svc/ram/protocol/connected"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "/svc/ram/protocol/unblocker/rules/set"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/svc/ram/protocol/pac_url"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/svc/ram/route/active"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/svc/conf/protocol/unblocker/disable"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "/svc/conf/protocol/disable"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "/svc/conf/protocol/network"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "/svc/conf/protocol/auth/md5"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "/svc/conf/protocol/cid"

    aput-object v2, v0, v1

    .line 1396
    new-instance v1, Lio/topvpn/vpn_api/util$ipc_result;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    .line 1397
    new-instance v2, Lio/topvpn/vpn_api/svc$15;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0, v3, v0, v1}, Lio/topvpn/vpn_api/svc$15;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;)V

    .line 1411
    const/4 v0, -0x1

    iput v0, v2, Lio/topvpn/vpn_api/util$ipc_request;->m_timeout:I

    .line 1412
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    if-eqz v0, :cond_0

    .line 1413
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v0, v2}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    .line 1414
    :cond_0
    return-void
.end method

.method private ipc_uninit()V
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util$ipc_thread;->stop()V

    .line 1385
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread_set_notify:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/util$ipc_thread;->stop()V

    .line 1386
    return-void
.end method

.method private ipc_zid_update()V
    .locals 6

    .prologue
    .line 883
    new-instance v4, Lio/topvpn/vpn_api/util$ipc_result;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lio/topvpn/vpn_api/util$ipc_result;-><init>(Lio/topvpn/vpn_api/util;)V

    .line 884
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "zid_update"

    aput-object v1, v3, v0

    .line 885
    new-instance v0, Lio/topvpn/vpn_api/svc$6;

    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lio/topvpn/vpn_api/svc$6;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/util;[Ljava/lang/String;Lio/topvpn/vpn_api/util$ipc_result;Lio/topvpn/vpn_api/util$ipc_result;)V

    .line 892
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ipc_thread:Lio/topvpn/vpn_api/util$ipc_thread;

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/util$ipc_thread;->request(Lio/topvpn/vpn_api/util$ipc_request;)V

    .line 893
    return-void
.end method

.method public static is_architecture_supported()Z
    .locals 2

    .prologue
    .line 1514
    invoke-static {}, Lio/topvpn/vpn_api/svc;->get_abi()Ljava/lang/String;

    move-result-object v0

    .line 1515
    const-string v1, "armeabi-v7a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "arm64-v8a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "x86"

    .line 1516
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1515
    :goto_0
    return v0

    .line 1516
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private monitor_3g_usage()V
    .locals 4

    .prologue
    .line 1129
    new-instance v0, Lio/topvpn/vpn_api/svc$12;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$12;-><init>(Lio/topvpn/vpn_api/svc;)V

    .line 1145
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1146
    return-void
.end method

.method private monitor_network()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1174
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1176
    :cond_0
    const-string v0, "connectivity"

    .line 1177
    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/svc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1178
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1179
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    new-instance v2, Lio/topvpn/vpn_api/svc$14;

    invoke-direct {v2, p0}, Lio/topvpn/vpn_api/svc$14;-><init>(Lio/topvpn/vpn_api/svc;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0
.end method

.method private propagate_auth_info()V
    .locals 5

    .prologue
    .line 980
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->UUID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 981
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->SESSION_KEY_JAVA:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 982
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 995
    :goto_0
    return-void

    .line 984
    :cond_0
    new-instance v2, Lio/topvpn/vpn_api/svc$9;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set_auth_info.json?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "uuid"

    .line 985
    invoke-static {v4, v0}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "session_key"

    .line 986
    invoke-static {v3, v1}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->cmd2url(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Lio/topvpn/vpn_api/wget$option;

    invoke-direct {v2, p0, v0, v1}, Lio/topvpn/vpn_api/svc$9;-><init>(Lio/topvpn/vpn_api/svc;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    goto :goto_0
.end method

.method private report_3g_usage()V
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->mobile_uage_handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->report_3g_usage_run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1169
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->mobile_uage_handler:Landroid/os/Handler;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->report_3g_usage_run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1170
    return-void
.end method

.method private restart()V
    .locals 8

    .prologue
    .line 1241
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1242
    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1243
    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    const/4 v2, 0x3

    .line 1244
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    .line 1245
    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v6, 0x7b

    const/high16 v7, 0x40000000    # 2.0f

    invoke-static {v3, v6, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1244
    invoke-virtual {v0, v2, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1247
    return-void
.end method

.method private setup_builtin_lib()V
    .locals 5

    .prologue
    .line 1519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_libdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libtopvpn_svc-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.80.401"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/libhola_svc.so"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1522
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1524
    :cond_1
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lio/topvpn/vpn_api/util;->symlink(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    .line 1525
    invoke-static {v1}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1527
    :cond_2
    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed creating symlink "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    goto :goto_0

    .line 1530
    :cond_3
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->HAVE_SVC:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1532
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->HAVE_SVC:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1533
    const/4 v0, 0x5

    const-string v1, "have_svc"

    const-string v2, "builtin"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1475
    const-string v0, "topvpn_api"

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1477
    const-string v1, "choice"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1478
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1480
    const-string v1, "svc_start_not_free"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_0
    :goto_0
    return-void

    .line 1483
    :cond_1
    const/4 v0, 0x5

    const-string v1, "starting"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->zerr_s(ILjava/lang/String;)I

    .line 1484
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/topvpn/vpn_api/svc;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1485
    const-string v0, "svc_start_fail"

    const-string v1, "failed starting svc"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private start_be()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1265
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->install_check()I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->DBG_NO_SPACE:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1266
    :cond_0
    const-string v0, "no_space_data"

    .line 1287
    :goto_0
    return-object v0

    .line 1267
    :cond_1
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->WORKDIR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be_workdir:Ljava/lang/String;

    .line 1268
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be_workdir:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->DBG_WORKDIR_SVC_FAIL:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1269
    :cond_2
    const-string v0, "no_workdir_svc"

    goto :goto_0

    .line 1270
    :cond_3
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->SUPP_KILL:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "kill"

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->sys_exec(Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result v1

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_4

    .line 1271
    const-string v0, "kill_cmd_missing"

    goto :goto_0

    .line 1272
    :cond_4
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->SUPP_KILL:Lio/topvpn/vpn_api/conf$key;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1273
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->SVC_ERROR:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->del(Ljava/lang/Object;)V

    .line 1274
    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v2, Lio/topvpn/vpn_api/conf;->INSTALL:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v1, v2}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v1

    .line 1275
    if-eqz v1, :cond_5

    .line 1276
    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v3, Lio/topvpn/vpn_api/conf;->INSTALL:Lio/topvpn/vpn_api/conf$key;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1277
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/db/hola.id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->create_hola_id()I

    move-result v2

    if-gez v2, :cond_6

    .line 1278
    const-string v2, "create_hola_id_err"

    const-string v3, ""

    invoke-static {v2, v3}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    :cond_6
    invoke-static {}, Lio/topvpn/vpn_api/util;->time_monotonic_ms()J

    move-result-wide v2

    iput-wide v2, p0, Lio/topvpn/vpn_api/svc;->m_be_last_restart:J

    .line 1280
    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    const-string v3, "exe_off"

    if-ne v2, v3, :cond_7

    .line 1282
    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v3, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v2, v3}, Lio/topvpn/vpn_api/ram;->del(Ljava/lang/Object;)V

    .line 1283
    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    invoke-virtual {v2, v1}, Lio/topvpn/vpn_api/be;->start(Z)V

    .line 1284
    const-string v1, "exe_vpn"

    iput-object v1, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    .line 1286
    :cond_7
    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "m_exe_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    goto/16 :goto_0
.end method

.method private start_vpn()V
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    const-string v1, "exe_vpn"

    if-eq v0, v1, :cond_0

    .line 1021
    :try_start_0
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->hola_svc_stop()V

    .line 1022
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->hola_svc_start()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :cond_0
    :goto_0
    return-void

    .line 1023
    :catch_0
    move-exception v0

    const-string v0, "null_pointer_m_fsm"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stop(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 1489
    const/4 v0, 0x5

    const-string v1, "stopping"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->zerr_s(ILjava/lang/String;)I

    .line 1490
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lio/topvpn/vpn_api/svc;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1491
    const/4 v0, 0x3

    const-string v1, "nothing found to stop"

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/svc;->zerr_s(ILjava/lang/String;)I

    .line 1492
    :cond_0
    return-void
.end method

.method private stop_be()V
    .locals 3

    .prologue
    .line 1292
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/be;->stop()V

    .line 1293
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->EXE_READY:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->del(Ljava/lang/Object;)V

    .line 1294
    const-string v0, "exe_off"

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_exe_mode:Ljava/lang/String;

    .line 1295
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->SVC_CONNECTED:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->del(Ljava/lang/Object;)V

    .line 1296
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    sget-object v1, Lio/topvpn/vpn_api/ram;->SVC_ROUTING:Lio/topvpn/vpn_api/ram$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->del(Ljava/lang/Object;)V

    .line 1297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/core"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_be_workdir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/log/core"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->file_move(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    return-void
.end method

.method private terminate_bcast_recv()V
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1471
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_bcast_recv:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/svc;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method private update_vpn_api_svc(Lio/topvpn/vpn_api/svc;)V
    .locals 6

    .prologue
    .line 1028
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 1029
    new-instance v1, Lio/topvpn/vpn_api/svc$10;

    invoke-direct {v1, p0, p1}, Lio/topvpn/vpn_api/svc$10;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/svc;)V

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0x1499700

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 1034
    return-void
.end method

.method private zerr(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 1497
    const-string v0, "svc"

    invoke-static {v0, p1, p2}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static zerr_s(ILjava/lang/String;)I
    .locals 1

    .prologue
    .line 1495
    const-string v0, "svc:s"

    invoke-static {v0, p0, p1}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 1301
    new-instance v0, Lio/topvpn/vpn_api/svc$hola_svc_binder;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$hola_svc_binder;-><init>(Lio/topvpn/vpn_api/svc;)V

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1048
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1049
    const-string v0, "topvpn_api"

    invoke-virtual {p0, v0, v2}, Lio/topvpn/vpn_api/svc;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1051
    const-string v1, "choice"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1052
    if-eq v0, v4, :cond_0

    .line 1054
    const-string v1, "svc_start_not_free"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->stopSelf()V

    .line 1126
    :goto_0
    return-void

    .line 1058
    :cond_0
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->util_init(Landroid/content/Context;)I

    .line 1059
    const-string v0, "TopVPN"

    const-string v1, "TopVPN API svc onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const/4 v0, 0x5

    const-string v1, "creating"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1061
    new-instance v0, Lio/topvpn/vpn_api/conf;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/conf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    .line 1062
    new-instance v0, Lio/topvpn/vpn_api/ram;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/ram;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    .line 1063
    new-instance v0, Lcom/androidquery/AQuery;

    invoke-direct {v0, p0}, Lcom/androidquery/AQuery;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_aq:Lcom/androidquery/AQuery;

    .line 1064
    new-instance v0, Lio/topvpn/vpn_api/be;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    .line 1065
    new-instance v0, Lio/topvpn/vpn_api/svc$ipc;

    invoke-direct {v0, p0, p0}, Lio/topvpn/vpn_api/svc$ipc;-><init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ipc:Lio/topvpn/vpn_api/svc$ipc;

    .line 1066
    new-instance v0, Lio/topvpn/vpn_api/state;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/state;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    .line 1067
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_state_listener:Lio/topvpn/vpn_api/state$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->register_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1068
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->report_3g_usage()V

    .line 1069
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->init_bcast_recv()V

    .line 1071
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "svc_mon"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    .line 1073
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1074
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_be_mon;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lio/topvpn/vpn_api/svc$svc_be_mon;-><init>(Lio/topvpn/vpn_api/svc;Landroid/os/Looper;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon:Lio/topvpn/vpn_api/svc$svc_be_mon;

    .line 1075
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be_mon:Lio/topvpn/vpn_api/svc$svc_be_mon;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_msgr:Landroid/os/Messenger;

    .line 1076
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_msgr:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/be;->register_listener(Landroid/os/Messenger;)V

    .line 1077
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    invoke-static {v0}, Lio/topvpn/vpn_api/apk_config;->init(Lio/topvpn/vpn_api/conf;)V

    .line 1078
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf_listener:Lio/topvpn/vpn_api/conf$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->register_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1079
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ram_listener:Lio/topvpn/vpn_api/ram$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->register_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1080
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_confdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_confdir:Ljava/lang/String;

    .line 1081
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->get_libdir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_libdir:Ljava/lang/String;

    .line 1082
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_init()V

    .line 1083
    new-instance v0, Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-direct {v0, p0}, Lio/topvpn/vpn_api/svc$svc_fsm;-><init>(Lio/topvpn/vpn_api/svc;)V

    iput-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    .line 1084
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->create_hola_id()I

    move-result v0

    if-gez v0, :cond_1

    .line 1085
    const-string v0, "create_hola_id_err"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    :cond_1
    invoke-virtual {p0}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1088
    iget-object v2, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v3, Lio/topvpn/vpn_api/conf;->APKID:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v2, v3, v1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1089
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    invoke-virtual {v2, v1}, Lio/topvpn/vpn_api/util;->set_apkid(Ljava/lang/String;)I

    .line 1091
    invoke-static {v0}, Lio/topvpn/vpn_api/auth;->get_instance(Landroid/content/Context;)Lio/topvpn/vpn_api/auth;

    .line 1092
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->NON_FIRST_RUN:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1094
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->NON_FIRST_RUN:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1, v4}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 1095
    const-string v0, "first_run"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    :cond_2
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->setup_builtin_lib()V

    .line 1098
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->install_check()I

    move-result v0

    if-nez v0, :cond_3

    .line 1099
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->hola_svc_start()V

    .line 1100
    :cond_3
    invoke-direct {p0, p0}, Lio/topvpn/vpn_api/svc;->update_vpn_api_svc(Lio/topvpn/vpn_api/svc;)V

    .line 1101
    const-string v0, "phone"

    .line 1102
    invoke-virtual {p0, v0}, Lio/topvpn/vpn_api/svc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1103
    new-instance v1, Lio/topvpn/vpn_api/svc$11;

    invoke-direct {v1, p0}, Lio/topvpn/vpn_api/svc$11;-><init>(Lio/topvpn/vpn_api/svc;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1121
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->monitor_network()V

    .line 1122
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1123
    const-wide v2, 0x9a7ec800L

    cmp-long v2, v0, v2

    if-lez v2, :cond_4

    .line 1124
    const-string v2, "long_uptime"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 1125
    :cond_4
    const-string v0, "TopVPN"

    const-string v1, "TopVPN API svc onCreate done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 1201
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->restart()V

    .line 1202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/topvpn/vpn_api/svc;->m_destroyed:Z

    .line 1204
    :try_start_0
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->log_3g_usage(Landroid/content/Context;)V

    .line 1205
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->log_mobile_usage(Landroid/content/Context;)V

    .line 1206
    const/4 v0, 0x5

    const-string v1, "destroying"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1207
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->STOPPING:Lio/topvpn/vpn_api/fsm$state;

    sget-object v2, Lio/topvpn/vpn_api/svc$svc_fsm;->STARTED:Lio/topvpn/vpn_api/fsm$state;

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->set_state_if(Lio/topvpn/vpn_api/fsm$state;Lio/topvpn/vpn_api/fsm$state;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1209
    :try_start_1
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    sget-object v1, Lio/topvpn/vpn_api/svc$svc_fsm;->IDLE:Lio/topvpn/vpn_api/fsm$state;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/svc$svc_fsm;->wait_for(Lio/topvpn/vpn_api/fsm$state;I)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1213
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->ipc_uninit()V

    .line 1214
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_fsm:Lio/topvpn/vpn_api/svc$svc_fsm;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/svc$svc_fsm;->quit()V

    .line 1215
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_conf_listener:Lio/topvpn/vpn_api/conf$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->unregister_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1216
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_conf:Lio/topvpn/vpn_api/conf;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/conf;->detach()V

    .line 1217
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_state_listener:Lio/topvpn/vpn_api/state$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/state;->unregister_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1218
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_state:Lio/topvpn/vpn_api/state;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/state;->detach()V

    .line 1219
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_ram_listener:Lio/topvpn/vpn_api/ram$listener;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/ram;->unregister_listener(Lio/topvpn/vpn_api/set$listener;)V

    .line 1220
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_ram:Lio/topvpn/vpn_api/ram;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/ram;->detach()V

    .line 1221
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_msgr:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/be;->unregister_listener(Landroid/os/Messenger;)V

    .line 1222
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1224
    :try_start_3
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be_mon_thread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1226
    :goto_1
    :try_start_4
    iget-object v0, p0, Lio/topvpn/vpn_api/svc;->m_be:Lio/topvpn/vpn_api/be;

    invoke-virtual {v0}, Lio/topvpn/vpn_api/be;->quit()V

    .line 1227
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->terminate_bcast_recv()V

    .line 1228
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_uninit()V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1230
    :goto_2
    const-string v0, "destroyed"

    invoke-direct {p0, v3, v0}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I

    .line 1231
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1232
    return-void

    .line 1210
    :catch_0
    move-exception v0

    .line 1211
    const/4 v0, 0x3

    :try_start_5
    const-string v1, "failed to wait for IDLE state while destroying"

    invoke-direct {p0, v0, v1}, Lio/topvpn/vpn_api/svc;->zerr(ILjava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1229
    :catch_1
    move-exception v0

    const-string v0, "on_destroy_null"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1225
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .prologue
    .line 1237
    const/4 v0, 0x1

    return v0
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1251
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc;->restart()V

    .line 1252
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->log_3g_usage(Landroid/content/Context;)V

    .line 1253
    invoke-static {p0}, Lio/topvpn/vpn_api/util;->log_mobile_usage(Landroid/content/Context;)V

    .line 1254
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 1255
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 1304
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
