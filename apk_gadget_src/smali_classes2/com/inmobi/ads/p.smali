.class public Lcom/inmobi/ads/p;
.super Lcom/inmobi/ads/br;
.source "IasTrackedHtmlAd.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/inmobi/ads/ViewableAd;

.field private final g:Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/ads/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/p;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/AdContainer;Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/AdContainer;",
            "Landroid/app/Activity;",
            "Lcom/inmobi/ads/ViewableAd;",
            "Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession",
            "<",
            "Landroid/webkit/WebView;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/inmobi/ads/br;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 83
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/p;->e:Ljava/lang/ref/WeakReference;

    .line 84
    iput-object p3, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    .line 85
    iput-object p4, p0, Lcom/inmobi/ads/p;->g:Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;

    .line 86
    iput-boolean p5, p0, Lcom/inmobi/ads/p;->h:Z

    .line 87
    return-void
.end method

.method static a(Landroid/content/Context;ZLcom/inmobi/ads/AdUnit$AdCreativeType;Lcom/inmobi/rendering/RenderView;)Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Lcom/inmobi/ads/AdUnit$AdCreativeType;",
            "Lcom/inmobi/rendering/RenderView;",
            ")",
            "Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 38
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;

    .line 1045
    const-string v2, "7.0.2"

    .line 39
    invoke-direct {v0, v2, p1}, Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;-><init>(Ljava/lang/String;Z)V

    .line 42
    sget-object v2, Lcom/inmobi/ads/p$1;->a:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/AdUnit$AdCreativeType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move-object v0, v1

    .line 54
    :goto_0
    if-eqz v0, :cond_0

    .line 55
    instance-of v2, p0, Landroid/app/Activity;

    if-eqz v2, :cond_1

    .line 57
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {v0, p3, p0}, Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;->registerAdView(Landroid/view/View;Landroid/app/Activity;)V

    .line 66
    :cond_0
    :goto_1
    return-object v0

    .line 48
    :pswitch_0
    invoke-static {p0, v0}, Lcom/integralads/avid/library/inmobi/session/AvidAdSessionManager;->startAvidDisplayAdSession(Landroid/content/Context;Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/inmobi/session/AvidDisplayAdSession;

    move-result-object v0

    goto :goto_0

    .line 51
    :pswitch_1
    invoke-static {p0, v0}, Lcom/integralads/avid/library/inmobi/session/AvidAdSessionManager;->startAvidVideoAdSession(Landroid/content/Context;Lcom/integralads/avid/library/inmobi/session/ExternalAvidAdSessionContext;)Lcom/integralads/avid/library/inmobi/session/AvidVideoAdSession;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {v0, p3, v1}, Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;->registerAdView(Landroid/view/View;Landroid/app/Activity;)V

    goto :goto_1

    .line 42
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/app/Activity;Landroid/webkit/WebView;[Landroid/view/View;)V
    .locals 4

    .prologue
    .line 143
    if-eqz p3, :cond_0

    .line 144
    array-length v1, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p3, v0

    .line 145
    iget-object v3, p0, Lcom/inmobi/ads/p;->g:Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;

    invoke-virtual {v3, v2}, Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;->registerFriendlyObstruction(Landroid/view/View;)V

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/p;->g:Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;

    invoke-virtual {v0, p2, p1}, Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;->registerAdView(Landroid/view/View;Landroid/app/Activity;)V

    .line 149
    iget-boolean v0, p0, Lcom/inmobi/ads/p;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/p;->g:Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;->getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/p;->g:Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;->getAvidDeferredAdSessionListener()Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/deferred/AvidDeferredAdSessionListener;->recordReadyEvent()V

    .line 153
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd$ActivityState;)V

    .line 182
    return-void
.end method

.method public final a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 177
    return-void
.end method

.method public final varargs a([Landroid/view/View;)V
    .locals 3

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/p;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1110
    iget-object v1, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v1

    .line 1531
    iget-object v1, v1, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 118
    if-eqz v0, :cond_0

    .line 1757
    iget-boolean v1, v1, Lcom/inmobi/ads/b$h;->j:Z

    .line 118
    if-eqz v1, :cond_0

    .line 2093
    iget-object v1, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 123
    instance-of v1, v1, Lcom/inmobi/ads/ac;

    if-eqz v1, :cond_1

    .line 3093
    iget-object v1, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 124
    check-cast v1, Lcom/inmobi/ads/ac;

    .line 125
    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->s()Lcom/inmobi/rendering/RenderView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 126
    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->s()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/inmobi/ads/p;->a(Landroid/app/Activity;Landroid/webkit/WebView;[Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    .line 139
    :goto_1
    return-void

    .line 3104
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v1

    .line 130
    if-eqz v1, :cond_0

    .line 131
    check-cast v1, Landroid/webkit/WebView;

    invoke-direct {p0, v0, v1, p1}, Lcom/inmobi/ads/p;->a(Landroid/app/Activity;Landroid/webkit/WebView;[Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in startTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a([Landroid/view/View;)V

    throw v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final c()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()Lcom/inmobi/ads/b;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 3

    .prologue
    .line 159
    .line 4093
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 159
    instance-of v0, v0, Lcom/inmobi/ads/ac;

    if-eqz v0, :cond_0

    .line 5093
    iget-object v0, p0, Lcom/inmobi/ads/ViewableAd;->a:Lcom/inmobi/ads/AdContainer;

    .line 160
    check-cast v0, Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->s()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/inmobi/ads/p;->g:Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;

    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;->unregisterAdView(Landroid/view/View;)V

    .line 165
    iget-object v0, p0, Lcom/inmobi/ads/p;->g:Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;->endSession()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 171
    :goto_1
    return-void

    .line 5104
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    .line 162
    check-cast v0, Landroid/webkit/WebView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in stopTrackingForImpression with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->d()V

    throw v0
.end method

.method public final e()V
    .locals 3

    .prologue
    .line 186
    invoke-super {p0}, Lcom/inmobi/ads/br;->e()V

    .line 188
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/p;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    .line 193
    :goto_0
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in destroy with message : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->e()V

    throw v0
.end method
