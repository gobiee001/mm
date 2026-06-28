.class final Lcom/inmobi/ads/o;
.super Lcom/inmobi/ads/bv;
.source "DecorViewVisibilityTracker.java"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field private f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/inmobi/ads/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/o;->e:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/bv$a;Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/inmobi/ads/bv;-><init>(Lcom/inmobi/ads/bv$a;)V

    .line 32
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 33
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/ads/o;->g:Ljava/lang/ref/WeakReference;

    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    new-instance v1, Lcom/inmobi/ads/o$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/o$1;-><init>(Lcom/inmobi/ads/o;)V

    iput-object v1, p0, Lcom/inmobi/ads/o;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 46
    iget-object v1, p0, Lcom/inmobi/ads/o;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 48
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/inmobi/ads/o;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/inmobi/ads/o;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x64

    return v0
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 57
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 61
    .line 1152
    iget-boolean v0, p0, Lcom/inmobi/ads/bv;->a:Z

    .line 61
    if-nez v0, :cond_0

    .line 62
    invoke-direct {p0}, Lcom/inmobi/ads/o;->h()V

    .line 63
    invoke-super {p0}, Lcom/inmobi/ads/bv;->c()V

    .line 65
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 71
    .line 2152
    iget-boolean v0, p0, Lcom/inmobi/ads/bv;->a:Z

    .line 71
    if-eqz v0, :cond_1

    .line 3081
    iget-object v0, p0, Lcom/inmobi/ads/o;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 3082
    if-eqz v0, :cond_0

    .line 3083
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3084
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3088
    iget-object v1, p0, Lcom/inmobi/ads/o;->f:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 73
    :cond_0
    invoke-super {p0}, Lcom/inmobi/ads/bv;->d()V

    .line 75
    :cond_1
    return-void
.end method

.method protected final e()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/inmobi/ads/o;->h()V

    .line 109
    invoke-super {p0}, Lcom/inmobi/ads/bv;->e()V

    .line 110
    return-void
.end method
