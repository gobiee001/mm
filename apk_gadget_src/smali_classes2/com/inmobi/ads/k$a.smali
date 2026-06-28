.class final Lcom/inmobi/ads/k$a;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/animation/Animator;

.field b:J

.field c:Z

.field final synthetic d:Lcom/inmobi/ads/k;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/k;Landroid/animation/Animator;)V
    .locals 0

    .prologue
    .line 21
    iput-object p1, p0, Lcom/inmobi/ads/k$a;->d:Lcom/inmobi/ads/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/inmobi/ads/k$a;->a:Landroid/animation/Animator;

    .line 23
    return-void
.end method
