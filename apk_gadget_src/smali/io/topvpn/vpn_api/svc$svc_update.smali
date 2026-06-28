.class Lio/topvpn/vpn_api/svc$svc_update;
.super Ljava/lang/Object;
.source "svc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/topvpn/vpn_api/svc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "svc_update"
.end annotation


# static fields
.field private static final STEP_ERR:I = 0x8

.field private static final STEP_GET_CURRENT_SVC:I = 0x2

.field private static final STEP_GET_NEW_SVC:I = 0x4

.field private static final STEP_GET_NEW_SVC_SHA1:I = 0x3

.field private static final STEP_GET_SETUP_JSON:I = 0x1

.field private static final STEP_RUN_SVC:I = 0x7

.field private static final STEP_START:I = 0x0

.field private static final STEP_UPDATE_SVC:I = 0x6

.field private static final STEP_VERIFY_SVC:I = 0x5


# instance fields
.field private m_apk_link:Ljava/lang/String;

.field private m_cdn_last:I

.field private m_cdn_list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_force:Z

.field private m_force_apk:Z

.field private m_step:I

.field private m_svc:Lio/topvpn/vpn_api/svc;

.field private m_svc_curr_ver:Ljava/lang/String;

.field private m_svc_file:Ljava/lang/String;

.field private m_svc_path:Ljava/lang/String;

.field private m_svc_sha1:Ljava/lang/String;

.field private m_svc_ver:Ljava/lang/String;

.field private m_use_apk:Z

.field private m_use_zip:Z

.field private m_wget_file:Ljava/lang/String;

.field private m_wget_path:Ljava/lang/String;

.field final synthetic this$0:Lio/topvpn/vpn_api/svc;


# direct methods
.method public constructor <init>(Lio/topvpn/vpn_api/svc;Lio/topvpn/vpn_api/svc;)V
    .locals 1

    .prologue
    .line 292
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p2, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc:Lio/topvpn/vpn_api/svc;

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_use_zip:Z

    .line 295
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    .line 296
    return-void
.end method

