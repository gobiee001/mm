.class public final Lcom/inmobi/ads/b$g;
.super Ljava/lang/Object;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation


# instance fields
.field a:I

.field b:J

.field public c:J

.field public d:Ljava/util/ArrayList;
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
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 787
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 788
    iput v4, p0, Lcom/inmobi/ads/b$g;->a:I

    .line 789
    const-wide/32 v0, 0x300000

    iput-wide v0, p0, Lcom/inmobi/ads/b$g;->b:J

    .line 790
    const-wide/32 v0, 0x1e00000

    iput-wide v0, p0, Lcom/inmobi/ads/b$g;->c:J

    .line 791
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "video/mp4"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "image/jpeg"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "image/jpg"

    aput-object v3, v1, v2

    const-string v2, "image/gif"

    aput-object v2, v1, v4

    const/4 v2, 0x4

    const-string v3, "image/png"

    aput-object v3, v1, v2

    .line 792
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/inmobi/ads/b$g;->d:Ljava/util/ArrayList;

    .line 791
    return-void
.end method
