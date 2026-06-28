.class public Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;
.super Lcom/integralads/avid/library/adcolony/walking/async/AbstractAvidPublishAsyncTask;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;Ljava/util/HashSet;Lorg/json/JSONObject;D)V
    .locals 1
    .param p1, "stateProvider"    # Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;
    .param p2, "adSessionRegistry"    # Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;
    .param p4, "state"    # Lorg/json/JSONObject;
    .param p5, "timestamp"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;",
            "Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "D)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p3, "sessionIds":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p6}, Lcom/integralads/avid/library/adcolony/walking/async/AbstractAvidPublishAsyncTask;-><init>(Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;Ljava/util/HashSet;Lorg/json/JSONObject;D)V

    .line 18
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 39
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->adSessionRegistry:Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/registration/AvidAdSessionRegistry;->getInternalAvidAdSessions()Ljava/util/Collection;

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

    check-cast v0, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;

    .line 40
    iget-object v2, p0, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->sessionIds:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->getAvidAdSessionId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    iget-wide v2, p0, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->timestamp:D

    invoke-virtual {v0, p1, v2, v3}, Lcom/integralads/avid/library/adcolony/session/internal/InternalAvidAdSession;->publishNativeViewStateCommand(Ljava/lang/String;D)V

    goto :goto_0

    .line 44
    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->state:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->stateProvider:Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;

    invoke-interface {v1}, Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;->getPreviousState()Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/integralads/avid/library/adcolony/utils/AvidJSONUtil;->equalStates(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->stateProvider:Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;

    iget-object v1, p0, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->state:Lorg/json/JSONObject;

    invoke-interface {v0, v1}, Lcom/integralads/avid/library/adcolony/walking/async/AvidAsyncTask$StateProvider;->setPreviousState(Lorg/json/JSONObject;)V

    .line 26
    iget-object v0, p0, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->state:Lorg/json/JSONObject;

    iget-wide v2, p0, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->timestamp:D

    invoke-static {v0, v2, v3}, Lcom/integralads/avid/library/adcolony/utils/AvidJSONUtil;->getTreeJSONObject(Lorg/json/JSONObject;D)Lorg/json/JSONObject;

    move-result-object v0

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 27
    :goto_1
    invoke-static {v0}, Lcom/integralads/avid/library/adcolony/utils/AvidCommand;->setNativeViewState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 26
    :cond_1
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/adcolony/walking/async/AvidPublishAsyncTask;->b(Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-super {p0, p1}, Lcom/integralads/avid/library/adcolony/walking/async/AbstractAvidPublishAsyncTask;->onPostExecute(Ljava/lang/String;)V

    .line 36
    return-void
.end method
