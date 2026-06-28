.class public final enum Lcom/applovin/impl/sdk/an;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applovin/impl/sdk/an;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/sdk/an;

.field public static final enum b:Lcom/applovin/impl/sdk/an;

.field public static final enum c:Lcom/applovin/impl/sdk/an;

.field private static final synthetic d:[Lcom/applovin/impl/sdk/an;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/an;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/an;->a:Lcom/applovin/impl/sdk/an;

    new-instance v0, Lcom/applovin/impl/sdk/an;

    const-string v1, "DISMISS"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/sdk/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/an;->b:Lcom/applovin/impl/sdk/an;

    new-instance v0, Lcom/applovin/impl/sdk/an;

    const-string v1, "DO_NOT_DISMISS"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/sdk/an;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/an;->c:Lcom/applovin/impl/sdk/an;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/applovin/impl/sdk/an;

    sget-object v1, Lcom/applovin/impl/sdk/an;->a:Lcom/applovin/impl/sdk/an;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/an;->b:Lcom/applovin/impl/sdk/an;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/sdk/an;->c:Lcom/applovin/impl/sdk/an;

    aput-object v1, v0, v4

    sput-object v0, Lcom/applovin/impl/sdk/an;->d:[Lcom/applovin/impl/sdk/an;

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
