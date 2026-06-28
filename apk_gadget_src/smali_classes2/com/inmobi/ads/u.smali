.class Lcom/inmobi/ads/u;
.super Lcom/inmobi/ads/br;
.source "InMobiTrackedNativeV2DisplayAd.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/inmobi/ads/ViewableAd;

.field private final g:Lcom/inmobi/ads/ad;

.field private final h:Lcom/inmobi/ads/ac;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/inmobi/ads/u;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/u;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ViewableAd;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p2}, Lcom/inmobi/ads/br;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 29
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/u;->e:Ljava/lang/ref/WeakReference;

    .line 30
    iput-object p3, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    .line 31
    iput-object p2, p0, Lcom/inmobi/ads/u;->h:Lcom/inmobi/ads/ac;

    .line 32
    new-instance v0, Lcom/inmobi/ads/ad;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/inmobi/ads/ad;-><init>(I)V

    iput-object v0, p0, Lcom/inmobi/ads/u;->g:Lcom/inmobi/ads/ad;

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4

    .prologue
    .line 38
    .line 1049
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/inmobi/ads/u;->g:Lcom/inmobi/ads/ad;

    iget-object v2, p0, Lcom/inmobi/ads/u;->h:Lcom/inmobi/ads/ac;

    invoke-virtual {v2}, Lcom/inmobi/ads/ac;->d()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/u;->h:Lcom/inmobi/ads/ac;

    invoke-virtual {v1, v2, v0, v3}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;)V

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V
    .locals 3

    .prologue
    .line 106
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/u$1;->a:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/ViewableAd$ActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    .line 122
    :goto_1
    return-void

    .line 108
    :pswitch_0
    :try_start_1
    invoke-static {p1}, Lcom/inmobi/ads/ad;->a(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in onActivityStateChanged with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    goto :goto_1

    .line 111
    :pswitch_1
    :try_start_3
    invoke-static {p1}, Lcom/inmobi/ads/ad;->b(Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    throw v0

    .line 114
    :pswitch_2
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/ads/u;->g:Lcom/inmobi/ads/ad;

    .line 5286
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 101
    return-void
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 6

    .prologue
    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/u;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 2049
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v2

    .line 2060
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v0

    .line 2531
    iget-object v5, v0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 3093
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 69
    check-cast v0, Lcom/inmobi/ads/ac;

    .line 70
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 3532
    iget-boolean v3, v0, Lcom/inmobi/ads/ac;->i:Z

    .line 70
    if-nez v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/inmobi/ads/u;->g:Lcom/inmobi/ads/ad;

    invoke-virtual {v3, v1, v2, v0, v5}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/b$h;)V

    .line 72
    iget-object v0, p0, Lcom/inmobi/ads/u;->g:Lcom/inmobi/ads/ad;

    iget-object v3, p0, Lcom/inmobi/ads/u;->h:Lcom/inmobi/ads/ac;

    iget-object v4, p0, Lcom/inmobi/ads/u;->h:Lcom/inmobi/ads/ac;

    iget-object v4, v4, Lcom/inmobi/ads/ac;->y:Lcom/inmobi/ads/ad$a;

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ad$a;Lcom/inmobi/ads/b$h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    .line 80
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in startTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    throw v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 86
    .line 4093
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 86
    check-cast v0, Lcom/inmobi/ads/ac;

    .line 4532
    iget-boolean v1, v0, Lcom/inmobi/ads/ac;->i:Z

    .line 87
    if-nez v1, :cond_0

    .line 88
    iget-object v2, p0, Lcom/inmobi/ads/u;->g:Lcom/inmobi/ads/ad;

    iget-object v1, p0, Lcom/inmobi/ads/u;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;Lcom/inmobi/ads/ac;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 95
    :goto_0
    return-void

    .line 90
    :catch_0
    move-exception v0

    .line 91
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in stopTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->d()V

    throw v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/inmobi/ads/u;->g:Lcom/inmobi/ads/ad;

    iget-object v1, p0, Lcom/inmobi/ads/u;->h:Lcom/inmobi/ads/ac;

    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->d()Landroid/content/Context;

    move-result-object v1

    .line 6049
    iget-object v2, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v2}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v2

    .line 127
    iget-object v3, p0, Lcom/inmobi/ads/u;->h:Lcom/inmobi/ads/ac;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;)V

    .line 128
    invoke-super {p0}, Lcom/inmobi/ads/br;->e()V

    .line 129
    iget-object v0, p0, Lcom/inmobi/ads/u;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 130
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    .line 131
    return-void
.end method

.method public final f()Lcom/inmobi/ads/ViewableAd$a;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/inmobi/ads/u;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->f()Lcom/inmobi/ads/ViewableAd$a;

    move-result-object v0

    return-object v0
.end method
