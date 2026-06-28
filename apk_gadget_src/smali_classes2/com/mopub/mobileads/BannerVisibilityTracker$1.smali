.class Lcom/mopub/mobileads/BannerVisibilityTracker$1;
.super Ljava/lang/Object;
.source "BannerVisibilityTracker.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/mobileads/BannerVisibilityTracker;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;


# direct methods
.method constructor <init>(Lcom/mopub/mobileads/BannerVisibilityTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mopub/mobileads/BannerVisibilityTracker;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$1;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/BannerVisibilityTracker$1;->this$0:Lcom/mopub/mobileads/BannerVisibilityTracker;

    invoke-virtual {v0}, Lcom/mopub/mobileads/BannerVisibilityTracker;->scheduleVisibilityCheck()V

    .line 101
    const/4 v0, 0x1

    return v0
.end method
