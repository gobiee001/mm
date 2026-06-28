.class Lcom/inmobi/ads/z;
.super Lcom/inmobi/ads/br;
.source "MoatTrackedNativeV2DisplayAd.java"


# instance fields
.field private final d:Ljava/lang/String;

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

.field private f:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

.field private g:Ljava/util/Map;
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

.field private h:Lcom/inmobi/ads/ViewableAd;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    .line 45
    invoke-direct {p0}, Lcom/inmobi/ads/br;-><init>()V

    .line 28
    const-class v0, Lcom/inmobi/ads/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/z;->d:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/z;->e:Ljava/lang/ref/WeakReference;

    .line 47
    iput-object p2, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    .line 48
    iput-object p3, p0, Lcom/inmobi/ads/z;->g:Ljava/util/Map;

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/z;)Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/ads/z;->f:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    .line 157
    return-void
.end method

.method public final a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 3

    .prologue
    .line 140
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_CLICK_THRU:Lcom/inmobi/ads/ViewableAd$AdEvent;

    if-ne v0, p1, :cond_0

    .line 141
    iget-object v0, p0, Lcom/inmobi/ads/z;->f:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    sget-object v1, Lcom/moat/analytics/mobile/inm/NativeDisplayTracker$MoatUserInteractionType;->CLICK:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker$MoatUserInteractionType;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;->reportUserInteractionEvent(Lcom/moat/analytics/mobile/inm/NativeDisplayTracker$MoatUserInteractionType;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received click event for DisplayTracker("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/ads/z;->f:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 151
    :goto_0
    return-void

    .line 146
    :catch_0
    move-exception v0

    .line 147
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in onAdEvent with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    throw v0
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 8

    .prologue
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 84
    if-nez v3, :cond_0

    .line 116
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    .line 117
    :goto_0
    return-void

    .line 86
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/z;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1077
    iget-object v1, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v1

    .line 1531
    iget-object v1, v1, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 1753
    iget-boolean v1, v1, Lcom/inmobi/ads/b$h;->i:Z

    .line 88
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/inmobi/ads/z;->g:Ljava/util/Map;

    const-string v2, "enabled"

    .line 89
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/inmobi/ads/z;->f:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    if-nez v1, :cond_1

    .line 92
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v4

    iget-object v0, p0, Lcom/inmobi/ads/z;->g:Ljava/util/Map;

    const-string v1, "partnerCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2168
    const-string v5, "moatClientLevel"

    const-string v6, "moatClientSlicer"

    iget-object v1, p0, Lcom/inmobi/ads/z;->g:Ljava/util/Map;

    const-string v2, "clientLevels"

    .line 2170
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    iget-object v2, p0, Lcom/inmobi/ads/z;->g:Ljava/util/Map;

    const-string v7, "clientSlicers"

    .line 2171
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONArray;

    .line 2168
    invoke-static {v5, v6, v1, v2}, Lcom/inmobi/ads/AdUnit$c;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v2

    .line 2172
    const-string v5, "zMoatIID"

    iget-object v1, p0, Lcom/inmobi/ads/z;->g:Ljava/util/Map;

    const-string v6, "zMoatIID"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    invoke-static {v4, v0, v3, v2}, Lcom/inmobi/ads/t;->a(Landroid/app/Application;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/z;->f:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    .line 96
    :cond_1
    new-instance v0, Lcom/inmobi/ads/z$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/z$1;-><init>(Lcom/inmobi/ads/z;)V

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v0, p0, Lcom/inmobi/ads/z;->f:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;->startTracking()V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moat initialized for Native Display for ID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/ads/z;->g:Ljava/util/Map;

    const-string v2, "zMoatIID"

    .line 109
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    goto/16 :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in startTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    throw v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/z;->f:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/inmobi/ads/z;->f:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    invoke-interface {v0}, Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;->stopTracking()V

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moat stopped tracking for Native Display for ID : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/ads/z;->g:Ljava/util/Map;

    const-string v2, "zMoatIID"

    .line 126
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 134
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in stopTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->d()V

    throw v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/z;->f:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    .line 162
    iget-object v0, p0, Lcom/inmobi/ads/z;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 163
    invoke-super {p0}, Lcom/inmobi/ads/br;->e()V

    .line 164
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    .line 165
    return-void
.end method

.method public final f()Lcom/inmobi/ads/ViewableAd$a;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/inmobi/ads/z;->h:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->f()Lcom/inmobi/ads/ViewableAd$a;

    move-result-object v0

    return-object v0
.end method
