.class Lcom/adcolony/sdk/c;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field private A:Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

.field a:Z

.field b:Z

.field c:Landroid/content/Context;

.field d:Landroid/widget/VideoView;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/ba;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/ax;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/u;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/bb;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/h;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/r;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/w;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private s:F

.field private t:D

.field private u:J

.field private v:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/ah;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/adcolony/sdk/c;->s:F

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adcolony/sdk/c;->t:D

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adcolony/sdk/c;->u:J

    .line 80
    iput-object p1, p0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/adcolony/sdk/c;->r:Ljava/lang/String;

    .line 82
    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/c;->setBackgroundColor(I)V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;D)D
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/adcolony/sdk/c;->t:D

    return-wide p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;F)F
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/adcolony/sdk/c;->s:F

    return p1
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;)J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/adcolony/sdk/c;->u:J

    return-wide v0
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;J)J
    .locals 1

    .prologue
    .line 36
    iput-wide p1, p0, Lcom/adcolony/sdk/c;->u:J

    return-wide p1
.end method

.method private a(FD)V
    .locals 4

    .prologue
    .line 648
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 649
    const-string v1, "id"

    iget v2, p0, Lcom/adcolony/sdk/c;->p:I

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 650
    const-string v1, "ad_session_id"

    iget-object v2, p0, Lcom/adcolony/sdk/c;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 651
    const-string v1, "exposure"

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 652
    const-string v1, "volume"

    invoke-static {v0, v1, p2, p3}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;D)Z

    .line 654
    new-instance v1, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_exposure_change"

    iget v3, p0, Lcom/adcolony/sdk/c;->q:I

    invoke-direct {v1, v2, v3, v0}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    .line 655
    return-void
.end method

.method static synthetic a(Lcom/adcolony/sdk/c;FD)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/adcolony/sdk/c;->a(FD)V

    return-void
.end method

.method static synthetic b(Lcom/adcolony/sdk/c;)F
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/adcolony/sdk/c;->s:F

    return v0
.end method

.method static synthetic c(Lcom/adcolony/sdk/c;)D
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/adcolony/sdk/c;->t:D

    return-wide v0
.end method

.method private d(Z)V
    .locals 2

    .prologue
    .line 595
    new-instance v0, Lcom/adcolony/sdk/c$5;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/c$5;-><init>(Lcom/adcolony/sdk/c;Z)V

    .line 624
    new-instance v1, Lcom/adcolony/sdk/c$6;

    invoke-direct {v1, p0, v0}, Lcom/adcolony/sdk/c$6;-><init>(Lcom/adcolony/sdk/c;Ljava/lang/Runnable;)V

    .line 638
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 639
    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    .prologue
    .line 727
    iput p1, p0, Lcom/adcolony/sdk/c;->o:I

    .line 728
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/adcolony/sdk/c;->A:Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 791
    iget-object v0, p0, Lcom/adcolony/sdk/c;->A:Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;->registerFriendlyObstruction(Landroid/view/View;)V

    .line 793
    :cond_0
    return-void
.end method

.method a(Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;)V
    .locals 1

    .prologue
    .line 763
    iput-object p1, p0, Lcom/adcolony/sdk/c;->A:Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    .line 766
    iget-object v0, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/c;->a(Ljava/util/Map;)V

    .line 767
    return-void
.end method

.method a(Ljava/util/Map;)V
    .locals 3

    .prologue
    .line 773
    iget-object v0, p0, Lcom/adcolony/sdk/c;->A:Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 783
    :cond_0
    return-void

    .line 778
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 779
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 781
    iget-object v2, p0, Lcom/adcolony/sdk/c;->A:Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Lcom/integralads/avid/library/adcolony/session/AvidManagedVideoAdSession;->registerFriendlyObstruction(Landroid/view/View;)V

    goto :goto_0
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 743
    iput-boolean p1, p0, Lcom/adcolony/sdk/c;->x:Z

    .line 744
    return-void
.end method

