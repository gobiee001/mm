.class public final Lcom/inmobi/ads/b$e;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field a:Z

.field b:J

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 762
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/b$e;->a:Z

    .line 763
    const-wide/32 v0, 0x3f480

    iput-wide v0, p0, Lcom/inmobi/ads/b$e;->b:J

    .line 764
    const/4 v0, 0x5

    iput v0, p0, Lcom/inmobi/ads/b$e;->c:I

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 4

    .prologue
    .line 779
    iget-wide v0, p0, Lcom/inmobi/ads/b$e;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/b$e;->c:I

    if-gtz v0, :cond_1

    .line 780
    :cond_0
    const/4 v0, 0x0

    .line 783
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
