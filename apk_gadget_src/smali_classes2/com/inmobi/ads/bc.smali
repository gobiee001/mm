.class public Lcom/inmobi/ads/bc;
.super Ljava/lang/Object;
.source "Placement.java"


# static fields
.field private static final g:Ljava/lang/String;


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/util/Map;
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

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/inmobi/ads/bc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/bc;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    iput-object v0, p0, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 32
    iput-wide p1, p0, Lcom/inmobi/ads/bc;->a:J

    .line 33
    iput-object p3, p0, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/inmobi/ads/bc;->e:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->MONETIZATION_CONTEXT_ACTIVITY:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    iput-object v0, p0, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 87
    const-string v0, "placement_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/bc;->a:J

    .line 88
    const-string v0, "tp_key"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 89
    const-string v0, "ad_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/bc;->e:Ljava/lang/String;

    .line 90
    const-string v0, "m10_context"

    .line 91
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->a(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 92
    return-void
.end method

.method public static a(JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/bc;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/inmobi/ads/bc;"
        }
    .end annotation

    .prologue
    .line 16
    new-instance v0, Lcom/inmobi/ads/bc;

    .line 17
    invoke-static {p2}, Lcom/inmobi/ads/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1, p3}, Lcom/inmobi/ads/bc;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 1045
    iput-object p4, v0, Lcom/inmobi/ads/bc;->d:Ljava/lang/String;

    .line 2041
    iput-object p2, v0, Lcom/inmobi/ads/bc;->c:Ljava/util/Map;

    .line 20
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    if-ne p0, p1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 99
    :cond_3
    check-cast p1, Lcom/inmobi/ads/bc;

    .line 101
    iget-wide v2, p0, Lcom/inmobi/ads/bc;->a:J

    iget-wide v4, p1, Lcom/inmobi/ads/bc;->a:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    iget-object v3, p1, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/inmobi/ads/bc;->b:Ljava/lang/String;

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/inmobi/ads/bc;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/inmobi/ads/bc;->e:Ljava/lang/String;

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 101
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/inmobi/ads/bc;->a:J

    iget-wide v2, p0, Lcom/inmobi/ads/bc;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 110
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/inmobi/ads/bc;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    mul-int/lit8 v0, v0, 0x1e

    iget-object v1, p0, Lcom/inmobi/ads/bc;->f:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    return v0
.end method
