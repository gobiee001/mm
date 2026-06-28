.class public final enum Lcom/applovin/impl/a/j;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applovin/impl/a/j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/a/j;

.field public static final enum b:Lcom/applovin/impl/a/j;

.field public static final enum c:Lcom/applovin/impl/a/j;

.field public static final enum d:Lcom/applovin/impl/a/j;

.field private static final synthetic e:[Lcom/applovin/impl/a/j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/a/j;

    const-string v1, "UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/j;->a:Lcom/applovin/impl/a/j;

    new-instance v0, Lcom/applovin/impl/a/j;

    const-string v1, "STATIC"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/j;->b:Lcom/applovin/impl/a/j;

    new-instance v0, Lcom/applovin/impl/a/j;

    const-string v1, "IFRAME"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/j;->c:Lcom/applovin/impl/a/j;

    new-instance v0, Lcom/applovin/impl/a/j;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v5}, Lcom/applovin/impl/a/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/j;->d:Lcom/applovin/impl/a/j;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/applovin/impl/a/j;

    sget-object v1, Lcom/applovin/impl/a/j;->a:Lcom/applovin/impl/a/j;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/a/j;->b:Lcom/applovin/impl/a/j;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/a/j;->c:Lcom/applovin/impl/a/j;

    aput-object v1, v0, v4

    sget-object v1, Lcom/applovin/impl/a/j;->d:Lcom/applovin/impl/a/j;

    aput-object v1, v0, v5

    sput-object v0, Lcom/applovin/impl/a/j;->e:[Lcom/applovin/impl/a/j;

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
