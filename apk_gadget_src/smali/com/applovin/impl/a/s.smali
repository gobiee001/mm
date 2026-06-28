.class public final enum Lcom/applovin/impl/a/s;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applovin/impl/a/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/a/s;

.field public static final enum b:Lcom/applovin/impl/a/s;

.field private static final synthetic c:[Lcom/applovin/impl/a/s;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/a/s;

    const-string v1, "Progressive"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/s;->a:Lcom/applovin/impl/a/s;

    new-instance v0, Lcom/applovin/impl/a/s;

    const-string v1, "Streaming"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/s;->b:Lcom/applovin/impl/a/s;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/applovin/impl/a/s;

    sget-object v1, Lcom/applovin/impl/a/s;->a:Lcom/applovin/impl/a/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/a/s;->b:Lcom/applovin/impl/a/s;

    aput-object v1, v0, v3

    sput-object v0, Lcom/applovin/impl/a/s;->c:[Lcom/applovin/impl/a/s;

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
