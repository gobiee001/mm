.class public Lcom/chartboost/sdk/Libraries/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/chartboost/sdk/Libraries/h$a;

.field private final b:Lcom/chartboost/sdk/e;

.field private c:Ljava/lang/String;

.field private d:F


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/e;)V
    .locals 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:F

    .line 171
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/h;->b:Lcom/chartboost/sdk/e;

    .line 172
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->e()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h$a;->c()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->b:Lcom/chartboost/sdk/e;

    invoke-virtual {v0}, Lcom/chartboost/sdk/e;->g()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/Libraries/h;->a(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 191
    new-array v2, v0, [Ljava/lang/String;

    aput-object p2, v2, v1

    invoke-static {p1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 192
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/h;->c:Ljava/lang/String;

    .line 193
    if-nez v2, :cond_1

    .line 208
    :cond_0
    :goto_0
    return v0

    .line 196
    :cond_1
    const-string v3, "url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 197
    const-string v4, "scale"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v4, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Lcom/chartboost/sdk/Libraries/h;->d:F

    .line 199
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    const-string v3, "checksum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    .line 204
    goto :goto_0

    .line 206
    :cond_2
    iget-object v3, p0, Lcom/chartboost/sdk/Libraries/h;->b:Lcom/chartboost/sdk/e;

    iget-object v3, v3, Lcom/chartboost/sdk/e;->e:Lcom/chartboost/sdk/Model/c;

    iget-object v3, v3, Lcom/chartboost/sdk/Model/c;->j:Lcom/chartboost/sdk/impl/af;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/af;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/h$a;

    move-result-object v2

    iput-object v2, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    .line 208
    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public b()I
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->f()I

    move-result v0

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/h$a;->c()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->d()V

    .line 219
    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/h;->a:Lcom/chartboost/sdk/Libraries/h$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h$a;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()F
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/chartboost/sdk/Libraries/h;->d:F

    return v0
.end method
