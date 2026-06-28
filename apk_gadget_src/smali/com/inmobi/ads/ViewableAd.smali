.class public abstract Lcom/inmobi/ads/ViewableAd;
.super Ljava/lang/Object;
.source "ViewableAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ViewableAd$ActivityState;,
        Lcom/inmobi/ads/ViewableAd$AdEvent;,
        Lcom/inmobi/ads/ViewableAd$a;
    }
.end annotation


# instance fields
.field a:Lcom/inmobi/ads/AdContainer;

.field b:Lcom/inmobi/ads/ViewableAd$a;

.field protected c:Ljava/lang/ref/WeakReference;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/AdContainer;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 80
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
.end method

.method public abstract a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 97
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/ViewableAd;->c:Ljava/lang/ref/WeakReference;

    .line 98
    return-void
.end method

.method public abstract a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
.end method

.method public varargs abstract a([Landroid/view/View;)V
.end method

.method public b()Landroid/view/View;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->c:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method c()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 102
    new-instance v0, Lcom/inmobi/ads/b;

    invoke-direct {v0}, Lcom/inmobi/ads/b;-><init>()V

    return-object v0
.end method

.method public abstract d()V
.end method

.method public e()V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->c:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 131
    :cond_0
    return-void
.end method

.method public f()Lcom/inmobi/ads/ViewableAd$a;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->b:Lcom/inmobi/ads/ViewableAd$a;

    return-object v0
.end method
