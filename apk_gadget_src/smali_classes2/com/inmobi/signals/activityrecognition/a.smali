.class public Lcom/inmobi/signals/activityrecognition/a;
.super Ljava/lang/Object;
.source "ActivityInfo.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/inmobi/signals/activityrecognition/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/activityrecognition/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(IJ)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/inmobi/signals/activityrecognition/a;->b:I

    .line 20
    iput-wide p2, p0, Lcom/inmobi/signals/activityrecognition/a;->c:J

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 35
    :try_start_0
    const-string v1, "a"

    iget v2, p0, Lcom/inmobi/signals/activityrecognition/a;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    const-string v1, "ts"

    iget-wide v2, p0, Lcom/inmobi/signals/activityrecognition/a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
