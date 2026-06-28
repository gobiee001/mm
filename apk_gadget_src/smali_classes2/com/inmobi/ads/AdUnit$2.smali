.class final Lcom/inmobi/ads/AdUnit$2;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;)V
    .locals 0

    .prologue
    .line 1917
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 1921
    :try_start_0
    new-instance v0, Lcom/inmobi/ads/ai;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    .line 2304
    iget-object v2, v2, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    .line 1922
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    .line 2332
    iget-object v3, v3, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 2556
    iget-object v3, v3, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 1922
    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/ai;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/b$g;Lcom/inmobi/ads/bp;)V

    .line 1924
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    new-instance v2, Lcom/inmobi/ads/AdUnit$2$1;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/ads/AdUnit$2$1;-><init>(Lcom/inmobi/ads/AdUnit$2;Lcom/inmobi/ads/ai;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1969
    :goto_0
    return-void

    .line 1958
    :catch_0
    move-exception v0

    .line 1959
    invoke-static {}, Lcom/inmobi/ads/AdUnit;->I()Ljava/lang/String;

    .line 1960
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$2;->a:Lcom/inmobi/ads/AdUnit;

    iget-object v1, v1, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    new-instance v2, Lcom/inmobi/ads/AdUnit$2$2;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/AdUnit$2$2;-><init>(Lcom/inmobi/ads/AdUnit$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1967
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