.method a(Lcom/adcolony/sdk/af;)Z
    .locals 3

    .prologue
    .line 93
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 94
    const-string v1, "container_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcom/adcolony/sdk/c;->p:I

    if-ne v1, v2, :cond_0

    const-string v1, "ad_session_id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/adcolony/sdk/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x1

    .line 98
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 667
    iget-object v0, p0, Lcom/adcolony/sdk/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 735
    iput p1, p0, Lcom/adcolony/sdk/c;->n:I

    .line 736
    return-void
.end method

.method b(Lcom/adcolony/sdk/af;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->h:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->j:Ljava/util/HashMap;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->k:Ljava/util/HashMap;

    .line 117
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->l:Ljava/util/HashMap;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    .line 122
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 123
    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/adcolony/sdk/c;->p:I

    .line 124
    const-string v2, "width"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/adcolony/sdk/c;->n:I

    .line 125
    const-string v2, "height"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/adcolony/sdk/c;->o:I

    .line 126
    const-string v2, "module_id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/adcolony/sdk/c;->q:I

    .line 127
    const-string v2, "viewability_enabled"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/adcolony/sdk/c;->b:Z

    .line 128
    iget v0, p0, Lcom/adcolony/sdk/c;->p:I

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/adcolony/sdk/c;->x:Z

    .line 130
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    .line 133
    iget v2, p0, Lcom/adcolony/sdk/c;->n:I

    if-nez v2, :cond_3

    iget v2, p0, Lcom/adcolony/sdk/c;->o:I

    if-nez v2, :cond_3

    .line 134
    iget-object v2, v0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v2}, Lcom/adcolony/sdk/n;->q()I

    move-result v2

    iput v2, p0, Lcom/adcolony/sdk/c;->n:I

    .line 135
    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->d()Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->getMultiWindowEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->r()I

    move-result v0

    invoke-static {}, Lcom/adcolony/sdk/a;->c()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/adcolony/sdk/az;->b(Landroid/app/Activity;)I

    move-result v2

    sub-int/2addr v0, v2

    :goto_1
    iput v0, p0, Lcom/adcolony/sdk/c;->o:I

    .line 140
    :goto_2
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "VideoView.create"

    new-instance v3, Lcom/adcolony/sdk/c$1;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$1;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "VideoView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$7;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$7;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "WebView.create"

    new-instance v3, Lcom/adcolony/sdk/c$8;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$8;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "WebView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$9;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$9;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "RenderView.create"

    new-instance v3, Lcom/adcolony/sdk/c$10;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$10;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "RenderView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$11;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$11;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "TextView.create"

    new-instance v3, Lcom/adcolony/sdk/c$12;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$12;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "TextView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$13;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$13;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "ImageView.create"

    new-instance v3, Lcom/adcolony/sdk/c$14;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$14;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "ImageView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$2;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$2;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "ColorView.create"

    new-instance v3, Lcom/adcolony/sdk/c$3;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$3;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    const-string v2, "ColorView.destroy"

    new-instance v3, Lcom/adcolony/sdk/c$4;

    invoke-direct {v3, p0}, Lcom/adcolony/sdk/c$4;-><init>(Lcom/adcolony/sdk/c;)V

    invoke-static {v2, v3, v1}, Lcom/adcolony/sdk/a;->a(Ljava/lang/String;Lcom/adcolony/sdk/ah;Z)Lcom/adcolony/sdk/ah;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "VideoView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "VideoView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "WebView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "WebView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "RenderView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "RenderView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "TextView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "TextView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "ImageView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "ImageView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "ColorView.create"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    const-string v1, "ColorView.destroy"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adcolony/sdk/c;->d:Landroid/widget/VideoView;

    .line 251
    iget-object v0, p0, Lcom/adcolony/sdk/c;->d:Landroid/widget/VideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/adcolony/sdk/c;->d:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/c;->addView(Landroid/view/View;)V

    .line 255
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->b:Z

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "advanced_viewability"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/adcolony/sdk/c;->d(Z)V

    .line 258
    :cond_0
    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 135
    :cond_2
    iget-object v0, v0, Lcom/adcolony/sdk/l;->c:Lcom/adcolony/sdk/n;

    invoke-virtual {v0}, Lcom/adcolony/sdk/n;->r()I

    move-result v0

    goto/16 :goto_1

    .line 137
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/adcolony/sdk/c;->n:I

    iget v3, p0, Lcom/adcolony/sdk/c;->o:I

    invoke-direct {v0, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/adcolony/sdk/c;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 751
    iput-boolean p1, p0, Lcom/adcolony/sdk/c;->z:Z

    .line 752
    return-void
.end method

.method c()I
    .locals 1

    .prologue
    .line 671
    iget v0, p0, Lcom/adcolony/sdk/c;->q:I

    return v0
.end method

.method c(Lcom/adcolony/sdk/af;)Lcom/adcolony/sdk/h;
    .locals 4

    .prologue
    .line 344
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 345
    new-instance v1, Lcom/adcolony/sdk/h;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/adcolony/sdk/h;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/af;ILcom/adcolony/sdk/c;)V

    .line 346
    invoke-virtual {v1}, Lcom/adcolony/sdk/h;->a()V

    .line 347
    iget-object v2, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v2, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-object v1
