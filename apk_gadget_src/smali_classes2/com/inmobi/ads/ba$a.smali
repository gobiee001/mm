.class final enum Lcom/inmobi/ads/ba$a;
.super Ljava/lang/Enum;
.source "NativeWebViewAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/ba$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/ads/ba$a;

.field public static final enum b:Lcom/inmobi/ads/ba$a;

.field public static final enum c:Lcom/inmobi/ads/ba$a;

.field public static final enum d:Lcom/inmobi/ads/ba$a;

.field public static final enum e:Lcom/inmobi/ads/ba$a;

.field private static final synthetic f:[Lcom/inmobi/ads/ba$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/inmobi/ads/ba$a;

    const-string v1, "HTML"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ba$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ba$a;->a:Lcom/inmobi/ads/ba$a;

    .line 18
    new-instance v0, Lcom/inmobi/ads/ba$a;

    const-string v1, "URL"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/ba$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ba$a;->b:Lcom/inmobi/ads/ba$a;

    .line 19
    new-instance v0, Lcom/inmobi/ads/ba$a;

    const-string v1, "REF_IFRAME"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/ba$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ba$a;->c:Lcom/inmobi/ads/ba$a;

    .line 20
    new-instance v0, Lcom/inmobi/ads/ba$a;

    const-string v1, "REF_HTML"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/ba$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ba$a;->d:Lcom/inmobi/ads/ba$a;

    .line 21
    new-instance v0, Lcom/inmobi/ads/ba$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/ads/ba$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ba$a;->e:Lcom/inmobi/ads/ba$a;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/ads/ba$a;

    sget-object v1, Lcom/inmobi/ads/ba$a;->a:Lcom/inmobi/ads/ba$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/ba$a;->b:Lcom/inmobi/ads/ba$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/ba$a;->c:Lcom/inmobi/ads/ba$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/ba$a;->d:Lcom/inmobi/ads/ba$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/ba$a;->e:Lcom/inmobi/ads/ba$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/ads/ba$a;->f:[Lcom/inmobi/ads/ba$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/ba$a;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/inmobi/ads/ba$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ba$a;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/ba$a;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/inmobi/ads/ba$a;->f:[Lcom/inmobi/ads/ba$a;

    invoke-virtual {v0}, [Lcom/inmobi/ads/ba$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ba$a;

    return-object v0
.end method
