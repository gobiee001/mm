.class public abstract Lcom/applovin/impl/sdk/am;
.super Lcom/applovin/impl/sdk/q;


# instance fields
.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/q;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/applovin/impl/sdk/am;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private a(Lcom/applovin/sdk/AppLovinAdType;FZ)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p1, v1}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-virtual {p1, v1}, Lcom/applovin/sdk/AppLovinAdType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Z)Lcom/applovin/impl/adview/al;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/applovin/impl/adview/al;->b:Lcom/applovin/impl/adview/al;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/applovin/impl/adview/al;->a:Lcom/applovin/impl/adview/al;

    goto :goto_0
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "video_end_url"

    const-string v2, ""

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public B()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "dismiss_on_skip"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "video_button_properties"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinSdk;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "video_button_html"

    const-string v2, ""

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public D()Lcom/applovin/impl/adview/cm;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "video_button_properties"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinSdk;)Lorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/adview/cm;

    iget-object v2, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v1, v0, v2}, Lcom/applovin/impl/adview/cm;-><init>(Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinSdk;)V

    return-object v1
.end method

.method public E()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "video_clickable"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public F()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "accelerate_hardware"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public G()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "hide_close_on_exit_graphic"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public H()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "hide_close_on_exit"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public I()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "lock_current_orientation"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public J()I
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "countdown_length"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    return v0
.end method

.method public K()I
    .locals 5

    const-string v0, "#C8FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "countdown_color"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "DirectAd"

    const-string v4, "Unable to parse countdown color"

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public L()I
    .locals 5

    const/high16 v0, -0x1000000

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "video_background_color"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public M()I
    .locals 5

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/am;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    :goto_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "graphic_background_color"

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_1
    return v0

    :cond_1
    const/high16 v0, -0x45000000    # -0.001953125f

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public N()Lcom/applovin/impl/sdk/an;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "poststitial_dismiss_type"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/an;->b:Lcom/applovin/impl/sdk/an;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "no_dismiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applovin/impl/sdk/an;->c:Lcom/applovin/impl/sdk/an;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/an;->a:Lcom/applovin/impl/sdk/an;

    goto :goto_0
.end method

.method public O()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "resource_cache_prefix"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/aa;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->J:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getAsList(Lcom/applovin/impl/sdk/dz;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public P()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "cache_prefix"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Q()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "progress_bar_enabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public R()I
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "progress_bar_color"

    const-string v2, "#C8FFFFFF"

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public S()I
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fy;->a(Lorg/json/JSONObject;)I

    move-result v0

    return v0
.end method

.method public T()I
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "poststitial_shown_forward_delay_millis"

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    return v0
.end method

.method public U()I
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "close_button_size"

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/dx;->aO:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    return v0
.end method

.method public V()I
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "close_button_top_margin"

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/dx;->aP:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    return v0
.end method

.method public W()I
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "close_button_horizontal_margin"

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/dx;->aQ:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    return v0
.end method

.method public X()Z
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "lhs_close_button"

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/dx;->by:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Y()Z
    .locals 4

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "lhs_skip_button"

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/dx;->bz:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public Z()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "stop_video_player_after_poststitial_render"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected a(I)Lcom/applovin/impl/adview/al;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/applovin/impl/adview/al;->b:Lcom/applovin/impl/adview/al;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    sget-object v0, Lcom/applovin/impl/adview/al;->c:Lcom/applovin/impl/adview/al;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/adview/al;->a:Lcom/applovin/impl/adview/al;

    goto :goto_0
.end method

.method public a(ILjava/lang/String;Z)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/am;->A()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "{CLCODE}"

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/am;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "pv"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "vid_ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "uvs"

    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/applovin/impl/sdk/fy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public aa()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "unhide_adview_on_render"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ab()J
    .locals 6

    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v3, "report_reward_duration"

    iget-object v4, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v2, v3, v0, v1, v4}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;JLcom/applovin/sdk/AppLovinSdk;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    :cond_0
    return-wide v0
