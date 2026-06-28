.class public final enum Lcom/applovin/impl/adview/al;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/applovin/impl/adview/al;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/applovin/impl/adview/al;

.field public static final enum b:Lcom/applovin/impl/adview/al;

.field public static final enum c:Lcom/applovin/impl/adview/al;

.field private static final synthetic d:[Lcom/applovin/impl/adview/al;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/applovin/impl/adview/al;

    const-string v1, "WhiteXOnOpaqueBlack"

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/adview/al;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/adview/al;->a:Lcom/applovin/impl/adview/al;

    new-instance v0, Lcom/applovin/impl/adview/al;

    const-string v1, "WhiteXOnTransparentGrey"

    invoke-direct {v0, v1, v3}, Lcom/applovin/impl/adview/al;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/adview/al;->b:Lcom/applovin/impl/adview/al;

    new-instance v0, Lcom/applovin/impl/adview/al;

    const-string v1, "Invisible"

    invoke-direct {v0, v1, v4}, Lcom/applovin/impl/adview/al;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/adview/al;->c:Lcom/applovin/impl/adview/al;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/applovin/impl/adview/al;

    sget-object v1, Lcom/applovin/impl/adview/al;->a:Lcom/applovin/impl/adview/al;

    aput-object v1, v0, v2

    sget-object v1, Lcom/applovin/impl/adview/al;->b:Lcom/applovin/impl/adview/al;

    aput-object v1, v0, v3

    sget-object v1, Lcom/applovin/impl/adview/al;->c:Lcom/applovin/impl/adview/al;

    aput-object v1, v0, v4

    sput-object v0, Lcom/applovin/impl/adview/al;->d:[Lcom/applovin/impl/adview/al;

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
