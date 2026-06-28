.class final Lcom/inmobi/ads/AdUnit$7;
.super Ljava/lang/Thread;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$b;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/AdUnit$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/inmobi/ads/AdUnit$b;

.field final synthetic c:Ljava/lang/Runnable;

.field final synthetic d:Landroid/os/Looper;

.field final synthetic e:Lcom/inmobi/ads/AdUnit;

.field private f:I


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/AdUnit$b;Ljava/lang/Runnable;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 989
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    iput-object p2, p0, Lcom/inmobi/ads/AdUnit$7;->b:Lcom/inmobi/ads/AdUnit$b;

    iput-object p3, p0, Lcom/inmobi/ads/AdUnit$7;->c:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/inmobi/ads/AdUnit$7;->d:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 991
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$7;->b:Lcom/inmobi/ads/AdUnit$b;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit$7;->a:Ljava/lang/ref/WeakReference;

    .line 992
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/AdUnit$7;->f:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/AdUnit$7$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/AdUnit$7$1;-><init>(Lcom/inmobi/ads/AdUnit$7;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1020
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    .line 1025
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/inmobi/ads/AdUnit;->m:J

    .line 1026
    new-instance v2, Lcom/inmobi/ads/ai;

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 1304
    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    .line 1027
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 1332
    iget-object v3, v3, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 1556
    iget-object v3, v3, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 1027
    iget-object v4, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 1028
    invoke-static {v4}, Lcom/inmobi/ads/AdUnit;->e(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/ads/bp;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/inmobi/ads/ai;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/b$g;Lcom/inmobi/ads/bp;)V

    .line 1029
    invoke-virtual {v2}, Lcom/inmobi/ads/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1033
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 1034
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 1035
    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 2316
    iget-object v3, v3, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 1036
    iget-object v4, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 2320
    iget-object v4, v4, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 1037
    iget-object v5, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-static {v5}, Lcom/inmobi/ads/AdUnit;->f(Lcom/inmobi/ads/AdUnit;)Ljava/util/Set;

    move-result-object v5

    iget-object v6, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    .line 2332
    iget-object v6, v6, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 1034
    invoke-static/range {v0 .. v6}, Lcom/inmobi/ads/ac$b;->a(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/ai;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Lcom/inmobi/ads/b;)Lcom/inmobi/ads/ac;

    move-result-object v0

    .line 1041
    new-instance v1, Lcom/inmobi/ads/AdUnit$7$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$7$2;-><init>(Lcom/inmobi/ads/AdUnit$7;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ac$c;)V

    .line 2995
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$7;->e:Lcom/inmobi/ads/AdUnit;

    invoke-static {v1, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    .line 2996
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$7;->d:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 2997
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$7;->d:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$7;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1170
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    const-string v0, "DataModelValidationFailed"

    invoke-direct {p0, v0}, Lcom/inmobi/ads/AdUnit$7;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1161
    :catch_0
    move-exception v0

    .line 1162
    const-string v1, "InternalError"

    invoke-direct {p0, v1}, Lcom/inmobi/ads/AdUnit$7;->a(Ljava/lang/String;)V

    .line 1163
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 1164
    :catch_1
    move-exception v0

    .line 1165
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encountered unexpected error in loading ad markup into container: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1167
    const-string v1, "InternalError"

    invoke-direct {p0, v1}, Lcom/inmobi/ads/AdUnit$7;->a(Ljava/lang/String;)V

    .line 1168
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
