.class final Lcom/inmobi/ads/w$2$1;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/w$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit$b;

.field final synthetic b:Lcom/inmobi/ads/w$2;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/w$2;Lcom/inmobi/ads/AdUnit$b;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/inmobi/ads/w$2$1;->b:Lcom/inmobi/ads/w$2;

    iput-object p2, p0, Lcom/inmobi/ads/w$2$1;->a:Lcom/inmobi/ads/AdUnit$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 396
    iget-object v0, p0, Lcom/inmobi/ads/w$2$1;->b:Lcom/inmobi/ads/w$2;

    iget-object v0, v0, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/w$2$1;->a:Lcom/inmobi/ads/AdUnit$b;

    iget-object v2, p0, Lcom/inmobi/ads/w$2$1;->b:Lcom/inmobi/ads/w$2;

    iget-object v2, v2, Lcom/inmobi/ads/w$2;->c:Lcom/inmobi/ads/w;

    .line 1304
    iget-object v2, v2, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    .line 396
    new-instance v3, Lcom/inmobi/ads/w$2$1$1;

    invoke-direct {v3, p0}, Lcom/inmobi/ads/w$2$1$1;-><init>(Lcom/inmobi/ads/w$2$1;)V

    .line 417
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    .line 396
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V

    .line 418
    return-void
.end method
