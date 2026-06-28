.class public abstract Lcom/inmobi/ads/AdUnit;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Lcom/inmobi/ads/bf$a;
.implements Lcom/inmobi/ads/h$a;
.implements Lcom/inmobi/commons/core/configs/b$b;
.implements Lcom/inmobi/rendering/RenderView$a;
.implements Lcom/inmobi/rendering/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/AdUnit$c;,
        Lcom/inmobi/ads/AdUnit$a;,
        Lcom/inmobi/ads/AdUnit$AdCreativeType;,
        Lcom/inmobi/ads/AdUnit$AdTrackerType;,
        Lcom/inmobi/ads/AdUnit$AdMarkupType;,
        Lcom/inmobi/ads/AdUnit$AdState;,
        Lcom/inmobi/ads/AdUnit$d;,
        Lcom/inmobi/ads/AdUnit$b;
    }
.end annotation


# static fields
.field private static final w:Ljava/lang/String;


# instance fields
.field private A:J

.field private B:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/AdUnit$b;",
            ">;"
        }
    .end annotation
.end field

.field private C:Lcom/inmobi/rendering/RenderView;

.field private D:Lcom/inmobi/ads/bg;

.field private E:J

.field private F:Lcom/inmobi/ads/AdUnit$a;

.field private G:Ljava/lang/Runnable;

.field private H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bj;",
            ">;"
        }
    .end annotation
.end field

.field private I:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

.field private J:Lcom/inmobi/ads/bf;

.field private K:Z

.field private L:Lcom/inmobi/rendering/RenderView$a;

.field a:Lcom/inmobi/ads/AdUnit$AdState;

.field b:J

.field c:Ljava/lang/String;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/inmobi/ads/b;

.field f:Ljava/lang/String;

.field g:Lcom/inmobi/ads/h;

.field h:Lcom/inmobi/ads/bp;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

.field l:Z

.field protected m:J

.field n:Lcom/inmobi/ads/ac;

.field o:Ljava/util/concurrent/ExecutorService;

.field p:Lcom/inmobi/ads/AdUnit$d;

.field q:I

.field r:Landroid/os/Handler;

.field s:Z

.field t:Lcom/inmobi/rendering/RenderView;

.field u:Z

.field v:Z

