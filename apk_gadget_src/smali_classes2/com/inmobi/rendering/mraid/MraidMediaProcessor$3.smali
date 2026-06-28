.class public final Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;
.super Ljava/lang/Object;
.source "MraidMediaProcessor.java"

# interfaces
.implements Lcom/inmobi/rendering/mraid/MediaRenderView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 158
    invoke-static {}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g()Ljava/lang/String;

    .line 159
    return-void
.end method

.method public final a(Lcom/inmobi/rendering/mraid/MediaRenderView;)V
    .locals 2

    .prologue
    .line 145
    invoke-static {}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g()Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAdActiveFlag(Z)V

    .line 1215
    iget-object v1, p1, Lcom/inmobi/rendering/mraid/MediaRenderView;->c:Landroid/view/ViewGroup;

    .line 148
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1219
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/inmobi/rendering/mraid/MediaRenderView;->c:Landroid/view/ViewGroup;

    .line 154
    return-void
.end method
