.class Lcom/applovin/impl/sdk/ad;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/ad;->a:J

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ad;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/ad;->b(J)V

    return-void
.end method

.method private b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/ad;->b:J

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/ad;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/ad;->a(J)V

    return-void
.end method


# virtual methods
.method a()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/ad;->a:J

    return-wide v0
.end method

.method b()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/ad;->b:J

    return-wide v0
.end method
