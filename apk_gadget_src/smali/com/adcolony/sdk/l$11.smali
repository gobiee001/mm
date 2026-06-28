.class Lcom/adcolony/sdk/l$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/l;->J()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/l;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/l;)V
    .locals 0

    .prologue
    .line 916
    iput-object p1, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 987
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/ao;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ao;->a(Z)V

    .line 992
    :cond_0
    invoke-static {p1}, Lcom/adcolony/sdk/a;->a(Landroid/app/Activity;)V

    .line 993
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 971
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 963
    sput-boolean v1, Lcom/adcolony/sdk/a;->b:Z

    .line 964
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ao;->d(Z)V

    .line 965
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/ao;->e(Z)V

    .line 966
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    iget-object v0, v0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->E()Z

    .line 967
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 920
    sput-boolean v2, Lcom/adcolony/sdk/a;->b:Z

    .line 921
    invoke-static {p1}, Lcom/adcolony/sdk/a;->a(Landroid/app/Activity;)V

    .line 922
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/ao;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/adcolony/sdk/b;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/b;

    check-cast v0, Lcom/adcolony/sdk/b;

    iget-boolean v0, v0, Lcom/adcolony/sdk/b;->g:Z

    if-nez v0, :cond_1

    .line 923
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "Ignoring onActivityResumed"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 926
    :cond_1
    sget-object v0, Lcom/adcolony/sdk/aa;->d:Lcom/adcolony/sdk/aa;

    const-string v1, "onActivityResumed() Activity Lifecycle Callback"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 927
    invoke-static {p1}, Lcom/adcolony/sdk/a;->a(Landroid/app/Activity;)V

    .line 933
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->k(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/af;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 934
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->k(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/af;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v1}, Lcom/adcolony/sdk/l;->k(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 935
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/adcolony/sdk/l;->c(Lcom/adcolony/sdk/l;Lcom/adcolony/sdk/af;)Lcom/adcolony/sdk/af;

    .line 939
    :cond_2
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0, v3}, Lcom/adcolony/sdk/l;->c(Lcom/adcolony/sdk/l;Z)Z

    .line 940
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/ao;->d(Z)V

    .line 941
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/ao;->e(Z)V

    .line 942
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/adcolony/sdk/ao;->f(Z)V

    .line 945
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    iget-boolean v0, v0, Lcom/adcolony/sdk/l;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/ao;->g()Z

    move-result v0

    if-nez v0, :cond_3

    .line 950
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->j(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/ao;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/ao;->a(Z)V

    .line 953
    :cond_3
    iget-object v0, p0, Lcom/adcolony/sdk/l$11;->a:Lcom/adcolony/sdk/l;

    invoke-static {v0}, Lcom/adcolony/sdk/l;->l(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/o;->a()V

    .line 954
    sget-object v0, Lcom/adcolony/sdk/ac;->l:Lcom/adcolony/sdk/al;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/adcolony/sdk/ac;->l:Lcom/adcolony/sdk/al;

    iget-object v0, v0, Lcom/adcolony/sdk/al;->d:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/adcolony/sdk/ac;->l:Lcom/adcolony/sdk/al;

    iget-object v0, v0, Lcom/adcolony/sdk/al;->d:Ljava/util/concurrent/ScheduledExecutorService;

    .line 956
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    :cond_4
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-static {v0}, Lcom/adcolony/sdk/l;->m(Lcom/adcolony/sdk/l;)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/adcolony/sdk/AdColony;->a(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;)V

    goto/16 :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 997
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 975
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 979
    return-void
.end method
