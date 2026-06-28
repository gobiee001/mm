.class final Lcom/inmobi/ads/ad$1;
.super Ljava/lang/Object;
.source "NativeAdTracker.java"

# interfaces
.implements Lcom/inmobi/ads/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p2, Lcom/inmobi/ads/ac;

    invoke-virtual {p2, p1}, Lcom/inmobi/ads/ac;->a(Landroid/view/View;)V

    .line 52
    return-void
.end method