.end method

.method c(Z)V
    .locals 0

    .prologue
    .line 759
    iput-boolean p1, p0, Lcom/adcolony/sdk/c;->y:Z

    .line 760
    return-void
.end method

.method d()I
    .locals 1

    .prologue
    .line 675
    iget v0, p0, Lcom/adcolony/sdk/c;->p:I

    return v0
.end method

.method d(Lcom/adcolony/sdk/af;)Z
    .locals 5

    .prologue
    .line 359
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 361
    iget-object v0, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 362
    iget-object v1, p0, Lcom/adcolony/sdk/c;->i:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/h;

    .line 364
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 365
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x0

    .line 370
    :goto_0
    return v0

    .line 369
    :cond_1
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 370
    const/4 v0, 0x1

    goto :goto_0
.end method

.method e(Lcom/adcolony/sdk/af;)Lcom/adcolony/sdk/w;
    .locals 4

    .prologue
    .line 380
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 381
    new-instance v1, Lcom/adcolony/sdk/w;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/adcolony/sdk/w;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/af;ILcom/adcolony/sdk/c;)V

    .line 382
    invoke-virtual {v1}, Lcom/adcolony/sdk/w;->a()V

    .line 383
    iget-object v2, p0, Lcom/adcolony/sdk/c;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    iget-object v2, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-object v1
.end method

.method e()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/ba;",
            ">;"
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method f()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    iget-object v0, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method f(Lcom/adcolony/sdk/af;)Z
    .locals 5

    .prologue
    .line 395
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 397
    iget-object v0, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 398
    iget-object v1, p0, Lcom/adcolony/sdk/c;->k:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/w;

    .line 400
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 401
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const/4 v0, 0x0

    .line 406
    :goto_0
    return v0

    .line 405
    :cond_1
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 406
    const/4 v0, 0x1

    goto :goto_0
.end method

.method g(Lcom/adcolony/sdk/af;)Lcom/adcolony/sdk/ba;
    .locals 4

    .prologue
    .line 416
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 417
    new-instance v1, Lcom/adcolony/sdk/ba;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/adcolony/sdk/ba;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/af;ILcom/adcolony/sdk/c;)V

    .line 418
    invoke-virtual {v1}, Lcom/adcolony/sdk/ba;->b()V

    .line 419
    iget-object v2, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    iget-object v2, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    return-object v1
.end method

.method g()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/u;",
            ">;"
        }
    .end annotation

    .prologue
    .line 687
    iget-object v0, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    return-object v0
.end method

.method h()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/bb;",
            ">;"
        }
    .end annotation

    .prologue
    .line 691
    iget-object v0, p0, Lcom/adcolony/sdk/c;->h:Ljava/util/HashMap;

    return-object v0
.end method