.field private x:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    const-class v0, Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/AdUnit;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-boolean v3, p0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 206
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->m:J

    .line 223
    iput-boolean v3, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1991
    new-instance v0, Lcom/inmobi/ads/AdUnit$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/AdUnit$3;-><init>(Lcom/inmobi/ads/AdUnit;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->L:Lcom/inmobi/rendering/RenderView$a;

    .line 240
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->x:Ljava/lang/ref/WeakReference;

    .line 245
    :goto_0
    iput-wide p2, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 246
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->B:Ljava/lang/ref/WeakReference;

    .line 3372
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 3373
    new-instance v0, Lcom/inmobi/ads/h;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/h;-><init>(Lcom/inmobi/ads/h$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/h;

    .line 3376
    new-instance v0, Lcom/inmobi/ads/b;

    invoke-direct {v0}, Lcom/inmobi/ads/b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 3377
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/configs/g;

    invoke-direct {v1}, Lcom/inmobi/commons/core/configs/g;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 3378
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 3380
    new-instance v0, Lcom/inmobi/ads/bg;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/bg;-><init>(Lcom/inmobi/ads/AdUnit;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->D:Lcom/inmobi/ads/bg;

    .line 3381
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->H:Ljava/util/Set;

    .line 3383
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->o:Ljava/util/concurrent/ExecutorService;

    .line 4341
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/AdUnit;->q:I

    .line 4870
    new-instance v0, Lcom/inmobi/ads/AdUnit$6;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/AdUnit$6;-><init>(Lcom/inmobi/ads/AdUnit;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->G:Ljava/lang/Runnable;

    .line 3388
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    .line 5123
    const-string v0, "ads"

    .line 3389
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 5535
    iget-object v1, v1, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;

    .line 3389
    invoke-static {v0, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 3391
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    .line 3392
    iput-boolean v3, p0, Lcom/inmobi/ads/AdUnit;->s:Z

    .line 248
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 6328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 249
    return-void

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->y:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method static synthetic I()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/inmobi/ads/AdUnit;->w:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic J()V
    .locals 0

    .prologue
    .line 50147
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->c()V

    .line 79
    return-void
.end method

.method private K()Lcom/inmobi/ads/i;
    .locals 4

    .prologue
    .line 1192
    new-instance v0, Lcom/inmobi/ads/i;

    invoke-direct {v0}, Lcom/inmobi/ads/i;-><init>()V

    .line 1193
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->c:Ljava/lang/String;

    .line 42065
    iput-object v1, v0, Lcom/inmobi/ads/i;->e:Ljava/lang/String;

    .line 1194
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->d:Ljava/util/Map;

    .line 42073
    iput-object v1, v0, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 1195
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 43057
    iput-wide v2, v0, Lcom/inmobi/ads/i;->d:J

    .line 1196
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v1

    .line 43097
    iput-object v1, v0, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 43332
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 1197
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/b;->a(Ljava/lang/String;)Lcom/inmobi/ads/b$b;

    move-result-object v1

    .line 44081
    iput-object v1, v0, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/b$b;

    .line 1198
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->e()Ljava/util/Map;

    move-result-object v1

    .line 44113
    iput-object v1, v0, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    .line 44279
    const-string v1, "sdkJson"

    .line 45105
    iput-object v1, v0, Lcom/inmobi/ads/i;->i:Ljava/lang/String;

    .line 1200
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 45490
    iget-object v1, v1, Lcom/inmobi/ads/b;->e:Ljava/lang/String;

    .line 46041
    iput-object v1, v0, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    .line 1201
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 46506
    iget v1, v1, Lcom/inmobi/ads/b;->i:I

    .line 47049
    iput v1, v0, Lcom/inmobi/ads/i;->c:I

    .line 1202
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 47498
    iget v1, v1, Lcom/inmobi/ads/b;->g:I

    .line 48033
    iput v1, v0, Lcom/inmobi/ads/i;->b:I

    .line 1203
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->c()Ljava/lang/String;

    move-result-object v1

    .line 48121
    iput-object v1, v0, Lcom/inmobi/ads/i;->f:Ljava/lang/String;

    .line 1204
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->k()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    move-result-object v1

    .line 48136
    iput-object v1, v0, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 1206
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/d;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 49052
    iget-object v2, v2, Lcom/inmobi/commons/core/configs/a;->q:Lcom/inmobi/commons/core/configs/a$a;

    .line 49096
    iget-object v2, v2, Lcom/inmobi/commons/core/configs/a$a;->a:Ljava/util/HashMap;

    .line 1206
    invoke-direct {v1, v2}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 50089
    iput-object v1, v0, Lcom/inmobi/ads/i;->l:Lcom/inmobi/commons/core/utilities/uid/d;

    .line 1208
    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/ads/AdUnit;)J
    .locals 2

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->b:J

    return-wide v0
.end method

.method static synthetic a(Lcom/inmobi/ads/AdUnit;J)J
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/inmobi/ads/AdUnit;->E:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/AdUnit$a;)Lcom/inmobi/ads/AdUnit$a;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/ac;)Lcom/inmobi/ads/ac;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/ac;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/bf;)Lcom/inmobi/ads/bf;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->J:Lcom/inmobi/ads/bf;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/rendering/RenderView;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->t:Lcom/inmobi/rendering/RenderView;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/ads/AdUnit;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1698
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 1705
    :cond_0
    return-object p0

    .line 1701
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1702
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/ads/AdUnit$a;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/ads/bf;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->J:Lcom/inmobi/ads/bf;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/ads/i;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->K()Lcom/inmobi/ads/i;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/ads/bp;
    .locals 1

    .prologue
    .line 79
    .line 50149
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->h:Lcom/inmobi/ads/bp;

    .line 79
    return-object v0
.end method

.method static synthetic f(Lcom/inmobi/ads/AdUnit;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 79
    .line 50150
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->H:Ljava/util/Set;

    .line 79
    return-object v0
.end method

.method static synthetic g(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/rendering/RenderView$a;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->L:Lcom/inmobi/rendering/RenderView$a;

    return-object v0
.end method

.method static synthetic h(Lcom/inmobi/ads/AdUnit;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->t:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method static synthetic i(Lcom/inmobi/ads/AdUnit;)Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->K:Z

    return v0
.end method


# virtual methods
.method final A()V
    .locals 2

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/AdUnit$8;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$8;-><init>(Lcom/inmobi/ads/AdUnit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1410
    return-void
.end method

.method protected B()V
    .locals 3

    .prologue
    .line 1414
    const-string v0, "RenderTimeOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    .line 50109
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1416
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 1417
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 50110
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1418
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1419
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 1422
    :cond_0
    return-void
.end method

.method final C()V
    .locals 6

    .prologue
    .line 1431
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1432
    const-string v1, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->m:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    const-string v1, "ads"

    const-string v2, "AdLoadSuccessful"

    invoke-virtual {p0, v1, v2, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1434
    return-void
.end method

.method public D()V
    .locals 2

    .prologue
    .line 1850
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 50145
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1850
    if-ne v0, v1, :cond_0

    .line 1851
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    if-eqz v0, :cond_0

    .line 1852
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    invoke-interface {v0, p0}, Lcom/inmobi/ads/AdUnit$d;->a(Lcom/inmobi/ads/AdUnit;)V

    .line 1855
    :cond_0
    return-void
.end method

.method final E()V
    .locals 2

    .prologue
    .line 1917
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/ads/AdUnit$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$2;-><init>(Lcom/inmobi/ads/AdUnit;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1970
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1971
    return-void
.end method

.method final F()V
    .locals 1

    .prologue
    .line 1979
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->s:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->u:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->K:Z

    if-eqz v0, :cond_0

    .line 1980
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->z()V

    .line 1981
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->G()V

    .line 1983
    :cond_0
    return-void
.end method

.method G()V
    .locals 0

    .prologue
    .line 1986
    return-void
.end method

.method H()V
    .locals 0

    .prologue
    .line 1989
    return-void
.end method

.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->x:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->y:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->y:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    .line 256
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 1816
    const-string v0, "AdPrefetchSuccessful"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V

    .line 50143
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1817
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 1826
    :cond_0
    :goto_0
    return-void

    .line 1820
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1821
    const/16 v1, 0xe

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1822
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1823
    const-string v2, "placementId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1824
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1825
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/AdUnit$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    .prologue
    .line 652
    .line 17295
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 652
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->r:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/AdUnit$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit$1;-><init>(Lcom/inmobi/ads/AdUnit;JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(JLcom/inmobi/ads/a;)V
    .locals 3

    .prologue
    .line 626
    .line 15295
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 626
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 628
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 629
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 630
    const-string v2, "placementId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 631
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 632
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 633
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/AdUnit$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(JZ)V
    .locals 3

    .prologue
    .line 582
    .line 12295
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 582
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 591
    :cond_0
    :goto_0
    return-void

    .line 584
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 585
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 586
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 587
    const-string v2, "placementId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 588
    const-string v2, "assetAvailable"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 589
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 590
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/AdUnit$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected a(JZLcom/inmobi/ads/a;)V
    .locals 3

    .prologue
    .line 616
    .line 14269
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 616
    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 617
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 14273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 617
    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 14481
    iget-wide v0, p4, Lcom/inmobi/ads/a;->d:J

    .line 618
    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->z:J

    .line 619
    invoke-virtual {p4}, Lcom/inmobi/ads/a;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->A:J

    .line 622
    :cond_0
    return-void
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 265
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->x:Ljava/lang/ref/WeakReference;

    .line 266
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->y:Ljava/lang/ref/WeakReference;

    .line 262
    return-void
.end method

.method final a(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 1

    .prologue
    .line 368
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->B:Ljava/lang/ref/WeakReference;

    .line 369
    return-void
.end method

.method final a(Lcom/inmobi/ads/AdUnit$b;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V
    .locals 2

    .prologue
    .line 985
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 40308
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 985
    if-ne v0, v1, :cond_1

    .line 986
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->j()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;)V

    .line 987
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->y()V

    .line 1173
    :cond_0
    :goto_0
    return-void

    .line 988
    :cond_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 41308
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 988
    if-ne v0, v1, :cond_0

    .line 989
    new-instance v0, Lcom/inmobi/ads/AdUnit$7;

    invoke-direct {v0, p0, p1, p3, p4}, Lcom/inmobi/ads/AdUnit$7;-><init>(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/AdUnit$b;Ljava/lang/Runnable;Landroid/os/Looper;)V

    .line 1171
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit$7;->start()V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;)V
    .locals 0

    .prologue
    .line 732
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->I:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 733
    return-void
.end method

.method final a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 697
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_1

    .line 698
    const-string v0, "NoFill"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 699
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_2

    .line 700
    const-string v0, "ServerError"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 701
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_3

    .line 702
    const-string v0, "NetworkUnreachable"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_4

    .line 704
    const-string v0, "AdActive"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_4
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_5

    .line 706
    const-string v0, "RequestPending"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 707
    :cond_5
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_6

    .line 708
    const-string v0, "RequestInvalid"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_6
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_7

    .line 710
    const-string v0, "RequestTimedOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 711
    :cond_7
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_8

    .line 712
    const-string v0, "EarlyRefreshRequest"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_8
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_0

    .line 714
    const-string v0, "InternalError"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V
    .locals 2

    .prologue
    .line 683
    .line 18273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 683
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 684
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 18328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 688
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_1

    .line 690
    invoke-interface {v0, p1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 693
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 694
    return-void
.end method

.method public final a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 2

    .prologue
    .line 234
    check-cast p1, Lcom/inmobi/ads/b;

    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 235
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    .line 2123
    const-string v0, "ads"

    .line 235
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 2535
    iget-object v1, v1, Lcom/inmobi/ads/b;->n:Lorg/json/JSONObject;

    .line 235
    invoke-static {v0, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 237
    return-void
.end method

.method public a(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 1296
    .line 50095
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1296
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_0

    .line 1298
    :cond_0
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1426
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1427
    const-string v1, "ads"

    const-string v2, "AdLoadRejected"

    invoke-virtual {p0, v1, v2, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1428
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1460
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/ads/AdUnit$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/ads/AdUnit$9;-><init>(Lcom/inmobi/ads/AdUnit;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1489
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1490
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/b;)V
    .locals 2

    .prologue
    .line 1887
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/ads/AdUnit$11;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/inmobi/ads/AdUnit$11;-><init>(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/rendering/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1913
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1914
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1568
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1569
    return-void
.end method

.method public final a(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1365
    .line 50103
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1365
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1367
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad reward action completed. Params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1369
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/inmobi/ads/AdUnit$b;->b(Ljava/util/Map;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 2

    .prologue
    .line 818
    const-string v0, "AdPrefetchRequested"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->o:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/ads/AdUnit$5;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/AdUnit$5;-><init>(Lcom/inmobi/ads/AdUnit;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 858
    return-void
.end method

.method final a(ZLcom/inmobi/rendering/RenderView;)V
    .locals 6

    .prologue
    .line 1665
    .line 50139
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 50140
    iget-object v0, v0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50141
    iget-boolean v2, v0, Lcom/inmobi/ads/b$h;->j:Z

    .line 50142
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->H:Ljava/util/Set;

    .line 1666
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bj;

    .line 1667
    if-eqz v2, :cond_0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_IAS:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    iget-object v4, v0, Lcom/inmobi/ads/bj;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    if-ne v1, v4, :cond_0

    .line 1674
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v1, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v5, "creativeType"

    .line 1675
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/AdUnit$AdCreativeType;

    .line 1674
    invoke-static {v4, p1, v1, p2}, Lcom/inmobi/ads/p;->a(Landroid/content/Context;ZLcom/inmobi/ads/AdUnit$AdCreativeType;Lcom/inmobi/rendering/RenderView;)Lcom/integralads/avid/library/inmobi/session/AbstractAvidAdSession;

    move-result-object v1

    .line 1677
    if-eqz v1, :cond_0

    .line 1678
    iget-object v4, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v5, "avidAdSession"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1679
    iget-object v0, v0, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v1, "deferred"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1686
    :catch_0
    move-exception v0

    .line 1687
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Setting up impression tracking for IAS encountered an unexpected error: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1689
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 1693
    :cond_1
    return-void
.end method

.method public a(Lcom/inmobi/ads/a;)Z
    .locals 13

    .prologue
    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 477
    .line 480
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 8469
    iget-object v0, p1, Lcom/inmobi/ads/a;->b:Ljava/lang/String;

    .line 480
    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 8481
    iget-wide v6, p1, Lcom/inmobi/ads/a;->d:J

    .line 482
    iput-wide v6, p0, Lcom/inmobi/ads/AdUnit;->z:J

    .line 483
    invoke-virtual {p1}, Lcom/inmobi/ads/a;->b()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/inmobi/ads/AdUnit;->A:J

    .line 9477
    iget-object v0, p1, Lcom/inmobi/ads/a;->e:Ljava/lang/String;

    .line 484
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 10457
    iget-object v0, p1, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 485
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 486
    const-string v0, "markupType"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10567
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_1

    .line 10568
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 486
    :goto_0
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 487
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v6, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    if-ne v0, v6, :cond_3

    move v0, v1

    .line 563
    :goto_1
    return v0

    .line 10570
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_2
    move v0, v3

    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 10572
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    goto :goto_0

    .line 10570
    :sswitch_0
    const-string v6, "html"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_2

    :sswitch_1
    const-string v6, "inmobiJson"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_2

    .line 10574
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    goto :goto_0

    .line 10576
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    goto :goto_0

    .line 489
    :cond_3
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v6, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    if-ne v0, v6, :cond_d

    .line 490
    const-string v0, "pubContent"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v6, v0, Lorg/json/JSONObject;

    if-nez v6, :cond_c

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    .line 494
    :goto_4
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    sget-object v6, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    if-eq v0, v6, :cond_4

    .line 497
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    const-string v6, "@__imm_aft@"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/inmobi/ads/AdUnit;->E:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    move v1, v2

    .line 501
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->H:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 511
    const-string v0, "viewability"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 512
    new-instance v6, Lcom/inmobi/ads/bj;

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_MOAT:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-direct {v6, v0}, Lcom/inmobi/ads/bj;-><init>(Lcom/inmobi/ads/AdUnit$AdTrackerType;)V

    .line 513
    const-string v0, "viewability"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 10708
    invoke-static {v0}, Lcom/inmobi/ads/AdUnit$c;->a(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v0

    .line 513
    iput-object v0, v6, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    .line 515
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->H:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->x:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 519
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->x:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 520
    if-eqz v0, :cond_5

    .line 521
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/t;->a(Landroid/app/Application;)V

    .line 525
    :cond_5
    iget-object v0, v6, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 526
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Read out Moat params: "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v6, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    .line 527
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    :cond_6
    const-string v0, "metaInfo"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 532
    const-string v0, "metaInfo"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 533
    const-string v0, "unknown"

    .line 535
    const-string v7, "creativeType"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 536
    const-string v0, "creativeType"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_7
    const-string v7, "iasEnabled"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    const-string v7, "iasEnabled"

    .line 541
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 542
    new-instance v6, Lcom/inmobi/ads/bj;

    sget-object v7, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_IAS:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-direct {v6, v7}, Lcom/inmobi/ads/bj;-><init>(Lcom/inmobi/ads/AdUnit$AdTrackerType;)V

    .line 10788
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 10790
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    :cond_8
    move v0, v3

    :goto_5
    packed-switch v0, :pswitch_data_1

    .line 10792
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_UNSUPPORTED_OR_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    .line 10801
    :goto_6
    const-string v2, "creativeType"

    invoke-interface {v7, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    iput-object v7, v6, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    .line 544
    iget-object v0, v6, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Read out IAS params: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v6, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    .line 546
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    :cond_9
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->H:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_a
    const-string v0, "tracking"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "web"

    const-string v2, "tracking"

    .line 552
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 11341
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/AdUnit;->q:I

    :cond_b
    move v0, v1

    .line 562
    goto/16 :goto_1

    .line 490
    :cond_c
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 492
    :cond_d
    const-string v0, "pubContent"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_4

    .line 556
    :catch_0
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    .line 558
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_1

    .line 10790
    :sswitch_2
    :try_start_1
    const-string v4, "nonvideo"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_5

    :sswitch_3
    const-string v2, "video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v4

    goto :goto_5

    .line 10795
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_DISPLAY:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    goto :goto_6

    .line 10798
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_VIDEO:Lcom/inmobi/ads/AdUnit$AdCreativeType;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    .line 559
    :catch_1
    move-exception v0

    move-object v12, v0

    move v0, v1

    move-object v1, v12

    .line 561
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_1

    .line 10570
    :sswitch_data_0
    .sparse-switch
        -0x409f29ea -> :sswitch_1
        0x3107ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 10790
    :sswitch_data_1
    .sparse-switch
        0x6b0147b -> :sswitch_3
        0x54fa21ce -> :sswitch_2
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method public final b(JLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    .prologue
    .line 1830
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-virtual {p3}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 1831
    const-string v0, "EarlyRefreshRequest"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    .line 50144
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1837
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_3

    .line 1847
    :cond_0
    :goto_1
    return-void

    .line 1832
    :cond_1
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-virtual {p3}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1833
    const-string v0, "NetworkUnreachable"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 1835
    :cond_2
    const-string v0, "AdPrefetchFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 1840
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1841
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1842
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1843
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1844
    const-string v2, "placementId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1845
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1846
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/AdUnit$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method public final b(JLcom/inmobi/ads/a;)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 601
    .line 13295
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 601
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 611
    :cond_0
    :goto_0
    return-void

    .line 602
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->m:J

    .line 603
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 604
    iput v3, v0, Landroid/os/Message;->what:I

    .line 605
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 606
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 607
    const-string v2, "placementId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 608
    const-string v2, "adAvailable"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 609
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 610
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/AdUnit$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method protected b(JZ)V
    .locals 3

    .prologue
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Asset availability changed ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for placement ID ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    return-void
.end method

.method b(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 0

    .prologue
    .line 1176
    return-void
.end method

.method public b(Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 1858
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 50146
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1858
    if-ne v0, v1, :cond_0

    .line 1859
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    if-eqz v0, :cond_0

    .line 1860
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->p:Lcom/inmobi/ads/AdUnit$d;

    invoke-interface {v0, p0, p1}, Lcom/inmobi/ads/AdUnit$d;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 1863
    :cond_0
    return-void
.end method

.method protected abstract b(Lcom/inmobi/ads/a;)V
.end method

.method public b(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 1302
    .line 50096
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1302
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_0

    .line 1304
    :cond_0
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1438
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1439
    const-string v1, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->m:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1440
    const-string v1, "ads"

    const-string v2, "AdLoadFailed"

    invoke-virtual {p0, v1, v2, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1441
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1563
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1564
    return-void
.end method

.method public final b(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1375
    .line 50104
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1375
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 1382
    :cond_0
    :goto_0
    return-void

    .line 1377
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Ad interaction. Params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    const-string v0, "AdInteracted"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1380
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/inmobi/ads/AdUnit$b;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected c(JLcom/inmobi/ads/a;)V
    .locals 3

    .prologue
    .line 638
    .line 16269
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 638
    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 16273
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 638
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 639
    invoke-virtual {p0, p3}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 640
    const-string v0, "AdRequestFilled"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->d(Ljava/lang/String;)V

    .line 642
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->m:J

    .line 643
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 16328
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 649
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    const-string v0, "ParsingFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    .line 646
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    goto :goto_0
.end method

.method c(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 0

    .prologue
    .line 1179
    return-void
.end method

.method final c(Lcom/inmobi/ads/a;)V
    .locals 11

    .prologue
    .line 1611
    instance-of v0, p1, Lcom/inmobi/ads/ax;

    if-nez v0, :cond_1

    .line 1662
    :cond_0
    return-void

    .line 1613
    :cond_1
    check-cast p1, Lcom/inmobi/ads/ax;

    .line 1614
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v8

    .line 50124
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 50125
    iget-object v0, v0, Lcom/inmobi/ads/b;->m:Lcom/inmobi/ads/b$h;

    .line 50126
    iget-boolean v9, v0, Lcom/inmobi/ads/b$h;->j:Z

    .line 50127
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->H:Ljava/util/Set;

    .line 1616
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/inmobi/ads/bj;

    .line 1617
    if-eqz v9, :cond_2

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_IAS:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    iget-object v1, v7, Lcom/inmobi/ads/bj;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    if-ne v0, v1, :cond_2

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_VIDEO:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    iget-object v1, v7, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v2, "creativeType"

    .line 1618
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 1623
    :try_start_0
    new-instance v0, Lcom/inmobi/ads/bp;

    .line 50128
    iget-object v1, p1, Lcom/inmobi/ads/ax;->i:Ljava/lang/String;

    .line 50129
    iget-object v2, p1, Lcom/inmobi/ads/ax;->j:Ljava/lang/String;

    .line 50130
    iget-object v3, p1, Lcom/inmobi/ads/ax;->k:Ljava/lang/String;

    .line 1626
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->f()Ljava/util/List;

    move-result-object v4

    .line 1627
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->g()Ljava/util/List;

    move-result-object v5

    .line 50131
    iget-object v6, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 50132
    iget-object v6, v6, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 1628
    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/bp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/inmobi/ads/b$g;)V

    .line 1630
    new-instance v1, Lcom/inmobi/ads/ai;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v2

    new-instance v3, Lorg/json/JSONObject;

    .line 50133
    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->f:Ljava/lang/String;

    .line 1631
    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 50134
    iget-object v4, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 50135
    iget-object v4, v4, Lcom/inmobi/ads/b;->o:Lcom/inmobi/ads/b$g;

    .line 1631
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/inmobi/ads/ai;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/b$g;Lcom/inmobi/ads/bp;)V

    .line 1638
    sget-object v0, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeAsset$AssetType;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 1639
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/az;

    .line 1640
    if-eqz v8, :cond_2

    .line 1641
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1642
    invoke-virtual {v0}, Lcom/inmobi/ads/az;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTracker;

    .line 1643
    sget-object v3, Lcom/inmobi/ads/NativeTracker$TrackerEventType;->TRACKER_EVENT_TYPE_IAS:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 50136
    iget-object v4, v0, Lcom/inmobi/ads/NativeTracker;->b:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 1643
    if-ne v3, v4, :cond_3

    .line 50137
    iget-object v3, v0, Lcom/inmobi/ads/NativeTracker;->a:Ljava/lang/String;

    .line 50138
    iget-object v0, v0, Lcom/inmobi/ads/NativeTracker;->c:Ljava/util/Map;

    .line 1644
    invoke-static {v3, v0}, Lcom/inmobi/ads/AdUnit;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1655
    :catch_0
    move-exception v0

    .line 1656
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting up impression tracking for AVID encountered an unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1658
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 1648
    :cond_4
    :try_start_1
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1650
    iget-object v0, v7, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v2, "avidAdSession"

    .line 1651
    invoke-static {v8, v1}, Lcom/inmobi/ads/q;->a(Landroid/content/Context;Ljava/util/Set;)Lcom/integralads/avid/library/inmobi/session/AvidManagedVideoAdSession;

    move-result-object v1

    .line 1650
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1652
    iget-object v0, v7, Lcom/inmobi/ads/bj;->b:Ljava/util/Map;

    const-string v1, "deferred"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 1322
    .line 50101
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1322
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_0

    .line 1324
    :cond_0
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1450
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1451
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1452
    const-string v1, "ads"

    const-string v2, "AdPrefetchRejected"

    invoke-virtual {p0, v1, v2, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1453
    return-void
.end method

.method final c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1576
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1577
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    const-string v0, "plId"

    .line 50112
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 1578
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    const-string v0, "impId"

    .line 50113
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 1579
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1580
    const-string v2, "isPreloaded"

    .line 50114
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 1580
    if-eqz v0, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1581
    const-string v2, "networkType"

    .line 50115
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/b;->b()I

    move-result v0

    .line 50116
    packed-switch v0, :pswitch_data_0

    .line 50122
    const-string v0, "NIL"

    .line 1581
    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1582
    const-string v0, "clientRequestId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1583
    const-string v0, "clientRequestId"

    .line 50123
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 1583
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1586
    :cond_0
    if-eqz p3, :cond_2

    .line 1587
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1588
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1580
    :cond_1
    const-string v0, "0"

    goto :goto_0

    .line 50118
    :pswitch_0
    const-string v0, "carrier"

    goto :goto_1

    .line 50120
    :pswitch_1
    const-string v0, "wifi"

    goto :goto_1

    .line 1593
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    invoke-static {p1, p2, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    :goto_3
    return-void

    .line 1594
    :catch_0
    move-exception v0

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error in submitting telemetry event : ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 50116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected abstract d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
.end method

.method public d(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 1328
    .line 50102
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1328
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_0

    .line 1330
    :cond_0
    return-void
.end method

.method final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1456
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/ads/AdUnit;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    return-void
.end method

.method protected e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 291
    const/4 v0, 0x0

    return-object v0
.end method

.method final e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1572
    const-string v0, "ads"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1573
    return-void
.end method

.method final f()Lcom/inmobi/ads/AdUnit$b;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->B:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 355
    if-nez v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->g()V

    .line 358
    :cond_0
    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1871
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/ads/AdUnit$10;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/AdUnit$10;-><init>(Lcom/inmobi/ads/AdUnit;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1881
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1882
    return-void
.end method

.method final g()V
    .locals 3

    .prologue
    .line 362
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "Listener was garbage collected. Unable to give callback"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v0, "ListenerNotFound"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method final h()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 398
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v2, v3, :cond_1

    .line 407
    :cond_0
    :goto_0
    return v0

    .line 403
    :cond_1
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->A:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 404
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->z:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->z:J

    sub-long/2addr v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v5, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 405
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/inmobi/ads/b;->a(Ljava/lang/String;)Lcom/inmobi/ads/b$b;

    move-result-object v5

    .line 6586
    iget-wide v6, v5, Lcom/inmobi/ads/b$b;->d:J

    .line 405
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 407
    :cond_2
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->z:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->A:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method protected final i()Lcom/inmobi/ads/AdContainer;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 422
    .line 7273
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 430
    sget-object v2, Lcom/inmobi/ads/AdUnit$4;->a:[I

    .line 7308
    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 430
    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit$AdMarkupType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    return-object v0

    .line 434
    :pswitch_0
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    .line 440
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->j()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    goto :goto_0

    .line 442
    :pswitch_1
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    .line 7455
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->n:Lcom/inmobi/ads/ac;

    goto :goto_0

    .line 430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected j()Lcom/inmobi/rendering/RenderView;
    .locals 5

    .prologue
    .line 460
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->C:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->C:Lcom/inmobi/rendering/RenderView;

    .line 7645
    iget-object v0, v0, Lcom/inmobi/rendering/RenderView;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    .line 460
    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 465
    new-instance v0, Lcom/inmobi/rendering/RenderView;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 466
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->H:Ljava/util/Set;

    .line 8316
    iget-object v4, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 466
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Ljava/util/Set;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->C:Lcom/inmobi/rendering/RenderView;

    .line 467
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->C:Lcom/inmobi/rendering/RenderView;

    .line 8332
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 467
    invoke-virtual {v0, p0, v1}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/b;)V

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->C:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method public k()Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;
    .locals 1

    .prologue
    .line 736
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->I:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    return-object v0
.end method

.method public l()V
    .locals 2

    .prologue
    .line 757
    const-string v0, "AdLoadRequested"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V

    .line 758
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 759
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 767
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->o:Ljava/util/concurrent/ExecutorService;

    .line 18866
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->G:Ljava/lang/Runnable;

    .line 766
    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method final m()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 770
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 19273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 770
    if-ne v1, v2, :cond_0

    .line 20269
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 771
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v2, v3, v1}, Lcom/inmobi/ads/AdUnit;->b(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 773
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An ad prefetch is already in progress. Please wait for the prefetch to complete before requesting for another ad for placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 776
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 773
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    :goto_0
    return v0

    .line 780
    :cond_0
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 21273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 780
    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 22273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 780
    if-ne v1, v2, :cond_2

    .line 23269
    :cond_1
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 781
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v2, v3, v1}, Lcom/inmobi/ads/AdUnit;->b(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 782
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 785
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 782
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 789
    :cond_2
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 24273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 789
    if-ne v1, v2, :cond_4

    .line 790
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 24308
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 790
    if-ne v1, v2, :cond_3

    .line 25269
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 791
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v2, v3, v1}, Lcom/inmobi/ads/AdUnit;->b(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 792
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "An ad load is already in progress. Please wait for the load to complete before requesting prefetch for another ad for placement id: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26269
    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 795
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 792
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 797
    :cond_3
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 26308
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 797
    if-ne v1, v2, :cond_4

    .line 27269
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 798
    invoke-virtual {p0, v2, v3}, Lcom/inmobi/ads/AdUnit;->a(J)V

    goto :goto_0

    .line 803
    :cond_4
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    .line 27273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 803
    if-eq v1, v2, :cond_5

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_PREFETCHED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 28273
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 803
    if-ne v1, v2, :cond_6

    .line 29269
    :cond_5
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->b:J

    .line 804
    invoke-virtual {p0, v2, v3}, Lcom/inmobi/ads/AdUnit;->a(J)V

    goto :goto_0

    .line 809
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method n()V
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Z)V

    .line 863
    return-void
.end method

.method protected o()I
    .locals 9

    .prologue
    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 913
    :try_start_0
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 29328
    iput-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 914
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/o;->e()V

    .line 30188
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->c()V

    .line 916
    new-instance v1, Lcom/inmobi/commons/core/configs/h;

    invoke-direct {v1}, Lcom/inmobi/commons/core/configs/h;-><init>()V

    .line 917
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 31181
    iget-boolean v1, v1, Lcom/inmobi/commons/core/configs/h;->f:Z

    .line 918
    if-nez v1, :cond_8

    .line 919
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->K()Lcom/inmobi/ads/i;

    move-result-object v1

    .line 31225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/ads/AdUnit;->E:J

    .line 31227
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v2, :cond_0

    .line 31228
    new-instance v2, Lcom/inmobi/ads/AdUnit$a;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/AdUnit$a;-><init>(Lcom/inmobi/ads/AdUnit;)V

    iput-object v2, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31232
    :cond_0
    :try_start_1
    iget-object v8, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/h;

    .line 33172
    const/4 v2, 0x0

    iput-object v2, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 32184
    const/4 v2, 0x0

    iput-boolean v2, v8, Lcom/inmobi/ads/h;->d:Z

    .line 32185
    iput-object v1, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 32187
    const-string v1, "int"

    iget-object v2, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 34093
    iget-object v2, v2, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 32187
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 32193
    invoke-virtual {v8}, Lcom/inmobi/ads/h;->b()V

    .line 32195
    iget-object v1, v8, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/c;

    iget-object v2, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 35053
    iget-wide v2, v2, Lcom/inmobi/ads/i;->d:J

    .line 32195
    iget-object v4, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 35117
    iget-object v4, v4, Lcom/inmobi/ads/i;->f:Ljava/lang/String;

    .line 32196
    iget-object v5, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 35132
    iget-object v5, v5, Lcom/inmobi/ads/i;->m:Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;

    .line 32196
    iget-object v6, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 36069
    iget-object v6, v6, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 32197
    invoke-static {v6}, Lcom/inmobi/ads/g;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 32195
    invoke-virtual/range {v1 .. v6}, Lcom/inmobi/ads/c;->c(JLjava/lang/String;Lcom/inmobi/ads/InMobiAdRequest$MonetizationContext;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 32199
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 32200
    if-nez v1, :cond_5

    .line 32201
    const/4 v1, 0x0

    iput-boolean v1, v8, Lcom/inmobi/ads/h;->d:Z

    .line 32202
    iget-object v1, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 37037
    iget v1, v1, Lcom/inmobi/ads/i;->b:I

    .line 37284
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v8, Lcom/inmobi/ads/h;->e:J

    sub-long/2addr v2, v4

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 32202
    :goto_0
    if-eqz v0, :cond_3

    .line 32203
    new-instance v0, Lcom/inmobi/ads/a/a;

    const-string v1, "Ignoring request to fetch an ad from the network sooner than the minimum request interval"

    invoke-direct {v0, v1}, Lcom/inmobi/ads/a/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lcom/inmobi/ads/a/a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 31238
    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Lcom/inmobi/ads/a/a;->getMessage()Ljava/lang/String;

    .line 31239
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/h;

    .line 40176
    iget-boolean v0, v0, Lcom/inmobi/ads/h;->d:Z

    .line 31239
    if-nez v0, :cond_1

    .line 31240
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->b:J

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/ads/AdUnit;->a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_1
    move v0, v7

    .line 937
    :goto_2
    return v0

    :cond_2
    move v0, v7

    .line 37284
    goto :goto_0

    .line 32207
    :cond_3
    :try_start_3
    iget-object v0, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32208
    iget-object v0, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/i;Z)Ljava/lang/String;

    move-result-object v0

    .line 32228
    :goto_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 32229
    const-string v2, "im-accid"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32230
    const-string v2, "isPreloaded"

    iget-object v3, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    invoke-virtual {v3}, Lcom/inmobi/ads/i;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32231
    iget-object v2, v8, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    const-string v3, "ads"

    const-string v4, "AdCacheAdRequested"

    invoke-interface {v2, v3, v4, v1}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 31232
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 31233
    const-string v0, "TrueValidAdRequestReceived"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->d(Ljava/lang/String;)V

    .line 38968
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->l:Z

    .line 31234
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->g:Lcom/inmobi/ads/h;

    .line 39176
    iget-boolean v0, v0, Lcom/inmobi/ads/h;->d:Z

    .line 31234
    if-nez v0, :cond_1

    .line 31235
    const-string v0, "AdPreLoadRequested"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/inmobi/ads/a/a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 931
    :catch_1
    move-exception v0

    .line 932
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Unable to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load failed with unexpected error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 935
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 937
    const/4 v0, -0x2

    goto :goto_2

    .line 32210
    :cond_4
    :try_start_4
    iget-object v0, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    const/4 v1, 0x0

    invoke-virtual {v8, v0, v1}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/i;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 32215
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/inmobi/ads/h;->d:Z

    .line 32216
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    .line 37457
    iget-object v1, v0, Lcom/inmobi/ads/a;->f:Ljava/lang/String;

    .line 32217
    const-string v3, "INMOBIJSON"

    const/4 v0, 0x0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    invoke-virtual {v0}, Lcom/inmobi/ads/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32218
    iget-object v3, v8, Lcom/inmobi/ads/h;->a:Lcom/inmobi/ads/h$a;

    iget-object v0, v8, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/i;

    .line 38053
    iget-wide v4, v0, Lcom/inmobi/ads/i;->d:J

    .line 32218
    const/4 v0, 0x0

    .line 32219
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    .line 32218
    invoke-interface {v3, v4, v5, v0}, Lcom/inmobi/ads/h$a;->b(JLcom/inmobi/ads/a;)V

    .line 32220
    invoke-virtual {v8, v2}, Lcom/inmobi/ads/h;->a(Ljava/util/List;)V

    move-object v0, v1

    goto/16 :goto_3

    .line 32222
    :cond_6
    invoke-virtual {v8}, Lcom/inmobi/ads/h;->a()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 32226
    :cond_7
    invoke-virtual {v8}, Lcom/inmobi/ads/h;->a()Ljava/lang/String;
    :try_end_4
    .catch Lcom/inmobi/ads/a/a; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto/16 :goto_3

    .line 924
    :cond_8
    :try_start_5
    const-string v0, "LoadAfterMonetizationDisabled"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)V

    .line 925
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->w:Ljava/lang/String;

    const-string v2, "SDK will not perform this load operation as monetization has been disabled. Please contact InMobi for further info."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 929
    const/4 v0, -0x1

    goto/16 :goto_2
.end method

.method protected abstract p()Z
.end method

.method final q()V
    .locals 3

    .prologue
    .line 1182
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 1183
    if-nez v0, :cond_0

    .line 1185
    :goto_0
    return-void

    .line 1184
    :cond_0
    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_SERVED:Lcom/inmobi/ads/AdContainer$EventType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/AdContainer;->a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V

    goto :goto_0
.end method

.method protected r()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1250
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    if-eqz v0, :cond_0

    .line 1269
    :goto_0
    return-void

    .line 1253
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1254
    iput-object v3, p0, Lcom/inmobi/ads/AdUnit;->i:Ljava/lang/String;

    .line 1255
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->z:J

    .line 1256
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->A:J

    .line 1257
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->H:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1258
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->i()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 1259
    if-eqz v0, :cond_1

    .line 1260
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->destroy()V

    .line 1262
    :cond_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 50091
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1263
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 1265
    iput-boolean v2, p0, Lcom/inmobi/ads/AdUnit;->K:Z

    .line 1266
    iput-object v3, p0, Lcom/inmobi/ads/AdUnit;->t:Lcom/inmobi/rendering/RenderView;

    .line 1267
    iput-boolean v2, p0, Lcom/inmobi/ads/AdUnit;->s:Z

    .line 1268
    iput-boolean v2, p0, Lcom/inmobi/ads/AdUnit;->u:Z

    goto :goto_0
.end method

.method public final s()V
    .locals 2

    .prologue
    .line 1273
    .line 50093
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1273
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 1276
    :cond_0
    :goto_0
    return-void

    .line 1275
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected t()V
    .locals 0

    .prologue
    .line 1280
    return-void
.end method

.method public final u()V
    .locals 2

    .prologue
    .line 1284
    .line 50094
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1284
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 1287
    :cond_0
    :goto_0
    return-void

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method protected v()V
    .locals 1

    .prologue
    .line 1291
    const-string v0, "RenderFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    .line 1292
    return-void
.end method

.method public final w()V
    .locals 2

    .prologue
    .line 1308
    .line 50097
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1308
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 1318
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 50098
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1311
    if-ne v0, v1, :cond_0

    .line 1312
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 50099
    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->a:Lcom/inmobi/ads/AdUnit$AdState;

    .line 1313
    const-string v0, "TrueAdViewFailedToBuild"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->d(Ljava/lang/String;)V

    .line 1314
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1315
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->c()V

    goto :goto_0
.end method

.method public final x()V
    .locals 1

    .prologue
    .line 1386
    .line 50105
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->v:Z

    .line 1386
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->F:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 1392
    :cond_0
    :goto_0
    return-void

    .line 1389
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1390
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->g()V

    goto :goto_0
.end method

.method protected final y()V
    .locals 4

    .prologue
    .line 1395
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->z()V

    .line 1396
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->D:Lcom/inmobi/ads/bg;

    const/4 v1, 0x0

    .line 50106
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->e:Lcom/inmobi/ads/b;

    .line 50107
    iget-object v2, v2, Lcom/inmobi/ads/b;->k:Lcom/inmobi/ads/b$f;

    .line 50108
    iget v2, v2, Lcom/inmobi/ads/b$f;->a:I

    .line 1396
    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/bg;->sendEmptyMessageDelayed(IJ)Z

    .line 1397
    return-void
.end method

.method final z()V
    .locals 2

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->D:Lcom/inmobi/ads/bg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/bg;->removeMessages(I)V

    .line 1401
    return-void
.end method
