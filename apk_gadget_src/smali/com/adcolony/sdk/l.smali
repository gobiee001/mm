.class Lcom/adcolony/sdk/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/p$a;


# static fields
.field private static volatile J:Ljava/lang/String;

.field static f:Ljava/lang/String;


# instance fields
.field private A:Lcom/adcolony/sdk/af;

.field private B:Lorg/json/JSONObject;

.field private C:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyZone;",
            ">;"
        }
    .end annotation
.end field

.field private D:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/bb;",
            ">;"
        }
    .end annotation
.end field

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:I

.field private W:I

.field private final X:I

.field private Y:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private Z:Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

.field c:Lcom/adcolony/sdk/n;

.field e:Lcom/adcolony/sdk/aj;

.field g:Z

.field private h:Lcom/adcolony/sdk/m;

.field private i:Lcom/adcolony/sdk/ag;

.field private j:Lcom/adcolony/sdk/q;

.field private k:Lcom/adcolony/sdk/ao;

.field private l:Lcom/adcolony/sdk/d;

.field private m:Lcom/adcolony/sdk/o;

.field private n:Lcom/adcolony/sdk/t;

.field private o:Lcom/adcolony/sdk/at;

.field private p:Lcom/adcolony/sdk/ar;

.field private q:Lcom/adcolony/sdk/ADCCrashReportManager;

.field private r:Lcom/adcolony/sdk/ac;

.field private s:Lcom/adcolony/sdk/c;

.field private t:Lcom/adcolony/sdk/bc;

.field private u:Lcom/adcolony/sdk/AdColonyInterstitial;

.field private v:Lcom/adcolony/sdk/AdColonyRewardListener;

.field private w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyCustomMessageListener;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/adcolony/sdk/AdColonyAppOptions;

.field private y:Lcom/adcolony/sdk/af;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-string v0, "https://adc3-launch.adcolony.com/v4/launch"

    sput-object v0, Lcom/adcolony/sdk/l;->f:Ljava/lang/String;

    .line 76
    const-string v0, ""

    sput-object v0, Lcom/adcolony/sdk/l;->J:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->w:Ljava/util/HashMap;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->C:Ljava/util/HashMap;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->D:Ljava/util/HashMap;

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/adcolony/sdk/l;->I:Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/adcolony/sdk/l;->W:I

    .line 93
    const/16 v0, 0x78

    iput v0, p0, Lcom/adcolony/sdk/l;->X:I

    return-void
.end method

.method static C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1268
    sget-object v0, Lcom/adcolony/sdk/l;->J:Ljava/lang/String;

    return-object v0
.end method

.method private E()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 300
    iget-boolean v1, p0, Lcom/adcolony/sdk/l;->M:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v1}, Lcom/adcolony/sdk/n;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "arm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/adcolony/sdk/ADCNative;->nativeNeonSupported()Z

    move-result v1

    if-nez v1, :cond_0

    .line 301
    sget-object v1, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v2, "ARM architechture without NEON support. Disabling AdColony."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 302
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/l;->a(Z)V

    .line 303
    const/4 v0, 0x0

    .line 305
    :cond_0
    return v0
.end method

.method private F()V
    .locals 2

    .prologue
    .line 368
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adcolony/sdk/l$5;

    invoke-direct {v1, p0}, Lcom/adcolony/sdk/l$5;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 378
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 379
    return-void
.end method

.method private G()V
    .locals 3

    .prologue
    const/16 v0, 0x78

    .line 527
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/l;->l()Lcom/adcolony/sdk/ao;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/ao;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 528
    iget v1, p0, Lcom/adcolony/sdk/l;->V:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/adcolony/sdk/l;->V:I

    .line 529
    iget v1, p0, Lcom/adcolony/sdk/l;->W:I

    iget v2, p0, Lcom/adcolony/sdk/l;->V:I

    mul-int/2addr v1, v2

    if-le v1, v0, :cond_0

    :goto_0
    iput v0, p0, Lcom/adcolony/sdk/l;->W:I

    .line 532
    new-instance v0, Lcom/adcolony/sdk/l$8;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/l$8;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 551
    :goto_1
    return-void

    .line 529
    :cond_0
    iget v0, p0, Lcom/adcolony/sdk/l;->W:I

    iget v1, p0, Lcom/adcolony/sdk/l;->V:I

    mul-int/2addr v0, v1

    goto :goto_0

    .line 549
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/aa;->f:Lcom/adcolony/sdk/aa;

    const-string v1, "Max launch server download attempts hit, or AdColony is no longer active."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    goto :goto_1
.end method

