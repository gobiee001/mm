.class final Lcom/applovin/impl/sdk/z;
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


# virtual methods
.method a()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/z;->a:J

    return-wide v0
.end method

.method a(J)V
    .locals 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/z;->a:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/applovin/impl/sdk/z;->a:J

    return-void
.end method

.method b()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/sdk/z;->b:J

    return-wide v0
.end method

.method b(J)V
    .locals 3

    iget-wide v0, p0, Lcom/applovin/impl/sdk/z;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/applovin/impl/sdk/z;->b:J

    return-void
.end method
