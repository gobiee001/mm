.class final Lcom/inmobi/ads/AdUnit$10;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inmobi/ads/AdUnit;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1871
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$10;->b:Lcom/inmobi/ads/AdUnit;

    iput-object p2, p0, Lcom/inmobi/ads/AdUnit$10;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 1874
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$10;->b:Lcom/inmobi/ads/AdUnit;

    .line 2316
    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 1874
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$10;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1875
    invoke-static {}, Lcom/inmobi/ads/c;->a()Lcom/inmobi/ads/c;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$10;->b:Lcom/inmobi/ads/AdUnit;

    .line 3316
    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 1875
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$10;->a:Ljava/lang/String;

    .line 4282
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v3

    .line 4285
    invoke-static {v1}, Lcom/inmobi/ads/c;->b(Ljava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v4

    .line 4286
    if-eqz v4, :cond_0

    .line 4497
    iput-object v2, v4, Lcom/inmobi/ads/a;->g:Ljava/lang/String;

    .line 4288
    const-string v2, "ad"

    invoke-virtual {v4}, Lcom/inmobi/ads/a;->a()Landroid/content/ContentValues;

    move-result-object v4

    const-string v5, "imp_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v0

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/inmobi/commons/core/c/b;->b(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1876
    :cond_0
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Updated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "for blob "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$10;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    :goto_0
    return-void

    .line 1879
    :cond_1
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    goto :goto_0
.end method
