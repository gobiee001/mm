.class final Lcom/inmobi/ads/ae$2;
.super Ljava/lang/Object;
.source "NativeAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ViewableAd;

.field final synthetic b:Lcom/inmobi/ads/ae;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/ViewableAd;)V
    .locals 0

    .prologue
    .line 378
    iput-object p1, p0, Lcom/inmobi/ads/ae$2;->b:Lcom/inmobi/ads/ae;

    iput-object p2, p0, Lcom/inmobi/ads/ae$2;->a:Lcom/inmobi/ads/ViewableAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/inmobi/ads/ae$2;->a:Lcom/inmobi/ads/ViewableAd;

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    .line 382
    return-void
.end method
