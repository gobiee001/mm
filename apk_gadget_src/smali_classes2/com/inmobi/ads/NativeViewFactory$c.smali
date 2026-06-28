.class abstract Lcom/inmobi/ads/NativeViewFactory$c;
.super Ljava/lang/Object;
.source "NativeViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "c"
.end annotation


# instance fields
.field private a:I

.field b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/inmobi/ads/NativeViewFactory;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/NativeViewFactory;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 182
    iput-object p1, p0, Lcom/inmobi/ads/NativeViewFactory$c;->c:Lcom/inmobi/ads/NativeViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeViewFactory$c;->b:Ljava/util/LinkedList;

    .line 184
    iput v1, p0, Lcom/inmobi/ads/NativeViewFactory$c;->a:I

    .line 185
    iput v1, p0, Lcom/inmobi/ads/NativeViewFactory$c;->d:I

    .line 186
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;)Landroid/view/View;
.end method

.method public final a(Landroid/content/Context;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)Landroid/view/View;
    .locals 2

    .prologue
    .line 223
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 225
    iget-object v0, p0, Lcom/inmobi/ads/NativeViewFactory$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget v0, p0, Lcom/inmobi/ads/NativeViewFactory$c;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/NativeViewFactory$c;->a:I

    .line 227
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/NativeViewFactory$c;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    .line 234
    :goto_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/inmobi/ads/NativeViewFactory$c;->a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)V

    .line 235
    return-object v0

    .line 229
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/NativeViewFactory$c;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/NativeViewFactory$c;->d:I

    .line 230
    iget-object v0, p0, Lcom/inmobi/ads/NativeViewFactory$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 232
    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory$c;->c:Lcom/inmobi/ads/NativeViewFactory;

    invoke-static {v1}, Lcom/inmobi/ads/NativeViewFactory;->b(Lcom/inmobi/ads/NativeViewFactory;)I

    goto :goto_0
.end method

.method protected a(Landroid/view/View;Lcom/inmobi/ads/NativeAsset;Lcom/inmobi/ads/b;)V
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeAsset;->j()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 196
    invoke-static {p1}, Lcom/inmobi/ads/NativeViewFactory;->b(Landroid/view/View;)V

    .line 198
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v0, p0, Lcom/inmobi/ads/NativeViewFactory$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 202
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 203
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 205
    iget-object v0, p0, Lcom/inmobi/ads/NativeViewFactory$c;->c:Lcom/inmobi/ads/NativeViewFactory;

    invoke-static {v0}, Lcom/inmobi/ads/NativeViewFactory;->a(Lcom/inmobi/ads/NativeViewFactory;)I

    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/inmobi/ads/NativeViewFactory$c;->b:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Miss Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/NativeViewFactory$c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hit Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/NativeViewFactory$c;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
