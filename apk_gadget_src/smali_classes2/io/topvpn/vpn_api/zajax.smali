.class Lio/topvpn/vpn_api/zajax;
.super Ljava/lang/Object;
.source "zajax.java"


# static fields
.field public static m_ccgi:[Ljava/lang/String;

.field private static m_ccgi_i:I

.field private static m_ccgi_rotated:[Ljava/lang/String;

.field private static m_zagent_i:I

.field public static m_zagents:[Ljava/lang/String;

.field private static m_zagents_rotated:[Ljava/lang/String;


# instance fields
.field private m_ajax_done:I

.field private m_api:Ljava/lang/String;

.field private m_aq:Lcom/androidquery/AQuery;

.field private m_conf:Lio/topvpn/vpn_api/conf;

.field private m_country:Ljava/lang/String;

.field private m_done:Z

.field private m_first_call_proxy:Z

.field private m_host:Ljava/lang/String;

.field private final m_lock:Ljava/lang/Object;

.field private m_need_country:Z

.field private m_prot:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "54.243.159.121"

    aput-object v1, v0, v2

    const-string v1, "54.197.246.90"

    aput-object v1, v0, v3

    sput-object v0, Lio/topvpn/vpn_api/zajax;->m_ccgi:[Ljava/lang/String;

    .line 24
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "192.81.209.23"

    aput-object v1, v0, v2

    const-string v1, "198.211.96.91"

    aput-object v1, v0, v3

    const-string v1, "162.243.24.21"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "104.236.38.205"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "66.85.186.228"

    aput-object v2, v0, v1

    sput-object v0, Lio/topvpn/vpn_api/zajax;->m_zagents:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/androidquery/AQuery;Ljava/lang/String;Ljava/lang/String;Lio/topvpn/vpn_api/conf;Z)V
    .locals 7

    .prologue
    .line 82
    const-string v2, "https://"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lio/topvpn/vpn_api/zajax;-><init>(Lcom/androidquery/AQuery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/topvpn/vpn_api/conf;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/androidquery/AQuery;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/topvpn/vpn_api/conf;Z)V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_lock:Ljava/lang/Object;

    .line 51
    sget-object v0, Lio/topvpn/vpn_api/zajax;->m_ccgi_rotated:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 53
    const-class v1, Lio/topvpn/vpn_api/zajax;

    monitor-enter v1

    .line 54
    :try_start_0
    sget-object v0, Lio/topvpn/vpn_api/zajax;->m_ccgi_rotated:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0}, Lio/topvpn/vpn_api/zajax;->rotate_arrays()V

    .line 56
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :cond_1
    iput-object p2, p0, Lio/topvpn/vpn_api/zajax;->m_prot:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lio/topvpn/vpn_api/zajax;->m_host:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lio/topvpn/vpn_api/zajax;->m_api:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lio/topvpn/vpn_api/zajax;->m_aq:Lcom/androidquery/AQuery;

    .line 62
    iput-object p5, p0, Lio/topvpn/vpn_api/zajax;->m_conf:Lio/topvpn/vpn_api/conf;

    .line 63
    iput-boolean p6, p0, Lio/topvpn/vpn_api/zajax;->m_need_country:Z

    .line 64
    return-void

    .line 56
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$000(Lio/topvpn/vpn_api/zajax;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lio/topvpn/vpn_api/zajax;->m_first_call_proxy:Z

    return v0
.end method

.method static synthetic access$100(Lio/topvpn/vpn_api/zajax;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lio/topvpn/vpn_api/zajax;->inc_zagent_i()V

    return-void
.end method

.method static synthetic access$1000(Lio/topvpn/vpn_api/zajax;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lio/topvpn/vpn_api/zajax;->cache_addr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-static {p0, p1}, Lio/topvpn/vpn_api/zajax;->zerr(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_api:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lio/topvpn/vpn_api/zajax;)Lcom/androidquery/AQuery;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_aq:Lcom/androidquery/AQuery;

    return-object v0
.end method

.method static synthetic access$1400(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_prot:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_host:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lio/topvpn/vpn_api/zajax;)Lio/topvpn/vpn_api/conf;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_conf:Lio/topvpn/vpn_api/conf;

    return-object v0
.end method

.method static synthetic access$1700(Lio/topvpn/vpn_api/zajax;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lio/topvpn/vpn_api/zajax;->m_need_country:Z

    return v0
.end method

.method static synthetic access$1800(Lio/topvpn/vpn_api/zajax;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_country:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1802(Lio/topvpn/vpn_api/zajax;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lio/topvpn/vpn_api/zajax;->m_country:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lio/topvpn/vpn_api/zajax;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lio/topvpn/vpn_api/zajax;->inc_ips_i()V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lio/topvpn/vpn_api/zajax;->m_ccgi_rotated:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lio/topvpn/vpn_api/zajax;->m_ccgi_i:I

    return v0
.end method

.method static synthetic access$500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lio/topvpn/vpn_api/zajax;->m_zagents_rotated:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lio/topvpn/vpn_api/zajax;->m_zagent_i:I

    return v0
.end method

.method static synthetic access$700(Lio/topvpn/vpn_api/zajax;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lio/topvpn/vpn_api/zajax;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lio/topvpn/vpn_api/zajax;->m_ajax_done:I

    return v0
.end method

.method static synthetic access$808(Lio/topvpn/vpn_api/zajax;)I
    .locals 2

    .prologue
    .line 16
    iget v0, p0, Lio/topvpn/vpn_api/zajax;->m_ajax_done:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/topvpn/vpn_api/zajax;->m_ajax_done:I

    return v0
.end method

.method static synthetic access$900(Lio/topvpn/vpn_api/zajax;)Z
    .locals 1

    .prologue
    .line 16
    iget-boolean v0, p0, Lio/topvpn/vpn_api/zajax;->m_done:Z

    return v0
.end method

.method static synthetic access$902(Lio/topvpn/vpn_api/zajax;Z)Z
    .locals 0

    .prologue
    .line 16
    iput-boolean p1, p0, Lio/topvpn/vpn_api/zajax;->m_done:Z

    return p1
.end method

.method private cache_addr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 260
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_PROXY_HOST_CCGI:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1, p3}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_WORKING_PROT_CCGI:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1, p1}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_WORKING_HOST_CCGI:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1, p2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    const-string v0, "ajax_host_changed"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"protocol\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \"host\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", \"proxy\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    return-void
.end method

.method private inc_ips_i()V
    .locals 2

    .prologue
    .line 257
    sget v0, Lio/topvpn/vpn_api/zajax;->m_ccgi_i:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lio/topvpn/vpn_api/zajax;->m_ccgi_rotated:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lio/topvpn/vpn_api/zajax;->m_ccgi_i:I

    return-void
.end method

.method private inc_zagent_i()V
    .locals 2

    .prologue
    .line 254
    sget v0, Lio/topvpn/vpn_api/zajax;->m_zagent_i:I

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lio/topvpn/vpn_api/zajax;->m_zagents_rotated:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lio/topvpn/vpn_api/zajax;->m_zagent_i:I

    return-void
.end method

.method private rotate_array([Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    array-length v1, p1

    .line 73
    new-array v2, v1, [Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 76
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 77
    add-int v4, v0, v3

    rem-int/2addr v4, v1

    aget-object v4, p1, v4

    aput-object v4, v2, v0

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-object v2
.end method

.method private rotate_arrays()V
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lio/topvpn/vpn_api/zajax;->m_ccgi:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/zajax;->rotate_array([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/zajax;->m_ccgi_rotated:[Ljava/lang/String;

    .line 68
    sget-object v0, Lio/topvpn/vpn_api/zajax;->m_zagents:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/zajax;->rotate_array([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/topvpn/vpn_api/zajax;->m_zagents_rotated:[Ljava/lang/String;

    .line 69
    return-void
.end method

.method private static zerr(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 267
    const-string v0, "zajax"

    invoke-static {v0, p0, p1}, Lio/topvpn/vpn_api/util;->_zerr(Ljava/lang/String;ILjava/lang/String;)I

    return-void
.end method


# virtual methods
.method public ajax(Ljava/util/Map;Lcom/androidquery/callback/AjaxCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/androidquery/callback/AjaxCallback",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    new-instance v2, Lio/topvpn/vpn_api/zajax$1;

    invoke-direct {v2, p0, p2}, Lio/topvpn/vpn_api/zajax$1;-><init>(Lio/topvpn/vpn_api/zajax;Lcom/androidquery/callback/AjaxCallback;)V

    .line 228
    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    .line 229
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v1, Lio/topvpn/vpn_api/conf;->LAST_WORKING_HOST_CCGI:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 230
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v3, Lio/topvpn/vpn_api/conf;->LAST_WORKING_PROT_CCGI:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v3}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 231
    iget-object v3, p0, Lio/topvpn/vpn_api/zajax;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v4, Lio/topvpn/vpn_api/conf;->LAST_PROXY_HOST_CCGI:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 232
    const/4 v4, 0x0

    iput-boolean v4, p0, Lio/topvpn/vpn_api/zajax;->m_first_call_proxy:Z

    .line 233
    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 235
    :cond_0
    iget-object v1, p0, Lio/topvpn/vpn_api/zajax;->m_host:Ljava/lang/String;

    .line 236
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_prot:Ljava/lang/String;

    .line 249
    :cond_1
    :goto_0
    iget-object v3, p0, Lio/topvpn/vpn_api/zajax;->m_aq:Lcom/androidquery/AQuery;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/zajax;->m_api:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lorg/json/JSONObject;

    invoke-virtual {v3, v0, p1, v1, v2}, Lcom/androidquery/AQuery;->ajax(Ljava/lang/String;Ljava/util/Map;Ljava/lang/Class;Lcom/androidquery/callback/AjaxCallback;)Lcom/androidquery/AbstractAQuery;

    .line 250
    iget-object v0, p0, Lio/topvpn/vpn_api/zajax;->m_aq:Lcom/androidquery/AQuery;

    const-string v1, ""

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/androidquery/AQuery;->proxy(Ljava/lang/String;I)Lcom/androidquery/AbstractAQuery;

    .line 251
    return-void

    .line 238
    :cond_2
    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    iget-object v4, p0, Lio/topvpn/vpn_api/zajax;->m_aq:Lcom/androidquery/AQuery;

    const/16 v5, 0x56ce

    invoke-virtual {v4, v3, v5}, Lcom/androidquery/AQuery;->proxy(Ljava/lang/String;I)Lcom/androidquery/AbstractAQuery;

    .line 241
    iget-object v3, p0, Lio/topvpn/vpn_api/zajax;->m_api:Ljava/lang/String;

    const-string v4, "country="

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lio/topvpn/vpn_api/zajax;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v4, Lio/topvpn/vpn_api/conf;->COUNTRY_LOCAL_MYIP:Lio/topvpn/vpn_api/conf$key;

    .line 242
    invoke-virtual {v3, v4}, Lio/topvpn/vpn_api/conf;->exist(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lio/topvpn/vpn_api/zajax;->m_api:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "country"

    iget-object v5, p0, Lio/topvpn/vpn_api/zajax;->m_conf:Lio/topvpn/vpn_api/conf;

    sget-object v6, Lio/topvpn/vpn_api/conf;->COUNTRY_LOCAL_MYIP:Lio/topvpn/vpn_api/conf$key;

    .line 245
    invoke-virtual {v5, v6}, Lio/topvpn/vpn_api/conf;->get_str(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 244
    invoke-static {v4, v5}, Lio/topvpn/vpn_api/util;->str2query(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lio/topvpn/vpn_api/zajax;->m_api:Ljava/lang/String;

    .line 247
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, p0, Lio/topvpn/vpn_api/zajax;->m_first_call_proxy:Z

    goto :goto_0
.end method
