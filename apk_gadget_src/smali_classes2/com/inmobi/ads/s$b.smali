.class final Lcom/inmobi/ads/s$b;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:I

.field c:I

.field d:J


# direct methods
.method constructor <init>(Ljava/lang/Object;II)V
    .locals 2

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/inmobi/ads/s$b;->d:J

    .line 67
    iput-object p1, p0, Lcom/inmobi/ads/s$b;->a:Ljava/lang/Object;

    .line 68
    iput p2, p0, Lcom/inmobi/ads/s$b;->b:I

    .line 69
    iput p3, p0, Lcom/inmobi/ads/s$b;->c:I

    .line 70
    return-void
.end method
