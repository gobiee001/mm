.class public Lcom/inmobi/ads/ad;
.super Ljava/lang/Object;
.source "NativeAdTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ad$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/s;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/bv;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/ad$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/inmobi/ads/s$a;

.field private static final f:Lcom/inmobi/ads/bv$a;


# instance fields
.field private g:Z

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/inmobi/ads/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ad;->b:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ad;->a:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ad;->c:Ljava/util/Map;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ad;->d:Ljava/util/Map;

    .line 48
    new-instance v0, Lcom/inmobi/ads/ad$1;

    invoke-direct {v0}, Lcom/inmobi/ads/ad$1;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ad;->e:Lcom/inmobi/ads/s$a;

    .line 56
    new-instance v0, Lcom/inmobi/ads/ad$2;

    invoke-direct {v0}, Lcom/inmobi/ads/ad$2;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ad;->f:Lcom/inmobi/ads/bv$a;

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/inmobi/ads/ad;->h:I

    .line 111
    return-void
.end method

.method static synthetic a()Ljava/util/Map;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/ads/ad;->d:Ljava/util/Map;

    return-object v0
.end method

.method static a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 271
    sget-object v0, Lcom/inmobi/ads/ad;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/s;

    .line 272
    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Lcom/inmobi/ads/s;->b()V

    .line 275
    :cond_0
    return-void
.end method

