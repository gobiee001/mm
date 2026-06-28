.class public Lcom/inmobi/ads/InMobiAdRequest;
.super Ljava/lang/Object;
.source "InMobiAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiAdRequest$Builder;,
        Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;
    }
.end annotation


# instance fields
.field private final mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeightInDp:I

.field private final mKeywords:Ljava/lang/String;

.field private final mMonetizationContext:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

.field private final mPlacementId:J

.field private final mWidthInDp:I


# direct methods
.method private constructor <init>(JLcom/inmobi/ads/InMobiAdRequest$MonetizationContext;IILjava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide p1, p0, Lcom/inmobi/ads/InMobiAdRequest;->mPlacementId:J

    .line 57
    iput-object p3, p0, Lcom/inmobi/ads/InMobiAdRequest;->mMonetizationContext:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 58
    iput p4, p0, Lcom/inmobi/ads/InMobiAdRequest;->mWidthInDp:I

    .line 59
    iput p5, p0, Lcom/inmobi/ads/InMobiAdRequest;->mHeightInDp:I

    .line 60
    iput-object p6, p0, Lcom/inmobi/ads/InMobiAdRequest;->mKeywords:Ljava/lang/String;

    .line 61
    iput-object p7, p0, Lcom/inmobi/ads/InMobiAdRequest;->mExtras:Ljava/util/Map;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(JLcom/inmobi/ads/InMobiAdRequest$MonetizationContext;IILjava/lang/String;Ljava/util/Map;Lcom/inmobi/ads/InMobiAdRequest$1;)V
    .locals 1

    .prologue
    .line 12
    invoke-direct/range {p0 .. p7}, Lcom/inmobi/ads/InMobiAdRequest;-><init>(JLcom/inmobi/ads/InMobiAdRequest$MonetizationContext;IILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAdRequest;->mExtras:Ljava/util/Map;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/inmobi/ads/InMobiAdRequest;->mHeightInDp:I

    return v0
.end method

.method getKeywords()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAdRequest;->mKeywords:Ljava/lang/String;

    return-object v0
.end method

.method getMonetizationContext()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAdRequest;->mMonetizationContext:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    return-object v0
.end method

.method getPlacementId()J
    .locals 2

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/inmobi/ads/InMobiAdRequest;->mPlacementId:J

    return-wide v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/inmobi/ads/InMobiAdRequest;->mWidthInDp:I

    return v0
.end method
