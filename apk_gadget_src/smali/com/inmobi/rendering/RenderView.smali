.class public final Lcom/inmobi/rendering/RenderView;
.super Landroid/webkit/WebView;
.source "RenderView.java"

# interfaces
.implements Lcom/inmobi/ads/AdContainer;
.implements Lcom/inmobi/rendering/b;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled",
        "ViewConstructor",
        "ClickableViewAccessibility"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/RenderView$RenderViewState;,
        Lcom/inmobi/rendering/RenderView$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/inmobi/rendering/RenderView$a;

.field private static final x:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/inmobi/rendering/c;

.field private D:Lcom/inmobi/ads/b;

.field private E:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private F:Z

.field private G:Lcom/inmobi/rendering/mraid/b;

.field private H:Lcom/inmobi/rendering/mraid/h;

.field private I:Lcom/inmobi/rendering/mraid/g;

.field private J:Lorg/json/JSONObject;

.field private K:Lorg/json/JSONObject;

.field private L:Z

.field private final M:Ljava/lang/Object;

.field private final N:Ljava/lang/Object;

.field private O:Z

.field private P:Landroid/view/View;

.field private Q:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private R:I

.field private S:Z

.field private T:Ljava/lang/String;

.field private U:Lcom/inmobi/ads/AdContainer;

.field private V:Lcom/inmobi/ads/l;

.field private W:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bj;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Lcom/inmobi/ads/ViewableAd;

.field private final ab:Lcom/inmobi/ads/AdContainer$a;

.field private final ac:Landroid/webkit/WebViewClient;

.field private final ad:Landroid/webkit/WebChromeClient;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/inmobi/rendering/RenderView$a;

.field d:Lcom/inmobi/rendering/RenderView$RenderViewState;

.field e:Lcom/inmobi/ads/AdContainer$RenderingProperties;

.field f:Lcom/inmobi/rendering/mraid/c;

.field g:Lcom/inmobi/rendering/mraid/f;

.field h:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

.field i:Lcom/inmobi/rendering/mraid/i;

.field public j:Z

.field k:Z

.field l:Z

.field public m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Ljava/lang/String;

.field public s:Ljava/util/concurrent/atomic/AtomicBoolean;

.field t:Z

.field u:Lcom/inmobi/rendering/a;

.field public v:Z

.field final w:Lcom/inmobi/ads/cache/f;

.field private y:Lcom/inmobi/rendering/RenderView;

.field private z:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/inmobi/rendering/RenderView$1;

    invoke-direct {v0}, Lcom/inmobi/rendering/RenderView$1;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/RenderView;->a:Lcom/inmobi/rendering/RenderView$a;

    .line 186
    const-class v0, Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/RenderView;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Ljava/util/Set;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/AdContainer$RenderingProperties;",
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bj;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 271
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 203
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    .line 208
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->E:Ljava/util/List;

    .line 226
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->k:Z

    .line 227
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->l:Z

    .line 229
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->m:Z

    .line 230
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->n:Z

    .line 231
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->o:Z

    .line 232
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->p:Z

    .line 233
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->q:Z

    .line 234
    iput-object v3, p0, Lcom/inmobi/rendering/RenderView;->r:Ljava/lang/String;

    .line 235
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    .line 241
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 243
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->M:Ljava/lang/Object;

    .line 244
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->N:Ljava/lang/Object;

    .line 248
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->O:Z

    .line 252
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/rendering/RenderView;->R:I

    .line 258
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->S:Z

    .line 1437
    new-instance v0, Lcom/inmobi/rendering/RenderView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$4;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->ab:Lcom/inmobi/ads/AdContainer$a;

    .line 1481
    new-instance v0, Lcom/inmobi/rendering/RenderView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$5;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->ac:Landroid/webkit/WebViewClient;

    .line 1624
    new-instance v0, Lcom/inmobi/rendering/RenderView$6;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$6;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->ad:Landroid/webkit/WebChromeClient;

    .line 1950
    new-instance v0, Lcom/inmobi/rendering/RenderView$7;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$7;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->w:Lcom/inmobi/ads/cache/f;

    .line 272
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 273
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->z:Ljava/lang/ref/WeakReference;

    .line 275
    :cond_0
    iput-object v3, p0, Lcom/inmobi/rendering/RenderView;->y:Lcom/inmobi/rendering/RenderView;

    .line 276
    iput-object p2, p0, Lcom/inmobi/rendering/RenderView;->e:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 277
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 278
    iput-object p3, p0, Lcom/inmobi/rendering/RenderView;->W:Ljava/util/Set;

    .line 279
    iput-object p4, p0, Lcom/inmobi/rendering/RenderView;->T:Ljava/lang/String;

    .line 280
    invoke-virtual {p0, p0}, Lcom/inmobi/rendering/RenderView;->setReferenceContainer(Lcom/inmobi/ads/AdContainer;)V

    .line 281
    iput-object p0, p0, Lcom/inmobi/rendering/RenderView;->U:Lcom/inmobi/ads/AdContainer;

    .line 282
    new-instance v0, Lcom/inmobi/ads/l;

    invoke-direct {v0}, Lcom/inmobi/ads/l;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->V:Lcom/inmobi/ads/l;

    .line 283
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->P:Landroid/view/View;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->Q:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 103
    .line 15840
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->loadUrl(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/RenderView;Z)Z
    .locals 0

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$a;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/RenderView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 103
    .line 15845
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 103
    return-void
.end method

