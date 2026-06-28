.class public Lcom/integralads/avid/library/inmobi/walking/async/AvidEmptyPublishAsyncTask;
.super Lcom/integralads/avid/library/inmobi/walking/async/AbstractAvidPublishAsyncTask;
.source "AvidEmptyPublishAsyncTask.java"


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/inmobi/walking/async/AvidAsyncTask$StateProvider;Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;Ljava/util/HashSet;Lorg/json/JSONObject;D)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/integralads/avid/library/inmobi/walking/async/AvidAsyncTask$StateProvider;",
            "Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "D)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct/range {p0 .. p6}, Lcom/integralads/avid/library/inmobi/walking/async/AbstractAvidPublishAsyncTask;-><init>(Lcom/integralads/avid/library/inmobi/walking/async/AvidAsyncTask$StateProvider;Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    .line 16
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/inmobi/walking/async/AvidEmptyPublishAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 20
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/walking/async/AvidEmptyPublishAsyncTask;->state:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/integralads/avid/library/inmobi/walking/async/AvidEmptyPublishAsyncTask;->timestamp:D

    invoke-static {v0, v2, v3}, Lcom/integralads/avid/library/inmobi/utils/AvidJSONUtil;->getTreeJSONObject(Lorg/json/JSONObject;D)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    :goto_0
    invoke-static {v0}, Lcom/integralads/avid/library/inmobi/utils/AvidCommand;->setNativeViewState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 20
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/inmobi/walking/async/AvidEmptyPublishAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/walking/async/AvidEmptyPublishAsyncTask;->adSessionRegistry:Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/registration/AvidAdSessionRegistry;->getInternalAvidAdSessions()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;

    .line 27
    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/walking/async/AvidEmptyPublishAsyncTask;->sessionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    iget-wide v2, p0, Lcom/integralads/avid/library/inmobi/walking/async/AvidEmptyPublishAsyncTask;->timestamp:D

    invoke-virtual {v0, p1, v2, v3}, Lcom/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession;->publishEmptyNativeViewStateCommand(Ljava/lang/String;D)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-super {p0, p1}, Lcom/integralads/avid/library/inmobi/walking/async/AbstractAvidPublishAsyncTask;->onPostExecute(Ljava/lang/String;)V

    .line 32
    return-void
.end method
