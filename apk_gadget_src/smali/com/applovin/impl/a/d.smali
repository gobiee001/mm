.class final enum Lcom/applovin/impl/a/d;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applovin/impl/a/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/a/d;

.field public static final enum b:Lcom/applovin/impl/a/d;

.field private static final synthetic c:[Lcom/applovin/impl/a/d;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/a/d;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/d;->a:Lcom/applovin/impl/a/d;

    new-instance v0, Lcom/applovin/impl/a/d;

    const-string v1, "COMPANION_AD"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/a/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/d;->b:Lcom/applovin/impl/a/d;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/applovin/impl/a/d;

    sget-object v1, Lcom/applovin/impl/a/d;->a:Lcom/applovin/impl/a/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/a/d;->b:Lcom/applovin/impl/a/d;

    aput-object v1, v0, v3

    sput-object v0, Lcom/applovin/impl/a/d;->c:[Lcom/applovin/impl/a/d;

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
