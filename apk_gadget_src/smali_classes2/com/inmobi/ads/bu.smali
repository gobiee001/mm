.class final Lcom/inmobi/ads/bu;
.super Lcom/inmobi/ads/ViewableAd;
.source "ViewableNativeV2VideoAd.java"


# instance fields
.field private final d:Lcom/inmobi/ads/ay;

.field private e:Z


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ay;)V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ViewableAd;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bu;->e:Z

    .line 18
    iput-object p1, p0, Lcom/inmobi/ads/bu;->d:Lcom/inmobi/ads/ay;

    .line 19
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 30
    iget-boolean v1, p0, Lcom/inmobi/ads/bu;->e:Z

    if-eqz v1, :cond_1

    .line 40
    :cond_0
    :goto_0
    return-object v0

    .line 31
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/bu;->d:Lcom/inmobi/ads/ay;

    invoke-virtual {v1}, Lcom/inmobi/ads/ay;->j()Landroid/content/Context;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    new-instance v2, Lcom/inmobi/ads/an;

    .line 2024
    iget-object v3, p0, Lcom/inmobi/ads/bu;->d:Lcom/inmobi/ads/ay;

    .line 2444
    iget-object v3, v3, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/b;

    .line 33
    iget-object v4, p0, Lcom/inmobi/ads/bu;->d:Lcom/inmobi/ads/ay;

    iget-object v5, p0, Lcom/inmobi/ads/bu;->d:Lcom/inmobi/ads/ay;

    .line 34
    invoke-virtual {v5}, Lcom/inmobi/ads/ay;->h()Lcom/inmobi/ads/ai;

    move-result-object v5

    invoke-direct {v2, v1, v3, v4, v5}, Lcom/inmobi/ads/an;-><init>(Landroid/content/Context;Lcom/inmobi/ads/b;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ai;)V

    iput-object v2, p0, Lcom/inmobi/ads/bu;->b:Lcom/inmobi/ads/ViewableAd$a;

    .line 37
    iget-object v1, p0, Lcom/inmobi/ads/bu;->b:Lcom/inmobi/ads/ViewableAd$a;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/inmobi/ads/ViewableAd$a;->a(Landroid/view/View;Landroid/view/ViewGroup;ZLcom/inmobi/rendering/RenderView;)Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bu;->a(Landroid/view/View;)V

    .line 39
    iget-object v1, p0, Lcom/inmobi/ads/bu;->d:Lcom/inmobi/ads/ay;

    invoke-virtual {v1}, Lcom/inmobi/ads/ay;->t()V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public final a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method final c()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/inmobi/ads/bu;->d:Lcom/inmobi/ads/ay;

    .line 1444
    iget-object v0, v0, Lcom/inmobi/ads/ac;->c:Lcom/inmobi/ads/b;

    .line 24
    return-object v0
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/inmobi/ads/bu;->e:Z

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bu;->e:Z

    .line 59
    iget-object v0, p0, Lcom/inmobi/ads/bu;->b:Lcom/inmobi/ads/ViewableAd$a;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/inmobi/ads/bu;->b:Lcom/inmobi/ads/ViewableAd$a;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd$a;->a()V

    .line 62
    :cond_1
    invoke-super {p0}, Lcom/inmobi/ads/ViewableAd;->e()V

    goto :goto_0
.end method
