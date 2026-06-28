.class public Lcom/inmobi/ads/InMobiAdRequest$Builder;
.super Ljava/lang/Object;
.source "InMobiAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/InMobiAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mExtras:Ljava/util/Map;
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

.field mHeightInDp:I

.field mKeywords:Ljava/lang/String;

.field private mMonetizationContext:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

.field private mPlacementId:J

.field mWidthInDp:I


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mPlacementId:J

    .line 77
    return-void
.end method


# virtual methods
.method public build()Lcom/inmobi/ads/InMobiAdRequest;
    .locals 10

    .prologue
    .line 127
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequest;

    iget-wide v2, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mPlacementId:J

    iget-object v4, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mMonetizationContext:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    iget v5, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mWidthInDp:I

    iget v6, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mHeightInDp:I

    iget-object v7, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mKeywords:Ljava/lang/String;

    iget-object v8, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mExtras:Ljava/util/Map;

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Lcom/inmobi/ads/InMobiAdRequest;-><init>(JLcom/inmobi/ads/InMobiAdRequest$MonetizationContext;IILjava/lang/String;Ljava/util/Map;Lcom/inmobi/ads/InMobiAdRequest$1;)V

    return-object v1
.end method

.method public setExtras(Ljava/util/Map;)Lcom/inmobi/ads/InMobiAdRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/inmobi/ads/InMobiAdRequest$Builder;"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mExtras:Ljava/util/Map;

    .line 119
    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequest$Builder;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mKeywords:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public setMonetizationContext(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)Lcom/inmobi/ads/InMobiAdRequest$Builder;
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mMonetizationContext:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 86
    return-object p0
.end method

.method public setSlotSize(II)Lcom/inmobi/ads/InMobiAdRequest$Builder;
    .locals 0

    .prologue
    .line 97
    iput p1, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mWidthInDp:I

    .line 98
    iput p2, p0, Lcom/inmobi/ads/InMobiAdRequest$Builder;->mHeightInDp:I

    .line 99
    return-object p0
.end method
