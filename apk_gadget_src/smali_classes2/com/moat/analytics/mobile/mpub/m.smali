.class Lcom/moat/analytics/mobile/mpub/m;
.super Lcom/moat/analytics/mobile/mpub/MoatFactory;


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/MoatFactory;-><init>()V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/mpub/m;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "MoatFactory"

    const-string v2, "Failed to initialize MoatFactory. Please check that you\'ve initialized the Moat SDK correctly."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/mpub/n;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/l;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/l;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;"
        }
    .end annotation

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/a/a/a;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/moat/analytics/mobile/mpub/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/moat/analytics/mobile/mpub/m$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/moat/analytics/mobile/mpub/m$3;-><init>(Lcom/moat/analytics/mobile/mpub/m;Ljava/lang/ref/WeakReference;Ljava/util/Map;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/q$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/q$a;-><init>()V

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/mpub/v;->a(Lcom/moat/analytics/mobile/mpub/v$a;Lcom/moat/analytics/mobile/mpub/v$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/moat/analytics/mobile/mpub/NativeVideoTracker;
    .locals 2

    new-instance v0, Lcom/moat/analytics/mobile/mpub/m$4;

    invoke-direct {v0, p0, p1}, Lcom/moat/analytics/mobile/mpub/m$4;-><init>(Lcom/moat/analytics/mobile/mpub/m;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/mpub/s$a;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/mpub/s$a;-><init>()V

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/mpub/v;->a(Lcom/moat/analytics/mobile/mpub/v$a;Lcom/moat/analytics/mobile/mpub/v$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/NativeVideoTracker;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;
    .locals 2

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/moat/analytics/mobile/mpub/m$2;

    invoke-direct {v1, p0, v0}, Lcom/moat/analytics/mobile/mpub/m$2;-><init>(Lcom/moat/analytics/mobile/mpub/m;Ljava/lang/ref/WeakReference;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/x$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/x$a;-><init>()V

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/mpub/v;->a(Lcom/moat/analytics/mobile/mpub/v$a;Lcom/moat/analytics/mobile/mpub/v$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    return-object v0
.end method

.method private a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;
    .locals 2

    invoke-static {p1}, Lcom/moat/analytics/mobile/mpub/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/moat/analytics/mobile/mpub/m$1;

    invoke-direct {v1, p0, v0}, Lcom/moat/analytics/mobile/mpub/m$1;-><init>(Lcom/moat/analytics/mobile/mpub/m;Ljava/lang/ref/WeakReference;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/x$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/x$a;-><init>()V

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/mpub/v;->a(Lcom/moat/analytics/mobile/mpub/v$a;Lcom/moat/analytics/mobile/mpub/v$c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/WebAdTracker;

    return-object v0
.end method

.method private a(Lcom/moat/analytics/mobile/mpub/MoatPlugin;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/mpub/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/moat/analytics/mobile/mpub/MoatPlugin;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a()Z
    .locals 1

    invoke-static {}, Lcom/moat/analytics/mobile/mpub/j;->getInstance()Lcom/moat/analytics/mobile/mpub/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/mpub/j;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/mpub/j;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/mpub/MoatPlugin;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/mpub/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/m;->a(Lcom/moat/analytics/mobile/mpub/MoatPlugin;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    invoke-interface {p1}, Lcom/moat/analytics/mobile/mpub/MoatPlugin;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/mpub/m;->a(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/mpub/NativeDisplayTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/t$c;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/t$c;-><init>()V

    goto :goto_0
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/mpub/NativeVideoTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/m;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/mpub/NativeVideoTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/t$d;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/t$d;-><init>()V

    goto :goto_0
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/m;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/t$f;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/t$f;-><init>()V

    goto :goto_0
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/mpub/m;->a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/mpub/WebAdTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/mpub/l;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/mpub/t$f;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/mpub/t$f;-><init>()V

    goto :goto_0
.end method
