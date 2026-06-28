.class public Lcom/integralads/avid/library/inmobi/processing/AvidViewProcessor;
.super Ljava/lang/Object;
.source "AvidViewProcessor.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;


# instance fields
.field private final xyAxisCoordinates:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/processing/AvidViewProcessor;->xyAxisCoordinates:[I

    return-void
.end method

.method private iterateChilren(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;)V
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 44
    invoke-interface {p3, v1, p0, p2}, Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;->walkView(Landroid/view/View;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;Lorg/json/JSONObject;)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method private sortAndIterateChilren(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;)V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 50
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 51
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 52
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 54
    if-nez v0, :cond_0

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 56
    invoke-virtual {v3}, Landroid/view/View;->getZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 63
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 64
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 65
    invoke-interface {p3, v0, p0, p2}, Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;->walkView(Landroid/view/View;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 68
    :cond_3
    return-void
.end method


# virtual methods
.method public getState(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 24
    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/processing/AvidViewProcessor;->xyAxisCoordinates:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 25
    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/processing/AvidViewProcessor;->xyAxisCoordinates:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/integralads/avid/library/inmobi/processing/AvidViewProcessor;->xyAxisCoordinates:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3, v0, v1}, Lcom/integralads/avid/library/inmobi/utils/AvidJSONUtil;->getViewState(IIII)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public iterateChildren(Landroid/view/View;Lorg/json/JSONObject;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;Z)V
    .locals 2

    .prologue
    .line 30
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 39
    :goto_0
    return-void

    .line 33
    :cond_0
    check-cast p1, Landroid/view/ViewGroup;

    .line 34
    if-eqz p4, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    .line 35
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/inmobi/processing/AvidViewProcessor;->iterateChilren(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;)V

    goto :goto_0

    .line 37
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/inmobi/processing/AvidViewProcessor;->sortAndIterateChilren(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;)V

    goto :goto_0
.end method
