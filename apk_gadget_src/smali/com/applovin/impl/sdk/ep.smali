.class public Lcom/applovin/impl/sdk/ep;
.super Lcom/applovin/impl/sdk/dw;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/applovin/sdk/AppLovinPostbackListener;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:J

.field private k:I


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;Ljava/lang/String;Ljava/util/Map;Lcom/applovin/sdk/AppLovinPostbackListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/AppLovinSdkImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/applovin/sdk/AppLovinPostbackListener;",
            ")V"
        }
    .end annotation

    const-string v0, "TaskDispatchPostback"

    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/sdk/dw;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/applovin/impl/sdk/ep;->k:I

    iput-object p2, p0, Lcom/applovin/impl/sdk/ep;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/impl/sdk/ep;->g:Lcom/applovin/sdk/AppLovinPostbackListener;

    iput-object p3, p0, Lcom/applovin/impl/sdk/ep;->b:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ep;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ep;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/ep;)Lcom/applovin/sdk/AppLovinPostbackListener;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ep;->g:Lcom/applovin/sdk/AppLovinPostbackListener;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/ep;->i:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/applovin/impl/sdk/ep;->j:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/applovin/impl/sdk/ep;->h:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/applovin/impl/sdk/ep;->k:I

    return-void
.end method

.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/applovin/impl/sdk/ep;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ep;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "TaskDispatchPostback"

    const-string v2, "Requested URL is not valid; nothing to do..."

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/applovin/impl/sdk/ep;->g:Lcom/applovin/sdk/AppLovinPostbackListener;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ep;->a:Ljava/lang/String;

    const/16 v2, -0x384

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinPostbackListener;->onPostbackFailure(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ep;->b:Ljava/util/Map;

    if-nez v0, :cond_1

    const-string v2, "GET"

    :goto_1
    new-instance v0, Lcom/applovin/impl/sdk/eq;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "RepeatTaskDispatchPostback"

    iget-object v5, p0, Lcom/applovin/impl/sdk/ep;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/eq;-><init>(Lcom/applovin/impl/sdk/ep;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ep;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ep;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/applovin/impl/sdk/ep;->b:Ljava/util/Map;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Lorg/json/JSONObject;)V

    iget-wide v2, p0, Lcom/applovin/impl/sdk/ep;->j:J

    invoke-virtual {v0, v2, v3}, Lcom/applovin/impl/sdk/fn;->a(J)V

    iget v1, p0, Lcom/applovin/impl/sdk/ep;->i:I

    if-gez v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/sdk/ep;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/dx;->bk:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->c(I)V

    iget v1, p0, Lcom/applovin/impl/sdk/ep;->k:I

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/sdk/ep;->d:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/dx;->bj:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_4
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->b(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/fn;->a(Z)V

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/fn;->run()V

    goto :goto_0

    :cond_1
    const-string v2, "POST"

    goto :goto_1

    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/applovin/impl/sdk/ep;->b:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_2

    :cond_3
    iget v1, p0, Lcom/applovin/impl/sdk/ep;->i:I

    goto :goto_3

    :cond_4
    iget v1, p0, Lcom/applovin/impl/sdk/ep;->k:I

    goto :goto_4
.end method
