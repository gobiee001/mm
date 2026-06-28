.class final Lcom/inmobi/rendering/RenderView$6$5;
.super Ljava/lang/Object;
.source "RenderView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/RenderView$6;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/RenderView$6;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/RenderView$6;)V
    .locals 0

    .prologue
    .line 1701
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView$6$5;->a:Lcom/inmobi/rendering/RenderView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 1705
    const/4 v0, 0x4

    .line 1706
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1707
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1708
    invoke-static {}, Lcom/inmobi/rendering/RenderView;->g()Ljava/lang/String;

    .line 1709
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView$6$5;->a:Lcom/inmobi/rendering/RenderView$6;

    invoke-static {v0}, Lcom/inmobi/rendering/RenderView$6;->a(Lcom/inmobi/rendering/RenderView$6;)V

    .line 1710
    const/4 v0, 0x1

    .line 1712
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
