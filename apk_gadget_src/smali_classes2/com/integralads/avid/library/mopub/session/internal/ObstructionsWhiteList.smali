.class public Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;
.super Ljava/lang/Object;
.source "ObstructionsWhiteList.java"


# instance fields
.field private final whiteList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/integralads/avid/library/mopub/weakreference/AvidView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;->whiteList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;->whiteList:Ljava/util/ArrayList;

    new-instance v1, Lcom/integralads/avid/library/mopub/weakreference/AvidView;

    invoke-direct {v1, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidView;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
.end method

.method public contains(Landroid/view/View;)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 18
    iget-object v1, p0, Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;->whiteList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/mopub/weakreference/AvidView;

    .line 19
    .local v0, "avidView":Lcom/integralads/avid/library/mopub/weakreference/AvidView;
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/mopub/weakreference/AvidView;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 21
    .end local v0    # "avidView":Lcom/integralads/avid/library/mopub/weakreference/AvidView;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWhiteList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/integralads/avid/library/mopub/weakreference/AvidView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    iget-object v0, p0, Lcom/integralads/avid/library/mopub/session/internal/ObstructionsWhiteList;->whiteList:Ljava/util/ArrayList;

    return-object v0
.end method
