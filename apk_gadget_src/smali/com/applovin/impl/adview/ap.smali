.class Lcom/applovin/impl/adview/ap;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/applovin/impl/adview/ao;

.field private final c:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JLcom/applovin/impl/adview/ao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/applovin/impl/adview/ap;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/applovin/impl/adview/ap;->c:J

    iput-object p4, p0, Lcom/applovin/impl/adview/ap;->b:Lcom/applovin/impl/adview/ao;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JLcom/applovin/impl/adview/ao;Lcom/applovin/impl/adview/an;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/adview/ap;-><init>(Ljava/lang/String;JLcom/applovin/impl/adview/ao;)V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ap;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/applovin/impl/adview/ap;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/ap;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()J
    .locals 2

    iget-wide v0, p0, Lcom/applovin/impl/adview/ap;->c:J

    return-wide v0
.end method

.method static synthetic b(Lcom/applovin/impl/adview/ap;)Lcom/applovin/impl/adview/ao;
    .locals 1

    invoke-direct {p0}, Lcom/applovin/impl/adview/ap;->c()Lcom/applovin/impl/adview/ao;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/applovin/impl/adview/ap;)J
    .locals 2

    invoke-direct {p0}, Lcom/applovin/impl/adview/ap;->b()J

    move-result-wide v0

    return-wide v0
.end method

.method private c()Lcom/applovin/impl/adview/ao;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ap;->b:Lcom/applovin/impl/adview/ao;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/applovin/impl/adview/ap;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/applovin/impl/adview/ap;

    iget-object v2, p0, Lcom/applovin/impl/adview/ap;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/adview/ap;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/applovin/impl/adview/ap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/applovin/impl/adview/ap;->a:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/adview/ap;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/adview/ap;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountdownProxy{identifier=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/adview/ap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", countdownStepMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/applovin/impl/adview/ap;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
