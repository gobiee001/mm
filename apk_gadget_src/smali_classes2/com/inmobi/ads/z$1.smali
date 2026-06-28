.class final Lcom/inmobi/ads/z$1;
.super Ljava/lang/Object;
.source "MoatTrackedNativeV2DisplayAd.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/z;->a([Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/z;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/z;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/inmobi/ads/z$1;->a:Lcom/inmobi/ads/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/inmobi/ads/z$1;->a:Lcom/inmobi/ads/z;

    invoke-static {v0}, Lcom/inmobi/ads/z;->a(Lcom/inmobi/ads/z;)Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    move-result-object v0

    sget-object v1, Lcom/moat/analytics/mobile/inm/NativeDisplayTracker$MoatUserInteractionType;->TOUCH:Lcom/moat/analytics/mobile/inm/NativeDisplayTracker$MoatUserInteractionType;

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;->reportUserInteractionEvent(Lcom/moat/analytics/mobile/inm/NativeDisplayTracker$MoatUserInteractionType;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Received touch event for DisplayTracker("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/ads/z$1;->a:Lcom/inmobi/ads/z;

    .line 102
    invoke-static {v1}, Lcom/inmobi/ads/z;->a(Lcom/inmobi/ads/z;)Lcom/moat/analytics/mobile/inm/NativeDisplayTracker;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const/4 v0, 0x1

    return v0
.end method
