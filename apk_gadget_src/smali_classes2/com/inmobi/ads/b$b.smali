.class final Lcom/inmobi/ads/b$b;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:J


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    const/4 v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/b$b;->a:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 570
    iget v0, p0, Lcom/inmobi/ads/b$b;->b:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/b$b;->a:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/b$b;->c:I

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/inmobi/ads/b$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