.method static synthetic access$2300(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_sha1:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_sha1:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2402(Lio/topvpn/vpn_api/svc$svc_update;I)I
    .locals 0

    .prologue
    .line 264
    iput p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_last:I

    return p1
.end method

.method static synthetic access$2500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_list:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2502(Lio/topvpn/vpn_api/svc$svc_update;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_list:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2600(Lio/topvpn/vpn_api/svc$svc_update;I)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    return-void
.end method

.method static synthetic access$2700(Lio/topvpn/vpn_api/svc$svc_update;I)I
    .locals 1

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/svc$svc_update;->get_next_cdn(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lio/topvpn/vpn_api/svc$svc_update;I)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/svc$svc_update;->get_sha1(I)V

    return-void
.end method

.method static synthetic access$2900(Lio/topvpn/vpn_api/svc$svc_update;I)V
    .locals 0

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lio/topvpn/vpn_api/svc$svc_update;->get_svc_attempt(I)V

    return-void
.end method

.method static synthetic access$3000(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_wget_path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_wget_path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lio/topvpn/vpn_api/svc$svc_update;)Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_use_zip:Z

    return v0
.end method

.method static synthetic access$3102(Lio/topvpn/vpn_api/svc$svc_update;Z)Z
    .locals 0

    .prologue
    .line 264
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_use_zip:Z

    return p1
.end method

.method static synthetic access$3300(Lio/topvpn/vpn_api/svc$svc_update;)Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_use_apk:Z

    return v0
.end method

.method static synthetic access$3302(Lio/topvpn/vpn_api/svc$svc_update;Z)Z
    .locals 0

    .prologue
    .line 264
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_use_apk:Z

    return p1
.end method

.method static synthetic access$3400(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_wget_file:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3402(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_wget_file:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3500(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_file:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_file:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3600(Lio/topvpn/vpn_api/svc$svc_update;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_path:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3602(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_path:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3702(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_apk_link:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lio/topvpn/vpn_api/svc$svc_update;)Z
    .locals 1

    .prologue
    .line 264
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_force_apk:Z

    return v0
.end method

.method static synthetic access$3802(Lio/topvpn/vpn_api/svc$svc_update;Z)Z
    .locals 0

    .prologue
    .line 264
    iput-boolean p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_force_apk:Z

    return p1
.end method

.method static synthetic access$3900(Lio/topvpn/vpn_api/svc$svc_update;)Lio/topvpn/vpn_api/svc;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc:Lio/topvpn/vpn_api/svc;

    return-object v0
.end method

.method static synthetic access$4002(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_ver:Ljava/lang/String;

    return-object p1
.end method

.method private get_next_cdn(I)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 299
    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 300
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v1, 0x3

    const-string v2, "no more cdn\'s to check"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    move-result v0

    .line 306
    :goto_0
    return v0

    .line 301
    :cond_0
    iget v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_last:I

    if-ne p1, v1, :cond_1

    iget v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_last:I

    if-lez v1, :cond_1

    .line 303
    iput v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_last:I

    goto :goto_0

    .line 306
    :cond_1
    add-int/lit8 v0, p1, 0x1

    goto :goto_0
.end method

.method private get_setup_json()V
    .locals 5

    .prologue
    .line 465
    new-instance v1, Lio/topvpn/vpn_api/svc$svc_update$3;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://clientsdk.luminati.io/setup_android.json?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_use_zip:Z

    if-eqz v0, :cond_0

    const-string v0, "zip=1"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&apkid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc:Lio/topvpn/vpn_api/svc;

    .line 467
    invoke-virtual {v2}, Lio/topvpn/vpn_api/svc;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lio/topvpn/vpn_api/wget$option;

    const/4 v3, 0x0

    const/16 v4, 0xa

    .line 468
    invoke-static {v4}, Lio/topvpn/vpn_api/wget;->attempts(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x6

    .line 469
    invoke-static {v4}, Lio/topvpn/vpn_api/wget;->proxy_agent_retry(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, p0, v0, v2}, Lio/topvpn/vpn_api/svc$svc_update$3;-><init>(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;)V

    .line 526
    return-void

    .line 465
    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private get_sha1(I)V
    .locals 5

    .prologue
    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_sha1:Ljava/lang/String;

    .line 311
    new-instance v1, Lio/topvpn/vpn_api/svc$svc_update$1;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_file:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".sha1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Lio/topvpn/vpn_api/wget$option;

    const/4 v3, 0x0

    const/16 v4, 0xa

    .line 312
    invoke-static {v4}, Lio/topvpn/vpn_api/wget;->attempts(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v1, p0, v0, v2, p1}, Lio/topvpn/vpn_api/svc$svc_update$1;-><init>(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;I)V

    .line 342
    return-void
.end method

.method private get_svc()V
    .locals 5

    .prologue
    .line 421
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc;->access$3200(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 424
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 425
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "creating m_confdir dirs "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 427
    :cond_0
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_force:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_path:Ljava/lang/String;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 428
    :cond_1
    iget v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_last:I

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/svc$svc_update;->get_svc_attempt(I)V

    .line 431
    :goto_0
    return-void

    .line 430
    :cond_2
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    goto :goto_0
.end method

.method private get_svc_attempt(I)V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x0

    .line 372
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_use_apk:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_apk_link:Ljava/lang/String;

    .line 374
    :goto_0
    new-instance v2, Lio/topvpn/vpn_api/svc$svc_update$2;

    const/4 v1, 0x6

    new-array v3, v1, [Lio/topvpn/vpn_api/wget$option;

    iget-boolean v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_use_apk:Z

    if-eqz v1, :cond_1

    const-string v1, "clientsdk.luminati.io"

    :goto_1
    const/16 v4, 0x50

    .line 375
    invoke-static {v1, v4}, Lio/topvpn/vpn_api/wget;->proxy(Ljava/lang/String;I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v1

    aput-object v1, v3, v5

    const/4 v1, 0x1

    iget-object v4, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_wget_path:Ljava/lang/String;

    .line 376
    invoke-static {v4}, Lio/topvpn/vpn_api/wget;->filename(Ljava/lang/String;)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-static {v6}, Lio/topvpn/vpn_api/wget;->attempts(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x3

    const v4, 0x493e0

    .line 377
    invoke-static {v4}, Lio/topvpn/vpn_api/wget;->timeout_ms(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x4

    invoke-static {v5}, Lio/topvpn/vpn_api/wget;->hard_timeout_ms(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v4

    aput-object v4, v3, v1

    .line 378
    invoke-static {v5}, Lio/topvpn/vpn_api/wget;->soft_timeout_ms(I)Lio/topvpn/vpn_api/wget$option;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-direct {v2, p0, v0, v3, p1}, Lio/topvpn/vpn_api/svc$svc_update$2;-><init>(Lio/topvpn/vpn_api/svc$svc_update;Ljava/lang/String;[Lio/topvpn/vpn_api/wget$option;I)V

    .line 418
    return-void

    .line 372
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_list:Ljava/util/ArrayList;

    .line 373
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_wget_file:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 374
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private run(I)V
    .locals 6

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    const/4 v3, 0x4

    .line 529
    iput p1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_step:I

    .line 530
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "svc_update running step "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_step:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 531
    iget v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_step:I

    packed-switch v0, :pswitch_data_0

    .line 582
    :goto_0
    return-void

    .line 534
    :pswitch_0
    invoke-direct {p0, v4}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    goto :goto_0

    .line 537
    :pswitch_1
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc$svc_update;->get_setup_json()V

    goto :goto_0

    .line 540
    :pswitch_2
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$3200(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->get_current_ver(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_curr_ver:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_curr_ver:Ljava/lang/String;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_ver:Ljava/lang/String;

    .line 541
    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->version_cmp(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2

    .line 543
    :cond_0
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_use_apk:Z

    if-eqz v0, :cond_1

    .line 544
    invoke-direct {p0, v3}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    goto :goto_0

    .line 546
    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    goto :goto_0

    .line 549
    :cond_2
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    goto :goto_0

    .line 552
    :pswitch_3
    iget v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_cdn_last:I

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/svc$svc_update;->get_sha1(I)V

    goto :goto_0

    .line 555
    :pswitch_4
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc$svc_update;->get_svc()V

    goto :goto_0

    .line 558
    :pswitch_5
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc$svc_update;->verify_sha1()Z

    move-result v0

    .line 559
    if-eqz v0, :cond_3

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_force:Z

    .line 562
    invoke-direct {p0, v5}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    goto :goto_0

    .line 564
    :cond_3
    iget-boolean v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_force:Z

    if-nez v0, :cond_4

    .line 566
    iput-boolean v4, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_force:Z

    .line 567
    invoke-direct {p0, v3}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    goto :goto_0

    .line 570
    :cond_4
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to verify svc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    goto :goto_0

    .line 573
    :pswitch_6
    invoke-direct {p0}, Lio/topvpn/vpn_api/svc$svc_update;->update_svc()V

    goto :goto_0

    .line 576
    :pswitch_7
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1600(Lio/topvpn/vpn_api/svc;)V

    goto :goto_0

    .line 579
    :pswitch_8
    const-string v0, "svc_update_failed"

    const-string v1, ""

    invoke-static {v0, v1}, Lio/topvpn/vpn_api/util;->perr(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private update_svc()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    .line 434
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v0

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_path:Ljava/lang/String;

    const/16 v2, 0x1ff

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/util;->chmod(Ljava/lang/String;I)I

    move-result v0

    .line 435
    if-nez v0, :cond_0

    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_path:Ljava/lang/String;

    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_is_exec(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 437
    :cond_0
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed chmod on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 438
    invoke-direct {p0, v5}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 441
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v1}, Lio/topvpn/vpn_api/svc;->access$3200(Lio/topvpn/vpn_api/svc;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/libhola_svc.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 442
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v1

    invoke-virtual {v1, v0}, Lio/topvpn/vpn_api/util;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 444
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_rm(Ljava/lang/String;)Z

    .line 445
    :cond_3
    invoke-static {}, Lio/topvpn/vpn_api/util;->util_get()Lio/topvpn/vpn_api/util;

    move-result-object v2

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_path:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lio/topvpn/vpn_api/util;->symlink(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    .line 446
    invoke-static {v0}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 448
    :cond_4
    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed creating symlink "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v4, v0}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 449
    invoke-direct {p0, v5}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    goto :goto_0

    .line 452
    :cond_5
    if-eqz v1, :cond_6

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->file_exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 453
    invoke-static {v1}, Lio/topvpn/vpn_api/util;->file_rm(Ljava/lang/String;)Z

    .line 454
    :cond_6
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 456
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->HAVE_SVC:Lio/topvpn/vpn_api/conf$key;

    invoke-virtual {v0, v1}, Lio/topvpn/vpn_api/conf;->get_bool(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 458
    iget-object v0, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    invoke-static {v0}, Lio/topvpn/vpn_api/svc;->access$1000(Lio/topvpn/vpn_api/svc;)Lio/topvpn/vpn_api/conf;

    move-result-object v0

    sget-object v1, Lio/topvpn/vpn_api/conf;->HAVE_SVC:Lio/topvpn/vpn_api/conf$key;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lio/topvpn/vpn_api/conf;->set(Ljava/lang/Object;Z)V

    .line 459
    const/4 v0, 0x5

    const-string v1, "have_svc"

    const-string v2, "update_svc"

    invoke-static {v0, v1, v2}, Lio/topvpn/vpn_api/util;->perr(ILjava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_7
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lio/topvpn/vpn_api/svc$svc_update;->run(I)V

    goto/16 :goto_0
.end method

.method private verify_sha1()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 345
    iget-boolean v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_use_apk:Z

    if-eqz v1, :cond_1

    .line 346
    const/4 v0, 0x1

    .line 368
    :cond_0
    :goto_0
    return v0

    .line 347
    :cond_1
    const/4 v3, 0x0

    .line 350
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v1, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_path:Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :try_start_1
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 352
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 354
    :goto_1
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 355
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 360
    :catch_0
    move-exception v1

    .line 361
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 364
    if-eqz v2, :cond_0

    .line 365
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 366
    :catch_1
    move-exception v1

    goto :goto_0

    .line 356
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lio/topvpn/vpn_api/util;->bytes2hex([B)Ljava/lang/String;

    move-result-object v1

    .line 357
    const-string v3, ""

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 358
    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update;->this$0:Lio/topvpn/vpn_api/svc;

    const/4 v4, 0x6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "verify sha1 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lio/topvpn/vpn_api/svc;->access$100(Lio/topvpn/vpn_api/svc;ILjava/lang/String;)I

    .line 359
    iget-object v3, p0, Lio/topvpn/vpn_api/svc$svc_update;->m_svc_sha1:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    .line 364
    if-eqz v2, :cond_0

    .line 365
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 366
    :catch_2
    move-exception v1

    goto :goto_0

    .line 363
    :catchall_0
    move-exception v0

    move-object v2, v3

    .line 364
    :goto_3
    if-eqz v2, :cond_3

    .line 365
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 366
    :cond_3
    :goto_4
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    .line 363
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 360
    :catch_4
    move-exception v1

    move-object v2, v3

    goto :goto_2
.end method
