.class public final enum Lcom/inmobi/ads/AdUnit$AdCreativeType;
.super Ljava/lang/Enum;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdCreativeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/AdUnit$AdCreativeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/AdUnit$AdCreativeType;

.field public static final enum AD_CREATIVE_TYPE_DISPLAY:Lcom/inmobi/ads/AdUnit$AdCreativeType;

.field public static final enum AD_CREATIVE_TYPE_UNSUPPORTED_OR_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdCreativeType;

.field public static final enum AD_CREATIVE_TYPE_VIDEO:Lcom/inmobi/ads/AdUnit$AdCreativeType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;

    const-string v1, "AD_CREATIVE_TYPE_UNSUPPORTED_OR_UNKNOWN"

    const-string v2, "unknown"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/ads/AdUnit$AdCreativeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_UNSUPPORTED_OR_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    .line 150
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;

    const-string v1, "AD_CREATIVE_TYPE_DISPLAY"

    const-string v2, "nonvideo"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/AdUnit$AdCreativeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_DISPLAY:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    .line 151
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;

    const-string v1, "AD_CREATIVE_TYPE_VIDEO"

    const-string v2, "video"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/ads/AdUnit$AdCreativeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_VIDEO:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/ads/AdUnit$AdCreativeType;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_UNSUPPORTED_OR_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_DISPLAY:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_VIDEO:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->$VALUES:[Lcom/inmobi/ads/AdUnit$AdCreativeType;

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
    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 156
    iput-object p3, p0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->a:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/AdUnit$AdCreativeType;
    .locals 1

    .prologue
    .line 148
    const-class v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/AdUnit$AdCreativeType;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->$VALUES:[Lcom/inmobi/ads/AdUnit$AdCreativeType;

    invoke-virtual {v0}, [Lcom/inmobi/ads/AdUnit$AdCreativeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/AdUnit$AdCreativeType;

    return-object v0
.end method