.method static b(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 278
    sget-object v0, Lcom/inmobi/ads/ad;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/s;

    .line 279
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/inmobi/ads/s;->a()V

    .line 282
    :cond_0
    return-void
.end method


# virtual methods
.method final a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 167
    sget-object v0, Lcom/inmobi/ads/ad;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/s;

    .line 168
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Lcom/inmobi/ads/s;->c()V

    .line 172
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 173
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/inmobi/ads/ad;->a:Ljava/util/Map;

    .line 174
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/ads/ad;->g:Z

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/ad;->g:Z

    .line 178
    :cond_1
    return-void
.end method

.method final a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 200
    sget-object v0, Lcom/inmobi/ads/ad;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bv;

    .line 201
    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {v0, p3}, Lcom/inmobi/ads/bv;->a(Ljava/lang/Object;)Landroid/view/View;

    .line 6245
    iget-object v0, v0, Lcom/inmobi/ads/bv;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 203
    :goto_0
    if-nez v0, :cond_1

    .line 6257
    sget-object v0, Lcom/inmobi/ads/ad;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bv;

    .line 6258
    if-eqz v0, :cond_0

    .line 6259
    invoke-virtual {v0}, Lcom/inmobi/ads/bv;->e()V

    .line 6262
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 6263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_1

    sget-object v0, Lcom/inmobi/ads/ad;->c:Ljava/util/Map;

    .line 6264
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/inmobi/ads/ad;->g:Z

    if-eqz v0, :cond_1

    .line 6265
    iput-boolean v1, p0, Lcom/inmobi/ads/ad;->g:Z

    .line 209
    :cond_1
    sget-object v0, Lcom/inmobi/ads/ad;->d:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    return-void

    :cond_2
    move v0, v1

    .line 6245
    goto :goto_0
.end method

.method final a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ad$a;Lcom/inmobi/ads/b$h;)V
    .locals 3

    .prologue
    .line 184
    .line 3216
    sget-object v0, Lcom/inmobi/ads/ad;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bv;

    .line 3217
    if-nez v0, :cond_0

    .line 3218
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 3219
    new-instance v1, Lcom/inmobi/ads/o;

    sget-object v2, Lcom/inmobi/ads/ad;->f:Lcom/inmobi/ads/bv$a;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v2, v0}, Lcom/inmobi/ads/o;-><init>(Lcom/inmobi/ads/bv$a;Landroid/app/Activity;)V

    move-object v0, v1

    .line 3225
    :goto_0
    new-instance v1, Lcom/inmobi/ads/ad$3;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/ad$3;-><init>(Lcom/inmobi/ads/ad;)V

    .line 4134
    iput-object v1, v0, Lcom/inmobi/ads/bv;->c:Lcom/inmobi/ads/bv$c;

    .line 3243
    sget-object v1, Lcom/inmobi/ads/ad;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3245
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3246
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/inmobi/ads/ad;->g:Z

    if-nez v1, :cond_0

    .line 3248
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/ads/ad;->g:Z

    .line 185
    :cond_0
    sget-object v1, Lcom/inmobi/ads/ad;->d:Ljava/util/Map;

    invoke-interface {v1, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget v1, p0, Lcom/inmobi/ads/ad;->h:I

    packed-switch v1, :pswitch_data_0

    .line 5725
    iget v1, p5, Lcom/inmobi/ads/b$h;->e:I

    .line 193
    invoke-virtual {v0, p2, p3, v1}, Lcom/inmobi/ads/bv;->a(Landroid/view/View;Ljava/lang/Object;I)V

    .line 196
    :goto_1
    return-void

    .line 3222
    :cond_1
    new-instance v0, Lcom/inmobi/ads/be;

    sget-object v1, Lcom/inmobi/ads/ad;->f:Lcom/inmobi/ads/bv$a;

    invoke-direct {v0, v1, p5}, Lcom/inmobi/ads/be;-><init>(Lcom/inmobi/ads/bv$a;Lcom/inmobi/ads/b$h;)V

    goto :goto_0

    .line 4741
    :pswitch_0
    iget v1, p5, Lcom/inmobi/ads/b$h;->h:I

    .line 189
    invoke-virtual {v0, p2, p3, v1}, Lcom/inmobi/ads/bv;->a(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_1

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method final a(Landroid/content/Context;Landroid/view/View;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/b$h;)V
    .locals 4

    .prologue
    .line 116
    .line 1136
    sget-object v0, Lcom/inmobi/ads/ad;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/s;

    .line 1137
    if-nez v0, :cond_0

    .line 1138
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 1139
    new-instance v1, Lcom/inmobi/ads/s;

    new-instance v2, Lcom/inmobi/ads/o;

    sget-object v3, Lcom/inmobi/ads/ad;->f:Lcom/inmobi/ads/bv$a;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v3, v0}, Lcom/inmobi/ads/o;-><init>(Lcom/inmobi/ads/bv$a;Landroid/app/Activity;)V

    sget-object v0, Lcom/inmobi/ads/ad;->e:Lcom/inmobi/ads/s$a;

    invoke-direct {v1, p4, v2, v0}, Lcom/inmobi/ads/s;-><init>(Lcom/inmobi/ads/b$h;Lcom/inmobi/ads/bv;Lcom/inmobi/ads/s$a;)V

    .line 1142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-lt v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/inmobi/ads/ad;->g:Z

    if-nez v0, :cond_2

    .line 1144
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ad;->g:Z

    move-object v0, v1

    .line 1150
    :goto_0
    sget-object v1, Lcom/inmobi/ads/ad;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_0
    iget v1, p0, Lcom/inmobi/ads/ad;->h:I

    packed-switch v1, :pswitch_data_0

    .line 2717
    iget v1, p4, Lcom/inmobi/ads/b$h;->a:I

    .line 2721
    iget v2, p4, Lcom/inmobi/ads/b$h;->b:I

    .line 126
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/inmobi/ads/s;->a(Landroid/view/View;Ljava/lang/Object;II)V

    .line 131
    :goto_1
    return-void

    .line 1147
    :cond_1
    new-instance v0, Lcom/inmobi/ads/s;

    new-instance v1, Lcom/inmobi/ads/be;

    invoke-direct {v1, p4}, Lcom/inmobi/ads/be;-><init>(Lcom/inmobi/ads/b$h;)V

    sget-object v2, Lcom/inmobi/ads/ad;->e:Lcom/inmobi/ads/s$a;

    invoke-direct {v0, p4, v1, v2}, Lcom/inmobi/ads/s;-><init>(Lcom/inmobi/ads/b$h;Lcom/inmobi/ads/bv;Lcom/inmobi/ads/s$a;)V

    goto :goto_0

    .line 1729
    :pswitch_0
    iget v1, p4, Lcom/inmobi/ads/b$h;->f:I

    .line 1733
    iget v2, p4, Lcom/inmobi/ads/b$h;->g:I

    .line 120
    invoke-virtual {v0, p2, p3, v1, v2}, Lcom/inmobi/ads/s;->a(Landroid/view/View;Ljava/lang/Object;II)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method final a(Landroid/content/Context;Lcom/inmobi/ads/ac;)V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/inmobi/ads/ad;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/s;

    .line 157
    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p2}, Lcom/inmobi/ads/s;->a(Ljava/lang/Object;)Landroid/view/View;

    .line 3200
    iget-object v0, v0, Lcom/inmobi/ads/s;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 159
    :goto_0
    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/ad;->a(Landroid/content/Context;)V

    .line 164
    :cond_0
    return-void

    .line 3200
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
