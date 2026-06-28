.class Lcom/chartboost/sdk/h$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/ad$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/h;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lcom/chartboost/sdk/h;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/h;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iput-object p2, p0, Lcom/chartboost/sdk/h$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/ad;Lcom/chartboost/sdk/Model/CBError;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/chartboost/sdk/h;->s:Z

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iget-boolean v0, v0, Lcom/chartboost/sdk/h;->t:Z

    if-nez v0, :cond_2

    .line 206
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 207
    if-eqz v0, :cond_1

    .line 208
    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/chartboost/sdk/h;->t:Z

    .line 211
    :cond_2
    return-void
.end method

.method public a(Lcom/chartboost/sdk/impl/ad;Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iput-boolean v2, v0, Lcom/chartboost/sdk/h;->s:Z

    .line 181
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "response"

    aput-object v1, v0, v2

    invoke-static {p2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->m:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iget-object v2, v2, Lcom/chartboost/sdk/h;->n:Landroid/content/SharedPreferences;

    invoke-static {v1, v0, v2}, Lcom/chartboost/sdk/b;->a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iget-object v1, v1, Lcom/chartboost/sdk/h;->n:Landroid/content/SharedPreferences;

    .line 185
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "config"

    .line 186
    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iget-boolean v0, v0, Lcom/chartboost/sdk/h;->t:Z

    if-nez v0, :cond_3

    .line 193
    sget-object v0, Lcom/chartboost/sdk/i;->c:Lcom/chartboost/sdk/a;

    .line 194
    if-eqz v0, :cond_2

    .line 195
    invoke-interface {v0}, Lcom/chartboost/sdk/a;->didInitialize()V

    .line 196
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/h$1;->b:Lcom/chartboost/sdk/h;

    iput-boolean v4, v0, Lcom/chartboost/sdk/h;->t:Z

    .line 198
    :cond_3
    return-void

    .line 186
    :cond_4
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
