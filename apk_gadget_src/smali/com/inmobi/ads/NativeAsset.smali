.class public Lcom/inmobi/ads/NativeAsset;
.super Ljava/lang/Object;
.source "NativeAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeAsset$AssetType;
    }
.end annotation


# static fields
.field private static final z:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/inmobi/ads/NativeAsset$AssetType;

.field protected c:Lcom/inmobi/ads/af;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/Object;

.field protected f:Lorg/json/JSONObject;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field protected i:I

.field protected j:Ljava/lang/String;

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:I

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/String;

.field protected t:Lcom/inmobi/ads/NativeAsset;

.field protected u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;"
        }
    .end annotation
.end field

.field protected v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected w:Ljava/lang/Object;

.field protected x:I

.field public y:Lcom/inmobi/ads/NativeAsset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/ads/NativeAsset;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeAsset;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 165
    const-string v0, ""

    const-string v1, "root"

    sget-object v2, Lcom/inmobi/ads/NativeAsset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeAsset$AssetType;

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;)V

    .line 166
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;)V
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/inmobi/ads/af;

    invoke-direct {v0}, Lcom/inmobi/ads/af;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;)V

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;)V
    .locals 6

    .prologue
    .line 173
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;Ljava/util/List;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeAsset$AssetType;Lcom/inmobi/ads/af;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/NativeAsset$AssetType;",
            "Lcom/inmobi/ads/af;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/inmobi/ads/NativeAsset;->a:Ljava/lang/String;

    .line 180
    iput-object p2, p0, Lcom/inmobi/ads/NativeAsset;->d:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lcom/inmobi/ads/NativeAsset;->b:Lcom/inmobi/ads/NativeAsset$AssetType;

    .line 182
    iput-object p4, p0, Lcom/inmobi/ads/NativeAsset;->c:Lcom/inmobi/ads/af;

    .line 183
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/NativeAsset;->e:Ljava/lang/Object;

    .line 184
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/NativeAsset;->g:Ljava/lang/String;

    .line 185
    iput-boolean v1, p0, Lcom/inmobi/ads/NativeAsset;->h:Z

    .line 186
    iput v1, p0, Lcom/inmobi/ads/NativeAsset;->i:I

    .line 187
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/NativeAsset;->j:Ljava/lang/String;

    .line 188
    iput v1, p0, Lcom/inmobi/ads/NativeAsset;->l:I

    .line 189
    iput v1, p0, Lcom/inmobi/ads/NativeAsset;->k:I

    .line 190
    iput v1, p0, Lcom/inmobi/ads/NativeAsset;->m:I

    .line 191
    const/4 v0, 0x2

    iput v0, p0, Lcom/inmobi/ads/NativeAsset;->n:I

    .line 192
    iput v1, p0, Lcom/inmobi/ads/NativeAsset;->x:I

    .line 193
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/NativeAsset;->o:I

    .line 194
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/NativeAsset;->q:Ljava/lang/String;

    .line 195
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/NativeAsset;->r:Ljava/lang/String;

    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeAsset;->f:Lorg/json/JSONObject;

    .line 197
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeAsset;->u:Ljava/util/List;

    .line 198
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->u:Ljava/util/List;

    invoke-interface {v0, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeAsset;->v:Ljava/util/Map;

    .line 200
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/NativeAsset;
    .locals 1

    .prologue
    .line 419
    new-instance v0, Lcom/inmobi/ads/NativeAsset;

    invoke-direct {v0}, Lcom/inmobi/ads/NativeAsset;-><init>()V

    .line 420
    invoke-virtual {v0, p0}, Lcom/inmobi/ads/NativeAsset;->d(Ljava/lang/String;)V

    .line 421
    if-eqz p1, :cond_0

    .line 422
    invoke-virtual {v0, p1}, Lcom/inmobi/ads/NativeAsset;->e(Ljava/lang/String;)V

    .line 3403
    :cond_0
    iput-object p2, v0, Lcom/inmobi/ads/NativeAsset;->w:Ljava/lang/Object;

    .line 425
    return-object v0
.end method

.method public static a(Lcom/inmobi/ads/NativeTracker;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeTracker;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1408
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    .line 2293
    iget-object v1, p0, Lcom/inmobi/ads/NativeTracker;->a:Ljava/lang/String;

    .line 207
    invoke-static {v1, p1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 2305
    iget-object v2, p0, Lcom/inmobi/ads/NativeTracker;->c:Ljava/util/Map;

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    return-void
.end method


# virtual methods
.method public final a()Lcom/inmobi/ads/NativeAsset$AssetType;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->b:Lcom/inmobi/ads/NativeAsset$AssetType;

    return-object v0
.end method

.method final a(I)V
    .locals 0

    .prologue
    .line 284
    iput p1, p0, Lcom/inmobi/ads/NativeAsset;->i:I

    .line 285
    return-void
.end method

.method public final a(Lcom/inmobi/ads/NativeAsset;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/inmobi/ads/NativeAsset;->t:Lcom/inmobi/ads/NativeAsset;

    .line 386
    return-void
.end method

.method public final a(Lcom/inmobi/ads/NativeTracker$TrackerEventType;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeTracker$TrackerEventType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 219
    :cond_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeTracker;

    .line 3301
    iget-object v2, v0, Lcom/inmobi/ads/NativeTracker;->b:Lcom/inmobi/ads/NativeTracker$TrackerEventType;

    .line 215
    if-ne p1, v2, :cond_2

    .line 216
    invoke-static {v0, p2}, Lcom/inmobi/ads/NativeAsset;->a(Lcom/inmobi/ads/NativeTracker;Ljava/util/Map;)V

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/inmobi/ads/NativeAsset;->e:Ljava/lang/Object;

    .line 239
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 255
    iput-object p1, p0, Lcom/inmobi/ads/NativeAsset;->g:Ljava/lang/String;

    .line 256
    return-void
.end method

.method final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->u:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    return-void
.end method

.method final a(Z)V
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/inmobi/ads/NativeAsset;->h:Z

    .line 268
    return-void
.end method

.method public final b()Lcom/inmobi/ads/af;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->c:Lcom/inmobi/ads/af;

    return-object v0
.end method

.method final b(I)V
    .locals 0

    .prologue
    .line 288
    iput p1, p0, Lcom/inmobi/ads/NativeAsset;->x:I

    .line 289
    return-void
.end method

.method final b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/inmobi/ads/NativeAsset;->w:Ljava/lang/Object;

    .line 404
    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/inmobi/ads/NativeAsset;->q:Ljava/lang/String;

    .line 354
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->d:Ljava/lang/String;

    return-object v0
.end method

.method final c(I)V
    .locals 0

    .prologue
    .line 302
    iput p1, p0, Lcom/inmobi/ads/NativeAsset;->l:I

    .line 303
    return-void
.end method

.method final c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/inmobi/ads/NativeAsset;->j:Ljava/lang/String;

    .line 362
    return-void
.end method

.method final d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->e:Ljava/lang/Object;

    return-object v0
.end method

.method final d(I)V
    .locals 0

    .prologue
    .line 311
    iput p1, p0, Lcom/inmobi/ads/NativeAsset;->k:I

    .line 312
    return-void
.end method

.method final d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/NativeAsset;->r:Ljava/lang/String;

    .line 366
    return-void
.end method

.method final e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method final e(I)V
    .locals 0

    .prologue
    .line 320
    iput p1, p0, Lcom/inmobi/ads/NativeAsset;->m:I

    .line 321
    return-void
.end method

.method final e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 369
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/NativeAsset;->s:Ljava/lang/String;

    .line 370
    return-void
.end method

.method final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->u:Ljava/util/List;

    return-object v0
.end method

.method final f(I)V
    .locals 0

    .prologue
    .line 329
    iput p1, p0, Lcom/inmobi/ads/NativeAsset;->n:I

    .line 330
    return-void
.end method

.method final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->g:Ljava/lang/String;

    return-object v0
.end method

.method final g(I)V
    .locals 0

    .prologue
    .line 337
    iput p1, p0, Lcom/inmobi/ads/NativeAsset;->o:I

    .line 338
    return-void
.end method

.method final h(I)V
    .locals 0

    .prologue
    .line 345
    iput p1, p0, Lcom/inmobi/ads/NativeAsset;->p:I

    .line 346
    return-void
.end method

.method final h()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeAsset;->h:Z

    return v0
.end method

.method final i()I
    .locals 1

    .prologue
    .line 280
    iget v0, p0, Lcom/inmobi/ads/NativeAsset;->i:I

    return v0
.end method

.method final j()I
    .locals 1

    .prologue
    .line 293
    iget v0, p0, Lcom/inmobi/ads/NativeAsset;->x:I

    return v0
.end method

.method final k()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/inmobi/ads/NativeAsset;->l:I

    return v0
.end method

.method final l()I
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Lcom/inmobi/ads/NativeAsset;->k:I

    return v0
.end method

.method final m()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/inmobi/ads/NativeAsset;->m:I

    return v0
.end method

.method final n()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/inmobi/ads/NativeAsset;->n:I

    return v0
.end method

.method final o()I
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/inmobi/ads/NativeAsset;->o:I

    return v0
.end method

.method final p()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/inmobi/ads/NativeAsset;->p:I

    return v0
.end method

.method final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->j:Ljava/lang/String;

    return-object v0
.end method

.method final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->r:Ljava/lang/String;

    return-object v0
.end method

.method final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->s:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/inmobi/ads/NativeAsset;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->t:Lcom/inmobi/ads/NativeAsset;

    return-object v0
.end method

.method public final v()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->v:Ljava/util/Map;

    return-object v0
.end method

.method final w()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/inmobi/ads/NativeAsset;->w:Ljava/lang/Object;

    return-object v0
.end method