.method static synthetic c(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/AdContainer$RenderingProperties;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    return-object v0
.end method

.method private c(Z)V
    .locals 2

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->o:Z

    if-ne v0, p1, :cond_1

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-le v0, v1, :cond_2

    .line 508
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 509
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    :cond_2
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView;->d(Z)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method public static d()V
    .locals 0

    .prologue
    .line 1837
    return-void
.end method

.method private d(Z)V
    .locals 3

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    if-nez v0, :cond_0

    .line 517
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->o:Z

    .line 518
    if-nez p1, :cond_1

    .line 519
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/mraid/i;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/i;->a(Landroid/content/Context;)V

    .line 523
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->o:Z

    .line 2844
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.broadcastEvent(\'viewableChange\',"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 525
    :cond_0
    return-void

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$a;->b(Lcom/inmobi/rendering/RenderView;)V

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1094
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 1096
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static e()V
    .locals 0

    .prologue
    .line 1986
    return-void
.end method

.method static synthetic e(Lcom/inmobi/rendering/RenderView;)Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    return v0
.end method

.method static synthetic f(Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method

.method static f()V
    .locals 0

    .prologue
    .line 1991
    return-void
.end method

.method static synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/inmobi/rendering/RenderView;->x:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/inmobi/rendering/RenderView;)Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->j:Z

    return v0
.end method

.method private h()V
    .locals 3

    .prologue
    .line 1055
    invoke-static {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Ljava/lang/Object;)V

    .line 1057
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1058
    if-eqz v1, :cond_1

    move-object v0, v1

    .line 1059
    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity;

    .line 10877
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/inmobi/rendering/InMobiAdActivity;->a:Z

    .line 1060
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 1061
    iget v0, p0, Lcom/inmobi/rendering/RenderView;->R:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1062
    const/4 v0, 0x0

    iget v2, p0, Lcom/inmobi/rendering/RenderView;->R:I

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->e:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 11070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 1065
    if-ne v0, v1, :cond_3

    .line 1066
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 1067
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_2

    .line 1068
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lcom/inmobi/rendering/RenderView;

    sget-object v1, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 1075
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    if-eqz v0, :cond_0

    .line 1076
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$a;->d(Lcom/inmobi/rendering/RenderView;)V

    goto :goto_0

    .line 1071
    :cond_3
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_2

    .line 1072
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->HIDDEN:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    goto :goto_1
.end method

.method static synthetic h(Lcom/inmobi/rendering/RenderView;)Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    return v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 1260
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setVisibility(I)V

    .line 1261
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->requestLayout()V

    .line 1262
    return-void
.end method

.method static synthetic i(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 103
    .line 16830
    const-string v0, "window.mraidview.detectAndBlockFraud(\'redirect\')"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static synthetic j(Lcom/inmobi/rendering/RenderView;)Ljava/util/List;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->E:Ljava/util/List;

    return-object v0
.end method

.method static synthetic k(Lcom/inmobi/rendering/RenderView;)Z
    .locals 1

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->L:Z

    return v0
.end method

.method static synthetic l(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 103
    .line 16834
    const-string v0, "window.imaiview.broadcastEvent(\'ready\');"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 16835
    const-string v0, "window.mraidview.broadcastEvent(\'ready\');"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method static synthetic m(Lcom/inmobi/rendering/RenderView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic n(Lcom/inmobi/rendering/RenderView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->P:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/inmobi/rendering/RenderView;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->Q:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1851
    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->O:Z

    .line 1856
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setLayerType"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Paint;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1858
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1868
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 1867
    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v0

    goto :goto_0
.end method

.method public final a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/AdContainer$EventType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 682
    sget-object v0, Lcom/inmobi/rendering/RenderView$8;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/AdContainer$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 694
    :goto_0
    :pswitch_0
    return-void

    .line 691
    :pswitch_1
    const-string v0, "inmobi.recordEvent(120,null);"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/b;)V
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 585
    iput-object p2, p0, Lcom/inmobi/rendering/RenderView;->D:Lcom/inmobi/ads/b;

    .line 586
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    .line 587
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    .line 589
    const-string v0, "row"

    const-string v1, "staging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 590
    invoke-static {v6}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 593
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/b$f;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 594
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/b$f;

    move-result-object v0

    .line 4650
    iget v0, v0, Lcom/inmobi/ads/b$f;->f:I

    .line 594
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setBackgroundColor(I)V

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$d;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4797
    new-instance v0, Lcom/inmobi/rendering/mraid/d;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/d;-><init>()V

    .line 5034
    iget-object v0, v0, Lcom/inmobi/rendering/mraid/d;->a:Lcom/inmobi/commons/core/c/c;

    const-string v1, "last_updated_ts"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->e(Ljava/lang/String;)J

    move-result-wide v0

    .line 4799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    sub-long v0, v4, v0

    .line 4801
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$d;

    move-result-object v2

    .line 5681
    iget-wide v4, v2, Lcom/inmobi/ads/b$d;->a:J

    .line 4801
    cmp-long v0, v0, v4

    if-lez v0, :cond_5

    move v0, v6

    .line 597
    :goto_0
    if-eqz v0, :cond_2

    .line 598
    new-instance v7, Lcom/inmobi/rendering/mraid/e;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$d;

    move-result-object v0

    .line 5693
    iget-object v0, v0, Lcom/inmobi/ads/b$d;->d:Ljava/lang/String;

    .line 598
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$d;

    move-result-object v1

    .line 6685
    iget v1, v1, Lcom/inmobi/ads/b$d;->b:I

    .line 598
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/b$d;

    move-result-object v2

    .line 6689
    iget v2, v2, Lcom/inmobi/ads/b$d;->c:I

    .line 598
    invoke-direct {v7, v0, v1, v2}, Lcom/inmobi/rendering/mraid/e;-><init>(Ljava/lang/String;II)V

    .line 7039
    iget-object v0, v7, Lcom/inmobi/rendering/mraid/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 7044
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v2, v7, Lcom/inmobi/rendering/mraid/e;->a:Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;Z)V

    iput-object v0, v7, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 7045
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7046
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7047
    iget-object v1, v7, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/util/Map;)V

    .line 7048
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/rendering/mraid/e$1;

    invoke-direct {v1, v7}, Lcom/inmobi/rendering/mraid/e$1;-><init>(Lcom/inmobi/rendering/mraid/e;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 7132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 604
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    .line 605
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setImportantForAccessibility(I)V

    .line 608
    :cond_3
    invoke-virtual {p0, v3}, Lcom/inmobi/rendering/RenderView;->setScrollable(Z)V

    .line 612
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_4

    .line 613
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 616
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 617
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 619
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->ac:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 620
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->ad:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 622
    new-instance v0, Lcom/inmobi/rendering/c;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->e:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/rendering/c;-><init>(Lcom/inmobi/rendering/RenderView;Lcom/inmobi/ads/AdContainer$RenderingProperties;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->C:Lcom/inmobi/rendering/c;

    .line 623
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->C:Lcom/inmobi/rendering/c;

    const-string v1, "sdkController"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/rendering/RenderView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    new-instance v0, Lcom/inmobi/rendering/mraid/c;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/c;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->f:Lcom/inmobi/rendering/mraid/c;

    .line 625
    new-instance v0, Lcom/inmobi/rendering/mraid/f;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/f;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/mraid/f;

    .line 626
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    .line 627
    new-instance v0, Lcom/inmobi/rendering/mraid/i;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/i;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/mraid/i;

    .line 629
    new-instance v0, Lcom/inmobi/rendering/mraid/b;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->G:Lcom/inmobi/rendering/mraid/b;

    .line 630
    new-instance v0, Lcom/inmobi/rendering/mraid/h;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/h;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->H:Lcom/inmobi/rendering/mraid/h;

    .line 631
    new-instance v0, Lcom/inmobi/rendering/mraid/g;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/g;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Lcom/inmobi/rendering/mraid/g;

    .line 632
    return-void

    :cond_5
    move v0, v3

    .line 4801
    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 805
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 806
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 807
    const-string v1, ""

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/rendering/RenderView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 860
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 2033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1103
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/inmobi/commons/core/utilities/b;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1121
    const-string v1, "command"

    const-string v2, "openExternal"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string v1, "scheme"

    invoke-static {p2}, Lcom/inmobi/ads/bk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    const-string v2, "ads"

    const-string v3, "CreativeInvokedAction"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1125
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/rendering/RenderView$a;->x()V

    .line 1126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "broadcastEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Successful\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1127
    invoke-virtual {p0, p2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1128
    :cond_0
    return-void

    .line 1104
    :catch_0
    move-exception v0

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot resolve URI ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/inmobi/rendering/RenderView;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2, p1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error message in processing openExternal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    if-eqz p4, :cond_0

    move-object p3, p4

    move-object p4, v1

    .line 1108
    goto :goto_0

    .line 1111
    :catch_1
    move-exception v0

    .line 1112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No app can handle the URI ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/inmobi/rendering/RenderView;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2, p1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error message in processing openExternal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    if-eqz p4, :cond_0

    move-object p3, p4

    move-object p4, v1

    .line 1115
    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 1419
    iget-object v3, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/mraid/i;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v4

    .line 14070
    invoke-static {v4}, Lcom/inmobi/rendering/mraid/a;->a(Landroid/content/Context;)I

    move-result v5

    .line 14072
    invoke-static {p3}, Lcom/inmobi/rendering/mraid/a;->b(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 14073
    if-nez v2, :cond_1

    .line 14081
    :cond_0
    :goto_0
    return-void

    .line 14077
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Event start: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14078
    invoke-static/range {p4 .. p4}, Lcom/inmobi/rendering/mraid/a;->b(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v6

    .line 14079
    if-eqz v6, :cond_0

    .line 14083
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Event end: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x5

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14085
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSERT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v8, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    .line 14086
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "calendar_id"

    .line 14087
    invoke-virtual {v7, v8, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "beginTime"

    .line 14088
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    invoke-virtual {v7, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v7, "endTime"

    .line 14089
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    invoke-virtual {v2, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const-string v6, "allDay"

    const/4 v7, 0x0

    .line 14090
    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string v6, "title"

    .line 14091
    move-object/from16 v0, p6

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v6, "eventLocation"

    .line 14092
    move-object/from16 v0, p5

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v6, "description"

    .line 14093
    move-object/from16 v0, p7

    invoke-virtual {v2, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 14095
    const-string v2, "transparent"

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 14096
    const-string v2, "availability"

    const/4 v6, 0x1

    invoke-virtual {v10, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14101
    :cond_2
    :goto_1
    invoke-static/range {p10 .. p10}, Lcom/inmobi/rendering/mraid/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14102
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_3

    .line 14103
    const-string v6, "rrule"

    invoke-virtual {v10, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 14105
    :cond_3
    new-instance v2, Lcom/inmobi/rendering/mraid/i$1;

    move-object/from16 v6, p8

    move-object/from16 v7, p11

    move-object v8, p3

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/inmobi/rendering/mraid/i$1;-><init>(Lcom/inmobi/rendering/mraid/i;Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14186
    invoke-static {v10, v2}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Landroid/content/Intent;Lcom/inmobi/rendering/InMobiAdActivity$a;)I

    move-result v2

    .line 14187
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14188
    const-string v5, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v6, 0x67

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14189
    const-string v5, "id"

    invoke-virtual {v3, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 14190
    invoke-static {v4, v3}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 14097
    :cond_4
    const-string v2, "opaque"

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14098
    const-string v2, "availability"

    const/4 v6, 0x0

    invoke-virtual {v10, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_1
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 979
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->setCloseRegionDisabled(Z)V

    .line 980
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 982
    if-eqz v0, :cond_0

    .line 984
    const v1, 0xfffb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/CustomView;

    check-cast v0, Lcom/inmobi/rendering/CustomView;

    .line 985
    if-eqz v0, :cond_0

    .line 986
    iget-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->p:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/CustomView;->setVisibility(I)V

    .line 989
    :cond_0
    return-void

    .line 986
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 8

    .prologue
    const v4, 0xffff

    const/4 v2, 0x1

    const/4 v7, 0x0

    .line 1036
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    .line 7172
    iget-object v1, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    if-eqz v1, :cond_0

    .line 7173
    iget-object v1, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/mraid/MediaRenderView;->a()V

    .line 7174
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Lcom/inmobi/rendering/mraid/MediaRenderView;

    .line 1038
    :cond_0
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->EXPANDED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_3

    .line 7790
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_2

    .line 7794
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 7795
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->f:Lcom/inmobi/rendering/mraid/c;

    .line 8090
    iget-object v0, v1, Lcom/inmobi/rendering/mraid/c;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getOriginalRenderView()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 8092
    iget-object v0, v1, Lcom/inmobi/rendering/mraid/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 8094
    iget-object v0, v1, Lcom/inmobi/rendering/mraid/c;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 8095
    iget-object v3, v1, Lcom/inmobi/rendering/mraid/c;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8096
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 8098
    iget-object v0, v1, Lcom/inmobi/rendering/mraid/c;->c:Landroid/view/ViewGroup;

    iget-object v2, v1, Lcom/inmobi/rendering/mraid/c;->a:Lcom/inmobi/rendering/RenderView;

    iget v3, v1, Lcom/inmobi/rendering/mraid/c;->d:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, v1, Lcom/inmobi/rendering/mraid/c;->c:Landroid/view/ViewGroup;

    .line 8099
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iget-object v6, v1, Lcom/inmobi/rendering/mraid/c;->c:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 8098
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 8100
    iget-object v0, v1, Lcom/inmobi/rendering/mraid/c;->a:Lcom/inmobi/rendering/RenderView;

    invoke-direct {v0}, Lcom/inmobi/rendering/RenderView;->i()V

    .line 7796
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->h()V

    .line 7797
    iput-boolean v7, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 1050
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1051
    iput-boolean v7, p0, Lcom/inmobi/rendering/RenderView;->n:Z

    .line 1052
    return-void

    .line 1040
    :cond_3
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->RESIZED:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_4

    .line 8801
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-eq v0, v1, :cond_2

    .line 8805
    iput-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 8806
    iget-object v2, p0, Lcom/inmobi/rendering/RenderView;->g:Lcom/inmobi/rendering/mraid/f;

    .line 9176
    iget-object v0, v2, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 9178
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    const v3, 0xfffe

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 9180
    iget-object v1, v2, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 9182
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9183
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9184
    iget-object v1, v2, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9186
    iget-object v0, v2, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    iget-object v1, v2, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    iget v3, v2, Lcom/inmobi/rendering/mraid/f;->c:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, v2, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    .line 9187
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    iget-object v6, v2, Lcom/inmobi/rendering/mraid/f;->b:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 9186
    invoke-virtual {v0, v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 9188
    iget-object v0, v2, Lcom/inmobi/rendering/mraid/f;->a:Lcom/inmobi/rendering/RenderView;

    invoke-direct {v0}, Lcom/inmobi/rendering/RenderView;->i()V

    .line 8807
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 8808
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/RenderView$a;->d(Lcom/inmobi/rendering/RenderView;)V

    .line 8809
    iput-boolean v7, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    goto :goto_0

    .line 1042
    :cond_4
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->DEFAULT:Lcom/inmobi/rendering/RenderView$RenderViewState;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    if-ne v0, v1, :cond_2

    .line 1043
    sget-object v0, Lcom/inmobi/rendering/RenderView$RenderViewState;->HIDDEN:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V

    .line 1044
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->e:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 10070
    iget-object v1, v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 1044
    if-ne v0, v1, :cond_5

    .line 1045
    invoke-direct {p0}, Lcom/inmobi/rendering/RenderView;->h()V

    goto/16 :goto_0

    .line 1047
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 813
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 814
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->loadUrl(Ljava/lang/String;)V

    .line 816
    :cond_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "broadcastEvent(\'error\',\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    .line 992
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->setUseCustomClose(Z)V

    .line 993
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 995
    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0xfffc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/CustomView;

    .line 998
    if-eqz v0, :cond_0

    .line 999
    iget-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->m:Z

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/CustomView;->setVisibility(I)V

    .line 1002
    :cond_0
    return-void

    .line 999
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 867
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 891
    :goto_0
    return-void

    .line 868
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 869
    new-instance v1, Lcom/inmobi/rendering/RenderView$2;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/RenderView$2;-><init>(Lcom/inmobi/rendering/RenderView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1131
    if-eqz p3, :cond_0

    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1132
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " called with invalid url ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1133
    const-string v0, "Invalid URL"

    invoke-virtual {p0, p2, v0, p1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :goto_0
    return-void

    .line 1137
    :cond_1
    const-string v0, "http"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "play.google.com"

    .line 1138
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "market.android.com"

    .line 1139
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "market%3A%2F%2F"

    .line 1140
    invoke-virtual {p3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1141
    invoke-static {p0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/rendering/RenderView;)V

    .line 1143
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1144
    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1146
    const-string v1, "com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1147
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "broadcastEvent(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Successful\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    invoke-virtual {p0, p2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1152
    const-string v1, "command"

    const-string v2, "openEmbedded"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    const-string v1, "scheme"

    invoke-static {p2}, Lcom/inmobi/ads/bk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    const-string v2, "ads"

    const-string v3, "CreativeInvokedAction"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/rendering/RenderView$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1157
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1878
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1880
    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1908
    :cond_1
    :goto_1
    :pswitch_0
    return v0

    .line 1880
    :sswitch_0
    const-string v3, "redirectFraudDetection"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    :sswitch_1
    const-string v3, "postToSocial"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "playVideo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "saveContent"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "inlineVideo"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "html5video"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "calendar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "storePicture"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    .line 1889
    :pswitch_1
    iget-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->F:Z

    if-eqz v2, :cond_2

    .line 14871
    iget-boolean v2, p0, Lcom/inmobi/rendering/RenderView;->O:Z

    .line 1889
    if-nez v2, :cond_1

    :cond_2
    move v0, v1

    .line 1891
    goto :goto_1

    .line 1894
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1895
    const-string v3, "vnd.android.cursor.item/event"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1896
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 1897
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 1899
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.WRITE_CALENDAR"

    invoke-static {v3, v4}, Lcom/inmobi/commons/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    .line 1900
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.READ_CALENDAR"

    invoke-static {v4, v5}, Lcom/inmobi/commons/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 1902
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    if-nez v4, :cond_1

    :cond_3
    move v0, v1

    goto/16 :goto_1

    .line 1905
    :pswitch_3
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_1

    .line 1880
    nop

    :sswitch_data_0
    .sparse-switch
        -0x706c8659 -> :sswitch_2
        -0x6235c69e -> :sswitch_4
        -0xaa104c2 -> :sswitch_6
        0x1b5f6cdd -> :sswitch_7
        0x59fa48d1 -> :sswitch_5
        0x61e1d43c -> :sswitch_3
        0x69ad837d -> :sswitch_0
        0x72856688 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final destroy()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 651
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 678
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 654
    iput-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->t:Z

    .line 655
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/rendering/RenderView;->R:I

    .line 656
    const-string v0, "sdkController"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 660
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 661
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 663
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->aa:Lcom/inmobi/ads/ViewableAd;

    if-eqz v0, :cond_3

    .line 664
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->aa:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 665
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->aa:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->e()V

    .line 668
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->U:Lcom/inmobi/ads/AdContainer;

    .line 671
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_4

    .line 673
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 674
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->removeAllViews()V

    .line 677
    :cond_4
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    goto :goto_0
.end method

.method public final getAdConfig()Lcom/inmobi/ads/b;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->D:Lcom/inmobi/ads/b;

    return-object v0
.end method

.method public final getApkDownloader()Lcom/inmobi/ads/l;
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->V:Lcom/inmobi/ads/l;

    return-object v0
.end method

.method public final getContainerContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 361
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCurrentPosition()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->K:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->K:Lorg/json/JSONObject;

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getCurrentPositionMonitor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->N:Ljava/lang/Object;

    return-object v0
.end method

.method public final getDataModel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 311
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getDefaultPosition()Ljava/lang/String;
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getDefaultPositionMonitor()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->M:Ljava/lang/Object;

    return-object v0
.end method

.method final getDownloadProgress()I
    .locals 1

    .prologue
    .line 1943
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getReferenceContainer()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getApkDownloader()Lcom/inmobi/ads/l;

    const/4 v0, 0x0

    return v0
.end method

.method final getDownloadStatus()I
    .locals 1

    .prologue
    .line 1947
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getReferenceContainer()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getApkDownloader()Lcom/inmobi/ads/l;

    const/4 v0, -0x2

    return v0
.end method

.method public final getExpandProperties()Lcom/inmobi/rendering/mraid/b;
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->G:Lcom/inmobi/rendering/mraid/b;

    return-object v0
.end method

.method public final getFullScreenActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public final getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->ab:Lcom/inmobi/ads/AdContainer$a;

    return-object v0
.end method

.method public final getImpressionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->T:Ljava/lang/String;

    return-object v0
.end method

.method public final getListener()Lcom/inmobi/rendering/RenderView$a;
    .locals 1

    .prologue
    .line 1166
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    if-nez v0, :cond_0

    .line 1167
    new-instance v0, Lcom/inmobi/rendering/RenderView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/RenderView$3;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    .line 1218
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    goto :goto_0
.end method

.method public final getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;
    .locals 1

    .prologue
    .line 793
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    return-object v0
.end method

.method public final getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->h:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    return-object v0
.end method

.method public final getMraidConfig()Lcom/inmobi/ads/b$d;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->D:Lcom/inmobi/ads/b;

    .line 2527
    iget-object v0, v0, Lcom/inmobi/ads/b;->l:Lcom/inmobi/ads/b$d;

    .line 451
    return-object v0
.end method

.method public final getMraidJsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1402
    new-instance v0, Lcom/inmobi/rendering/mraid/d;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/d;-><init>()V

    .line 14030
    iget-object v0, v0, Lcom/inmobi/rendering/mraid/d;->a:Lcom/inmobi/commons/core/c/c;

    const-string v1, "mraid_js_string"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1405
    if-nez v0, :cond_0

    .line 1406
    const-string v0, "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var d=String(a);b[d]||(b[d]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var d in b)b[d].apply({},a)};this.toString=function(){var c=[a,\":\"],d;for(d in b)c.push(\"|\",d,\"|\");return c.join(\"\")}},\nInmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.imraidview.startListeningMicIntensity();\"deviceMuted\"==a&&window.imraidview.startListeningDeviceMuteEvents();\"deviceVolumeChange\"==a&&window.imraidview.startListeningDeviceVolumeChange();\"volumeChange\"==a&&window.imraidview.startListeningVolumeChange();\"headphones\"==a&&window.imraidview.startListeningHeadphonePluggedEvents();\n\"backButtonPressed\"==a&&window.imraidview.startListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&window.imraidview.registerDownloaderCallbacks()}}catch(d){this.log(d)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.imraidview.stopListeningMicIntensity();\"deviceMuted\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceMuteEvents();\n\"deviceVolumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningDeviceVolumeChange();\"volumeChange\"==a&&0==c[a].count&&window.imraidview.stopListeningVolumeChange();\"headphones\"==a&&0==c[a].count&&window.imraidview.stopListeningHeadphonePluggedEvents();\"backButtonPressed\"==a&&0==c[a].count&&window.imraidview.stopListeningForBackButtonPressedEvent();\"downloadStatusChanged\"==a&&0==c[a].count&&window.imraidview.unregisterDownloaderCallbacks()}};this.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=\nArray(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(d){}}};this.sendSaveContentResult=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)if(2==c){var d=arguments[c],d=JSON.parse(d);b[c]=d}else b[c]=arguments[c];d=b[1];\"success\"!=d&&(c=b[0].substring(b[0].indexOf(\"_\")+1),imraid.saveContentIDMap[c]&&delete imraid.saveContentIDMap[c]);window.imraid.broadcastEvent(b[0],b[1],\nb[2])}}},__im__iosNativeMessageHandler=void 0;window.webkit&&(window.webkit.messageHandlers&&window.webkit.messageHandlers.nativeMessageHandler)&&(__im__iosNativeMessageHandler=window.webkit.messageHandlers.nativeMessageHandler);\nvar __im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=!0,imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),imIsObjValid(__im__iosNativeMessageHandler)?__im__iosNativeMessageHandler.postMessage(a):window.location=\na)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){if(imIsObjValid(__im__iosNativeMessageHandler)){d={};d.command=a;d.scheme=this.urlScheme;for(var b={},c=1;c<arguments.length;c+=2)e=arguments[c+1],null!=e&&(b[arguments[c]]=\"\"+e);d.params=b}else for(var d=this.urlScheme+\"://\"+a,e,b=!0,c=1;c<arguments.length;c+=2)e=arguments[c+1],null!=e&&(b?(d+=\"?\",b=!1):d+=\"&\",d+=arguments[c]+\"=\"+escape(e));__im__iosNativeCall.executeNativeCall(d);return\"OK\"};this.nativeCallComplete=\nfunction(a){__im__iosNativeCall.nativeCallComplete(a);return\"OK\"};this.updateKV=function(a,b){this[a]=b;var c=this.broadcastMap[a];c&&this.broadcastEvent(c,b)}};\n(function(){var a=window.mraidview={};a.orientationProperties={allowOrientationChange:!0,forceOrientation:\"none\",direction:\"right\"};var b=[],c=!1;a.detectAndBlockFraud=function(d){a.isPossibleFraud()&&a.fireRedirectFraudBeacon(d);return!1};a.zeroPad=function(a){var e=\"\";10>a&&(e+=\"0\");return e+a};a.supports=function(a){console.log(\"bridge: supports (MRAID)\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.mraidview\",\na)};a.useCustomClose=function(a){try{sdkController.useCustomClose(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"use CustomClose: \"+e)}};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};a.stackCommands=function(a,e){c?b.push(a):(eval(a),e&&(c=!0))};a.expand=function(a){try{\"undefined\"==typeof a&&(a=null),sdkController.expand(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"executeNativeExpand: \"+e+\", URL = \"+a)}};a.setExpandProperties=\nfunction(d){try{d?this.props=d:d=null;if(\"undefined\"!=typeof d.lockOrientation&&null!=d.lockOrientation&&\"undefined\"!=typeof d.orientation&&null!=d.orientation){var e={};e.allowOrientationChange=!d.lockOrientation;e.forceOrientation=d.orientation;a.setOrientationProperties(e)}sdkController.setExpandProperties(\"window.mraidview\",a.stringify(d))}catch(b){imraidview.showAlert(\"executeNativesetExpandProperties: \"+b+\", props = \"+d)}};a.getExpandProperties=function(){try{return eval(\"(\"+sdkController.getExpandProperties(\"window.mraidview\")+\n\")\")}catch(a){imraidview.showAlert(\"getExpandProperties: \"+a)}};a.setOrientationProperties=function(d){try{d?(\"undefined\"!=typeof d.allowOrientationChange&&(a.orientationProperties.allowOrientationChange=d.allowOrientationChange),\"undefined\"!=typeof d.forceOrientation&&(a.orientationProperties.forceOrientation=d.forceOrientation)):d=null,sdkController.setOrientationProperties(\"window.mraidview\",a.stringify(a.orientationProperties))}catch(e){imraidview.showAlert(\"setOrientationProperties: \"+e+\", props = \"+\nd)}};a.getOrientationProperties=function(){return{forceOrientation:a.orientationProperties.forceOrientation,allowOrientationChange:a.orientationProperties.allowOrientationChange}};a.resizeProps=null;a.setResizeProperties=function(d){var e,b;try{e=parseInt(d.width);b=parseInt(d.height);if(isNaN(e)||isNaN(b)||1>e||1>b)throw\"Invalid\";d.width=e;d.height=b;a.resizeProps=d;sdkController.setResizeProperties(\"window.mraidview\",a.stringify(d))}catch(c){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\n\"setResizeProperties\")}};a.getResizeProperties=function(){try{return eval(\"(\"+sdkController.getResizeProperties(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getResizeProperties: \"+a)}};a.open=function(a){\"undefined\"==typeof a&&(a=null);try{sdkController.open(\"window.mraidview\",a)}catch(e){imraidview.showAlert(\"open: \"+e)}};a.getScreenSize=function(){try{return eval(\"(\"+sdkController.getScreenSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getScreenSize: \"+a)}};a.getMaxSize=\nfunction(){try{return eval(\"(\"+sdkController.getMaxSize(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getMaxSize: \"+a)}};a.getCurrentPosition=function(){try{return eval(\"(\"+sdkController.getCurrentPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getCurrentPosition: \"+a)}};a.getDefaultPosition=function(){try{return eval(\"(\"+sdkController.getDefaultPosition(\"window.mraidview\")+\")\")}catch(a){imraidview.showAlert(\"getDefaultPosition: \"+a)}};a.getState=function(){try{return String(sdkController.getState(\"window.mraidview\"))}catch(a){imraidview.showAlert(\"getState: \"+\na)}};a.isViewable=function(){try{return sdkController.isViewable(\"window.mraidview\")}catch(a){imraidview.showAlert(\"isViewable: \"+a)}};a.getPlacementType=function(){return sdkController.getPlacementType(\"window.mraidview\")};a.close=function(){try{sdkController.close(\"window.mraidview\")}catch(a){imraidview.showAlert(\"close: \"+a)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.playVideo=function(a){var e=\"\";null!=a&&(e=a);try{sdkController.playVideo(\"window.mraidview\",\ne)}catch(b){imraidview.showAlert(\"playVideo: \"+b)}};a.stringify=function(d){if(\"undefined\"===typeof JSON){var e=\"\",b;if(\"undefined\"==typeof d.length)return a.stringifyArg(d);for(b=0;b<d.length;b++)0<b&&(e+=\",\"),e+=a.stringifyArg(d[b]);return e+\"]\"}return JSON.stringify(d)};a.stringifyArg=function(a){var e,b,c;b=typeof a;e=\"\";if(\"number\"===b||\"boolean\"===b)e+=args;else if(a instanceof Array)e=e+\"[\"+a+\"]\";else if(a instanceof Object){b=!0;e+=\"{\";for(c in a)null!==a[c]&&(b||(e+=\",\"),e=e+\'\"\'+c+\'\":\',b=\ntypeof a[c],e=\"number\"===b||\"boolean\"===b?e+a[c]:\"function\"===typeof a[c]?e+\'\"\"\':a[c]instanceof Object?e+this.stringify(args[i][c]):e+\'\"\'+a[c]+\'\"\',b=!1);e+=\"}\"}else a=a.replace(/\\\\/g,\"\\\\\\\\\"),a=a.replace(/\"/g,\'\\\\\"\'),e=e+\'\"\'+a+\'\"\';imraidview.showAlert(\"json:\"+e);return e};getPID=function(a){var e=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(e=a.id);return e};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\n\"resize\");else try{sdkController.resize(\"window.mraidview\")}catch(b){imraidview.showAlert(\"resize called in bridge\")}};a.createCalendarEvent=function(a){var e={};\"object\"!=typeof a&&window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects parameter\",\"createCalendarEvent\");if(\"string\"!=typeof a.start||\"string\"!=typeof a.end)window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects string parameters for start and end dates\",\"createCalendarEvent\");else{\"string\"!=typeof a.id&&\n(a.id=\"\");\"string\"!=typeof a.location&&(a.location=\"\");\"string\"!=typeof a.description&&(a.description=\"\");\"string\"!=typeof a.summary&&(a.summary=\"\");\"string\"==typeof a.status&&(\"pending\"==a.status||\"tentative\"==a.status||\"confirmed\"==a.status||\"cancelled\"==a.status)||(a.status=\"\");\"string\"==typeof a.transparency&&(\"opaque\"==a.transparency||\"transparent\"==a.transparency)||(a.transparency=\"\");if(null==a.recurrence||\"\"==a.recurrence)e={};else{\"string\"==typeof a.summary&&(e.frequency=a.recurrence.frequency);\nnull!=a.recurrence.interval&&(e.interval=a.recurrence.interval);\"string\"==typeof a.summary&&(e.expires=a.recurrence.expires);null!=a.recurrence.exceptionDates&&(e.exceptionDates=a.recurrence.exceptionDates);if(null!=a.recurrence.daysInWeek){var b=formatDaysInWeek(a.recurrence.daysInWeek);null!=b?e.daysInWeek=b:imraidview.showAlert(\"daysInWeek invalid format \")}e.daysInMonth=a.recurrence.daysInMonth;e.daysInYear=a.recurrence.daysInYear;e.weeksInMonth=a.recurrence.weeksInMonth;e.monthsInYear=a.recurrence.monthsInYear}\"string\"!=\ntypeof a.reminder&&(a.reminder=\"\");try{sdkController.createCalendarEvent(\"window.mraidview\",a.id,a.start,a.end,a.location,a.description,a.summary,a.status,a.transparency,JSON.stringify(e),a.reminder)}catch(c){sdkController.createCalendarEvent(\"window.mraidview\",a.start,a.end,a.location,a.description)}}};formatDaysInWeek=function(a){try{if(0!=a.length){for(var e=0;e<a.length;e++)switch(a[e]){case 0:a[e]=\"SU\";break;case 1:a[e]=\"MO\";break;case 2:a[e]=\"TU\";break;case 3:a[e]=\"WE\";break;case 4:a[e]=\"TH\";\nbreak;case 5:a[e]=\"FR\";break;case 6:a[e]=\"SA\";break;default:return null}return a}}catch(b){}return null};a.storePicture=function(b){console.log(\"bridge: storePicture\");if(\"string\"!=typeof b)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled by user.\",\"storePicture\"),!1):sdkController.storePicture(\"window.mraidview\",\nb);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+b+\" was cancelled because it is unsupported in this device/app.\",\"storePicture\")}};a.fireMediaTrackingEvent=function(a,e){};a.fireMediaErrorEvent=function(a,e){};a.fireMediaTimeUpdateEvent=function(a,e,b){};a.fireMediaCloseEvent=function(a,e,b){};a.fireMediaVolumeChangeEvent=function(a,e,b){};a.broadcastEvent=function(){window.mraid.broadcastEvent.apply(window.mraid,arguments)}})();\n(function(){var a=window.mraid=new InmobiObj,b=window.mraidview,c=!1;b.isAdShownToUser=!1;b.onUserInteraction=function(){c=!0};b.isPossibleFraud=function(){return a.supports(\"redirectFraudDetection\")&&(!b.isAdShownToUser||!c)};b.fireRedirectFraudBeacon=function(a){if(\"undefined\"!=typeof inmobi&&inmobi.recordEvent){var e={};e.trigger=a;e.isAdShown=b.isAdShownToUser.toString();inmobi.recordEvent(135,e)}};window.onbeforeunload=function(){b.detectAndBlockFraud(\"redirect\")};a.addEventListener(\"viewableChange\",\nfunction(a){a&&!b.isAdShownToUser&&(b.isAdShownToUser=!0)});a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=b.getExpandProperties;a.setExpandProperties=function(c){\"undefined\"!=typeof c&&(\"useCustomClose\"in c&&\"undefined\"!=typeof a.getState()&&\"expanded\"!=a.getState())&&a.useCustomClose(c.useCustomClose);b.setExpandProperties(c)};a.getResizeProperties=b.getResizeProperties;a.setResizeProperties=b.setResizeProperties;a.getOrientationProperties=b.getOrientationProperties;a.setOrientationProperties=\nb.setOrientationProperties;a.expand=b.expand;a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.isViewable=b.isViewable;a.createCalendarEvent=function(a){b.detectAndBlockFraud(\"mraid.createCalendarEvent\")||b.createCalendarEvent(a)};a.open=function(c){b.detectAndBlockFraud(\"mraid.open\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(c))};a.resize=b.resize;a.getVersion=function(){return\"2.0\"};a.getPlacementType=b.getPlacementType;a.playVideo=function(a){b.playVideo(a)};\na.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.supports=function(a){return b.supports(a)};a.storePicture=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):b.storePicture(c)}})();\n(function(){var a=window.imraidview={},b,c=!0;a.setOrientationProperties=function(e){try{e?(\"undefined\"!=typeof e.allowOrientationChange&&(mraidview.orientationProperties.allowOrientationChange=e.allowOrientationChange),\"undefined\"!=typeof e.forceOrientation&&(mraidview.orientationProperties.forceOrientation=e.forceOrientation),\"undefined\"!=typeof e.direction&&(mraidview.orientationProperties.direction=e.direction)):e=null,sdkController.setOrientationProperties(\"window.imraidview\",mraidview.stringify(mraidview.orientationProperties))}catch(b){a.showAlert(\"setOrientationProperties: \"+\nb+\", props = \"+e)}};a.getOrientationProperties=function(){return mraidview.orientationProperties};a.getWindowOrientation=function(){var a=window.orientation;0>a&&(a+=360);window.innerWidth!==this.previousWidth&&0==a&&window.innerWidth>window.innerHeight&&(a=90);return a};var d=function(){window.setTimeout(function(){if(c||a.getWindowOrientation()!==b)c=!1,b=a.getWindowOrientation(),sdkController.onOrientationChange(\"window.imraidview\"),imraid.broadcastEvent(\"orientationChange\",b)},200)};a.registerOrientationListener=\nfunction(){b=a.getWindowOrientation();window.addEventListener(\"resize\",d,!1);window.addEventListener(\"orientationchange\",d,!1)};a.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",d,!1);window.removeEventListener(\"orientationchange\",d,!1)};window.imraidview.registerOrientationListener();a.firePostStatusEvent=function(a){window.imraid.broadcastEvent(\"postStatus\",a)};a.fireMediaTrackingEvent=function(a,b){var c={};c.name=a;var d=\"inmobi_media_\"+a;\"undefined\"!=typeof b&&(null!=\nb&&\"\"!=b)&&(d=d+\"_\"+b);window.imraid.broadcastEvent(d,c)};a.fireMediaErrorEvent=function(a,b){var c={name:\"error\"};c.code=b;var d=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(d=d+\"_\"+a);window.imraid.broadcastEvent(d,c)};a.fireMediaTimeUpdateEvent=function(a,b,c){var d={name:\"timeupdate\",target:{}};d.target.currentTime=b;d.target.duration=c;b=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.saveContent=function(a,\nb,c){window.imraid.addEventListener(\"saveContent_\"+a,c);sdkController.saveContent(\"window.imraidview\",a,b)};a.cancelSaveContent=function(a){sdkController.cancelSaveContent(\"window.imraidview\",a)};a.disableCloseRegion=function(a){sdkController.disableCloseRegion(\"window.imraidview\",a)};a.fireGalleryImageSelectedEvent=function(a,b,c){var d=new Image;d.src=\"data:image/jpeg;base64,\"+a;d.width=b;d.height=c;window.imraid.broadcastEvent(\"galleryImageSelected\",d)};a.fireCameraPictureCatpturedEvent=function(a,\nb,c){var d=new Image;d.src=\"data:image/jpeg;base64,\"+a;d.width=b;d.height=c;window.imraid.broadcastEvent(\"cameraPictureCaptured\",d)};a.fireMediaCloseEvent=function(a,b,c){var d={name:\"close\"};d.viaUserInteraction=b;d.target={};d.target.currentTime=c;b=\"inmobi_media_\"+d.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.fireMediaVolumeChangeEvent=function(a,b,c){var d={name:\"volumechange\",target:{}};d.target.volume=b;d.target.muted=c;b=\"inmobi_media_\"+d.name;\n\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(b=b+\"_\"+a);window.imraid.broadcastEvent(b,d)};a.fireDeviceMuteChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceMuted\",a)};a.fireDeviceVolumeChangeEvent=function(a){window.imraid.broadcastEvent(\"deviceVolumeChange\",a)};a.fireHeadphonePluggedEvent=function(a){window.imraid.broadcastEvent(\"headphones\",a)};a.showAlert=function(a){sdkController.showAlert(\"window.imraidview\",a)};a.openExternal=function(b,c){try{600<=getSdkVersionInt()?sdkController.openExternal(\"window.imraidview\",\nb,c):sdkController.openExternal(\"window.imraidview\",b)}catch(d){a.showAlert(\"openExternal: \"+d)}};a.log=function(b){try{sdkController.log(\"window.imraidview\",b)}catch(c){a.showAlert(\"log: \"+c)}};a.getPlatform=function(){return\"android\"};a.asyncPing=function(b){try{sdkController.asyncPing(\"window.imraidview\",b)}catch(c){a.showAlert(\"asyncPing: \"+c)}};a.startListeningDeviceMuteEvents=function(){sdkController.registerDeviceMuteEventListener(\"window.imraidview\")};a.stopListeningDeviceMuteEvents=function(){sdkController.unregisterDeviceMuteEventListener(\"window.imraidview\")};\na.startListeningDeviceVolumeChange=function(){sdkController.registerDeviceVolumeChangeEventListener(\"window.imraidview\")};a.stopListeningDeviceVolumeChange=function(){sdkController.unregisterDeviceVolumeChangeEventListener(\"window.imraidview\")};a.startListeningHeadphonePluggedEvents=function(){sdkController.registerHeadphonePluggedEventListener(\"window.imraidview\")};a.stopListeningHeadphonePluggedEvents=function(){sdkController.unregisterHeadphonePluggedEventListener(\"window.imraidview\")};getSdkVersionInt=\nfunction(){for(var b=a.getSdkVersion().split(\".\"),c=b.length,d=\"\",f=0;f<c;f++)d+=b[f];return parseInt(d)};a.getSdkVersion=function(){return window._im_imaiview.getSdkVersion()};a.supports=function(a){console.log(\"bridge: supports (IMRAID)\");if(\"string\"!=typeof a)window.imraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=sdkController.supports(\"window.imraidview\",a)};a.postToSocial=function(a,b,c,d){a=parseInt(a);isNaN(a)?window.imraid.broadcastEvent(\"error\",\n\"socialType must be an integer\",\"postToSocial\"):(\"string\"!=typeof b&&(b=\"\"),\"string\"!=typeof c&&(c=\"\"),\"string\"!=typeof d&&(d=\"\"),sdkController.postToSocial(\"window.imraidview\",a,b,c,d))};a.incentCompleted=function(a){if(\"object\"!=typeof a||null==a)sdkController.incentCompleted(\"window.imraidview\",null);else try{sdkController.incentCompleted(\"window.imraidview\",JSON.stringify(a))}catch(b){sdkController.incentCompleted(\"window.imraidview\",null)}};a.getOrientation=function(){try{return String(sdkController.getOrientation(\"window.imraidview\"))}catch(b){a.showAlert(\"getOrientation: \"+\nb)}};a.acceptAction=function(b){try{sdkController.acceptAction(\"window.imraidview\",mraidview.stringify(b))}catch(c){a.showAlert(\"acceptAction: \"+c+\", params = \"+b)}};a.rejectAction=function(b){try{sdkController.rejectAction(\"window.imraidview\",mraidview.stringify(b))}catch(c){a.showAlert(\"rejectAction: \"+c+\", params = \"+b)}};a.updateToPassbook=function(b){window.imraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.isDeviceMuted=function(){return\"false\"!=\nsdkController.isDeviceMuted(\"window.imraidview\")};a.getDeviceVolume=function(){return 603>=getSdkVersionInt()?-1:sdkController.getDeviceVolume(\"window.imraidview\")};a.isHeadPhonesPlugged=function(){return\"false\"!=sdkController.isHeadphonePlugged(\"window.imraidview\")};a.sendSaveContentResult=function(){window.imraid.sendSaveContentResult.apply(window.imraid,arguments)};a.broadcastEvent=function(){window.imraid.broadcastEvent.apply(window.imraid,arguments)};a.disableBackButton=function(a){void 0==a||\n\"boolean\"!=typeof a?console.log(\"disableBackButton called with invalid params\"):sdkController.disableBackButton(\"window.imraidview\",a)};a.isBackButtonDisabled=function(){return sdkController.isBackButtonDisabled(\"window.imraidview\")};a.startListeningForBackButtonPressedEvent=function(){sdkController.registerBackButtonPressedEventListener(\"window.imraidview\")};a.stopListeningForBackButtonPressedEvent=function(){sdkController.unregisterBackButtonPressedEventListener(\"window.imraidview\")};a.hideStatusBar=\nfunction(){};a.setOpaqueBackground=function(){};a.startDownloader=function(a,b,c){682<=getSdkVersionInt()&&sdkController.startDownloader(\"window.imraidview\",a,b,c)};a.registerDownloaderCallbacks=function(){682<=getSdkVersionInt()&&sdkController.registerDownloaderCallbacks(\"window.imraidview\")};a.unregisterDownloaderCallbacks=function(){682<=getSdkVersionInt()&&sdkController.unregisterDownloaderCallbacks(\"window.imraidview\")};a.getDownloadProgress=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadProgress(\"window.imraidview\"):\n-1};a.getDownloadStatus=function(){return 682<=getSdkVersionInt()?sdkController.getDownloadStatus(\"window.imraidview\"):-1};a.fireEvent=function(a){700<=getSdkVersionInt()&&(\"fireSkip\"===a?sdkController.fireSkip(\"window.imraidview\"):\"fireComplete\"===a?sdkController.fireComplete(\"window.imraidview\"):\"showEndCard\"===a&&sdkController.showEndCard(\"window.imraidview\"))};a.saveBlob=function(a){700<=getSdkVersionInt()&&sdkController.saveBlob(\"window.imraidview\",a)};a.getBlob=function(a,b){700<=getSdkVersionInt()&&\nsdkController.getBlob(a,b)};a.setCloseEndCardTracker=function(a){700<=getSdkVersionInt()&&sdkController.setCloseEndCardTracker(\"window.imraidview\",a)}})();\n(function(){var a=window.imraid=new InmobiObj,b=window.imraidview;a.getOrientation=b.getOrientation;a.setOrientationProperties=b.setOrientationProperties;a.getOrientationProperties=b.getOrientationProperties;a.saveContentIDMap={};a.saveContent=function(c,d,e){var k=arguments.length,h,f=null;if(3>k){if(\"function\"===typeof arguments[k-1])h=arguments[k-1];else return;f={reason:1}}else a.saveContentIDMap[c]&&(h=arguments[2],f={reason:11,url:arguments[1]});\"function\"!==!h&&(f?(window.imraid.addEventListener(\"saveContent_failed_\"+\nc,h),window.imraid.sendSaveContentResult(\"saveContent_failed_\"+c,\"failed\",JSON.stringify(f))):(a.removeEventListener(\"saveContent_\"+c),a.saveContentIDMap[c]=!0,b.saveContent(c,d,e)))};a.cancelSaveContent=function(a){b.cancelSaveContent(a)};a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.disableCloseRegion=b.disableCloseRegion;a.getSdkVersion=b.getSdkVersion;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\n\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getInMobiAIVersion=function(){return\"2.0\"};a.getVendorName=function(){return\"inmobi\"};a.openExternal=function(a,d){mraidview.detectAndBlockFraud(\"imraid.openExternal\")||b.openExternal(a,d)};a.updateToPassbook=function(c){mraidview.detectAndBlockFraud(\"imraid.updateToPassbook\")||(\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):b.updateToPassbook(c))};a.postToSocial=function(a,d,e,k){mraidview.detectAndBlockFraud(\"imraid.postToSocial\")||\nb.postToSocial(a,d,e,k)};a.getPlatform=b.getPlatform;a.incentCompleted=b.incentCompleted;a.loadSKStore=b.loadSKStore;a.showSKStore=function(a){mraidview.detectAndBlockFraud(\"imraid.showSKStore\")||b.showSKStore(a)};a.supports=function(a){return b.supports(a)};a.isDeviceMuted=function(){return!imIsObjValid(a.listeners.deviceMuted)?-1:b.isDeviceMuted()};a.isHeadPhonesPlugged=function(){return!imIsObjValid(a.listeners.headphones)?!1:b.isHeadPhonesPlugged()};a.getDeviceVolume=function(){return b.getDeviceVolume()};\na.setDeviceVolume=function(a){b.setDeviceVolume(a)};a.hideStatusBar=function(){b.hideStatusBar()};a.setOpaqueBackground=function(){b.setOpaqueBackground()};a.disableBackButton=b.disableBackButton;a.isBackButtonDisabled=b.isBackButtonDisabled;a.startDownloader=b.startDownloader;a.getDownloadProgress=b.getDownloadProgress;a.getDownloadStatus=b.getDownloadStatus;a.fireEvent=b.fireEvent;a.saveBlob=b.saveBlob;a.getBlob=b.getBlob;a.setCloseEndCardTracker=b.setCloseEndCardTracker})();\n(function(){var a=window._im_imaiview={ios:{}};window.imaiview=a;a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(d){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return sdkController.getPlatformVersion(\"window.imaiview\")};a.log=function(a){sdkController.log(\"window.imaiview\",a)};a.openEmbedded=function(a){sdkController.openEmbedded(\"window.imaiview\",a)};\na.openExternal=function(a,c){600<=getSdkVersionInt()?sdkController.openExternal(\"window.imaiview\",a,c):sdkController.openExternal(\"window.imaiview\",a)};a.ping=function(a,c){sdkController.ping(\"window.imaiview\",a,c)};a.pingInWebView=function(a,c){sdkController.pingInWebView(\"window.imaiview\",a,c)};a.getSdkVersion=function(){try{var a=sdkController.getSdkVersion(\"window.imaiview\");if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||\nnull==a)sdkController.onUserInteraction(\"window.imaiview\",null);else try{sdkController.onUserInteraction(\"window.imaiview\",JSON.stringify(a))}catch(c){sdkController.onUserInteraction(\"window.imaiview\",null)}};a.fireAdReady=function(){sdkController.fireAdReady(\"window.imaiview\")};a.fireAdFailed=function(){sdkController.fireAdFailed(\"window.imaiview\")};a.broadcastEvent=function(){window.imai.broadcastEvent.apply(window.imai,arguments)}})();\n(function(){var a=window._im_imaiview;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;window.imai=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var e=-1;try{e=a.indexOf(b)}catch(k){}return e};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,d,e){if(!imIsObjValid(d)||!imIsObjValid(e))return a;b.isHttpUrl(a)&&\n(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+d+\",\"+e):a+(\"&u-tap-o=\"+d+\",\"+e));return a};b.performAdClick=function(a,d){d=d||event;if(imIsObjValid(a)){var e=a.clickConfig,k=a.landingConfig;if(!imIsObjValid(e)&&!imIsObjValid(k))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,g=null,m=null,n=null,l=null,q=null,p=null;if(imIsObjValid(d))try{m=d.changedTouches[0].pageX,n=d.changedTouches[0].pageY}catch(r){n=\nm=0}imIsObjValid(k)?imIsObjValid(e)?(l=k.url,q=k.fallbackUrl,p=k.urlType,h=e.url,f=e.pingWV,g=e.fr):(l=k.url,p=k.urlType):(l=e.url,p=e.urlType);e=b.getPlatform();try{if(\"boolean\"!=typeof g&&\"number\"!=typeof g||null==g)g=!0;if(0>g||1<g)g=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;if(\"number\"!=typeof p||null==p)p=0;h=b.appendTapParams(h,m,n);imIsObjValid(h)?!0==f?b.pingInWebView(h,g):b.ping(h,g):b.log(\"clickurl provided is null.\");if(imIsObjValid(l))switch(imIsObjValid(h)||\n(l=b.appendTapParams(l,m,n)),p){case 1:b.openEmbedded(l);break;case 2:\"ios\"==e?b.ios.openItunesProductView(l):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+e);break;default:b.openExternal(l,q)}else b.log(\"Landing url provided is null.\")}catch(s){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.performActionClick=function(a,d){d=d||event;if(imIsObjValid(a)){var e=a.clickConfig,k=a.landingConfig;\nif(!imIsObjValid(e)&&!imIsObjValid(k))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,g=null,m=null,n=null;if(imIsObjValid(d))try{m=d.changedTouches[0].pageX,n=d.changedTouches[0].pageY}catch(l){n=m=0}imIsObjValid(e)&&(h=e.url,f=e.pingWV,g=e.fr);try{if(\"boolean\"!=typeof g&&\"number\"!=typeof g||null==g)g=!0;if(0>g||1<g)g=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=\n!0;if(0>f||1<f)f=!0;h=b.appendTapParams(h,m,n);imIsObjValid(h)?!0==f?b.pingInWebView(h,g):b.ping(h,g):b.log(\"clickurl provided is null.\");b.onUserInteraction(k)}catch(q){}}}else b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\")};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=function(b){mraidview.detectAndBlockFraud(\"imai.openEmbedded\")||a.openEmbedded(b)};\nb.openExternal=function(b,d){mraidview.detectAndBlockFraud(\"imai.openExternal\")||a.openExternal(b,d)};b.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=a.onUserInteraction;b.getSdkVersion=a.getSdkVersion;b.loadSKStore=a.loadSKStore;b.showSKStore=function(b){mraidview.detectAndBlockFraud(\"imai.showSKStore\")||a.showSKStore(b)};b.ios.openItunesProductView=function(b){mraidview.detectAndBlockFraud(\"imai.ios.openItunesProductView\")||a.ios.openItunesProductView(b)};b.fireAdReady=a.fireAdReady;\nb.fireAdFailed=a.fireAdFailed})();"

    .line 1411
    :cond_0
    return-object v0
.end method

.method public final getOrientationProperties()Lcom/inmobi/rendering/mraid/g;
    .locals 1

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Lcom/inmobi/rendering/mraid/g;

    return-object v0
.end method

.method public final getOriginalRenderView()Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->y:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method public final getPubActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->z:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->z:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public final getReferenceContainer()Lcom/inmobi/ads/AdContainer;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->U:Lcom/inmobi/ads/AdContainer;

    return-object v0
.end method

.method public final getRenderingConfig()Lcom/inmobi/ads/b$f;
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->D:Lcom/inmobi/ads/b;

    .line 2523
    iget-object v0, v0, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 447
    return-object v0
.end method

.method public final getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->e:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    return-object v0
.end method

.method public final getResizeProperties()Lcom/inmobi/rendering/mraid/h;
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->H:Lcom/inmobi/rendering/mraid/h;

    return-object v0
.end method

.method public final getState()Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method

.method public final getVideoContainerView()Landroid/view/View;
    .locals 1

    .prologue
    .line 707
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getViewState()Lcom/inmobi/rendering/RenderView$RenderViewState;
    .locals 1

    .prologue
    .line 1222
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    return-object v0
.end method

.method public final getViewableAd()Lcom/inmobi/ads/ViewableAd;
    .locals 7

    .prologue
    .line 739
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->aa:Lcom/inmobi/ads/ViewableAd;

    if-nez v0, :cond_1

    .line 740
    new-instance v0, Lcom/inmobi/ads/bs;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/bs;-><init>(Lcom/inmobi/rendering/RenderView;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->aa:Lcom/inmobi/ads/ViewableAd;

    .line 741
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getPubActivity()Landroid/app/Activity;

    move-result-object v2

    .line 743
    :goto_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->W:Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 744
    if-eqz v2, :cond_4

    .line 746
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->W:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bj;

    .line 747
    sget-object v1, Lcom/inmobi/rendering/RenderView$8;->b:[I

    iget-object v3, v0, Lcom/inmobi/ads/bj;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit$AdTrackerType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 752
    :pswitch_0
    iget-object v1, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v3, "avidAdSession"

    .line 753
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;

    .line 754
    iget-object v1, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v3, "deferred"

    .line 755
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v1, "deferred"

    .line 756
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x1

    .line 757
    :goto_2
    if-eqz v4, :cond_0

    .line 758
    new-instance v0, Lcom/inmobi/ads/p;

    iget-object v3, p0, Lcom/inmobi/rendering/RenderView;->aa:Lcom/inmobi/ads/ViewableAd;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/p;-><init>(Lcom/inmobi/ads/AdContainer;Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;Z)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->aa:Lcom/inmobi/ads/ViewableAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 772
    :catch_0
    move-exception v0

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception occurred while creating the HTML viewable ad : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->aa:Lcom/inmobi/ads/ViewableAd;

    return-object v0

    .line 742
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v2

    goto :goto_0

    .line 756
    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    .line 767
    :pswitch_1
    :try_start_1
    new-instance v1, Lcom/inmobi/ads/y;

    iget-object v3, p0, Lcom/inmobi/rendering/RenderView;->aa:Lcom/inmobi/ads/ViewableAd;

    iget-object v0, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/inmobi/ads/y;-><init>(Lcom/inmobi/ads/AdContainer;Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Ljava/util/Map;)V

    iput-object v1, p0, Lcom/inmobi/rendering/RenderView;->aa:Lcom/inmobi/ads/ViewableAd;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 779
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 780
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getImpressionId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 782
    const-string v1, "impId"

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getImpressionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    :cond_5
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v1, "ads"

    const-string v2, "TrackersForService"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 747
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onAttachedToWindow()V
    .locals 2

    .prologue
    .line 529
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 3546
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->F:Z

    .line 532
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 533
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    .line 535
    :cond_0
    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 4

    .prologue
    .line 551
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 553
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->C:Lcom/inmobi/rendering/c;

    invoke-virtual {v0}, Lcom/inmobi/rendering/c;->unRegisterBroadcastListener()V

    .line 555
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b()V

    .line 556
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c()V

    .line 557
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f()V

    .line 558
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->i:Lcom/inmobi/rendering/mraid/i;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getContainerContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/i;->a(Landroid/content/Context;)V

    .line 566
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Detaching WebView from window encountered an error ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 572
    const-string v2, "type"

    const-string v3, "IllegalArgumentException"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    const-string v2, "message"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v0, "ads"

    const-string v2, "ExceptionCaught"

    invoke-static {v0, v2, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 575
    :catch_1
    move-exception v0

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in submitting telemetey event : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 577
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Touch event received, action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3826
    const-string v0, "window.mraidview.onUserInteraction();"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 541
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public final onScreenStateChanged(I)V
    .locals 1

    .prologue
    .line 492
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onScreenStateChanged(I)V

    .line 494
    if-nez p1, :cond_1

    .line 495
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Z)V

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->S:Z

    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Z)V

    goto :goto_0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 4

    .prologue
    .line 456
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onSizeChanged(IIII)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSizeChanged ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 460
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v0

    .line 461
    invoke-static {p2}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v1

    .line 2839
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.mraidview.broadcastEvent(\'sizeChange\',"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 464
    :cond_0
    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 482
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 485
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->S:Z

    .line 487
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/RenderView;->c(Z)V

    .line 488
    return-void

    .line 485
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 2

    .prologue
    .line 468
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    .line 470
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 471
    :goto_0
    iget-boolean v1, p0, Lcom/inmobi/rendering/RenderView;->o:Z

    if-ne v1, v0, :cond_1

    .line 476
    :goto_1
    return-void

    .line 470
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 475
    :cond_1
    invoke-direct {p0, v0}, Lcom/inmobi/rendering/RenderView;->d(Z)V

    goto :goto_1
.end method

.method public final setAdActiveFlag(Z)V
    .locals 0

    .prologue
    .line 1269
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->n:Z

    .line 1270
    return-void
.end method

.method public final setAndUpdateViewState(Lcom/inmobi/rendering/RenderView$RenderViewState;)V
    .locals 3

    .prologue
    .line 1251
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    .line 1253
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1255
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->d:Lcom/inmobi/rendering/RenderView$RenderViewState;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView$RenderViewState;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 13848
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.broadcastEvent(\'stateChange\',\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->c(Ljava/lang/String;)V

    .line 1257
    return-void
.end method

.method public final setBlobProvider(Lcom/inmobi/rendering/a;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->u:Lcom/inmobi/rendering/a;

    .line 295
    return-void
.end method

.method final setCloseEndCardTracker(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 2038
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getReferenceContainer()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 2039
    instance-of v1, v0, Lcom/inmobi/ads/ay;

    if-eqz v1, :cond_0

    .line 2040
    check-cast v0, Lcom/inmobi/ads/ay;

    .line 15544
    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeVideoWrapper;

    .line 15545
    if-eqz v0, :cond_0

    .line 15546
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeVideoView;

    move-result-object v0

    .line 15547
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 15549
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15550
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/ads/bq;->f()Lcom/inmobi/ads/bm;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15551
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->x()Lcom/inmobi/ads/bq;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/bq;->f()Lcom/inmobi/ads/bm;

    move-result-object v0

    .line 15552
    new-instance v1, Lcom/inmobi/ads/NativeTracker;

    const/4 v2, 0x0

    sget-object v3, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_END_CARD_CLOSE:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    const/4 v4, 0x0

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/inmobi/ads/NativeTracker;-><init>(Ljava/lang/String;ILcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/bm;->a(Lcom/inmobi/ads/NativeTracker;)V

    .line 2043
    :cond_0
    return-void
.end method

.method public final setCloseRegionDisabled(Z)V
    .locals 0

    .prologue
    .line 948
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->p:Z

    .line 949
    return-void
.end method

.method public final setCurrentPosition()V
    .locals 4

    .prologue
    .line 403
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->K:Lorg/json/JSONObject;

    .line 404
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 405
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->getLocationOnScreen([I)V

    .line 407
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->K:Lorg/json/JSONObject;

    const-string v2, "x"

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 408
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->K:Lorg/json/JSONObject;

    const-string v2, "y"

    const/4 v3, 0x1

    aget v0, v0, v3

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 409
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v0

    .line 410
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getHeight()I

    move-result v1

    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v1

    .line 411
    iget-object v2, p0, Lcom/inmobi/rendering/RenderView;->K:Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 412
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->K:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :goto_0
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->N:Ljava/lang/Object;

    monitor-enter v1

    .line 417
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->l:Z

    .line 418
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->N:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 419
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final setCurrentPositionLock()V
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->l:Z

    .line 353
    return-void
.end method

.method public final setDefaultPosition()V
    .locals 4

    .prologue
    .line 365
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 366
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    .line 367
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 368
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 372
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 374
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    const-string v2, "x"

    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    const-string v2, "y"

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 376
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v1

    .line 377
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b/c;->b(I)I

    move-result v0

    .line 378
    iget-object v2, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    const-string v3, "width"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 379
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    const-string v2, "height"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    :goto_0
    iget-object v1, p0, Lcom/inmobi/rendering/RenderView;->M:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->k:Z

    .line 394
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->M:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    .line 384
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    const-string v1, "x"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 385
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    const-string v1, "y"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 386
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    const-string v1, "width"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 387
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->J:Lorg/json/JSONObject;

    const-string v1, "height"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 381
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public final setDefaultPositionLock()V
    .locals 1

    .prologue
    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/RenderView;->k:Z

    .line 349
    return-void
.end method

.method public final setDisableBackButton(Z)V
    .locals 0

    .prologue
    .line 952
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->q:Z

    .line 953
    return-void
.end method

.method public final setExitAnimation(I)V
    .locals 0

    .prologue
    .line 1083
    iput p1, p0, Lcom/inmobi/rendering/RenderView;->R:I

    .line 1084
    return-void
.end method

.method public final setExpandProperties(Lcom/inmobi/rendering/mraid/b;)V
    .locals 1

    .prologue
    .line 1236
    .line 12044
    iget-boolean v0, p1, Lcom/inmobi/rendering/mraid/b;->b:Z

    .line 1236
    if-eqz v0, :cond_0

    .line 13040
    iget-boolean v0, p1, Lcom/inmobi/rendering/mraid/b;->a:Z

    .line 1237
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setUseCustomClose(Z)V

    .line 1239
    :cond_0
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->G:Lcom/inmobi/rendering/mraid/b;

    .line 1240
    return-void
.end method

.method public final setFullScreenActivityContext(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 432
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    .line 433
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Lcom/inmobi/rendering/mraid/g;

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setOrientationProperties(Lcom/inmobi/rendering/mraid/g;)V

    .line 436
    :cond_0
    return-void
.end method

.method final setIsInAppBrowser(Z)V
    .locals 0

    .prologue
    .line 641
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->A:Z

    .line 642
    return-void
.end method

.method public final setIsPreload(Z)V
    .locals 0

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->v:Z

    .line 287
    return-void
.end method

.method public final setOrientationProperties(Lcom/inmobi/rendering/mraid/g;)V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1277
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->I:Lcom/inmobi/rendering/mraid/g;

    .line 1278
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    .line 1279
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/inmobi/rendering/mraid/g;->a:Z

    if-nez v0, :cond_1

    .line 1281
    iget-object v3, p1, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1321
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->b()I

    move-result v0

    if-ne v0, v7, :cond_8

    .line 1322
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x9

    .line 1323
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1337
    :cond_1
    :goto_1
    return-void

    .line 1281
    :sswitch_0
    const-string v4, "landscape"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "portrait"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0

    .line 1290
    :pswitch_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->b()I

    move-result v0

    if-eq v0, v5, :cond_2

    .line 1291
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->b()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    :cond_2
    move v0, v2

    .line 1292
    :goto_2
    if-eqz v0, :cond_5

    .line 1294
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->b()I

    move-result v0

    if-ne v5, v0, :cond_4

    .line 1295
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1296
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 1291
    goto :goto_2

    .line 1298
    :cond_4
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1299
    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1303
    :cond_5
    iget-object v0, p1, Lcom/inmobi/rendering/mraid/g;->c:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1304
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1305
    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1306
    :cond_6
    iget-object v0, p1, Lcom/inmobi/rendering/mraid/g;->c:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1307
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1308
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1312
    :pswitch_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->b()I

    move-result v0

    if-ne v0, v7, :cond_7

    .line 1313
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const/16 v1, 0x9

    .line 1314
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1316
    :cond_7
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1317
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1324
    :cond_8
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->b()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_9

    .line 1325
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1326
    invoke-virtual {v0, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1327
    :cond_9
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->b()I

    move-result v0

    if-ne v0, v5, :cond_a

    .line 1328
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1329
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1331
    :cond_a
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1332
    invoke-virtual {v0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 1281
    nop

    :sswitch_data_0
    .sparse-switch
        0x2b77bb9b -> :sswitch_1
        0x5545f2bb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setOriginalRenderView(Lcom/inmobi/rendering/RenderView;)V
    .locals 0

    .prologue
    .line 302
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->y:Lcom/inmobi/rendering/RenderView;

    .line 303
    return-void
.end method

.method public final setReferenceContainer(Lcom/inmobi/ads/AdContainer;)V
    .locals 0

    .prologue
    .line 712
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->U:Lcom/inmobi/ads/AdContainer;

    .line 713
    return-void
.end method

.method public final setRenderViewEventListener(Lcom/inmobi/rendering/RenderView$a;)V
    .locals 0

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->c:Lcom/inmobi/rendering/RenderView$a;

    .line 1163
    return-void
.end method

.method public final setRequestedScreenOrientation()V
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/inmobi/rendering/RenderView;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Lcom/inmobi/rendering/mraid/g;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->I:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/RenderView;->setOrientationProperties(Lcom/inmobi/rendering/mraid/g;)V

    .line 702
    :cond_0
    return-void
.end method

.method public final setResizeProperties(Lcom/inmobi/rendering/mraid/h;)V
    .locals 0

    .prologue
    .line 1247
    iput-object p1, p0, Lcom/inmobi/rendering/RenderView;->H:Lcom/inmobi/rendering/mraid/h;

    .line 1248
    return-void
.end method

.method public final setScrollable(Z)V
    .locals 0

    .prologue
    .line 635
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->setScrollContainer(Z)V

    .line 636
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->setVerticalScrollBarEnabled(Z)V

    .line 637
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/RenderView;->setHorizontalScrollBarEnabled(Z)V

    .line 638
    return-void
.end method

.method public final setUseCustomClose(Z)V
    .locals 0

    .prologue
    .line 940
    iput-boolean p1, p0, Lcom/inmobi/rendering/RenderView;->m:Z

    .line 941
    return-void
.end method

.method public final stopLoading()V
    .locals 1

    .prologue
    .line 820
    iget-object v0, p0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    .line 823
    :cond_0
    return-void
.end method
