.class final Lcom/inmobi/ads/NativeTimerView$1;
.super Ljava/lang/Object;
.source "NativeTimerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/NativeTimerView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeTimerView;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeTimerView;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/inmobi/ads/NativeTimerView$1;->a:Lcom/inmobi/ads/NativeTimerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/inmobi/ads/NativeTimerView$1;->a:Lcom/inmobi/ads/NativeTimerView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeTimerView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeTimerView$1;->a:Lcom/inmobi/ads/NativeTimerView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeTimerView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 173
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/inmobi/ads/NativeTimerView$1;->a:Lcom/inmobi/ads/NativeTimerView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeTimerView;->a(Lcom/inmobi/ads/NativeTimerView;)V

    .line 180
    :cond_1
    :goto_0
    return-void

    .line 177
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/NativeTimerView$1;->a:Lcom/inmobi/ads/NativeTimerView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v1, v0}, Lcom/inmobi/ads/NativeTimerView;->a(Lcom/inmobi/ads/NativeTimerView;F)V

    goto :goto_0
.end method
