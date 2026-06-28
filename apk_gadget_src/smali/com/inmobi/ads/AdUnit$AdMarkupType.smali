.class public final enum Lcom/inmobi/ads/AdUnit$AdMarkupType;
.super Ljava/lang/Enum;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdMarkupType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/AdUnit$AdMarkupType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/AdUnit$AdMarkupType;

.field public static final enum AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

.field public static final enum AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

.field public static final enum AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 134
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;

    const-string v1, "AD_MARKUP_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/AdUnit$AdMarkupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 135
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;

    const-string v1, "AD_MARKUP_TYPE_INM_HTML"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/AdUnit$AdMarkupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 136
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;

    const-string v1, "AD_MARKUP_TYPE_INM_JSON"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/AdUnit$AdMarkupType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/ads/AdUnit$AdMarkupType;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->$VALUES:[Lcom/inmobi/ads/AdUnit$AdMarkupType;

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
    .line 133
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/AdUnit$AdMarkupType;
    .locals 1

    .prologue
    .line 133
    const-class v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/AdUnit$AdMarkupType;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->$VALUES:[Lcom/inmobi/ads/AdUnit$AdMarkupType;

    invoke-virtual {v0}, [Lcom/inmobi/ads/AdUnit$AdMarkupType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/AdUnit$AdMarkupType;

    return-object v0
.end method
