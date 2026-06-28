.class Lcom/applovin/impl/sdk/bf;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/impl/sdk/aw;

.field private final c:Landroid/app/Activity;

.field private final d:Ljava/lang/Runnable;

.field private final e:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field private final f:Ljava/util/Timer;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/sdk/bk;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/applovin/impl/sdk/bk;->a(Lcom/applovin/impl/sdk/bk;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {p1}, Lcom/applovin/impl/sdk/bk;->b(Lcom/applovin/impl/sdk/bk;)Lcom/applovin/impl/sdk/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bf;->b:Lcom/applovin/impl/sdk/aw;

    invoke-static {p1}, Lcom/applovin/impl/sdk/bk;->c(Lcom/applovin/impl/sdk/bk;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bf;->c:Landroid/app/Activity;

    invoke-static {p1}, Lcom/applovin/impl/sdk/bk;->d(Lcom/applovin/impl/sdk/bk;)Ljava/lang/Runnable;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bf;->d:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/applovin/impl/sdk/bk;->e(Lcom/applovin/impl/sdk/bk;)Lcom/applovin/sdk/AppLovinAdRewardListener;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/bf;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    new-instance v0, Ljava/util/Timer;

    const-string v1, "IncentivizedAdLauncher"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/applovin/impl/sdk/bf;->f:Ljava/util/Timer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/bk;Lcom/applovin/impl/sdk/bg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/bf;-><init>(Lcom/applovin/impl/sdk/bk;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/bf;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/bf;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method static b()Lcom/applovin/impl/sdk/bk;
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/bk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/applovin/impl/sdk/bk;-><init>(Lcom/applovin/impl/sdk/bg;)V

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/bf;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->d:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/bf;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->f:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/bf;)Lcom/applovin/sdk/AppLovinAdRewardListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->e:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-object v0
.end method

.method static synthetic f(Lcom/applovin/impl/sdk/bf;)Lcom/applovin/impl/sdk/aw;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->b:Lcom/applovin/impl/sdk/aw;

    return-object v0
.end method


# virtual methods
.method a()V
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/bf;->c:Landroid/app/Activity;

    new-instance v1, Lcom/applovin/impl/sdk/bg;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/bg;-><init>(Lcom/applovin/impl/sdk/bf;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
