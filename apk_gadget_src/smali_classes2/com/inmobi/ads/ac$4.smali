.class final Lcom/inmobi/ads/ac$4;
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
    .line 1160
    iput-object p1, p0, Lcom/inmobi/ads/ac$4;->a:Lcom/inmobi/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/inmobi/ads/ac$4;->a:Lcom/inmobi/ads/ac;

    invoke-static {v0}, Lcom/inmobi/ads/ac;->b(Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/inmobi/ads/ac$4;->a:Lcom/inmobi/ads/ac;

    .line 1164
    invoke-virtual {v3}, Lcom/inmobi/ads/ac;->j()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 1163
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    .line 1165
    return-void
.end method