.method h(Lcom/adcolony/sdk/af;)Z
    .locals 5

    .prologue
    .line 431
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 432
    iget-object v0, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 433
    iget-object v1, p0, Lcom/adcolony/sdk/c;->e:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/ba;

    .line 434
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 435
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0

    .line 438
    :cond_1
    invoke-virtual {v1}, Lcom/adcolony/sdk/ba;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 439
    invoke-virtual {v1}, Lcom/adcolony/sdk/ba;->d()V

    .line 441
    :cond_2
    invoke-virtual {v1}, Lcom/adcolony/sdk/ba;->a()V

    .line 442
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 443
    const/4 v0, 0x1

    goto :goto_0
.end method

.method i(Lcom/adcolony/sdk/af;)Lcom/adcolony/sdk/bb;
    .locals 6

    .prologue
    .line 455
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 456
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v3

    .line 457
    const-string v1, "is_module"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 458
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v2

    .line 460
    if-eqz v1, :cond_1

    .line 461
    invoke-virtual {v2}, Lcom/adcolony/sdk/l;->x()Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "module_id"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bb;

    .line 462
    if-nez v0, :cond_0

    .line 463
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v1, "Module WebView created with invalid id"

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 464
    const/4 v0, 0x0

    .line 475
    :goto_0
    return-object v0

    .line 466
    :cond_0
    invoke-virtual {v0, p1, v3, p0}, Lcom/adcolony/sdk/bb;->a(Lcom/adcolony/sdk/af;ILcom/adcolony/sdk/c;)V

    .line 470
    :goto_1
    iget-object v1, p0, Lcom/adcolony/sdk/c;->h:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v1, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 473
    const-string v2, "module_id"

    invoke-virtual {v0}, Lcom/adcolony/sdk/bb;->a()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 474
    invoke-virtual {p1, v1}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_0

    .line 468
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/bb;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/adcolony/sdk/l;->q()Lcom/adcolony/sdk/ag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adcolony/sdk/ag;->d()I

    move-result v4

    move-object v2, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/adcolony/sdk/bb;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/af;IILcom/adcolony/sdk/c;)V

    goto :goto_1
.end method

.method j()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/r;",
            ">;"
        }
    .end annotation

    .prologue
    .line 699
    iget-object v0, p0, Lcom/adcolony/sdk/c;->j:Ljava/util/HashMap;

    return-object v0
.end method

.method j(Lcom/adcolony/sdk/af;)Z
    .locals 5

    .prologue
    .line 485
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 486
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v3

    .line 487
    iget-object v0, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 488
    iget-object v1, p0, Lcom/adcolony/sdk/c;->h:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/bb;

    .line 489
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 490
    :cond_0
    invoke-virtual {v3}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    const/4 v0, 0x0

    .line 495
    :goto_0
    return v0

    .line 493
    :cond_1
    invoke-virtual {v3}, Lcom/adcolony/sdk/l;->q()Lcom/adcolony/sdk/ag;

    move-result-object v0

    invoke-virtual {v1}, Lcom/adcolony/sdk/bb;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/adcolony/sdk/ag;->a(I)Lcom/adcolony/sdk/ai;

    .line 494
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 495
    const/4 v0, 0x1

    goto :goto_0
.end method

.method k(Lcom/adcolony/sdk/af;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 507
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 508
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v4

    .line 509
    const-string v1, "editable"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v1

    .line 510
    if-eqz v1, :cond_0

    .line 511
    new-instance v0, Lcom/adcolony/sdk/r;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v4, p0}, Lcom/adcolony/sdk/r;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/af;ILcom/adcolony/sdk/c;)V

    .line 512
    invoke-virtual {v0}, Lcom/adcolony/sdk/r;->a()V

    .line 513
    iget-object v1, p0, Lcom/adcolony/sdk/c;->j:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    iget-object v1, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    iget-object v1, p0, Lcom/adcolony/sdk/c;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    :goto_0
    return-object v0

    .line 517
    :cond_0
    const-string v1, "button"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 518
    new-instance v0, Lcom/adcolony/sdk/ax;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1, v4, p0}, Lcom/adcolony/sdk/ax;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/af;ILcom/adcolony/sdk/c;)V

    .line 519
    invoke-virtual {v0}, Lcom/adcolony/sdk/ax;->a()V

    .line 520
    iget-object v1, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v1, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    iget-object v1, p0, Lcom/adcolony/sdk/c;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 525
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/ax;

    iget-object v1, p0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    const v2, 0x1030141

    move-object v3, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/adcolony/sdk/ax;-><init>(Landroid/content/Context;ILcom/adcolony/sdk/af;ILcom/adcolony/sdk/c;)V

    .line 526
    invoke-virtual {v0}, Lcom/adcolony/sdk/ax;->a()V

    .line 527
    iget-object v1, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-object v1, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v1, p0, Lcom/adcolony/sdk/c;->l:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method k()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/adcolony/sdk/w;",
            ">;"
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/adcolony/sdk/c;->k:Ljava/util/HashMap;

    return-object v0
