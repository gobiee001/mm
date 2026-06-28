.class Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;
.super Landroid/os/Handler;
.source "GAIDRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GAIDHandler"
.end annotation


# instance fields
.field private final mGAIDRunnable:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;)V
    .locals 1
    .param p1, "runnable"    # Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 111
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;->mGAIDRunnable:Ljava/lang/ref/WeakReference;

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable$GAIDHandler;->mGAIDRunnable:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;

    .line 117
    .local v0, "runnable":Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;
    if-eqz v0, :cond_0

    .line 118
    invoke-static {v0, p1}, Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;->access$000(Lcom/cuebiq/cuebiqsdk/task/GAIDRunnable;Landroid/os/Message;)V

    .line 120
    :cond_0
    return-void
.end method
