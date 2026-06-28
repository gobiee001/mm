.class Lcom/inmobi/ads/v;
.super Lcom/inmobi/ads/br;
.source "InMobiTrackedNativeV2VideoAd.java"


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
    .line 26
    const-class v0, Lcom/inmobi/ads/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/v;->d:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/ay;Lcom/inmobi/ads/ViewableAd;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/inmobi/ads/br;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Lcom/inmobi/ads/ay;->j()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/v;->e:Ljava/lang/ref/WeakReference;

    .line 41
    iput-object p2, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    .line 42
    iput-object p1, p0, Lcom/inmobi/ads/v;->h:Lcom/inmobi/ads/ac;

    .line 43
    new-instance v0, Lcom/inmobi/ads/ad;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inmobi/ads/ad;-><init>(I)V

    iput-object v0, p0, Lcom/inmobi/ads/v;->g:Lcom/inmobi/ads/ad;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4

    .prologue
    .line 49
    .line 1060
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/inmobi/ads/v;->g:Lcom/inmobi/ads/ad;

    iget-object v0, p0, Lcom/inmobi/ads/v;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v3, p0, Lcom/inmobi/ads/v;->h:Lcom/inmobi/ads/ac;

    invoke-virtual {v2, v0, v1, v3}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;)V

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V
    .locals 3

    .prologue
    .line 133
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/v$1;->a:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/ViewableAd$ActivityState;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 148
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    .line 149
    :goto_1
    return-void

    .line 135
    :pswitch_0
    :try_start_1
    invoke-static {p1}, Lcom/inmobi/ads/ad;->a(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in onActivityStateChanged with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 148
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    goto :goto_1

    .line 138
    :pswitch_1
    :try_start_3
    invoke-static {p1}, Lcom/inmobi/ads/ad;->b(Landroid/app/Activity;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 148
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    throw v0

    .line 141
    :pswitch_2
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/ads/v;->g:Lcom/inmobi/ads/ad;

    .line 5286
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received event : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 128
    return-void
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 7

    .prologue
    .line 77
    .line 1093
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 77
    check-cast v1, Lcom/inmobi/ads/ay;

    .line 78
    invoke-virtual {v1}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    move-object v3, v0

    .line 79
    iget-object v2, p0, Lcom/inmobi/ads/v;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 2071
    iget-object v4, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v4}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v4

    .line 2531
    iget-object v6, v4, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 82
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 2532
    iget-boolean v4, v1, Lcom/inmobi/ads/ac;->i:Z

    .line 82
    if-nez v4, :cond_0

    .line 85
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v4

    .line 86
    iget-object v3, p0, Lcom/inmobi/ads/v;->g:Lcom/inmobi/ads/ad;

    invoke-virtual {v3, v2, v4, v1, v6}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/b$h;)V

    .line 3060
    iget-object v3, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v3}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v3

    .line 90
    invoke-virtual {v4}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 91
    invoke-virtual {v4}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inmobi/ads/az;

    .line 92
    sget-object v5, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 3363
    iget-object v1, v1, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 4070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 93
    if-ne v5, v1, :cond_0

    .line 94
    invoke-virtual {v4}, Lcom/inmobi/ads/az;->v()Ljava/util/Map;

    move-result-object v1

    const-string v4, "isFullScreen"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/inmobi/ads/v;->g:Lcom/inmobi/ads/ad;

    iget-object v4, p0, Lcom/inmobi/ads/v;->h:Lcom/inmobi/ads/ac;

    iget-object v5, p0, Lcom/inmobi/ads/v;->h:Lcom/inmobi/ads/ac;

    check-cast v5, Lcom/inmobi/ads/ay;

    iget-object v5, v5, Lcom/inmobi/ads/ay;->A:Lcom/inmobi/ads/ad$a;

    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ad$a;Lcom/inmobi/ads/b$h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    .line 105
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in startTrackingForImpression with message : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    iget-object v1, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v2, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    throw v1
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/v;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 4093
    iget-object v1, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 112
    check-cast v1, Lcom/inmobi/ads/ay;

    .line 4532
    iget-boolean v2, v1, Lcom/inmobi/ads/ac;->i:Z

    .line 113
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 114
    iget-object v2, p0, Lcom/inmobi/ads/v;->g:Lcom/inmobi/ads/ad;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;Lcom/inmobi/ads/ac;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 121
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in stopTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->d()V

    throw v0
.end method

.method public final e()V
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lcom/inmobi/ads/v;->g:Lcom/inmobi/ads/ad;

    iget-object v0, p0, Lcom/inmobi/ads/v;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 6060
    iget-object v2, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v2}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/inmobi/ads/v;->h:Lcom/inmobi/ads/ac;

    invoke-virtual {v1, v0, v2, v3}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;)V

    .line 155
    invoke-super {p0}, Lcom/inmobi/ads/br;->e()V

    .line 156
    iget-object v0, p0, Lcom/inmobi/ads/v;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 157
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    .line 158
    return-void
.end method

.method public final f()Lcom/inmobi/ads/ViewableAd$a;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/inmobi/ads/v;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->f()Lcom/inmobi/ads/ViewableAd$a;

    move-result-object v0

    return-object v0
.end method
