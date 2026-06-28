.class final Lcom/inmobi/ads/bt;
.super Lcom/inmobi/ads/ViewableAd;
.source "ViewableNativeV2DisplayAd.java"


# instance fields
.field private final d:Lcom/inmobi/ads/ac;

.field private e:Z

.field private f:Lcom/inmobi/rendering/RenderView;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ac;Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ViewableAd;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bt;->e:Z

    .line 25
    iput-object p1, p0, Lcom/inmobi/ads/bt;->d:Lcom/inmobi/ads/ac;

    .line 26
    iput-object p2, p0, Lcom/inmobi/ads/bt;->f:Lcom/inmobi/rendering/RenderView;

    .line 27
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 38
    iget-boolean v1, p0, Lcom/inmobi/ads/bt;->e:Z

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return-object v0

    .line 39
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/bt;->d:Lcom/inmobi/ads/ac;

    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->j()Landroid/content/Context;

    move-result-object v1

    .line 40
    if-eqz v1, :cond_0

    .line 41
    new-instance v0, Lcom/inmobi/ads/an;

    .line 2032
    iget-object v2, p0, Lcom/inmobi/ads/bt;->d:Lcom/inmobi/ads/ac;

    .line 2444
    iget-object v2, v2, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/b;

    .line 41
    iget-object v3, p0, Lcom/inmobi/ads/bt;->d:Lcom/inmobi/ads/ac;

    iget-object v4, p0, Lcom/inmobi/ads/bt;->d:Lcom/inmobi/ads/ac;

    .line 42
    invoke-virtual {v4}, Lcom/inmobi/ads/ac;->h()Lcom/inmobi/ads/ai;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/an;-><init>(Landroid/content/Context;Lcom/inmobi/ads/b;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ai;)V

    iput-object v0, p0, Lcom/inmobi/ads/bt;->b:Lcom/inmobi/ads/ViewableAd$a;

    .line 43
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "Ad markup loaded into the container will be inflated into a View."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/inmobi/ads/bt;->b:Lcom/inmobi/ads/ViewableAd$a;

    iget-object v1, p0, Lcom/inmobi/ads/bt;->f:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/inmobi/ads/ViewableAd$a;->a(Landroid/view/View;Landroid/view/ViewGroup;ZLcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v0

    .line 48
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bt;->a(Landroid/view/View;)V

    .line 49
    iget-object v1, p0, Lcom/inmobi/ads/bt;->d:Lcom/inmobi/ads/ac;

    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->t()V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public final a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method final c()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/inmobi/ads/bt;->d:Lcom/inmobi/ads/ac;

    .line 1444
    iget-object v0, v0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/b;

    .line 32
    return-object v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 67
    iget-boolean v0, p0, Lcom/inmobi/ads/bt;->e:Z

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bt;->e:Z

    .line 69
    iget-object v0, p0, Lcom/inmobi/ads/bt;->b:Lcom/inmobi/ads/ViewableAd$a;

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/inmobi/ads/bt;->b:Lcom/inmobi/ads/ViewableAd$a;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd$a;->a()V

    .line 72
    :cond_1
    invoke-super {p0}, Lcom/inmobi/ads/ViewableAd;->e()V

    goto :goto_0
.end method
