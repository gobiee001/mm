.class public final enum Lcom/applovin/impl/sdk/o;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applovin/impl/sdk/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/sdk/o;

.field public static final enum b:Lcom/applovin/impl/sdk/o;

.field public static final enum c:Lcom/applovin/impl/sdk/o;

.field private static final synthetic e:[Lcom/applovin/impl/sdk/o;


# instance fields
.field private final d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/o;

    const-string v1, "NONE"

    const-string v2, "NONE"

    invoke-direct {v0, v1, v3, v2}, Lcom/applovin/impl/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/o;

    new-instance v0, Lcom/applovin/impl/sdk/o;

    const-string v1, "DIRECT"

    const-string v2, "DIRECT"

    invoke-direct {v0, v1, v4, v2}, Lcom/applovin/impl/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/o;

    new-instance v0, Lcom/applovin/impl/sdk/o;

    const-string v1, "INDIRECT"

    const-string v2, "INDIRECT"

    invoke-direct {v0, v1, v5, v2}, Lcom/applovin/impl/sdk/o;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/o;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/applovin/impl/sdk/o;

    sget-object v1, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/o;

    aput-object v1, v0, v5

    sput-object v0, Lcom/applovin/impl/sdk/o;->e:[Lcom/applovin/impl/sdk/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/applovin/impl/sdk/o;
    .locals 1

    sget-object v0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/o;->b:Lcom/applovin/impl/sdk/o;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/o;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/o;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applovin/impl/sdk/o;->c:Lcom/applovin/impl/sdk/o;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/o;->a:Lcom/applovin/impl/sdk/o;

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/o;->d:Ljava/lang/String;

    return-object v0
.end method
