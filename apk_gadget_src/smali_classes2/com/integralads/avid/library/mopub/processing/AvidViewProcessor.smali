.class public Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;
.super Ljava/lang/Object;
.source "AvidViewProcessor.java"

# interfaces
.implements Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;


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

    iput-object v0, p0, Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;->xyAxisCoordinates:[I

    return-void
.end method

.method private iterateChilren(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewState"    # Lorg/json/JSONObject;
    .param p3, "walker"    # Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;

    .prologue
    .line 42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 43
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "childView":Landroid/view/View;
    invoke-interface {p3, v0, p0, p2}, Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;->walkView(Landroid/view/View;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;Lorg/json/JSONObject;)V

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "childView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private sortAndIterateChilren(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;)V
    .locals 11
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "viewState"    # Lorg/json/JSONObject;
    .param p3, "walker"    # Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 50
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 51
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Float;Ljava/util/ArrayList<Landroid/view/View;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 52
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 53
    .local v7, "view":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 54
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v5, :cond_0

    .line 55
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v7}, Landroid/view/View;->getZ()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :cond_0
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "view":Landroid/view/View;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 61
    .local v4, "keys":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 62
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 63
    .local v3, "key":Ljava/lang/Float;
    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 64
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 65
    .local v0, "childView":Landroid/view/View;
    invoke-interface {p3, v0, p0, p2}, Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;->walkView(Landroid/view/View;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 68
    .end local v0    # "childView":Landroid/view/View;
    .end local v1    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v3    # "key":Ljava/lang/Float;
    :cond_3
    return-void
.end method


# virtual methods
.method public getState(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 23
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 24
    .local v0, "height":I
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;->xyAxisCoordinates:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 25
    iget-object v2, p0, Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;->xyAxisCoordinates:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;->xyAxisCoordinates:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v2, v3, v1, v0}, Lcom/integralads/avid/library/mopub/utils/AvidJSONUtil;->getViewState(IIII)Lorg/json/JSONObject;

    move-result-object v2

    return-object v2
.end method

.method public iterateChildren(Landroid/view/View;Lorg/json/JSONObject;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;Z)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewState"    # Lorg/json/JSONObject;
    .param p3, "walker"    # Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;
    .param p4, "sortByZ"    # Z

    .prologue
    .line 30
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 39
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    if-eqz p4, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_2

    .line 35
    :cond_1
    invoke-direct {p0, v0, p2, p3}, Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;->iterateChilren(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;)V

    goto :goto_0

    .line 37
    :cond_2
    invoke-direct {p0, v0, p2, p3}, Lcom/integralads/avid/library/mopub/processing/AvidViewProcessor;->sortAndIterateChilren(Landroid/view/ViewGroup;Lorg/json/JSONObject;Lcom/integralads/avid/library/mopub/processing/IAvidNodeProcessor$IAvidViewWalker;)V

    goto :goto_0
.end method
