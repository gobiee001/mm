.class abstract Lcom/inmobi/ads/bv;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/bv$b;,
        Lcom/inmobi/ads/bv$d;,
        Lcom/inmobi/ads/bv$a;,
        Lcom/inmobi/ads/bv$c;
    }
.end annotation


# static fields
.field static final d:Lcom/inmobi/ads/bv$a;

.field private static final e:Ljava/lang/String;


# instance fields
.field a:Z

.field final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/bv$d;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/inmobi/ads/bv$c;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:J

.field private final h:Lcom/inmobi/ads/bv$a;

.field private final i:Lcom/inmobi/ads/bv$b;

.field private final j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/inmobi/ads/bv;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/bv;->e:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/inmobi/ads/bv$1;

    invoke-direct {v0}, Lcom/inmobi/ads/bv$1;-><init>()V

    sput-object v0, Lcom/inmobi/ads/bv;->d:Lcom/inmobi/ads/bv$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/inmobi/ads/bv;->d:Lcom/inmobi/ads/bv$a;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bv;-><init>(Lcom/inmobi/ads/bv$a;)V

    .line 115
    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/bv$a;)V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    .line 119
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    invoke-direct {p0, v0, p1, v1}, Lcom/inmobi/ads/bv;-><init>(Ljava/util/Map;Lcom/inmobi/ads/bv$a;Landroid/os/Handler;)V

    .line 120
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Lcom/inmobi/ads/bv$a;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/bv$d;",
            ">;",
            "Lcom/inmobi/ads/bv$a;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/bv;->g:J

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bv;->a:Z

    .line 125
    iput-object p1, p0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    .line 126
    iput-object p2, p0, Lcom/inmobi/ads/bv;->h:Lcom/inmobi/ads/bv$a;

    .line 127
    iput-object p3, p0, Lcom/inmobi/ads/bv;->j:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/inmobi/ads/bv$b;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/bv$b;-><init>(Lcom/inmobi/ads/bv;)V

    iput-object v0, p0, Lcom/inmobi/ads/bv;->i:Lcom/inmobi/ads/bv$b;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inmobi/ads/bv;->f:Ljava/util/ArrayList;

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/bv;)Z
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bv;->k:Z

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/bv;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/bv;)Lcom/inmobi/ads/bv$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/bv;->h:Lcom/inmobi/ads/bv$a;

    return-object v0
.end method

.method static synthetic d(Lcom/inmobi/ads/bv;)Lcom/inmobi/ads/bv$c;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/bv;->c:Lcom/inmobi/ads/bv$c;

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method final a(Ljava/lang/Object;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 224
    if-nez p1, :cond_1

    move-object v0, v2

    .line 241
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 231
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 232
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 233
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bv$d;

    iget-object v1, v1, Lcom/inmobi/ads/bv$d;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 238
    :goto_1
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bv;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method protected final a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bv$d;

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iget-wide v0, p0, Lcom/inmobi/ads/bv;->g:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/ads/bv;->g:J

    .line 208
    iget-object v0, p0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/inmobi/ads/bv;->c()V

    .line 212
    :cond_0
    return-void
.end method

.method protected final a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x32

    .line 160
    .line 1166
    iget-object v0, p0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bv$d;

    .line 1167
    if-nez v0, :cond_0

    .line 1168
    new-instance v0, Lcom/inmobi/ads/bv$d;

    invoke-direct {v0}, Lcom/inmobi/ads/bv$d;-><init>()V

    .line 1169
    iget-object v1, p0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    iget-wide v2, p0, Lcom/inmobi/ads/bv;->g:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/inmobi/ads/bv;->g:J

    .line 1173
    :cond_0
    iput p3, v0, Lcom/inmobi/ads/bv$d;->a:I

    .line 1174
    iget-wide v2, p0, Lcom/inmobi/ads/bv;->g:J

    iput-wide v2, v0, Lcom/inmobi/ads/bv$d;->b:J

    .line 1175
    iput-object p1, v0, Lcom/inmobi/ads/bv$d;->c:Landroid/view/View;

    .line 1176
    iput-object p2, v0, Lcom/inmobi/ads/bv$d;->d:Ljava/lang/Object;

    .line 1178
    iget-wide v0, p0, Lcom/inmobi/ads/bv;->g:J

    rem-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    .line 1179
    iget-wide v0, p0, Lcom/inmobi/ads/bv;->g:J

    sub-long v2, v0, v6

    .line 1189
    iget-object v0, p0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1190
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bv$d;

    iget-wide v6, v1, Lcom/inmobi/ads/bv$d;->b:J

    cmp-long v1, v6, v2

    if-gez v1, :cond_1

    .line 1191
    iget-object v1, p0, Lcom/inmobi/ads/bv;->f:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/bv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1196
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bv;->a(Landroid/view/View;)V

    goto :goto_1

    .line 1198
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/bv;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1182
    :cond_4
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 1183
    invoke-virtual {p0}, Lcom/inmobi/ads/bv;->d()V

    .line 161
    :cond_5
    return-void
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/inmobi/ads/bv;->i:Lcom/inmobi/ads/bv$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/bv$b;->run()V

    .line 141
    iget-object v0, p0, Lcom/inmobi/ads/bv;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bv;->k:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bv;->a:Z

    .line 144
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bv;->a:Z

    .line 148
    invoke-virtual {p0}, Lcom/inmobi/ads/bv;->g()V

    .line 149
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/inmobi/ads/bv;->f()V

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/bv;->c:Lcom/inmobi/ads/bv$c;

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bv;->a:Z

    .line 255
    return-void
.end method

.method protected final f()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 218
    iget-object v0, p0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 219
    iget-object v0, p0, Lcom/inmobi/ads/bv;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iput-boolean v1, p0, Lcom/inmobi/ads/bv;->k:Z

    .line 221
    return-void
.end method

.method final g()V
    .locals 4

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/inmobi/ads/bv;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/ads/bv;->a:Z

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bv;->k:Z

    .line 265
    iget-object v0, p0, Lcom/inmobi/ads/bv;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/ads/bv;->i:Lcom/inmobi/ads/bv$b;

    .line 266
    invoke-virtual {p0}, Lcom/inmobi/ads/bv;->a()I

    move-result v2

    int-to-long v2, v2

    .line 265
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
