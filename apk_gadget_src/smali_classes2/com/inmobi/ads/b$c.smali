.class public final Lcom/inmobi/ads/b$c;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/ads/b$c;->a:I

    .line 592
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/ads/b$c;->b:I

    .line 593
    const/16 v0, 0x78

    iput v0, p0, Lcom/inmobi/ads/b$c;->c:I

    .line 594
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/inmobi/ads/b$c;->d:I

    .line 595
    const/16 v0, 0xa

    iput v0, p0, Lcom/inmobi/ads/b$c;->e:I

    .line 596
    const-wide/16 v0, 0x2a30

    iput-wide v0, p0, Lcom/inmobi/ads/b$c;->f:J

    return-void
.end method
