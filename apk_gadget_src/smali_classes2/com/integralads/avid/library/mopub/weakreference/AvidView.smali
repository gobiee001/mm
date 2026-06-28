.class public Lcom/integralads/avid/library/mopub/weakreference/AvidView;
.super Lcom/integralads/avid/library/mopub/weakreference/ObjectWrapper;
.source "AvidView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Lcom/integralads/avid/library/mopub/weakreference/ObjectWrapper",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 8
    .local p0, "this":Lcom/integralads/avid/library/mopub/weakreference/AvidView;, "Lcom/integralads/avid/library/mopub/weakreference/AvidView<TT;>;"
    .local p1, "r":Landroid/view/View;, "TT;"
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/mopub/weakreference/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 9
    return-void
.end method