.end method

.method public ac()I
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "report_reward_percent"

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    return v0
.end method

.method public ad()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "report_reward_percent_include_close_delay"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ae()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public af()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "render_poststitial_on_attach"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ag()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "playback_requires_user_action"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ah()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "sanitize_webview"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ai()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "base_url"

    const-string v2, "/"

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public aj()Z
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "web_contents_debugging_enabled"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public ak()Lcom/applovin/impl/sdk/fz;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "web_view_settings"

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinSdk;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/applovin/impl/sdk/fz;

    iget-object v2, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/sdk/fz;-><init>(Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinSdk;)V

    :cond_0
    return-object v0
.end method

.method public al()Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "mute_image"

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public am()Landroid/net/Uri;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "unmute_image"

    const-string v3, ""

    iget-object v4, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v3, v4}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "click_tracking_url"

    const-string v2, ""

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "{CLCODE}"

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/am;->n()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/fy;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public b(Landroid/net/Uri;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "mute_image"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public b()Z
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke isVideoStream() from base ad class"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/net/Uri;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->d:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "unmute_image"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke getVideoUri() from base ad class"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/applovin/impl/sdk/q;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Z
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->f()Z

    move-result v0

    return v0
.end method

.method public g()Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    const-string v1, "DirectAd"

    const-string v2, "Attempting to invoke getClickDestinationUri() from base ad class"

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getAdIdNumber()J
    .locals 2

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->getAdIdNumber()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getSize()Lcom/applovin/sdk/AppLovinAdSize;
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->getSize()Lcom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Lcom/applovin/sdk/AppLovinAdType;
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isVideoAd()Z
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->isVideoAd()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic l()J
    .locals 2

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->l()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic m()Lcom/applovin/impl/sdk/o;
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->m()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic n()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Lcom/applovin/impl/sdk/n;
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->t()Lcom/applovin/impl/sdk/n;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/applovin/impl/sdk/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/applovin/impl/sdk/ao;
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "ad_target"

    sget-object v2, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/ao;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ao;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTIVITY_PORTRAIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/applovin/impl/sdk/ao;->b:Lcom/applovin/impl/sdk/ao;

    :goto_0
    return-object v0

    :cond_0
    const-string v1, "ACTIVITY_LANDSCAPE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/applovin/impl/sdk/ao;->c:Lcom/applovin/impl/sdk/ao;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/applovin/impl/sdk/ao;->a:Lcom/applovin/impl/sdk/ao;

    goto :goto_0
.end method

.method public w()F
    .locals 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "close_delay"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/sdk/AppLovinSdk;)F

    move-result v0

    return v0
.end method

.method public x()F
    .locals 4

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/am;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/am;->w()F

    move-result v1

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/am;->f()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/am;->a(Lcom/applovin/sdk/AppLovinAdType;FZ)F

    move-result v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v2, "close_delay_graphic"

    iget-object v3, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v1, v2, v0, v3}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/sdk/AppLovinSdk;)F

    move-result v0

    return v0
.end method

.method public y()Lcom/applovin/impl/adview/al;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "close_style"

    iget-object v2, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v3, v2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/am;->f()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/am;->a(Z)Lcom/applovin/impl/adview/al;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/am;->a(I)Lcom/applovin/impl/adview/al;

    move-result-object v0

    goto :goto_0
.end method

.method public z()Lcom/applovin/impl/adview/al;
    .locals 4

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/applovin/impl/sdk/am;->a:Lorg/json/JSONObject;

    const-string v1, "skip_style"

    iget-object v2, p0, Lcom/applovin/impl/sdk/am;->c:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-static {v0, v1, v3, v2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    if-ne v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/am;->y()Lcom/applovin/impl/adview/al;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/am;->a(I)Lcom/applovin/impl/adview/al;

    move-result-object v0

    goto :goto_0
.end method
