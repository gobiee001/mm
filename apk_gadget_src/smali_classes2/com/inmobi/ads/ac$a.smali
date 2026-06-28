.class final Lcom/inmobi/ads/ac$a;
.super Ljava/lang/Thread;
.source "NativeAdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ac;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ac;)V
    .locals 1

    .prologue
    .line 1718
    iput-object p1, p0, Lcom/inmobi/ads/ac$a;->a:Lcom/inmobi/ads/ac;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1719
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/ac$a;->b:Ljava/lang/ref/WeakReference;

    .line 1720
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    .line 1729
    iget-object v0, p0, Lcom/inmobi/ads/ac$a;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->l()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1730
    invoke-static {}, Lcom/inmobi/ads/ac;->u()Ljava/lang/String;

    .line 1781
    :cond_0
    :goto_0
    return-void

    .line 1734
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/inmobi/ads/ac;

    .line 1735
    if-eqz v8, :cond_0

    .line 2532
    iget-boolean v0, v8, Lcom/inmobi/ads/ac;->i:Z

    .line 1735
    if-nez v0, :cond_0

    .line 1738
    :try_start_0
    invoke-virtual {v8}, Lcom/inmobi/ads/ac;->h()Lcom/inmobi/ads/ai;

    move-result-object v3

    .line 1743
    iget-object v0, p0, Lcom/inmobi/ads/ac$a;->a:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->l()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3330
    iget-object v0, v3, Lcom/inmobi/ads/ai;->e:Lorg/json/JSONArray;

    .line 1743
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 1744
    :cond_2
    invoke-static {}, Lcom/inmobi/ads/ac;->u()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1774
    :catch_0
    move-exception v0

    .line 1775
    invoke-static {}, Lcom/inmobi/ads/ac;->u()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in EndCardBuilder: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1776
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1779
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 1748
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/inmobi/ads/ac;->u()Ljava/lang/String;

    .line 1751
    invoke-virtual {v3}, Lcom/inmobi/ads/ai;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 1752
    if-eqz v2, :cond_0

    .line 1754
    new-instance v0, Lcom/inmobi/ads/ai;

    iget-object v1, p0, Lcom/inmobi/ads/ac$a;->a:Lcom/inmobi/ads/ac;

    .line 3363
    iget-object v1, v1, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 4070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 1755
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ai;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/b$g;Lcom/inmobi/ads/bp;)V

    .line 1757
    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1762
    iget-object v1, p0, Lcom/inmobi/ads/ac$a;->a:Lcom/inmobi/ads/ac;

    .line 1763
    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->l()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    iget-object v3, p0, Lcom/inmobi/ads/ac$a;->a:Lcom/inmobi/ads/ac;

    .line 4381
    iget-object v4, v3, Lcom/inmobi/ads/ac;->d:Ljava/lang/String;

    .line 1764
    iget-object v3, p0, Lcom/inmobi/ads/ac$a;->a:Lcom/inmobi/ads/ac;

    .line 4385
    iget-object v5, v3, Lcom/inmobi/ads/ac;->e:Ljava/lang/String;

    .line 1764
    const/4 v6, 0x0

    iget-object v3, p0, Lcom/inmobi/ads/ac$a;->a:Lcom/inmobi/ads/ac;

    iget-object v7, v3, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/b;

    move-object v3, v0

    .line 1763
    invoke-static/range {v1 .. v7}, Lcom/inmobi/ads/ac$b;->a(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/ai;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/b;)Lcom/inmobi/ads/ac;

    move-result-object v0

    .line 1766
    invoke-static {}, Lcom/inmobi/ads/ac;->u()Ljava/lang/String;

    .line 1767
    invoke-virtual {v0, v8}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdContainer;)V

    .line 4606
    iget-object v1, v8, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 5601
    iput-object v1, v0, Lcom/inmobi/ads/ac;->t:Lcom/inmobi/rendering/RenderView;

    .line 1769
    invoke-static {v8, v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ac;)V

    goto/16 :goto_0

    .line 1771
    :cond_4
    invoke-static {}, Lcom/inmobi/ads/ac;->u()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
