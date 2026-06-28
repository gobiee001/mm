.class public Lcom/inmobi/ads/an;
.super Lcom/inmobi/ads/ViewableAd$a;
.source "NativeInflater.java"

# interfaces
.implements Lcom/inmobi/ads/ao$b;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field final a:Lcom/inmobi/ads/ao;

.field private final c:Lcom/inmobi/ads/ac;

.field private final d:Lcom/inmobi/ads/ao$c;

.field private final e:Lcom/inmobi/ads/ao$a;

.field private final f:Lcom/inmobi/ads/bb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/inmobi/ads/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/an;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/b;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ai;)V
    .locals 8

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/inmobi/ads/ViewableAd$a;-><init>()V

    .line 22
    new-instance v0, Lcom/inmobi/ads/an$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/an$1;-><init>(Lcom/inmobi/ads/an;)V

    iput-object v0, p0, Lcom/inmobi/ads/an;->d:Lcom/inmobi/ads/ao$c;

    .line 30
    new-instance v0, Lcom/inmobi/ads/an$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/an$2;-><init>(Lcom/inmobi/ads/an;)V

    iput-object v0, p0, Lcom/inmobi/ads/an;->e:Lcom/inmobi/ads/ao$a;

    .line 39
    new-instance v0, Lcom/inmobi/ads/an$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/an$3;-><init>(Lcom/inmobi/ads/an;)V

    iput-object v0, p0, Lcom/inmobi/ads/an;->f:Lcom/inmobi/ads/bb;

    .line 151
    iput-object p3, p0, Lcom/inmobi/ads/an;->c:Lcom/inmobi/ads/ac;

    .line 152
    new-instance v0, Lcom/inmobi/ads/ao;

    iget-object v3, p0, Lcom/inmobi/ads/an;->c:Lcom/inmobi/ads/ac;

    iget-object v5, p0, Lcom/inmobi/ads/an;->d:Lcom/inmobi/ads/ao$c;

    iget-object v6, p0, Lcom/inmobi/ads/an;->e:Lcom/inmobi/ads/ao$a;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/ads/ao;-><init>(Landroid/content/Context;Lcom/inmobi/ads/b;Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/ao$c;Lcom/inmobi/ads/ao$a;Lcom/inmobi/ads/ao$b;)V

    iput-object v0, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    .line 154
    iget-object v0, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    .line 1123
    iget-object v0, v0, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/NativeViewFactory;

    .line 1415
    iget v0, p3, Lcom/inmobi/ads/ac;->p:I

    .line 154
    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->a(I)V

    .line 155
    iget-object v0, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    iget-object v1, p0, Lcom/inmobi/ads/an;->f:Lcom/inmobi/ads/bb;

    .line 2127
    iput-object v1, v0, Lcom/inmobi/ads/ao;->a:Lcom/inmobi/ads/bb;

    .line 156
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/an;)Lcom/inmobi/ads/ac;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/inmobi/ads/an;->c:Lcom/inmobi/ads/ac;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/ViewGroup;ZLcom/inmobi/rendering/RenderView;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 161
    if-nez p1, :cond_1

    .line 162
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    .line 163
    invoke-virtual {v0, v1, p2, p4}, Lcom/inmobi/ads/ao;->b(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/ar;

    move-result-object v0

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/inmobi/ads/an;->c:Lcom/inmobi/ads/ac;

    .line 3041
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/inmobi/ads/ar;->a:Ljava/lang/ref/WeakReference;

    .line 181
    const-string v1, "InMobiAdView"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ar;->setTag(Ljava/lang/Object;)V

    .line 182
    return-object v0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    .line 164
    invoke-virtual {v0, v1, p2, p4}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/ar;

    move-result-object v0

    goto :goto_0

    .line 166
    :cond_1
    const-string v0, "InMobiAdView"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_3

    .line 168
    check-cast v0, Lcom/inmobi/ads/ar;

    .line 169
    if-eqz p3, :cond_2

    iget-object v1, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    .line 170
    invoke-virtual {v1, v0, p2, p4}, Lcom/inmobi/ads/ao;->b(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/ar;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    .line 171
    invoke-virtual {v1, v0, p2, p4}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/ar;

    move-result-object v0

    goto :goto_0

    .line 175
    :cond_3
    if-eqz p3, :cond_4

    iget-object v0, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    .line 176
    invoke-virtual {v0, v1, p2, p4}, Lcom/inmobi/ads/ao;->b(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/ar;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    .line 177
    invoke-virtual {v0, v1, p2, p4}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ar;Landroid/view/ViewGroup;Lcom/inmobi/rendering/RenderView;)Lcom/inmobi/ads/ar;

    move-result-object v0

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/inmobi/ads/an;->a:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->b()V

    .line 218
    invoke-super {p0}, Lcom/inmobi/ads/ViewableAd$a;->a()V

    .line 219
    return-void
.end method

.method public final a(Lcom/inmobi/ads/aw;)V
    .locals 2

    .prologue
    .line 223
    invoke-virtual {p1}, Lcom/inmobi/ads/aw;->l()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/inmobi/ads/an;->c:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->b()V

    .line 226
    :cond_0
    return-void
.end method

.method public final bridge synthetic b()Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/inmobi/ads/ViewableAd$a;->b()Z

    move-result v0

    return v0
.end method
