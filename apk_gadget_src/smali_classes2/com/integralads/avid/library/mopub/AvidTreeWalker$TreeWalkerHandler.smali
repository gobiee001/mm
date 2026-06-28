.class Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;
.super Landroid/os/Handler;
.source "AvidTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/mopub/AvidTreeWalker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TreeWalkerHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/integralads/avid/library/mopub/AvidTreeWalker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/integralads/avid/library/mopub/AvidTreeWalker$1;

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker$TreeWalkerHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 209
    invoke-static {}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->getInstance()Lcom/integralads/avid/library/mopub/AvidTreeWalker;

    move-result-object v0

    invoke-static {v0}, Lcom/integralads/avid/library/mopub/AvidTreeWalker;->access$300(Lcom/integralads/avid/library/mopub/AvidTreeWalker;)V

    .line 210
    return-void
.end method
