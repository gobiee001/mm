.class final Lcom/inmobi/ads/w$4;
.super Ljava/lang/Object;
.source "InterstitialAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/w;->g(Lcom/inmobi/ads/AdUnit$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit$b;

.field final synthetic b:Lcom/inmobi/ads/w;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/w;Lcom/inmobi/ads/AdUnit$b;)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/inmobi/ads/w$4;->b:Lcom/inmobi/ads/w;

    iput-object p2, p0, Lcom/inmobi/ads/w$4;->a:Lcom/inmobi/ads/AdUnit$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/inmobi/ads/w$4;->b:Lcom/inmobi/ads/w;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1328
    iput-object v1, v0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 930
    iget-object v0, p0, Lcom/inmobi/ads/w$4;->a:Lcom/inmobi/ads/AdUnit$b;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/inmobi/ads/w$4;->a:Lcom/inmobi/ads/AdUnit$b;

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->c()V

    .line 935
    :goto_0
    return-void

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/w$4;->b:Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Lcom/inmobi/ads/w;->g()V

    goto :goto_0
.end method
