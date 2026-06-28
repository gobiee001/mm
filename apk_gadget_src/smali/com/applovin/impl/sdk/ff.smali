.class Lcom/applovin/impl/sdk/ff;
.super Lcom/applovin/impl/sdk/dw;

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/fe;

.field private final b:Lorg/json/JSONArray;

.field private final g:I


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/fe;ILorg/json/JSONArray;)V
    .locals 3

    iput-object p1, p0, Lcom/applovin/impl/sdk/ff;->a:Lcom/applovin/impl/sdk/fe;

    const-string v0, "TaskProcessNextWaterfallAd"

    iget-object v1, p1, Lcom/applovin/impl/sdk/fe;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/dw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No ad objects array specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    invoke-virtual {p3}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid ad index specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p3, p0, Lcom/applovin/impl/sdk/ff;->b:Lorg/json/JSONArray;

    iput p2, p0, Lcom/applovin/impl/sdk/ff;->g:I

    return-void
.end method

.method private a(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/ff;->b(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "adapter"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->b:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/fd;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ff;->a:Lcom/applovin/impl/sdk/fe;

    invoke-static {v3}, Lcom/applovin/impl/sdk/fe;->b(Lcom/applovin/impl/sdk/fe;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v2, v0, v3, v4}, Lcom/applovin/impl/sdk/fd;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    sget-object v0, Lcom/applovin/impl/sdk/ez;->b:Lcom/applovin/impl/sdk/ez;

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;)V

    :cond_0
    return-void
.end method

.method private b(I)Ljava/lang/String;
    .locals 4

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->b:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const-string v0, "undefined"

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->b:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    const-string v2, "undefined"

    iget-object v3, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->c:Ljava/lang/String;

    const-string v2, "Unable to parse next ad from the ad response"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "undefined"

    goto :goto_0
.end method

.method private c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->b:Lorg/json/JSONArray;

    iget v1, p0, Lcom/applovin/impl/sdk/ff;->g:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/sdk/ff;->g:I

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/ff;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applovin"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ff;->c:Ljava/lang/String;

    const-string v3, "Starting task for AppLovin ad..."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/fk;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ff;->a:Lcom/applovin/impl/sdk/fe;

    invoke-static {v3}, Lcom/applovin/impl/sdk/fe;->b(Lcom/applovin/impl/sdk/fe;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v2, v0, v3, p0, v4}, Lcom/applovin/impl/sdk/fk;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "vast"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ff;->c:Ljava/lang/String;

    const-string v3, "Starting task for VAST ad..."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ff;->a:Lcom/applovin/impl/sdk/fe;

    invoke-static {v2}, Lcom/applovin/impl/sdk/fe;->b(Lcom/applovin/impl/sdk/fe;)Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v2, p0, v3}, Lcom/applovin/impl/sdk/fg;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)Lcom/applovin/impl/sdk/fg;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;)V

    goto :goto_0

    :cond_1
    const-string v2, "adapter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ff;->c:Ljava/lang/String;

    const-string v3, "Starting task for adapter ad..."

    invoke-interface {v1, v2, v3}, Lcom/applovin/sdk/AppLovinLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/sdk/ex;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ff;->a:Lcom/applovin/impl/sdk/fe;

    invoke-static {v3}, Lcom/applovin/impl/sdk/fe;->b(Lcom/applovin/impl/sdk/fe;)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v2, v0, v3, v4, p0}, Lcom/applovin/impl/sdk/ex;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ff;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to process ad of unknown type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/applovin/sdk/AppLovinLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, -0x320

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/ff;->failedToReceiveAd(I)V

    goto :goto_0
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->a:Lcom/applovin/impl/sdk/fe;

    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/fe;->a(Lcom/applovin/impl/sdk/fe;Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 5

    iget v0, p0, Lcom/applovin/impl/sdk/ff;->g:I

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->b:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to load next ad ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/applovin/impl/sdk/ff;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") after failure..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getTaskManager()Lcom/applovin/impl/sdk/ey;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/ff;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ff;->a:Lcom/applovin/impl/sdk/fe;

    iget v3, p0, Lcom/applovin/impl/sdk/ff;->g:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/applovin/impl/sdk/ff;->b:Lorg/json/JSONArray;

    invoke-direct {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/ff;-><init>(Lcom/applovin/impl/sdk/fe;ILorg/json/JSONArray;)V

    sget-object v2, Lcom/applovin/impl/sdk/ez;->b:Lcom/applovin/impl/sdk/ez;

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/ey;->a(Lcom/applovin/impl/sdk/dw;Lcom/applovin/impl/sdk/ez;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->a:Lcom/applovin/impl/sdk/fe;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fe;->a(Lcom/applovin/impl/sdk/fe;)V

    goto :goto_0
.end method

.method public run()V
    .locals 5

    :try_start_0
    iget v0, p0, Lcom/applovin/impl/sdk/ff;->g:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->do:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v0, 0x1

    :goto_0
    if-gt v0, v1, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ff;->b:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ff;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/applovin/impl/sdk/ff;->g:I

    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/dx;->do:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->b:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ff;->a(I)V

    :cond_1
    invoke-direct {p0}, Lcom/applovin/impl/sdk/ff;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ff;->e:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ff;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered error while processing ad number "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/applovin/impl/sdk/ff;->g:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ff;->a:Lcom/applovin/impl/sdk/fe;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fe;->a(Lcom/applovin/impl/sdk/fe;)V

    goto :goto_1
.end method
