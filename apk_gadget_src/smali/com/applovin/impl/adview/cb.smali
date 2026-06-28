.class Lcom/applovin/impl/adview/cb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/applovin/adview/AppLovinInterstitialAdDialog;


# static fields
.field public static volatile d:Z

.field public static volatile e:Z

.field private static final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/adview/cb;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile p:Z


# instance fields
.field protected final a:Ljava/lang/String;

.field protected final b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field protected final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/applovin/impl/sdk/h;

.field private volatile h:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private volatile i:Lcom/applovin/sdk/AppLovinAdDisplayListener;

.field private volatile j:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

.field private volatile k:Lcom/applovin/sdk/AppLovinAdClickListener;

.field private volatile l:Lcom/applovin/impl/sdk/am;

.field private volatile m:Lcom/applovin/impl/sdk/ao;

.field private volatile n:Lcom/applovin/impl/adview/aq;

.field private volatile o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/applovin/impl/adview/cb;->f:Ljava/util/Map;

    sput-boolean v1, Lcom/applovin/impl/adview/cb;->d:Z

    sput-boolean v1, Lcom/applovin/impl/adview/cb;->e:Z

    return-void
.end method

.method constructor <init>(Lcom/applovin/sdk/AppLovinSdk;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    iput-object p1, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/cb;->a:Ljava/lang/String;

    new-instance v0, Lcom/applovin/impl/sdk/h;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/h;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/adview/cb;->g:Lcom/applovin/impl/sdk/h;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/applovin/impl/adview/cb;->c:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/applovin/impl/adview/cb;->d:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/applovin/impl/adview/cb;->e:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/applovin/impl/adview/cb;
    .locals 1

    sget-object v0, Lcom/applovin/impl/adview/cb;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/impl/adview/cb;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/cb;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->h:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object v0
.end method

.method private a(I)V
    .locals 1

    new-instance v0, Lcom/applovin/impl/adview/cf;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/cf;-><init>(Lcom/applovin/impl/adview/cb;I)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.applovin.interstitial.wrapper_id"

    iget-object v2, p0, Lcom/applovin/impl/adview/cb;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sput-object p0, Lcom/applovin/adview/AppLovinInterstitialActivity;->lastKnownWrapper:Lcom/applovin/impl/adview/cb;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    check-cast p1, Landroid/app/Activity;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/cb;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "InterstitialAdDialogWrapper"

    const-string v3, "Unable to remove pending transition animations"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/cb;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/cb;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/cb;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/cb;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/adview/cb;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/cb;->b(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/am;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    sget-object v0, Lcom/applovin/impl/adview/cb;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/adview/cb;->a:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/applovin/impl/adview/cb;->l:Lcom/applovin/impl/sdk/am;

    iput-object p2, p0, Lcom/applovin/impl/adview/cb;->o:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->l:Lcom/applovin/impl/sdk/am;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->l:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/am;->v()Lcom/applovin/impl/sdk/ao;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/applovin/impl/adview/cb;->m:Lcom/applovin/impl/sdk/ao;

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->l:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/am;->b()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->l:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/am;->d()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getFileManager()Lcom/applovin/impl/sdk/au;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/cb;->l:Lcom/applovin/impl/sdk/am;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/am;->d()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lcom/applovin/impl/sdk/au;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->l:Lcom/applovin/impl/sdk/am;

    instance-of v0, v0, Lcom/applovin/impl/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->l:Lcom/applovin/impl/sdk/am;

    check-cast v0, Lcom/applovin/impl/a/a;

    invoke-virtual {v0}, Lcom/applovin/impl/a/a;->c()Lcom/applovin/impl/a/r;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "InterstitialAdDialogWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached video removed from local filesystem for VAST ad. Setting videoUri to source: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/applovin/impl/a/r;->a()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/applovin/impl/a/r;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/a/r;->a(Landroid/net/Uri;)V

    :cond_0
    const-class v0, Lcom/applovin/adview/AppLovinInterstitialActivity;

    invoke-static {v0, p3}, Lcom/applovin/impl/sdk/ab;->a(Ljava/lang/Class;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/applovin/impl/sdk/eb;

    iget-object v1, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/eb;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/eb;->K()J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "InterstitialAdDialogWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Presenting ad with delay of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/applovin/impl/adview/cd;

    invoke-direct {v3, p0, p3}, Lcom/applovin/impl/adview/cd;-><init>(Lcom/applovin/impl/adview/cb;Landroid/content/Context;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/ao;

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "InterstitialAdDialogWrapper"

    const-string v2, "Cached video removed from local filesystem for VAST ad and source uri not found. Failing ad show."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "InterstitialAdDialogWrapper"

    const-string v2, "Cached video removed from local filesystem for internal ad. Failing ad show."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialAdDialog"

    const-string v2, "Unable to launch ad. "

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_1
.end method

.method private a(Lcom/applovin/impl/sdk/cj;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getMediationService()Lcom/applovin/impl/sdk/MediationServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/cb;->g:Lcom/applovin/impl/sdk/h;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/applovin/impl/sdk/MediationServiceImpl;->showAd(Lcom/applovin/impl/sdk/cj;Ljava/lang/String;Landroid/app/Activity;Lcom/applovin/impl/sdk/h;)V

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->i:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->i:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdDisplayListener;->adHidden(Lcom/applovin/sdk/AppLovinAd;)V

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/applovin/impl/adview/cb;->p:Z

    return-void
.end method

.method private b(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    new-instance v0, Lcom/applovin/impl/adview/ce;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/ce;-><init>(Lcom/applovin/impl/adview/cb;Lcom/applovin/sdk/AppLovinAd;)V

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private i()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/applovin/sdk/AppLovinSdk;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method public a(Lcom/applovin/impl/adview/aq;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/cb;->n:Lcom/applovin/impl/adview/aq;

    return-void
.end method

.method protected a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getAdService()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    move-result-object v0

    sget-object v1, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    sput-boolean p1, Lcom/applovin/impl/adview/cb;->p:Z

    return-void
.end method

.method public b()Lcom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->l:Lcom/applovin/impl/sdk/am;

    return-object v0
.end method

.method public c()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->j:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-object v0
.end method

.method public d()Lcom/applovin/sdk/AppLovinAdDisplayListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->i:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    return-object v0
.end method

.method public e()Lcom/applovin/sdk/AppLovinAdClickListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->k:Lcom/applovin/sdk/AppLovinAdClickListener;

    return-object v0
.end method

.method public f()Lcom/applovin/impl/sdk/ao;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->m:Lcom/applovin/impl/sdk/ao;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->o:Ljava/lang/String;

    return-object v0
.end method

.method public h()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/applovin/impl/adview/cb;->d:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/applovin/impl/adview/cb;->e:Z

    sget-object v0, Lcom/applovin/impl/adview/cb;->f:Ljava/util/Map;

    iget-object v1, p0, Lcom/applovin/impl/adview/cb;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public isShowing()Z
    .locals 1

    sget-boolean v0, Lcom/applovin/impl/adview/cb;->p:Z

    return v0
.end method

.method public setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/adview/cb;->k:Lcom/applovin/sdk/AppLovinAdClickListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->g:Lcom/applovin/impl/sdk/h;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 1

    iput-object p1, p0, Lcom/applovin/impl/adview/cb;->i:Lcom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->g:Lcom/applovin/impl/sdk/h;

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/h;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    return-void
.end method

.method public setAdVideoPlaybackListener(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/adview/cb;->j:Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/cb;->show(Ljava/lang/String;)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/applovin/impl/adview/cc;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/adview/cc;-><init>(Lcom/applovin/impl/adview/cb;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public showAndRender(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/applovin/impl/adview/cb;->showAndRender(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V

    return-void
.end method

.method public showAndRender(Lcom/applovin/sdk/AppLovinAd;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/applovin/impl/sdk/eb;

    iget-object v1, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/eb;-><init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {p0}, Lcom/applovin/impl/adview/cb;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/eb;->ai()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "AppLovinInterstitialAdDialog"

    const-string v2, "Attempted to show an interstitial while one is already displayed; ignoring."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/fy;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/applovin/impl/adview/cb;->i()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/fy;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_5

    instance-of v2, v0, Lcom/applovin/impl/sdk/am;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/applovin/impl/sdk/am;

    invoke-direct {p0, v0, p2, v1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/impl/sdk/am;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    instance-of v2, v0, Lcom/applovin/impl/sdk/cj;

    if-eqz v2, :cond_4

    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/applovin/impl/sdk/cj;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {p0, v0, p2, v1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/impl/sdk/cj;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "InterstitialAdDialogWrapper"

    const-string v3, "Failed to show interstitial: Activity required."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v1

    const-string v2, "InterstitialAdDialogWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to show interstitial: unknown ad type provided: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "InterstitialAdDialogWrapper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to show ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/applovin/impl/adview/cb;->b:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "InterstitialAdDialogWrapper"

    const-string v2, "Failed to show interstitial: stale activity reference provided"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/applovin/impl/adview/cb;->a(Lcom/applovin/sdk/AppLovinAd;)V

    goto/16 :goto_0
.end method
