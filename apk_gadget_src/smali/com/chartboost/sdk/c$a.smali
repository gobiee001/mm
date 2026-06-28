.class Lcom/chartboost/sdk/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/c;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/c;)V
    .locals 0

    .prologue
    .line 689
    iput-object p1, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/c;Lcom/chartboost/sdk/c$1;)V
    .locals 0

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/c$a;-><init>(Lcom/chartboost/sdk/c;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 692
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityCreated"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 693
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityCreated callback called"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->b(Landroid/app/Activity;)V

    .line 696
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 755
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityDestroyed"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 756
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 757
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityDestroyed callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->j(Landroid/app/Activity;)V

    .line 763
    :goto_0
    return-void

    .line 760
    :cond_0
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityDestroyed callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->k(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 725
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityPaused"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 726
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 727
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityPaused callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->g(Landroid/app/Activity;)V

    .line 734
    :goto_0
    return-void

    .line 730
    :cond_0
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityPaused callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 732
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->h()V

    goto :goto_0
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 712
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityResumed"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 713
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 714
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityResumed callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->f(Landroid/app/Activity;)V

    .line 721
    :goto_0
    return-void

    .line 717
    :cond_0
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityResumed callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->a(Landroid/app/Activity;)Lcom/chartboost/sdk/Libraries/j;

    .line 719
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0}, Lcom/chartboost/sdk/c;->g()V

    goto :goto_0
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 751
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 700
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityStarted"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 701
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 702
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityStarted callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->d(Landroid/app/Activity;)V

    .line 708
    :goto_0
    return-void

    .line 705
    :cond_0
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityStarted callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->e(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 738
    const-string v0, "CBUIManager.ActivityCallbackListener.onActivityStopped"

    invoke-static {v0, p1}, Lcom/chartboost/sdk/impl/ak;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 739
    instance-of v0, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    .line 740
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityStopped callback called from developer side"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->h(Landroid/app/Activity;)V

    .line 746
    :goto_0
    return-void

    .line 743
    :cond_0
    const-string v0, "CBUIManager"

    const-string v1, "######## onActivityStopped callback called from CBImpressionactivity"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/chartboost/sdk/c$a;->a:Lcom/chartboost/sdk/c;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/c;->i(Landroid/app/Activity;)V

    goto :goto_0
.end method