.method private H()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 625
    iget-boolean v1, p0, Lcom/adcolony/sdk/l;->O:Z

    if-nez v1, :cond_0

    .line 627
    :try_start_0
    const-string v1, "js"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 628
    const-string v1, "adcolony"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :cond_0
    iput-boolean v0, p0, Lcom/adcolony/sdk/l;->O:Z

    .line 637
    :goto_0
    return v0

    .line 630
    :catch_0
    move-exception v1

    .line 631
    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/l;->a(Z)V

    .line 632
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v1, "Expecting libadcolony.so in libs folder but it was not found. Disabling AdColony until next launch."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 633
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private I()Z
    .locals 1

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    const/4 v0, 0x0

    .line 648
    :goto_0
    return v0

    .line 644
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->q:Lcom/adcolony/sdk/ADCCrashReportManager;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ADCCrashReportManager;->a()V

    .line 645
    iget-object v0, p0, Lcom/adcolony/sdk/l;->q:Lcom/adcolony/sdk/ADCCrashReportManager;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ADCCrashReportManager;->b()V

    .line 646
    iget-object v0, p0, Lcom/adcolony/sdk/l;->i:Lcom/adcolony/sdk/ag;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ag;->a()V

    .line 647
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->E()Z

    .line 648
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private J()V
    .locals 2

    .prologue
    .line 915
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adcolony/sdk/l;->Y:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-nez v0, :cond_0

    .line 916
    new-instance v0, Lcom/adcolony/sdk/l$11;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/l$11;-><init>(Lcom/adcolony/sdk/l;)V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->Y:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 999
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/l;->Y:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 1001
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/l;Lcom/adcolony/sdk/af;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/l;->f(Lcom/adcolony/sdk/af;)V

    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/l;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->T:Z

    return v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/l;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/adcolony/sdk/l;->N:Z

    return p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/l;ZZ)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/adcolony/sdk/l;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method private a(Lorg/json/JSONObject;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 388
    iget-boolean v1, p0, Lcom/adcolony/sdk/l;->P:Z

    if-nez v1, :cond_0

    .line 389
    sget-object v1, Lcom/adcolony/sdk/aa;->f:Lcom/adcolony/sdk/aa;

    const-string v2, "Non-standard launch. Downloading new controller."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 398
    :goto_0
    return v0

    .line 393
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/l;->B:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adcolony/sdk/l;->B:Lorg/json/JSONObject;

    const-string v2, "controller"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "sha1"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "controller"

    invoke-static {p1, v2}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "sha1"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 394
    const/4 v0, 0x0

    goto :goto_0

    .line 397
    :cond_1
    sget-object v1, Lcom/adcolony/sdk/aa;->f:Lcom/adcolony/sdk/aa;

    const-string v2, "Controller sha1 does not match, downloading new controller."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    goto :goto_0
.end method

.method private a(ZZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 331
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 364
    :cond_0
    :goto_0
    return v0

    .line 343
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v3}, Lcom/adcolony/sdk/ar;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/../lib/libImmEndpointWarpJ.so"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 344
    iget-object v2, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    iput-boolean v1, v2, Lcom/adcolony/sdk/n;->d:Z

    .line 347
    iput-boolean p2, p0, Lcom/adcolony/sdk/l;->S:Z

    .line 350
    iput-boolean p1, p0, Lcom/adcolony/sdk/l;->P:Z

    .line 351
    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    .line 352
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->I()Z

    move-result v1

    .line 353
    if-eqz v1, :cond_0

    .line 363
    :cond_2
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->F()V

    .line 364
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/adcolony/sdk/l;Lcom/adcolony/sdk/af;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/l;->g(Lcom/adcolony/sdk/af;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 790
    sget-boolean v0, Lcom/adcolony/sdk/ADCVMModule;->a:Z

    if-nez v0, :cond_1

    .line 791
    const-string v0, "logging"

    invoke-static {p1, v0}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 792
    const-string v1, "send_level"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/adcolony/sdk/ac;->k:I

    .line 793
    const-string v1, "log_private"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/adcolony/sdk/ac;->a:Z

    .line 794
    const-string v1, "print_level"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/adcolony/sdk/ac;->i:I

    .line 796
    const-string v1, "enable_crash_reporting"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/adcolony/sdk/ADCCrashReportManager;->a:Z

    .line 797
    sget-boolean v1, Lcom/adcolony/sdk/ADCCrashReportManager;->a:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/adcolony/sdk/l;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/adcolony/sdk/l;->q:Lcom/adcolony/sdk/ADCCrashReportManager;

    invoke-virtual {v1}, Lcom/adcolony/sdk/ADCCrashReportManager;->a()V

    .line 799
    iget-object v1, p0, Lcom/adcolony/sdk/l;->q:Lcom/adcolony/sdk/ADCCrashReportManager;

    invoke-virtual {v1}, Lcom/adcolony/sdk/ADCCrashReportManager;->b()V

    .line 801
    :cond_0
    iget-object v1, p0, Lcom/adcolony/sdk/l;->r:Lcom/adcolony/sdk/ac;

    const-string v2, "modules"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->g(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/ac;->a(Lorg/json/JSONArray;)V

    .line 804
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    const-string v1, "metadata"

    invoke-static {p1, v1}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/n;->a(Lorg/json/JSONObject;)V

    .line 805
    const-string v0, "controller"

    invoke-static {p1, v0}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "version"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/l;->I:Ljava/lang/String;

    .line 806
    return-void
.end method

.method static synthetic b(Lcom/adcolony/sdk/l;)Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->U:Z

    return v0
.end method

.method static synthetic b(Lcom/adcolony/sdk/l;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/adcolony/sdk/l;->T:Z

    return p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/l;Lcom/adcolony/sdk/af;)Lcom/adcolony/sdk/af;
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/adcolony/sdk/l;->y:Lcom/adcolony/sdk/af;

    return-object p1
.end method

.method static synthetic c(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ar;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    return-object v0
.end method

.method static synthetic c(Lcom/adcolony/sdk/l;Z)Z
    .locals 0

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/adcolony/sdk/l;->L:Z

    return p1
.end method

.method private c(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 657
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/adc3/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 659
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    invoke-static {p1, v0}, Lcom/adcolony/sdk/az;->a(Ljava/lang/String;Ljava/io/File;)Z

    move-result v0

    .line 663
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Lorg/json/JSONObject;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 816
    if-nez p1, :cond_0

    .line 817
    sget-object v1, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v2, "Launch response verification failed - response is null or unknown"

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 866
    :goto_0
    return v0

    .line 822
    :cond_0
    :try_start_0
    const-string v2, "controller"

    invoke-static {p1, v2}, Lcom/adcolony/sdk/y;->f(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 823
    const-string v3, "url"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/adcolony/sdk/l;->F:Ljava/lang/String;

    .line 824
    const-string v3, "sha1"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adcolony/sdk/l;->G:Ljava/lang/String;

    .line 825
    const-string v2, "status"

    invoke-static {p1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/adcolony/sdk/l;->H:Ljava/lang/String;

    .line 826
    const-string v2, "pie"

    invoke-static {p1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/adcolony/sdk/l;->J:Ljava/lang/String;

    .line 827
    invoke-static {}, Lcom/adcolony/sdk/AdColonyEventTracker;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 828
    invoke-static {}, Lcom/adcolony/sdk/AdColonyEventTracker;->a()V

    .line 831
    :cond_1
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/l;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    :goto_1
    iget-object v2, p0, Lcom/adcolony/sdk/l;->H:Ljava/lang/String;

    const-string v3, "disable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 848
    :try_start_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v4}, Lcom/adcolony/sdk/ar;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 856
    :goto_2
    sget-object v2, Lcom/adcolony/sdk/aa;->f:Lcom/adcolony/sdk/aa;

    const-string v3, "Launch server response with disabled status. Disabling AdColony until next launch."

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 857
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/l;->a(Z)V

    goto :goto_0

    .line 833
    :catch_0
    move-exception v2

    .line 836
    :try_start_2
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v4}, Lcom/adcolony/sdk/ar;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 837
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 839
    :catch_1
    move-exception v2

    goto :goto_1

    .line 862
    :cond_2
    iget-object v2, p0, Lcom/adcolony/sdk/l;->F:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/adcolony/sdk/l;->H:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 863
    :cond_3
    sget-object v1, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v2, "Missing controller status or URL. Disabling AdColony until next launch."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 866
    goto/16 :goto_0

    .line 851
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method static synthetic d(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ag;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/l;->i:Lcom/adcolony/sdk/ag;

    return-object v0
.end method

.method static synthetic e(Lcom/adcolony/sdk/l;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/l;->D:Ljava/util/HashMap;

    return-object v0
.end method

.method private e(Z)Z
    .locals 1

    .prologue
    .line 309
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/adcolony/sdk/l;->a(ZZ)Z

    move-result v0

    return v0
.end method

.method private f(Lcom/adcolony/sdk/af;)V
    .locals 2

    .prologue
    .line 407
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/l;->a(I)Z

    .line 408
    return-void
.end method

.method static synthetic f(Lcom/adcolony/sdk/l;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->F()V

    return-void
.end method

.method static synthetic g(Lcom/adcolony/sdk/l;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/adcolony/sdk/l;->W:I

    return v0
.end method

.method private g(Lcom/adcolony/sdk/af;)V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/adcolony/sdk/l;->x:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v0, v0, Lcom/adcolony/sdk/AdColonyAppOptions;->d:Lorg/json/JSONObject;

    .line 428
    const-string v1, "app_id"

    iget-object v2, p0, Lcom/adcolony/sdk/l;->x:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v2, v2, Lcom/adcolony/sdk/AdColonyAppOptions;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 429
    const-string v1, "zone_ids"

    iget-object v2, p0, Lcom/adcolony/sdk/l;->x:Lcom/adcolony/sdk/AdColonyAppOptions;

    iget-object v2, v2, Lcom/adcolony/sdk/AdColonyAppOptions;->c:Lorg/json/JSONArray;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Z

    .line 430
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 431
    const-string v2, "options"

    invoke-static {v1, v2, v0}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 432
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 433
    return-void
.end method

.method static synthetic h(Lcom/adcolony/sdk/l;)Z
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->I()Z

    move-result v0

    return v0
.end method

.method static synthetic i(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/AdColonyRewardListener;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/l;->v:Lcom/adcolony/sdk/AdColonyRewardListener;

    return-object v0
.end method

.method static synthetic j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/l;->k:Lcom/adcolony/sdk/ao;

    return-object v0
.end method

.method static synthetic k(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/af;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/l;->y:Lcom/adcolony/sdk/af;

    return-object v0
.end method

.method static synthetic l(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/o;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/l;->m:Lcom/adcolony/sdk/o;

    return-object v0
.end method

.method static synthetic m(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/adcolony/sdk/l;->x:Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object v0
.end method


# virtual methods
.method A()Z
    .locals 1

    .prologue
    .line 1260
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->N:Z

    return v0
.end method

.method B()Z
    .locals 1

    .prologue
    .line 1264
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->O:Z

    return v0
.end method

.method D()Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;
    .locals 3

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/adcolony/sdk/l;->Z:Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    if-nez v0, :cond_0

    .line 1273
    new-instance v0, Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    const-string v1, "3.3.0"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->Z:Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->Z:Lcom/integralads/avid/library/adcolony/session/ExternalAvidAdSessionContext;

    return-object v0
.end method

.method a(Lcom/adcolony/sdk/AdColonyAppOptions;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 726
    iget-object v0, p0, Lcom/adcolony/sdk/l;->l:Lcom/adcolony/sdk/d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    monitor-enter v1

    .line 727
    :try_start_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->l:Lcom/adcolony/sdk/d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 728
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    check-cast v0, Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 730
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/AdColonyInterstitial;->a(Z)V

    .line 731
    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;->onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V

    goto :goto_0

    .line 734
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 733
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adcolony/sdk/l;->l:Lcom/adcolony/sdk/d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 734
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adcolony/sdk/l;->N:Z

    .line 740
    invoke-virtual {p0, v4}, Lcom/adcolony/sdk/l;->a(I)Z

    .line 741
    iget-object v0, p0, Lcom/adcolony/sdk/l;->C:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 742
    iput-object p1, p0, Lcom/adcolony/sdk/l;->x:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 743
    iget-object v0, p0, Lcom/adcolony/sdk/l;->i:Lcom/adcolony/sdk/ag;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ag;->a()V

    .line 744
    invoke-direct {p0, v4, v4}, Lcom/adcolony/sdk/l;->a(ZZ)Z

    .line 745
    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyAppOptions;Z)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 120
    iput-boolean p2, p0, Lcom/adcolony/sdk/l;->M:Z

    .line 121
    iput-object p1, p0, Lcom/adcolony/sdk/l;->x:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 122
    new-instance v0, Lcom/adcolony/sdk/ADCCrashReportManager;

    invoke-direct {v0}, Lcom/adcolony/sdk/ADCCrashReportManager;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->q:Lcom/adcolony/sdk/ADCCrashReportManager;

    .line 123
    new-instance v0, Lcom/adcolony/sdk/ag;

    invoke-direct {v0}, Lcom/adcolony/sdk/ag;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->i:Lcom/adcolony/sdk/ag;

    .line 124
    new-instance v0, Lcom/adcolony/sdk/m;

    invoke-direct {v0}, Lcom/adcolony/sdk/m;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->h:Lcom/adcolony/sdk/m;

    .line 125
    new-instance v0, Lcom/adcolony/sdk/q;

    invoke-direct {v0}, Lcom/adcolony/sdk/q;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->j:Lcom/adcolony/sdk/q;

    .line 126
    iget-object v0, p0, Lcom/adcolony/sdk/l;->j:Lcom/adcolony/sdk/q;

    invoke-virtual {v0}, Lcom/adcolony/sdk/q;->a()V

    .line 127
    new-instance v0, Lcom/adcolony/sdk/ao;

    invoke-direct {v0}, Lcom/adcolony/sdk/ao;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->k:Lcom/adcolony/sdk/ao;

    .line 128
    iget-object v0, p0, Lcom/adcolony/sdk/l;->k:Lcom/adcolony/sdk/ao;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ao;->a()V

    .line 129
    new-instance v0, Lcom/adcolony/sdk/d;

    invoke-direct {v0}, Lcom/adcolony/sdk/d;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->l:Lcom/adcolony/sdk/d;

    .line 130
    iget-object v0, p0, Lcom/adcolony/sdk/l;->l:Lcom/adcolony/sdk/d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->a()V

    .line 131
    new-instance v0, Lcom/adcolony/sdk/o;

    invoke-direct {v0}, Lcom/adcolony/sdk/o;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->m:Lcom/adcolony/sdk/o;

    .line 132
    new-instance v0, Lcom/adcolony/sdk/t;

    invoke-direct {v0}, Lcom/adcolony/sdk/t;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->n:Lcom/adcolony/sdk/t;

    .line 133
    iget-object v0, p0, Lcom/adcolony/sdk/l;->n:Lcom/adcolony/sdk/t;

    invoke-virtual {v0}, Lcom/adcolony/sdk/t;->a()V

    .line 134
    new-instance v0, Lcom/adcolony/sdk/ac;

    invoke-direct {v0}, Lcom/adcolony/sdk/ac;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->r:Lcom/adcolony/sdk/ac;

    .line 135
    iget-object v0, p0, Lcom/adcolony/sdk/l;->r:Lcom/adcolony/sdk/ac;

    invoke-static {}, Lcom/adcolony/sdk/ac;->a()V

    .line 136
    new-instance v0, Lcom/adcolony/sdk/ar;

    invoke-direct {v0}, Lcom/adcolony/sdk/ar;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    .line 137
    iget-object v0, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ar;->a()Z

    .line 138
    new-instance v0, Lcom/adcolony/sdk/at;

    invoke-direct {v0}, Lcom/adcolony/sdk/at;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->o:Lcom/adcolony/sdk/at;

    .line 139
    iget-object v0, p0, Lcom/adcolony/sdk/l;->o:Lcom/adcolony/sdk/at;

    invoke-virtual {v0}, Lcom/adcolony/sdk/at;->a()V

    .line 140
    new-instance v0, Lcom/adcolony/sdk/n;

    invoke-direct {v0}, Lcom/adcolony/sdk/n;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    .line 141
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->e()V

    .line 142
    new-instance v0, Lcom/adcolony/sdk/aj;

    invoke-direct {v0}, Lcom/adcolony/sdk/aj;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->e:Lcom/adcolony/sdk/aj;

    .line 143
    iget-object v0, p0, Lcom/adcolony/sdk/l;->e:Lcom/adcolony/sdk/aj;

    invoke-virtual {v0}, Lcom/adcolony/sdk/aj;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/l;->E:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/adcolony/sdk/AdColony;->a(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;)V

    .line 149
    if-nez p2, :cond_1

    .line 150
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v4}, Lcom/adcolony/sdk/ar;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/l;->Q:Z

    .line 151
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v4}, Lcom/adcolony/sdk/ar;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/l;->R:Z

    .line 152
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->Q:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->R:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v3}, Lcom/adcolony/sdk/ar;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/y;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "sdkVersion"

    invoke-static {v0, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v3}, Lcom/adcolony/sdk/n;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adcolony/sdk/l;->P:Z

    .line 153
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->Q:Z

    if-eqz v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v3}, Lcom/adcolony/sdk/ar;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/y;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/l;->B:Lorg/json/JSONObject;

    .line 155
    iget-object v0, p0, Lcom/adcolony/sdk/l;->B:Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/l;->b(Lorg/json/JSONObject;)V

    .line 159
    :cond_0
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->P:Z

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/l;->e(Z)Z

    .line 160
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->J()V

    .line 165
    :cond_1
    const-string v0, "Module.load"

    new-instance v3, Lcom/adcolony/sdk/l$1;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$1;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 172
    const-string v0, "Module.unload"

    new-instance v3, Lcom/adcolony/sdk/l$12;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$12;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 179
    const-string v0, "AdColony.on_configured"

    new-instance v3, Lcom/adcolony/sdk/l$13;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$13;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 207
    const-string v0, "AdColony.get_app_info"

    new-instance v3, Lcom/adcolony/sdk/l$14;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$14;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 214
    const-string v0, "AdColony.v4vc_reward"

    new-instance v3, Lcom/adcolony/sdk/l$15;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$15;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 221
    const-string v0, "AdColony.zone_info"

    new-instance v3, Lcom/adcolony/sdk/l$16;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$16;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 228
    const-string v0, "AdColony.probe_launch_server"

    new-instance v3, Lcom/adcolony/sdk/l$17;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$17;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 235
    const-string v0, "Crypto.sha1"

    new-instance v3, Lcom/adcolony/sdk/l$18;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$18;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 244
    const-string v0, "Crypto.crc32"

    new-instance v3, Lcom/adcolony/sdk/l$19;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$19;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 253
    const-string v0, "Crypto.uuid"

    new-instance v3, Lcom/adcolony/sdk/l$2;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$2;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 263
    const-string v0, "Device.query_advertiser_info"

    new-instance v3, Lcom/adcolony/sdk/l$3;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$3;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 277
    const-string v0, "AdColony.controller_version"

    new-instance v3, Lcom/adcolony/sdk/l$4;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/l$4;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0, v3}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 289
    iget-object v0, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Lcom/adcolony/sdk/ar;)I

    move-result v3

    .line 290
    if-ne v3, v1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/adcolony/sdk/l;->T:Z

    .line 291
    const/4 v0, 0x2

    if-ne v3, v0, :cond_4

    :goto_2
    iput-boolean v1, p0, Lcom/adcolony/sdk/l;->U:Z

    .line 292
    return-void

    :cond_2
    move v0, v2

    .line 152
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 290
    goto :goto_1

    :cond_4
    move v1, v2

    .line 291
    goto :goto_2
.end method

.method a(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/adcolony/sdk/l;->u:Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 1217
    return-void
.end method

.method a(Lcom/adcolony/sdk/AdColonyRewardListener;)V
    .locals 0

    .prologue
    .line 1067
    iput-object p1, p0, Lcom/adcolony/sdk/l;->v:Lcom/adcolony/sdk/AdColonyRewardListener;

    .line 1068
    return-void
.end method

.method a(Lcom/adcolony/sdk/bc;)V
    .locals 0

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/adcolony/sdk/l;->t:Lcom/adcolony/sdk/bc;

    .line 1202
    return-void
.end method

.method a(Lcom/adcolony/sdk/c;)V
    .locals 0

    .prologue
    .line 1185
    iput-object p1, p0, Lcom/adcolony/sdk/l;->s:Lcom/adcolony/sdk/c;

    .line 1186
    return-void
.end method

.method public a(Lcom/adcolony/sdk/p;Lcom/adcolony/sdk/af;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/adcolony/sdk/p;",
            "Lcom/adcolony/sdk/af;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p1, Lcom/adcolony/sdk/p;->b:Ljava/lang/String;

    sget-object v1, Lcom/adcolony/sdk/l;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 564
    iget-boolean v0, p1, Lcom/adcolony/sdk/p;->d:Z

    if-eqz v0, :cond_4

    .line 566
    sget-object v0, Lcom/adcolony/sdk/aa;->b:Lcom/adcolony/sdk/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/adcolony/sdk/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 567
    iget-object v0, p1, Lcom/adcolony/sdk/p;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/adcolony/sdk/y;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 568
    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v2}, Lcom/adcolony/sdk/n;->D()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 570
    if-nez v0, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 574
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v2}, Lcom/adcolony/sdk/ar;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "026ae9c9824b3e483fa6c71fa88f57ae27816141"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->h(Lorg/json/JSONObject;Ljava/lang/String;)Z

    .line 577
    invoke-direct {p0, v0}, Lcom/adcolony/sdk/l;->c(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 578
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->P:Z

    if-nez v0, :cond_0

    .line 580
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v1, "Incomplete or disabled launch server response. Disabling AdColony until next launch."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 581
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/l;->a(Z)V

    goto :goto_0

    .line 587
    :cond_2
    invoke-direct {p0, v0}, Lcom/adcolony/sdk/l;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 588
    sget-object v1, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v2, "Controller missing or out of date. Downloading new controller."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 590
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 591
    const-string v2, "url"

    iget-object v3, p0, Lcom/adcolony/sdk/l;->F:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 592
    const-string v2, "filepath"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v4}, Lcom/adcolony/sdk/ar;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "7bf3a1e7bbd31e612eda3310c2cdb8075c43c6b5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 594
    new-instance v2, Lcom/adcolony/sdk/p;

    new-instance v3, Lcom/adcolony/sdk/af;

    const-string v4, "WebServices.download"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, v1}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-direct {v2, v3, p0}, Lcom/adcolony/sdk/p;-><init>(Lcom/adcolony/sdk/af;Lcom/adcolony/sdk/p$a;)V

    .line 598
    :cond_3
    iput-object v0, p0, Lcom/adcolony/sdk/l;->B:Lorg/json/JSONObject;

    goto :goto_0

    .line 600
    :cond_4
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->G()V

    goto :goto_0

    .line 604
    :cond_5
    iget-object v0, p1, Lcom/adcolony/sdk/p;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/adcolony/sdk/l;->F:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/adcolony/sdk/l;->G:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 607
    sget-object v0, Lcom/adcolony/sdk/aa;->e:Lcom/adcolony/sdk/aa;

    const-string v1, "Downloaded controller sha1 does not match expected value, retrying."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 608
    invoke-direct {p0}, Lcom/adcolony/sdk/l;->G()V

    goto/16 :goto_0

    .line 613
    :cond_6
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->P:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->S:Z

    if-nez v0, :cond_0

    .line 614
    new-instance v0, Lcom/adcolony/sdk/l$9;

    invoke-direct {v0, p0}, Lcom/adcolony/sdk/l$9;-><init>(Lcom/adcolony/sdk/l;)V

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1224
    iput-object p1, p0, Lcom/adcolony/sdk/l;->E:Ljava/lang/String;

    .line 1225
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 417
    iput-boolean p1, p0, Lcom/adcolony/sdk/l;->M:Z

    .line 418
    return-void
.end method

.method a(I)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 753
    iget-object v0, p0, Lcom/adcolony/sdk/l;->i:Lcom/adcolony/sdk/ag;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/ag;->a(I)Lcom/adcolony/sdk/ai;

    move-result-object v0

    .line 754
    if-nez v0, :cond_0

    move v0, v1

    .line 781
    :goto_0
    return v0

    .line 758
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->D:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 759
    iget-object v0, p0, Lcom/adcolony/sdk/l;->D:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bb;

    .line 760
    invoke-virtual {v0}, Lcom/adcolony/sdk/bb;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 761
    const-string v3, "about:blank"

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/bb;->loadUrl(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/bb;->clearCache(Z)V

    .line 763
    invoke-virtual {v0}, Lcom/adcolony/sdk/bb;->removeAllViews()V

    .line 764
    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/bb;->a(Z)V

    .line 767
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/l;->D:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/l;->A:Lcom/adcolony/sdk/af;

    if-eqz v0, :cond_3

    .line 775
    iget-object v0, p0, Lcom/adcolony/sdk/l;->A:Lcom/adcolony/sdk/af;

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 776
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adcolony/sdk/l;->A:Lcom/adcolony/sdk/af;

    .line 777
    iput-boolean v1, p0, Lcom/adcolony/sdk/l;->z:Z

    .line 780
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "Destroying module with id = "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/aa;->b(I)Lcom/adcolony/sdk/aa;

    move v0, v2

    .line 781
    goto :goto_0
.end method

.method a(Landroid/content/Context;Lcom/adcolony/sdk/af;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 674
    if-nez p1, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v0

    .line 678
    :cond_1
    const/4 v2, 0x0

    .line 680
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 698
    :goto_1
    if-eqz v2, :cond_0

    .line 702
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/adcolony/sdk/n;->a:Ljava/lang/String;

    .line 703
    sget-object v0, Lcom/adcolony/sdk/ac;->l:Lcom/adcolony/sdk/al;

    iget-object v0, v0, Lcom/adcolony/sdk/al;->g:Ljava/util/HashMap;

    const-string v3, "advertisingId"

    iget-object v4, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    iget-object v4, v4, Lcom/adcolony/sdk/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/adcolony/sdk/n;->c:Z

    .line 705
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    iput-boolean v1, v0, Lcom/adcolony/sdk/n;->b:Z

    .line 709
    if-eqz p2, :cond_2

    .line 710
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 711
    const-string v2, "advertiser_id"

    iget-object v3, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v3}, Lcom/adcolony/sdk/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 712
    const-string v2, "limit_ad_tracking"

    iget-object v3, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v3}, Lcom/adcolony/sdk/n;->g()Z

    move-result v3

    invoke-static {v0, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 713
    invoke-virtual {p2, v0}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    :cond_2
    move v0, v1

    .line 716
    goto :goto_0

    .line 682
    :catch_0
    move-exception v1

    .line 683
    sget-object v1, Lcom/adcolony/sdk/aa;->e:Lcom/adcolony/sdk/aa;

    const-string v2, "Google Play Services ads dependencies are missing. Collecting Android ID instead of Advertising ID."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    goto :goto_0

    .line 686
    :catch_1
    move-exception v3

    .line 687
    sget-object v3, Lcom/adcolony/sdk/aa;->e:Lcom/adcolony/sdk/aa;

    const-string v4, "Google Play Services is out of date, please update to GPS 4.0+. Collecting Android ID instead of Advertising ID."

    invoke-virtual {v3, v4}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    goto :goto_1

    .line 689
    :catch_2
    move-exception v1

    .line 690
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 691
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Amazon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 694
    sget-object v1, Lcom/adcolony/sdk/aa;->e:Lcom/adcolony/sdk/aa;

    const-string v2, "Advertising ID is not available. Collecting Android ID instead of Advertising ID."

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    goto :goto_0
.end method

.method a(Lcom/adcolony/sdk/af;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 446
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    :goto_0
    return v0

    .line 452
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 453
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v2, v3}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 456
    :goto_1
    if-gtz v2, :cond_1

    .line 457
    iget-object v2, p0, Lcom/adcolony/sdk/l;->i:Lcom/adcolony/sdk/ag;

    invoke-virtual {v2}, Lcom/adcolony/sdk/ag;->d()I

    move-result v2

    .line 460
    :cond_1
    invoke-virtual {p0, v2}, Lcom/adcolony/sdk/l;->a(I)Z

    .line 461
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "is_webview"

    invoke-static {v3, v4}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v3

    .line 462
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "is_display_module"

    invoke-static {v4, v5}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v4

    .line 464
    if-eqz v3, :cond_2

    .line 465
    new-instance v2, Lcom/adcolony/sdk/l$6;

    invoke-direct {v2, p0, v4, p1}, Lcom/adcolony/sdk/l$6;-><init>(Lcom/adcolony/sdk/l;ZLcom/adcolony/sdk/af;)V

    invoke-static {v2}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    :goto_2
    move v0, v1

    .line 501
    goto :goto_0

    .line 475
    :cond_2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    .line 483
    new-instance v4, Lcom/adcolony/sdk/l$7;

    invoke-direct {v4, p0, p1, v2, v3}, Lcom/adcolony/sdk/l$7;-><init>(Lcom/adcolony/sdk/l;Lcom/adcolony/sdk/af;ILjava/util/concurrent/ExecutorService;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 496
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 497
    const-string v4, "success"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 498
    const-string v4, "id"

    invoke-static {v3, v4, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 499
    invoke-virtual {p1, v3}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/af;->b()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 503
    :catch_0
    move-exception v1

    .line 504
    sget-object v2, Lcom/adcolony/sdk/aa;->h:Lcom/adcolony/sdk/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create AdUnit file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "filepath"

    invoke-static {v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 505
    sget-object v2, Lcom/adcolony/sdk/aa;->h:Lcom/adcolony/sdk/aa;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 506
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto/16 :goto_0

    :cond_3
    move v2, v0

    goto :goto_1
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/adcolony/sdk/l;->I:Ljava/lang/String;

    return-object v0
.end method

.method b(Lcom/adcolony/sdk/af;)V
    .locals 0

    .prologue
    .line 515
    iput-object p1, p0, Lcom/adcolony/sdk/l;->y:Lcom/adcolony/sdk/af;

    .line 516
    return-void
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 1037
    iput-boolean p1, p0, Lcom/adcolony/sdk/l;->L:Z

    .line 1038
    return-void
.end method

.method c()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/adcolony/sdk/l;->B:Lorg/json/JSONObject;

    return-object v0
.end method

.method c(Z)V
    .locals 0

    .prologue
    .line 1232
    iput-boolean p1, p0, Lcom/adcolony/sdk/l;->K:Z

    .line 1233
    return-void
.end method

.method d()Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/adcolony/sdk/l;->x:Lcom/adcolony/sdk/AdColonyAppOptions;

    if-nez v0, :cond_0

    .line 1008
    new-instance v0, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->x:Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->x:Lcom/adcolony/sdk/AdColonyAppOptions;

    return-object v0
.end method

.method d(Z)V
    .locals 0

    .prologue
    .line 1244
    iput-boolean p1, p0, Lcom/adcolony/sdk/l;->z:Z

    .line 1245
    return-void
.end method

.method d(Lcom/adcolony/sdk/af;)Z
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/adcolony/sdk/l;->v:Lcom/adcolony/sdk/AdColonyRewardListener;

    if-eqz v0, :cond_0

    .line 877
    new-instance v0, Lcom/adcolony/sdk/l$10;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/l$10;-><init>(Lcom/adcolony/sdk/l;Lcom/adcolony/sdk/af;)V

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 883
    const/4 v0, 0x1

    .line 885
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e(Lcom/adcolony/sdk/af;)V
    .locals 3

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->M:Z

    if-eqz v0, :cond_0

    .line 896
    sget-object v0, Lcom/adcolony/sdk/aa;->f:Lcom/adcolony/sdk/aa;

    const-string v1, "AdColony is disabled. Ignoring zone_info message."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 909
    :goto_0
    return-void

    .line 900
    :cond_0
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "zone_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 902
    iget-object v0, p0, Lcom/adcolony/sdk/l;->C:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/adcolony/sdk/l;->C:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/AdColonyZone;

    .line 908
    :goto_1
    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/AdColonyZone;->a(Lcom/adcolony/sdk/af;)V

    goto :goto_0

    .line 905
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/AdColonyZone;

    invoke-direct {v0, v1}, Lcom/adcolony/sdk/AdColonyZone;-><init>(Ljava/lang/String;)V

    .line 906
    iget-object v2, p0, Lcom/adcolony/sdk/l;->C:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method e()Z
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/adcolony/sdk/l;->x:Lcom/adcolony/sdk/AdColonyAppOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method f()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyZone;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/adcolony/sdk/l;->C:Ljava/util/HashMap;

    return-object v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 1044
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->L:Z

    return v0
.end method

.method h()Z
    .locals 1

    .prologue
    .line 1051
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->M:Z

    return v0
.end method

.method i()Lcom/adcolony/sdk/AdColonyRewardListener;
    .locals 1

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/adcolony/sdk/l;->v:Lcom/adcolony/sdk/AdColonyRewardListener;

    return-object v0
.end method

.method j()Lcom/adcolony/sdk/t;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/adcolony/sdk/l;->n:Lcom/adcolony/sdk/t;

    if-nez v0, :cond_0

    .line 1075
    new-instance v0, Lcom/adcolony/sdk/t;

    invoke-direct {v0}, Lcom/adcolony/sdk/t;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->n:Lcom/adcolony/sdk/t;

    .line 1076
    iget-object v0, p0, Lcom/adcolony/sdk/l;->n:Lcom/adcolony/sdk/t;

    invoke-virtual {v0}, Lcom/adcolony/sdk/t;->a()V

    .line 1078
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->n:Lcom/adcolony/sdk/t;

    return-object v0
.end method

.method k()Lcom/adcolony/sdk/ADCCrashReportManager;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/adcolony/sdk/l;->q:Lcom/adcolony/sdk/ADCCrashReportManager;

    if-nez v0, :cond_0

    .line 1083
    new-instance v0, Lcom/adcolony/sdk/ADCCrashReportManager;

    invoke-direct {v0}, Lcom/adcolony/sdk/ADCCrashReportManager;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->q:Lcom/adcolony/sdk/ADCCrashReportManager;

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->q:Lcom/adcolony/sdk/ADCCrashReportManager;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ADCCrashReportManager;->a()V

    .line 1086
    iget-object v0, p0, Lcom/adcolony/sdk/l;->q:Lcom/adcolony/sdk/ADCCrashReportManager;

    return-object v0
.end method

.method l()Lcom/adcolony/sdk/ao;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/adcolony/sdk/l;->k:Lcom/adcolony/sdk/ao;

    if-nez v0, :cond_0

    .line 1096
    new-instance v0, Lcom/adcolony/sdk/ao;

    invoke-direct {v0}, Lcom/adcolony/sdk/ao;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->k:Lcom/adcolony/sdk/ao;

    .line 1097
    iget-object v0, p0, Lcom/adcolony/sdk/l;->k:Lcom/adcolony/sdk/ao;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ao;->a()V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->k:Lcom/adcolony/sdk/ao;

    return-object v0
.end method

.method m()Lcom/adcolony/sdk/d;
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/adcolony/sdk/l;->l:Lcom/adcolony/sdk/d;

    if-nez v0, :cond_0

    .line 1109
    new-instance v0, Lcom/adcolony/sdk/d;

    invoke-direct {v0}, Lcom/adcolony/sdk/d;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->l:Lcom/adcolony/sdk/d;

    .line 1110
    iget-object v0, p0, Lcom/adcolony/sdk/l;->l:Lcom/adcolony/sdk/d;

    invoke-virtual {v0}, Lcom/adcolony/sdk/d;->a()V

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->l:Lcom/adcolony/sdk/d;

    return-object v0
.end method

.method n()Lcom/adcolony/sdk/n;
    .locals 1

    .prologue
    .line 1121
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    if-nez v0, :cond_0

    .line 1122
    new-instance v0, Lcom/adcolony/sdk/n;

    invoke-direct {v0}, Lcom/adcolony/sdk/n;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    .line 1123
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->e()V

    .line 1125
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    return-object v0
.end method

.method o()Lcom/adcolony/sdk/ar;
    .locals 1

    .prologue
    .line 1132
    iget-object v0, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    if-nez v0, :cond_0

    .line 1133
    new-instance v0, Lcom/adcolony/sdk/ar;

    invoke-direct {v0}, Lcom/adcolony/sdk/ar;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    .line 1134
    iget-object v0, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ar;->a()Z

    .line 1136
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->p:Lcom/adcolony/sdk/ar;

    return-object v0
.end method

.method p()Lcom/adcolony/sdk/aj;
    .locals 1

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/adcolony/sdk/l;->e:Lcom/adcolony/sdk/aj;

    if-nez v0, :cond_0

    .line 1144
    new-instance v0, Lcom/adcolony/sdk/aj;

    invoke-direct {v0}, Lcom/adcolony/sdk/aj;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->e:Lcom/adcolony/sdk/aj;

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->e:Lcom/adcolony/sdk/aj;

    return-object v0
.end method

.method q()Lcom/adcolony/sdk/ag;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/adcolony/sdk/l;->i:Lcom/adcolony/sdk/ag;

    if-nez v0, :cond_0

    .line 1157
    new-instance v0, Lcom/adcolony/sdk/ag;

    invoke-direct {v0}, Lcom/adcolony/sdk/ag;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->i:Lcom/adcolony/sdk/ag;

    .line 1158
    iget-object v0, p0, Lcom/adcolony/sdk/l;->i:Lcom/adcolony/sdk/ag;

    invoke-virtual {v0}, Lcom/adcolony/sdk/ag;->a()V

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->i:Lcom/adcolony/sdk/ag;

    return-object v0
.end method

.method r()Lcom/adcolony/sdk/o;
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/adcolony/sdk/l;->m:Lcom/adcolony/sdk/o;

    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Lcom/adcolony/sdk/o;

    invoke-direct {v0}, Lcom/adcolony/sdk/o;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/l;->m:Lcom/adcolony/sdk/o;

    .line 1170
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/l;->m:Lcom/adcolony/sdk/o;

    return-object v0
.end method

.method s()Lcom/adcolony/sdk/c;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/adcolony/sdk/l;->s:Lcom/adcolony/sdk/c;

    return-object v0
.end method

.method t()Lcom/adcolony/sdk/bc;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/adcolony/sdk/l;->t:Lcom/adcolony/sdk/bc;

    return-object v0
.end method

.method u()Lcom/adcolony/sdk/AdColonyInterstitial;
    .locals 1

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/adcolony/sdk/l;->u:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-object v0
.end method

.method v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/adcolony/sdk/l;->E:Ljava/lang/String;

    return-object v0
.end method

.method w()Z
    .locals 1

    .prologue
    .line 1228
    iget-boolean v0, p0, Lcom/adcolony/sdk/l;->K:Z

    return v0
.end method

.method x()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/bb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1236
    iget-object v0, p0, Lcom/adcolony/sdk/l;->D:Ljava/util/HashMap;

    return-object v0
.end method

.method z()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/adcolony/sdk/AdColonyCustomMessageListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/adcolony/sdk/l;->w:Ljava/util/HashMap;

    return-object v0
.end method
