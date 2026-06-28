.class public final Lcom/inmobi/ads/b$f;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field public f:I

.field g:I

.field h:I

.field i:J

.field j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 625
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/ads/b$f;->a:I

    .line 626
    const/16 v0, 0x140

    iput v0, p0, Lcom/inmobi/ads/b$f;->b:I

    .line 627
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/inmobi/ads/b$f;->c:I

    .line 628
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/ads/b$f;->d:I

    .line 629
    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/inmobi/ads/b$f;->e:Ljava/lang/String;

    .line 630
    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/b$f;->f:I

    .line 631
    const/4 v0, 0x5

    iput v0, p0, Lcom/inmobi/ads/b$f;->g:I

    .line 632
    const/16 v0, 0x14

    iput v0, p0, Lcom/inmobi/ads/b$f;->h:I

    .line 633
    const-wide/32 v0, 0x500000

    iput-wide v0, p0, Lcom/inmobi/ads/b$f;->i:J

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "video/mp4"

    aput-object v3, v1, v2

    .line 635
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/inmobi/ads/b$f;->j:Ljava/util/ArrayList;

    .line 634
    return-void
.end method
