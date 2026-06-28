.class Lcom/inmobi/ads/t;
.super Ljava/lang/Object;
.source "InMobiMoatFactory.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Z

.field private static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 29
    const-class v0, Lcom/inmobi/ads/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/t;->a:Ljava/lang/String;

    .line 31
    const-string v0, "row"

    const-string v1, "staging"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    sput-boolean v2, Lcom/inmobi/ads/t;->b:Z

    .line 34
    sput-boolean v2, Lcom/inmobi/ads/t;->c:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/app/Application;Ljava/lang/String;Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;"
        }
    .end annotation

    .prologue
    .line 79
    sget-boolean v0, Lcom/inmobi/ads/t;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/inmobi/ads/t;->a(Landroid/app/Application;)V

    .line 81
    :cond_0
    invoke-static {}, Lcom/moat/analytics/mobile/inm/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/inm/MoatAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/inm/MoatAnalytics;->prepareNativeDisplayTracking(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcom/moat/analytics/mobile/inm/MoatFactory;->create()Lcom/moat/analytics/mobile/inm/MoatFactory;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/moat/analytics/mobile/inm/MoatFactory;->createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/Application;Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;
    .locals 2

    .prologue
    .line 93
    sget-boolean v0, Lcom/inmobi/ads/t;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/inmobi/ads/t;->a(Landroid/app/Application;)V

    .line 95
    :cond_0
    invoke-static {}, Lcom/moat/analytics/mobile/inm/MoatFactory;->create()Lcom/moat/analytics/mobile/inm/MoatFactory;

    move-result-object v0

    new-instance v1, Lcom/moat/analytics/mobile/inm/ReactiveVideoTrackerPlugin;

    invoke-direct {v1, p1}, Lcom/moat/analytics/mobile/inm/ReactiveVideoTrackerPlugin;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/moat/analytics/mobile/inm/MoatFactory;->createCustomTracker(Lcom/moat/analytics/mobile/inm/MoatPlugin;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/inm/ReactiveVideoTracker;

    return-object v0
.end method

.method static a(Landroid/app/Application;Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/inmobi/ads/t;->c:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/inmobi/ads/t;->a(Landroid/app/Application;)V

    .line 65
    :cond_0
    invoke-static {}, Lcom/moat/analytics/mobile/inm/MoatFactory;->create()Lcom/moat/analytics/mobile/inm/MoatFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/moat/analytics/mobile/inm/MoatFactory;->createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/inm/WebAdTracker;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/app/Application;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 37
    sget-boolean v1, Lcom/inmobi/ads/t;->c:Z

    if-eqz v1, :cond_0

    .line 54
    :goto_0
    return-void

    .line 39
    :cond_0
    :try_start_0
    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatOptions;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/inm/MoatOptions;-><init>()V

    .line 40
    sget-boolean v2, Lcom/inmobi/ads/t;->b:Z

    iput-boolean v2, v1, Lcom/moat/analytics/mobile/inm/MoatOptions;->loggingEnabled:Z

    .line 41
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v2

    .line 1081
    iget-object v2, v2, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 1167
    iget-object v2, v2, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 41
    invoke-virtual {v2}, Lcom/inmobi/signals/p$b;->a()Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    iput-boolean v0, v1, Lcom/moat/analytics/mobile/inm/MoatOptions;->disableLocationServices:Z

    .line 42
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->h()Ljava/lang/Boolean;

    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/moat/analytics/mobile/inm/MoatOptions;->disableAdIdCollection:Z

    .line 46
    :cond_2
    invoke-static {}, Lcom/moat/analytics/mobile/inm/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/inm/MoatAnalytics;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/moat/analytics/mobile/inm/MoatAnalytics;->start(Lcom/moat/analytics/mobile/inm/MoatOptions;Landroid/app/Application;)V

    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/ads/t;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in initializing the Moat library : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 41
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
