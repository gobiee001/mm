.class public Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;
.super Ljava/lang/Object;
.source "AvidActivityStack.java"


# static fields
.field private static avidActivityStackInstance:Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;


# instance fields
.field private final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    invoke-direct {v0}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->avidActivityStackInstance:Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->avidActivityStackInstance:Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;

    return-object v0
.end method

.method private getRootView(Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;)Landroid/view/View;
    .locals 5
    .param p1, "avidActivity"    # Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 86
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 94
    :cond_0
    :goto_0
    return-object v3

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 90
    .local v2, "window":Landroid/view/Window;
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_2

    .end local v1    # "rootView":Landroid/view/View;
    :goto_1
    move-object v3, v1

    goto :goto_0

    .restart local v1    # "rootView":Landroid/view/View;
    :cond_2
    move-object v1, v3

    goto :goto_1
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->find(Landroid/app/Activity;)Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    new-instance v1, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;

    invoke-direct {v1, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    return-void
.end method

.method find(Landroid/app/Activity;)Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    iget-object v1, p0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;

    .line 59
    .local v0, "avidActivity":Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    .end local v0    # "avidActivity":Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRootViews()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 35
    .local v2, "rootView":Landroid/view/View;
    iget-object v5, p0, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;

    .line 37
    .local v0, "avidActivity":Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;
    invoke-virtual {p0, v0}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->isFinished(Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 38
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 41
    :cond_1
    invoke-direct {p0, v0}, Lcom/integralads/avid/library/mopub/activity/AvidActivityStack;->getRootView(Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;)Landroid/view/View;

    move-result-object v3

    .line 42
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_0

    .line 43
    move-object v2, v3

    goto :goto_0

    .line 46
    .end local v0    # "avidActivity":Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    if-eqz v2, :cond_3

    .line 47
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_3
    return-object v4
.end method

.method isFinished(Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;)Z
    .locals 3
    .param p1, "avidActivity"    # Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidActivity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 74
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 75
    const/4 v1, 0x1

    .line 80
    :goto_0
    return v1

    .line 77
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    goto :goto_0
.end method
