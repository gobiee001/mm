.class public Lcom/integralads/avid/library/inmobi/processing/AvidSceenProcessor;
.super Ljava/lang/Object;
.source "AvidSceenProcessor.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;


# instance fields
.field private final childrenProcessor:Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/processing/AvidSceenProcessor;->childrenProcessor:Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;

    .line 20
    return-void
.end method


# virtual methods
.method public getState(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-static {v0, v0, v0, v0}, Lcom/integralads/avid/library/inmobi/utils/AvidJSONUtil;->getViewState(IIII)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public iterateChildren(Landroid/view/View;Lorg/json/JSONObject;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;Z)V
    .locals 3

    .prologue
    .line 29
    invoke-static {}, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->getInstance()Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/activity/AvidActivityStack;->getRootViews()Ljava/util/List;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 31
    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/processing/AvidSceenProcessor;->childrenProcessor:Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;

    invoke-interface {p3, v0, v2, p2}, Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor$IAvidViewWalker;->walkView(Landroid/view/View;Lcom/integralads/avid/library/inmobi/processing/IAvidNodeProcessor;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method