.end method

.method l()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 707
    iget-object v0, p0, Lcom/adcolony/sdk/c;->l:Ljava/util/HashMap;

    return-object v0
.end method

.method l(Lcom/adcolony/sdk/af;)Z
    .locals 5

    .prologue
    .line 541
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 542
    iget-object v0, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 544
    iget-object v1, p0, Lcom/adcolony/sdk/c;->l:Ljava/util/HashMap;

    iget v3, p0, Lcom/adcolony/sdk/c;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 545
    if-eqz v1, :cond_1

    .line 546
    iget-object v1, p0, Lcom/adcolony/sdk/c;->j:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 550
    :goto_0
    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    .line 551
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/4 v0, 0x0

    .line 555
    :goto_1
    return v0

    .line 548
    :cond_1
    iget-object v1, p0, Lcom/adcolony/sdk/c;->f:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    goto :goto_0

    .line 554
    :cond_2
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 555
    const/4 v0, 0x1

    goto :goto_1
.end method

.method m(Lcom/adcolony/sdk/af;)Lcom/adcolony/sdk/u;
    .locals 4

    .prologue
    .line 565
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 566
    new-instance v1, Lcom/adcolony/sdk/u;

    iget-object v2, p0, Lcom/adcolony/sdk/c;->c:Landroid/content/Context;

    invoke-direct {v1, v2, p1, v0, p0}, Lcom/adcolony/sdk/u;-><init>(Landroid/content/Context;Lcom/adcolony/sdk/af;ILcom/adcolony/sdk/c;)V

    .line 567
    invoke-virtual {v1}, Lcom/adcolony/sdk/u;->a()V

    .line 568
    iget-object v2, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v2, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    return-object v1
.end method

.method m()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    return-object v0
.end method

.method n()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/adcolony/sdk/ah;",
            ">;"
        }
    .end annotation

    .prologue
    .line 715
    iget-object v0, p0, Lcom/adcolony/sdk/c;->v:Ljava/util/ArrayList;

    return-object v0
.end method

.method n(Lcom/adcolony/sdk/af;)Z
    .locals 5

    .prologue
    .line 580
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v2

    .line 581
    iget-object v0, p0, Lcom/adcolony/sdk/c;->m:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 582
    iget-object v1, p0, Lcom/adcolony/sdk/c;->g:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adcolony/sdk/u;

    .line 583
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 584
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/adcolony/sdk/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const/4 v0, 0x0

    .line 589
    :goto_0
    return v0

    .line 587
    :cond_1
    invoke-virtual {v1}, Lcom/adcolony/sdk/u;->b()Z

    .line 588
    invoke-virtual {p0, v1}, Lcom/adcolony/sdk/c;->removeView(Landroid/view/View;)V

    .line 589
    const/4 v0, 0x1

    goto :goto_0
.end method

