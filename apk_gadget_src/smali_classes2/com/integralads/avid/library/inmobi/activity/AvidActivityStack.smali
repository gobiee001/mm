.class public Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;
.super Ljava/lang/Object;
.source "AvidActivityStack.java"


# static fields
.field private static avidActivityStackInstance:Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;


# instance fields
.field private final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->avidActivityStackInstance:Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;

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

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    return-void
.end method

.method public static getInstance()Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->avidActivityStackInstance:Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;

    return-object v0
.end method

.method private getRootView(Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1}, Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 86
    if-nez v0, :cond_1

    move-object v0, v1

    .line 94
    :cond_0
    :goto_0
    return-object v0

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v0, v1

    .line 91
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->find(Landroid/app/Activity;)Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    new-instance v1, Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;

    invoke-direct {v1, p1}, Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    return-void
.end method

.method public cleanup()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 54
    return-void
.end method

.method find(Landroid/app/Activity;)Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;

    .line 59
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRootViews()Ljava/util/List;
    .locals 5
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
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const/4 v1, 0x0

    .line 35
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->activities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;

    .line 37
    invoke-virtual {p0, v0}, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->isFinished(Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 38
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 41
    :cond_0
    invoke-direct {p0, v0}, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->getRootView(Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;)Landroid/view/View;

    move-result-object v0

    .line 42
    if-eqz v0, :cond_3

    :goto_1
    move-object v1, v0

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    return-object v2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method isFinished(Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;)Z
    .locals 3

    .prologue
    .line 73
    invoke-virtual {p1}, Lcom/integralads/avid/library/inmobi/weakreference/AvidActivity;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 74
    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    .line 77
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    goto :goto_0
.end method
