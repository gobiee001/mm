.class final Lcom/inmobi/ads/w$5;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/w;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/w;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/w;)V
    .locals 0

    .prologue
    .line 952
    iput-object p1, p0, Lcom/inmobi/ads/w$5;->a:Lcom/inmobi/ads/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 956
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/w$5;->a:Lcom/inmobi/ads/w;

    .line 1300
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 957
    iget-object v0, p0, Lcom/inmobi/ads/w$5;->a:Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Lcom/inmobi/ads/w;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/inmobi/ads/w$5;->a:Lcom/inmobi/ads/w;

    const-string v1, "IllegalState"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->c(Ljava/lang/String;)V

    .line 969
    :goto_0
    return-void

    .line 961
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/w$5;->a:Lcom/inmobi/ads/w;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1328
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 962
    iget-object v0, p0, Lcom/inmobi/ads/w$5;->a:Lcom/inmobi/ads/w;

    invoke-static {v0}, Lcom/inmobi/ads/w;->c(Lcom/inmobi/ads/w;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 963
    :catch_0
    move-exception v0

    .line 964
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/w;->N()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to Prefetch ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    invoke-static {}, Lcom/inmobi/ads/w;->M()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Prefetch failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
