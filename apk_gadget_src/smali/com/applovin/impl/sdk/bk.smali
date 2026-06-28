.class Lcom/applovin/impl/sdk/bk;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private b:Lcom/applovin/impl/sdk/aw;

.field private c:Landroid/app/Activity;

.field private d:Lcom/applovin/sdk/AppLovinAdRewardListener;

.field private e:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/sdk/bg;)V
    .locals 0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/bk;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/bk;)Lcom/applovin/impl/sdk/AppLovinSdkImpl;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bk;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/bk;)Lcom/applovin/impl/sdk/aw;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bk;->b:Lcom/applovin/impl/sdk/aw;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/bk;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bk;->c:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic d(Lcom/applovin/impl/sdk/bk;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bk;->e:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic e(Lcom/applovin/impl/sdk/bk;)Lcom/applovin/sdk/AppLovinAdRewardListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/bk;->d:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-object v0
.end method


# virtual methods
.method a()Lcom/applovin/impl/sdk/bf;
    .locals 2

    new-instance v0, Lcom/applovin/impl/sdk/bf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/bf;-><init>(Lcom/applovin/impl/sdk/bk;Lcom/applovin/impl/sdk/bg;)V

    return-object v0
.end method

.method a(Landroid/app/Activity;)Lcom/applovin/impl/sdk/bk;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bk;->c:Landroid/app/Activity;

    return-object p0
.end method

.method a(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Lcom/applovin/impl/sdk/bk;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bk;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    return-object p0
.end method

.method a(Lcom/applovin/impl/sdk/aw;)Lcom/applovin/impl/sdk/bk;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bk;->b:Lcom/applovin/impl/sdk/aw;

    return-object p0
.end method

.method a(Lcom/applovin/sdk/AppLovinAdRewardListener;)Lcom/applovin/impl/sdk/bk;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bk;->d:Lcom/applovin/sdk/AppLovinAdRewardListener;

    return-object p0
.end method

.method a(Ljava/lang/Runnable;)Lcom/applovin/impl/sdk/bk;
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/bk;->e:Ljava/lang/Runnable;

    return-object p0
.end method
