.class Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;
.super Ljava/lang/Object;
.source "MraidController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WaitRequest"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSuccessRunnable:Ljava/lang/Runnable;

.field private final mViews:[Landroid/view/View;

.field mWaitCount:I

.field private final mWaitingRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Landroid/os/Handler;[Landroid/view/View;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "views"    # [Landroid/view/View;

    .prologue
    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 446
    new-instance v0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;

    invoke-direct {v0, p0}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest$1;-><init>(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;)V

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mWaitingRunnable:Ljava/lang/Runnable;

    .line 434
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mHandler:Landroid/os/Handler;

    .line 435
    iput-object p2, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mViews:[Landroid/view/View;

    .line 436
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Handler;[Landroid/view/View;Lcom/mopub/mraid/MraidController$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;
    .param p2, "x1"    # [Landroid/view/View;
    .param p3, "x2"    # Lcom/mopub/mraid/MraidController$1;

    .prologue
    .line 427
    invoke-direct {p0, p1, p2}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;-><init>(Landroid/os/Handler;[Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;)[Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    .prologue
    .line 427
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mViews:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;)V
    .locals 0
    .param p0, "x0"    # Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;

    .prologue
    .line 427
    invoke-direct {p0}, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->countDown()V

    return-void
.end method

.method private countDown()V
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mWaitCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mWaitCount:I

    .line 440
    iget v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mWaitCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mSuccessRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mSuccessRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 442
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mSuccessRunnable:Ljava/lang/Runnable;

    .line 444
    :cond_0
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mWaitingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mSuccessRunnable:Ljava/lang/Runnable;

    .line 480
    return-void
.end method

.method start(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "successRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mSuccessRunnable:Ljava/lang/Runnable;

    .line 473
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mViews:[Landroid/view/View;

    array-length v0, v0

    iput v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mWaitCount:I

    .line 474
    iget-object v0, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mopub/mraid/MraidController$ScreenMetricsWaiter$WaitRequest;->mWaitingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 475
    return-void
.end method
