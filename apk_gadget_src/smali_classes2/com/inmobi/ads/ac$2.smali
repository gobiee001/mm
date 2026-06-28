.class final Lcom/inmobi/ads/ac$2;
.super Ljava/lang/Object;
.source "NativeAdContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ac;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ac;)V
    .locals 0

    .prologue
    .line 262
    iput-object p1, p0, Lcom/inmobi/ads/ac$2;->a:Lcom/inmobi/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/inmobi/ads/ac$2;->a:Lcom/inmobi/ads/ac;

    .line 1532
    iget-boolean v0, v0, Lcom/inmobi/ads/ac;->i:Z

    .line 265
    if-nez v0, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/ads/ac$2;->a:Lcom/inmobi/ads/ac;

    .line 2363
    iget-object v1, v1, Lcom/inmobi/ads/ac;->b:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 3070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 265
    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ac$2;->a:Lcom/inmobi/ads/ac;

    iget-object v0, v0, Lcom/inmobi/ads/ac;->a:Lcom/inmobi/ads/ai;

    .line 3338
    iget-boolean v0, v0, Lcom/inmobi/ads/ai;->c:Z

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-static {}, Lcom/inmobi/ads/ac;->u()Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/inmobi/ads/ac$2;->a:Lcom/inmobi/ads/ac;

    invoke-static {v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ac;)V

    .line 270
    :cond_0
    return-void
.end method
