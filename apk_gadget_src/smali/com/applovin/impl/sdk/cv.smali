.class Lcom/applovin/impl/sdk/cv;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/impl/sdk/cj;

.field private final b:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/cj;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/sdk/cv;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    iput-object p1, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cj;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/cv;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/cv;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cv;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/cv;)Lcom/applovin/sdk/AppLovinAdLoadListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cv;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/sdk/cv;)Lcom/applovin/impl/sdk/cj;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/cv;->a:Lcom/applovin/impl/sdk/cj;

    return-object v0
.end method
