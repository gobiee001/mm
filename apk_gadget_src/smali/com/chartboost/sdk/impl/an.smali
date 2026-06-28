.class public Lcom/chartboost/sdk/impl/an;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/an$a;
    }
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/an;->c()V

    .line 41
    return-void
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 49
    invoke-static {}, Lcom/chartboost/sdk/impl/an;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/an;->b:Z

    .line 50
    const-string v1, "VideoInit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Choosing "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/an;->b:Z

    if-eqz v0, :cond_1

    const-string v0, "texture"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " solution for video playback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/Libraries/CBLogging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v0

    .line 52
    iget-boolean v1, p0, Lcom/chartboost/sdk/impl/an;->b:Z

    if-eqz v1, :cond_2

    .line 53
    new-instance v1, Lcom/chartboost/sdk/impl/am;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/am;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/view/View;

    .line 56
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/view/View;

    const-string v1, "CBVideo"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/an;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/an;->b:Z

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/view/View;

    check-cast v0, Landroid/view/SurfaceView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 63
    :cond_0
    return-void

    .line 50
    :cond_1
    const-string v0, "surface"

    goto :goto_0

    .line 55
    :cond_2
    new-instance v1, Lcom/chartboost/sdk/impl/al;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/al;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/view/View;

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/impl/an$a;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/an;->a:Landroid/view/View;

    check-cast v0, Lcom/chartboost/sdk/impl/an$a;

    return-object v0
.end method

.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 76
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/an;->a()Lcom/chartboost/sdk/impl/an$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/chartboost/sdk/impl/an$a;->a(II)V

    .line 77
    return-void
.end method
