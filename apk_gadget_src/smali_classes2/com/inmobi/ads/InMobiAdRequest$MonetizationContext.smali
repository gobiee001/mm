.class public final enum Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;
.super Ljava/lang/Enum;
.source "InMobiAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MonetizationContext"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

.field public static final enum MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

.field public static final enum MONETIZATION_CONTEXT_OTHER:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    const-string v1, "MONETIZATION_CONTEXT_ACTIVITY"

    const-string v2, "activity"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 19
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    const-string v1, "MONETIZATION_CONTEXT_OTHER"

    const-string v2, "others"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_OTHER:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_OTHER:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->$VALUES:[Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

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

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;
    .locals 5

    .prologue
    .line 32
    invoke-static {}, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->values()[Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1028
    iget-object v4, v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    :goto_1
    return-object v0

    .line 32
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 37
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->$VALUES:[Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-virtual {v0}, [Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a:Ljava/lang/String;

    return-object v0
.end method
