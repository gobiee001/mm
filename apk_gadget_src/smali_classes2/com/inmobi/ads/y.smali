.class public Lcom/inmobi/ads/y;
.super Lcom/inmobi/ads/br;
.source "MoatTrackedHtmlAd.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/inmobi/ads/ViewableAd;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/moat/analytics/mobile/inm/WebAdTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/inmobi/ads/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/y;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/AdContainer;Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/AdContainer;",
            "Landroid/app/Activity;",
            "Lcom/inmobi/ads/ViewableAd;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/inmobi/ads/br;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/y;->e:Ljava/lang/ref/WeakReference;

    .line 36
    iput-object p3, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    .line 37
    iput-object p4, p0, Lcom/inmobi/ads/y;->g:Ljava/util/Map;

    .line 38
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    .line 127
    return-void
.end method

.method public final a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 122
    return-void
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 4

    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/y;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 1061
    iget-object v2, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v2}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v2

    .line 1531
    iget-object v2, v2, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 1753
    iget-boolean v2, v2, Lcom/inmobi/ads/b$h;->i:Z

    .line 70
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/inmobi/ads/y;->g:Ljava/util/Map;

    const-string v3, "enabled"

    .line 71
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    iget-object v2, p0, Lcom/inmobi/ads/y;->h:Lcom/moat/analytics/mobile/inm/WebAdTracker;

    if-nez v2, :cond_0

    .line 2093
    iget-object v2, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 77
    instance-of v2, v2, Lcom/inmobi/ads/ac;

    if-eqz v2, :cond_2

    .line 3093
    iget-object v2, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 78
    check-cast v2, Lcom/inmobi/ads/ac;

    .line 79
    invoke-virtual {v2}, Lcom/inmobi/ads/ac;->s()Lcom/inmobi/rendering/RenderView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 81
    invoke-virtual {v2}, Lcom/inmobi/ads/ac;->s()Lcom/inmobi/rendering/RenderView;

    move-result-object v2

    .line 80
    invoke-static {v1, v2}, Lcom/inmobi/ads/t;->a(Landroid/app/Application;Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/y;->h:Lcom/moat/analytics/mobile/inm/WebAdTracker;

    .line 91
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/inmobi/ads/y;->h:Lcom/moat/analytics/mobile/inm/WebAdTracker;

    invoke-interface {v1}, Lcom/moat/analytics/mobile/inm/WebAdTracker;->startTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    .line 100
    :goto_1
    return-void

    .line 4055
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v2}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v3

    move-object v0, v2

    check-cast v0, Landroid/webkit/WebView;

    move-object v1, v0

    invoke-static {v3, v1}, Lcom/inmobi/ads/t;->a(Landroid/app/Application;Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/y;->h:Lcom/moat/analytics/mobile/inm/WebAdTracker;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in startTrackingForImpression with message : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    iget-object v1, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v2, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    throw v1
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/y;->h:Lcom/moat/analytics/mobile/inm/WebAdTracker;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/inmobi/ads/y;->h:Lcom/moat/analytics/mobile/inm/WebAdTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/WebAdTracker;->stopTracking()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 116
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in stopTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    iget-object v0, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->d()V

    throw v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/y;->h:Lcom/moat/analytics/mobile/inm/WebAdTracker;

    .line 132
    iget-object v0, p0, Lcom/inmobi/ads/y;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 133
    invoke-super {p0}, Lcom/inmobi/ads/br;->e()V

    .line 134
    iget-object v0, p0, Lcom/inmobi/ads/y;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    .line 135
    return-void
.end method
