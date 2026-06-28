.class public Lcom/inmobi/rendering/mraid/b;
.super Ljava/lang/Object;
.source "ExpandProperties.java"


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/inmobi/rendering/mraid/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/b;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v0

    .line 1019
    iget v0, v0, Lcom/inmobi/commons/core/utilities/b/d;->a:I

    .line 23
    iput v0, p0, Lcom/inmobi/rendering/mraid/b;->e:I

    .line 24
    invoke-static {}, Lcom/inmobi/commons/core/utilities/b/c;->a()Lcom/inmobi/commons/core/utilities/b/d;

    move-result-object v0

    .line 2015
    iget v0, v0, Lcom/inmobi/commons/core/utilities/b/d;->b:I

    .line 24
    iput v0, p0, Lcom/inmobi/rendering/mraid/b;->f:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/b;->a:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/b;->g:Z

    .line 27
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    :try_start_0
    const-string v1, "width"

    iget v2, p0, Lcom/inmobi/rendering/mraid/b;->e:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    const-string v1, "height"

    iget v2, p0, Lcom/inmobi/rendering/mraid/b;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    const-string v1, "useCustomClose"

    iget-boolean v2, p0, Lcom/inmobi/rendering/mraid/b;->a:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 32
    const-string v1, "isModal"

    iget-boolean v2, p0, Lcom/inmobi/rendering/mraid/b;->g:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/inmobi/rendering/mraid/b;->c:Ljava/lang/String;

    .line 37
    return-void

    .line 33
    :catch_0
    move-exception v1

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception in composing ExpandProperties: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 36
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static a(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/b;
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/inmobi/rendering/mraid/b;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/b;-><init>()V

    .line 49
    iput-object p0, v0, Lcom/inmobi/rendering/mraid/b;->c:Ljava/lang/String;

    .line 52
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 53
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/inmobi/rendering/mraid/b;->g:Z

    .line 55
    const-string v2, "useCustomClose"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/inmobi/rendering/mraid/b;->b:Z

    .line 58
    :cond_0
    const-string v2, "useCustomClose"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/inmobi/rendering/mraid/b;->a:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
