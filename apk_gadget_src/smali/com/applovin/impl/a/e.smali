.class public final enum Lcom/applovin/impl/a/e;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applovin/impl/a/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/a/e;

.field public static final enum b:Lcom/applovin/impl/a/e;

.field public static final enum c:Lcom/applovin/impl/a/e;

.field public static final enum d:Lcom/applovin/impl/a/e;

.field public static final enum e:Lcom/applovin/impl/a/e;

.field public static final enum f:Lcom/applovin/impl/a/e;

.field private static final synthetic g:[Lcom/applovin/impl/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/applovin/impl/a/e;

    const-string v1, "IMPRESSION"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e;

    new-instance v0, Lcom/applovin/impl/a/e;

    const-string v1, "VIDEO_CLICK"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/e;->b:Lcom/applovin/impl/a/e;

    new-instance v0, Lcom/applovin/impl/a/e;

    const-string v1, "COMPANION_CLICK"

    invoke-direct {v0, v1, v5}, Lcom/applovin/impl/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/e;->c:Lcom/applovin/impl/a/e;

    new-instance v0, Lcom/applovin/impl/a/e;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/applovin/impl/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/e;->d:Lcom/applovin/impl/a/e;

    new-instance v0, Lcom/applovin/impl/a/e;

    const-string v1, "COMPANION"

    invoke-direct {v0, v1, v7}, Lcom/applovin/impl/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/e;->e:Lcom/applovin/impl/a/e;

    new-instance v0, Lcom/applovin/impl/a/e;

    const-string v1, "ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/a/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/a/e;->f:Lcom/applovin/impl/a/e;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/applovin/impl/a/e;

    sget-object v1, Lcom/applovin/impl/a/e;->a:Lcom/applovin/impl/a/e;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/a/e;->b:Lcom/applovin/impl/a/e;

    aput-object v1, v0, v4

    sget-object v1, Lcom/applovin/impl/a/e;->c:Lcom/applovin/impl/a/e;

    aput-object v1, v0, v5

    sget-object v1, Lcom/applovin/impl/a/e;->d:Lcom/applovin/impl/a/e;

    aput-object v1, v0, v6

    sget-object v1, Lcom/applovin/impl/a/e;->e:Lcom/applovin/impl/a/e;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/applovin/impl/a/e;->f:Lcom/applovin/impl/a/e;

    aput-object v2, v0, v1

    sput-object v0, Lcom/applovin/impl/a/e;->g:[Lcom/applovin/impl/a/e;

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
