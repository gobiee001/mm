.class public final enum Lcom/applovin/impl/sdk/ao;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applovin/impl/sdk/ao;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/sdk/ao;

.field public static final enum b:Lcom/applovin/impl/sdk/ao;

.field public static final enum c:Lcom/applovin/impl/sdk/ao;

.field private static final synthetic d:[Lcom/applovin/impl/sdk/ao;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/sdk/ao;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/ao;

    new-instance v0, Lcom/applovin/impl/sdk/ao;

    const-string v1, "ACTIVITY_PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/sdk/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/ao;->b:Lcom/applovin/impl/sdk/ao;

    new-instance v0, Lcom/applovin/impl/sdk/ao;

    const-string v1, "ACTIVITY_LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/sdk/ao;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/sdk/ao;->c:Lcom/applovin/impl/sdk/ao;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/applovin/impl/sdk/ao;

    sget-object v1, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/ao;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/sdk/ao;->b:Lcom/applovin/impl/sdk/ao;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/sdk/ao;->c:Lcom/applovin/impl/sdk/ao;

    aput-object v1, v0, v4

    sput-object v0, Lcom/applovin/impl/sdk/ao;->d:[Lcom/applovin/impl/sdk/ao;

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