.method o()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    iget-object v0, p0, Lcom/adcolony/sdk/c;->w:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 265
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const v9, 0xff00

    const/4 v1, 0x1

    .line 277
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 278
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    .line 281
    const/4 v0, 0x0

    .line 334
    :goto_0
    return v0

    .line 283
    :cond_0
    invoke-static {}, Lcom/adcolony/sdk/a;->a()Lcom/adcolony/sdk/l;

    move-result-object v2

    .line 284
    invoke-virtual {v2}, Lcom/adcolony/sdk/l;->m()Lcom/adcolony/sdk/d;

    move-result-object v3

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    .line 286
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    .line 287
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v6

    .line 288
    const-string v7, "view_id"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 289
    const-string v7, "ad_session_id"

    iget-object v8, p0, Lcom/adcolony/sdk/c;->r:Ljava/lang/String;

    invoke-static {v6, v7, v8}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Z

    .line 290
    const-string v7, "container_x"

    invoke-static {v6, v7, v4}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 291
    const-string v7, "container_y"

    invoke-static {v6, v7, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 292
    const-string v7, "view_x"

    invoke-static {v6, v7, v4}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 293
    const-string v4, "view_y"

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 294
    const-string v4, "id"

    iget v5, p0, Lcom/adcolony/sdk/c;->p:I

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 296
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    move v0, v1

    .line 334
    goto :goto_0

    .line 298
    :pswitch_1
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_began"

    iget v3, p0, Lcom/adcolony/sdk/c;->q:I

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_1

    .line 301
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v9

    shr-int/lit8 v0, v0, 0x8

    .line 302
    const-string v2, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v6, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 303
    const-string v2, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v6, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 304
    const-string v2, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v6, v2, v3}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 305
    const-string v2, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v6, v2, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 306
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_began"

    iget v3, p0, Lcom/adcolony/sdk/c;->q:I

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_1

    .line 309
    :pswitch_3
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->x:Z

    if-nez v0, :cond_1

    .line 310
    invoke-virtual {v3}, Lcom/adcolony/sdk/d;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bc;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/bc;)V

    .line 312
    :cond_1
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_ended"

    iget v3, p0, Lcom/adcolony/sdk/c;->q:I

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto :goto_1

    .line 315
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/2addr v0, v9

    shr-int/lit8 v0, v0, 0x8

    .line 316
    const-string v4, "container_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 317
    const-string v4, "container_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 318
    const-string v4, "view_x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 319
    const-string v4, "view_y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 320
    const-string v4, "x"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    float-to-int v5, v5

    invoke-static {v6, v4, v5}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 321
    const-string v4, "y"

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v6, v4, v0}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;I)Z

    .line 322
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->x:Z

    if-nez v0, :cond_2

    .line 323
    invoke-virtual {v3}, Lcom/adcolony/sdk/d;->f()Ljava/util/HashMap;

    move-result-object v0

    iget-object v3, p0, Lcom/adcolony/sdk/c;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adcolony/sdk/bc;

    invoke-virtual {v2, v0}, Lcom/adcolony/sdk/l;->a(Lcom/adcolony/sdk/bc;)V

    .line 325
    :cond_2
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_ended"

    iget v3, p0, Lcom/adcolony/sdk/c;->q:I

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto/16 :goto_1

    .line 328
    :pswitch_5
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_cancelled"

    iget v3, p0, Lcom/adcolony/sdk/c;->q:I

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto/16 :goto_1

    .line 331
    :pswitch_6
    new-instance v0, Lcom/adcolony/sdk/af;

    const-string v2, "AdContainer.on_touch_moved"

    iget v3, p0, Lcom/adcolony/sdk/c;->q:I

    invoke-direct {v0, v2, v3, v6}, Lcom/adcolony/sdk/af;-><init>(Ljava/lang/String;ILorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    goto/16 :goto_1

    .line 296
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method p()I
    .locals 1

    .prologue
    .line 723
    iget v0, p0, Lcom/adcolony/sdk/c;->o:I

    return v0
.end method

.method q()I
    .locals 1

    .prologue
    .line 731
    iget v0, p0, Lcom/adcolony/sdk/c;->n:I

    return v0
.end method

.method r()Z
    .locals 1

    .prologue
    .line 739
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->x:Z

    return v0
.end method

.method s()Z
    .locals 1

    .prologue
    .line 747
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->z:Z

    return v0
.end method

.method t()Z
    .locals 1

    .prologue
    .line 755
    iget-boolean v0, p0, Lcom/adcolony/sdk/c;->y:Z

    return v0
.end method
