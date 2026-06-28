.class public Lcom/inmobi/rendering/mraid/g;
.super Ljava/lang/Object;
.source "OrientationProperties.java"


# static fields
.field private static e:Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/g;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-string v0, "none"

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    .line 21
    const-string v0, "right"

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->c:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->a:Z

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->d:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/inmobi/rendering/mraid/g;)Lcom/inmobi/rendering/mraid/g;
    .locals 4

    .prologue
    .line 27
    new-instance v0, Lcom/inmobi/rendering/mraid/g;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/g;-><init>()V

    .line 28
    iput-object p0, v0, Lcom/inmobi/rendering/mraid/g;->d:Ljava/lang/String;

    .line 31
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 32
    const-string v2, "forceOrientation"

    iget-object v3, p1, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    .line 33
    const-string v2, "allowOrientationChange"

    iget-boolean v3, p1, Lcom/inmobi/rendering/mraid/g;->a:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/inmobi/rendering/mraid/g;->a:Z

    .line 34
    const-string v2, "direction"

    iget-object v3, p1, Lcom/inmobi/rendering/mraid/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/inmobi/rendering/mraid/g;->c:Ljava/lang/String;

    .line 36
    iget-object v1, v0, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 37
    const-string v1, "none"

    iput-object v1, v0, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    .line 39
    :cond_0
    iget-object v1, v0, Lcom/inmobi/rendering/mraid/g;->c:Ljava/lang/String;

    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/inmobi/rendering/mraid/g;->c:Ljava/lang/String;

    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    const-string v1, "right"

    iput-object v1, v0, Lcom/inmobi/rendering/mraid/g;->c:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :cond_1
    :goto_0
    return-object v0

    .line 44
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
