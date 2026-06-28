.class final Lcom/inmobi/rendering/c$11;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/c;->resize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inmobi/rendering/c;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/c;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/inmobi/rendering/c$11;->b:Lcom/inmobi/rendering/c;

    iput-object p2, p0, Lcom/inmobi/rendering/c$11;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 399
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c$11;->b:Lcom/inmobi/rendering/c;

    invoke-static {v0}, Lcom/inmobi/rendering/c;->a(Lcom/inmobi/rendering/c;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/c$11;->a:Ljava/lang/String;

    .line 2005
    sget-object v2, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v3, v0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v3, v0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v2, v3, :cond_1

    .line 2010
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getResizeProperties()Lcom/inmobi/rendering/mraid/h;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2015
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 2016
    iget-object v2, v0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/mraid/f;

    invoke-virtual {v2}, Lcom/inmobi/rendering/mraid/f;->a()V

    .line 2017
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->requestLayout()V

    .line 2018
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->invalidate()V

    .line 2019
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/inmobi/rendering/RenderView;->n:Z

    .line 2020
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/rendering/RenderView;->setFocusable(Z)V

    .line 2021
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/rendering/RenderView;->setFocusableInTouchMode(Z)V

    .line 2022
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->requestFocus()Z

    .line 2024
    sget-object v2, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v2}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 2025
    iget-object v2, v0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    invoke-interface {v2, v0}, Lcom/inmobi/rendering/RenderView$a;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 2026
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 2028
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2029
    const-string v3, "command"

    const-string v4, "resize"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2030
    const-string v3, "scheme"

    invoke-static {v1}, Lcom/inmobi/ads/bk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2031
    iget-object v0, v0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    const-string v1, "ads"

    const-string v3, "CreativeInvokedAction"

    invoke-interface {v0, v1, v3, v2}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_1
    :goto_0
    return-void

    .line 400
    :catch_0
    move-exception v0

    .line 401
    iget-object v1, p0, Lcom/inmobi/rendering/c$11;->b:Lcom/inmobi/rendering/c;

    invoke-static {v1}, Lcom/inmobi/rendering/c;->a(Lcom/inmobi/rendering/c;)Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/rendering/c$11;->a:Ljava/lang/String;

    const-string v3, "Unexpected error"

    const-string v4, "resize"

    invoke-virtual {v1, v2, v3, v4}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not resize ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcom/inmobi/rendering/c;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered an unexpected error in handling resize() request; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
