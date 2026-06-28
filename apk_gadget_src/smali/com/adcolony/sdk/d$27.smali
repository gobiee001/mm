.class Lcom/adcolony/sdk/d$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d;->a(Lcom/adcolony/sdk/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/c;

.field final synthetic b:Lcom/adcolony/sdk/d;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d;Lcom/adcolony/sdk/c;)V
    .locals 0

    .prologue
    .line 836
    iput-object p1, p0, Lcom/adcolony/sdk/d$27;->b:Lcom/adcolony/sdk/d;

    iput-object p2, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 839
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/ah;

    invoke-static {v0, v1}, Lcom/adcolony/sdk/a;->b(Ljava/lang/String;Lcom/adcolony/sdk/ah;)V

    .line 839
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->o()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 843
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->n()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 844
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->removeAllViews()V

    .line 845
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    iput-object v3, v0, Lcom/adcolony/sdk/c;->d:Landroid/widget/VideoView;

    .line 846
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    iput-object v3, v0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    .line 847
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "Destroying container tied to ad_session_id = "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 848
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/u;

    .line 849
    invoke-virtual {v0}, Lcom/adcolony/sdk/u;->b()Z

    goto :goto_1

    .line 853
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bb;

    .line 854
    invoke-virtual {v0}, Lcom/adcolony/sdk/bb;->g()Z

    move-result v2

    if-nez v2, :cond_2

    .line 855
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v2

    invoke-virtual {v0}, Lcom/adcolony/sdk/bb;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/adcolony/sdk/l;->a(I)Z

    .line 856
    const-string v2, "about:blank"

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/bb;->loadUrl(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/bb;->clearCache(Z)V

    .line 858
    invoke-virtual {v0}, Lcom/adcolony/sdk/bb;->removeAllViews()V

    .line 859
    invoke-virtual {v0, v4}, Lcom/adcolony/sdk/bb;->a(Z)V

    goto :goto_2

    .line 863
    :cond_3
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "Stopping and releasing all media players associated with VideoViews tied to ad_session_id = "

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->a(Ljava/lang/String;)Lcom/adcolony/sdk/aa;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v1}, Lcom/adcolony/sdk/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 864
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/ba;

    .line 865
    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->d()V

    .line 866
    invoke-virtual {v0}, Lcom/adcolony/sdk/ba;->g()V

    goto :goto_3

    .line 869
    :cond_4
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 870
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->f()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 871
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 872
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->g()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 873
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->k()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 874
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->m()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 875
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->j()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 876
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    invoke-virtual {v0}, Lcom/adcolony/sdk/c;->l()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 877
    iget-object v0, p0, Lcom/adcolony/sdk/d$27;->a:Lcom/adcolony/sdk/c;

    iput-boolean v4, v0, Lcom/adcolony/sdk/c;->a:Z

    .line 878
    return-void
.end method
