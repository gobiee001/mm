.class public final enum Lcom/applovin/impl/a/q;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applovin/impl/a/q;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/a/q;

.field public static final enum b:Lcom/applovin/impl/a/q;

.field public static final enum c:Lcom/applovin/impl/a/q;

.field public static final enum d:Lcom/applovin/impl/a/q;

.field private static final synthetic e:[Lcom/applovin/impl/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/a/q;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/q;->a:Lcom/applovin/impl/a/q;

    new-instance v0, Lcom/applovin/impl/a/q;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/q;->b:Lcom/applovin/impl/a/q;

    new-instance v0, Lcom/applovin/impl/a/q;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/q;->c:Lcom/applovin/impl/a/q;

    new-instance v0, Lcom/applovin/impl/a/q;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v5}, Lcom/applovin/impl/a/q;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/q;->d:Lcom/applovin/impl/a/q;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/applovin/impl/a/q;

    sget-object v1, Lcom/applovin/impl/a/q;->a:Lcom/applovin/impl/a/q;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/a/q;->b:Lcom/applovin/impl/a/q;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/a/q;->c:Lcom/applovin/impl/a/q;

    aput-object v1, v0, v4

    sget-object v1, Lcom/applovin/impl/a/q;->d:Lcom/applovin/impl/a/q;

    aput-object v1, v0, v5

    sput-object v0, Lcom/applovin/impl/a/q;->e:[Lcom/applovin/impl/a/q;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/applovin/impl/a/q;
    .locals 1

    sget-object v0, Lcom/applovin/impl/a/q;->e:[Lcom/applovin/impl/a/q;

    invoke-virtual {v0}, [Lcom/applovin/impl/a/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/a/q;

    return-object v0
.end method
