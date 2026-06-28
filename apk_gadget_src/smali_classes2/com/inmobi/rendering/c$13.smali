.class final Lcom/inmobi/rendering/c$13;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/c;->playVideo(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inmobi/rendering/c;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 479
    iput-object p1, p0, Lcom/inmobi/rendering/c$13;->c:Lcom/inmobi/rendering/c;

    iput-object p2, p0, Lcom/inmobi/rendering/c$13;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/rendering/c$13;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 483
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/c$13;->c:Lcom/inmobi/rendering/c;

    invoke-static {v0}, Lcom/inmobi/rendering/c;->a(Lcom/inmobi/rendering/c;)Lcom/inmobi/rendering/RenderView;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/c$13;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/inmobi/rendering/c$13;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1894
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v4, v2, Lcom/inmobi/rendering/RenderView;->e:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 2070
    iget-object v4, v4, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 1894
    if-eq v0, v4, :cond_0

    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;

    move-result-object v4

    if-ne v0, v4, :cond_2

    .line 1899
    :cond_0
    iget-object v0, v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1901
    :cond_1
    const-string v0, "Media playback is  not allowed before it is visible! Ignoring request ..."

    const-string v1, "playVideo"

    invoke-virtual {v2, v3, v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1902
    :cond_2
    :goto_0
    return-void

    .line 1905
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/inmobi/rendering/RenderView;->setAdActiveFlag(Z)V

    .line 1906
    iget-object v4, v2, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    iget-object v0, v2, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 2108
    new-instance v5, Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-direct {v5, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;-><init>(Landroid/app/Activity;)V

    iput-object v5, v4, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    .line 2109
    iget-object v5, v4, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    .line 3153
    invoke-static {v1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/inmobi/rendering/mraid/MediaRenderView;->h:Ljava/lang/String;

    .line 3154
    const-string v1, "anonymous"

    iput-object v1, v5, Lcom/inmobi/rendering/mraid/MediaRenderView;->g:Ljava/lang/String;

    .line 3156
    iget-object v1, v5, Lcom/inmobi/rendering/mraid/MediaRenderView;->b:Landroid/graphics/Bitmap;

    if-nez v1, :cond_4

    .line 3157
    const/16 v1, 0x18

    const/16 v6, 0x18

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v5, Lcom/inmobi/rendering/mraid/MediaRenderView;->b:Landroid/graphics/Bitmap;

    .line 3158
    iget-object v1, v5, Lcom/inmobi/rendering/mraid/MediaRenderView;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v5, Lcom/inmobi/rendering/mraid/MediaRenderView;->b:Landroid/graphics/Bitmap;

    .line 2112
    :cond_4
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2113
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 2114
    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2115
    iget-object v6, v4, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-virtual {v6, v5}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2117
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-direct {v5, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2118
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$1;

    invoke-direct {v0, v4}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$1;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2124
    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2125
    iget-object v0, v4, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 2127
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-direct {v0, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2129
    iget-object v0, v4, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    .line 3219
    iput-object v5, v0, Lcom/inmobi/rendering/mraid/MediaRenderView;->c:Landroid/view/ViewGroup;

    .line 2130
    iget-object v0, v4, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->requestFocus()Z

    .line 2131
    iget-object v0, v4, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$2;

    invoke-direct {v1, v4}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$2;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 2142
    iget-object v0, v4, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;

    invoke-direct {v1, v4}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    .line 3223
    iput-object v1, v0, Lcom/inmobi/rendering/mraid/MediaRenderView;->d:Lcom/inmobi/rendering/mraid/MediaRenderView$a;

    .line 2168
    iget-object v0, v4, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    .line 4178
    iget-object v1, v0, Lcom/inmobi/rendering/mraid/MediaRenderView;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setVideoPath(Ljava/lang/String;)V

    .line 4179
    invoke-virtual {v0, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 4180
    invoke-virtual {v0, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 4181
    invoke-virtual {v0, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 4189
    iget-object v1, v0, Lcom/inmobi/rendering/mraid/MediaRenderView;->a:Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    if-nez v1, :cond_5

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v1, v4, :cond_5

    .line 4190
    new-instance v1, Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MediaRenderView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/inmobi/rendering/mraid/MediaRenderView;->a:Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    .line 4191
    iget-object v1, v0, Lcom/inmobi/rendering/mraid/MediaRenderView;->a:Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;->setAnchorView(Landroid/view/View;)V

    .line 4192
    iget-object v1, v0, Lcom/inmobi/rendering/mraid/MediaRenderView;->a:Lcom/inmobi/rendering/mraid/MediaRenderView$CustomMediaController;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->setMediaController(Landroid/widget/MediaController;)V

    .line 1908
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1909
    const-string v1, "command"

    const-string v4, "playVideo"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1910
    const-string v1, "scheme"

    invoke-static {v3}, Lcom/inmobi/ads/bk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1911
    iget-object v1, v2, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    const-string v2, "ads"

    const-string v3, "CreativeInvokedAction"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 484
    :catch_0
    move-exception v0

    .line 485
    iget-object v1, p0, Lcom/inmobi/rendering/c$13;->c:Lcom/inmobi/rendering/c;

    invoke-static {v1}, Lcom/inmobi/rendering/c;->a(Lcom/inmobi/rendering/c;)Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/rendering/c$13;->a:Ljava/lang/String;

    const-string v3, "Unexpected error"

    const-string v4, "playVideo"

    invoke-virtual {v1, v2, v3, v4}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Error playing video; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    invoke-static {}, Lcom/inmobi/rendering/c;->a()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in handling playVideo() request from creative; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method
