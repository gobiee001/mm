.class final Lcom/inmobi/ads/w$a;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/bc;",
            "Lcom/inmobi/ads/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/w$a;->a:Ljava/util/Map;

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/inmobi/ads/bc;Lcom/inmobi/ads/AdUnit$b;)Lcom/inmobi/ads/w;
    .locals 6

    .prologue
    .line 49
    .line 1057
    iget-wide v2, p1, Lcom/inmobi/ads/bc;->a:J

    .line 50
    sget-object v0, Lcom/inmobi/ads/w$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/w;

    .line 52
    if-eqz v0, :cond_3

    .line 54
    invoke-virtual {v0}, Lcom/inmobi/ads/w;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {}, Lcom/inmobi/ads/w;->M()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Found expired adUnit for placement("

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), thus clearing it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0}, Lcom/inmobi/ads/w;->r()V

    .line 59
    :cond_0
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 60
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/w;->a(Landroid/app/Activity;)V

    .line 64
    :goto_0
    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {v0, p2}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;)V

    .line 71
    :cond_1
    :goto_1
    return-object v0

    .line 62
    :cond_2
    invoke-virtual {v0, p0}, Lcom/inmobi/ads/w;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 69
    :cond_3
    new-instance v0, Lcom/inmobi/ads/w;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/w;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;B)V

    .line 70
    sget-object v1, Lcom/inmobi/ads/w$a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
