.class public Lcom/applovin/impl/adview/cm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/applovin/sdk/AppLovinLogger;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:F


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 5

    const/16 v4, 0x1f4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Lcom/applovin/sdk/AppLovinSdk;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/adview/cm;->a:Lcom/applovin/sdk/AppLovinLogger;

    iget-object v0, p0, Lcom/applovin/impl/adview/cm;->a:Lcom/applovin/sdk/AppLovinLogger;

    const-string v1, "VideoButtonProperties"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating video button properties with JSON = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "width"

    const/16 v1, 0x40

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/cm;->b:I

    const-string v0, "height"

    const/4 v1, 0x7

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/cm;->c:I

    const-string v0, "margin"

    const/16 v1, 0x14

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/cm;->d:I

    const-string v0, "gravity"

    const/16 v1, 0x55

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/cm;->e:I

    const-string v0, "tap_to_fade"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;Lcom/applovin/sdk/AppLovinSdk;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/applovin/impl/adview/cm;->f:Z

    const-string v0, "tap_to_fade_duration_milliseconds"

    invoke-static {p1, v0, v4, p2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/cm;->g:I

    const-string v0, "fade_in_duration_milliseconds"

    invoke-static {p1, v0, v4, p2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/cm;->h:I

    const-string v0, "fade_out_duration_milliseconds"

    invoke-static {p1, v0, v4, p2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;ILcom/applovin/sdk/AppLovinSdk;)I

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/cm;->i:I

    const-string v0, "fade_in_delay_seconds"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/sdk/AppLovinSdk;)F

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/cm;->j:F

    const-string v0, "fade_out_delay_seconds"

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {p1, v0, v1, p2}, Lcom/applovin/impl/sdk/bt;->a(Lorg/json/JSONObject;Ljava/lang/String;FLcom/applovin/sdk/AppLovinSdk;)F

    move-result v0

    iput v0, p0, Lcom/applovin/impl/adview/cm;->k:F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/cm;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/cm;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/cm;->d:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/cm;->e:I

    return v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/applovin/impl/adview/cm;->f:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    check-cast p1, Lcom/applovin/impl/adview/cm;

    iget v2, p0, Lcom/applovin/impl/adview/cm;->b:I

    iget v3, p1, Lcom/applovin/impl/adview/cm;->b:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/cm;->c:I

    iget v3, p1, Lcom/applovin/impl/adview/cm;->c:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/cm;->d:I

    iget v3, p1, Lcom/applovin/impl/adview/cm;->d:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/cm;->e:I

    iget v3, p1, Lcom/applovin/impl/adview/cm;->e:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/applovin/impl/adview/cm;->f:Z

    iget-boolean v3, p1, Lcom/applovin/impl/adview/cm;->f:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/cm;->g:I

    iget v3, p1, Lcom/applovin/impl/adview/cm;->g:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/cm;->h:I

    iget v3, p1, Lcom/applovin/impl/adview/cm;->h:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/applovin/impl/adview/cm;->i:I

    iget v3, p1, Lcom/applovin/impl/adview/cm;->i:I

    if-ne v2, v3, :cond_0

    iget v2, p1, Lcom/applovin/impl/adview/cm;->j:F

    iget v3, p0, Lcom/applovin/impl/adview/cm;->j:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/applovin/impl/adview/cm;->k:F

    iget v3, p0, Lcom/applovin/impl/adview/cm;->k:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public f()J
    .locals 2

    iget v0, p0, Lcom/applovin/impl/adview/cm;->g:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public g()J
    .locals 2

    iget v0, p0, Lcom/applovin/impl/adview/cm;->h:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget v0, p0, Lcom/applovin/impl/adview/cm;->i:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    iget v0, p0, Lcom/applovin/impl/adview/cm;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/cm;->c:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/cm;->d:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/cm;->e:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lcom/applovin/impl/adview/cm;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/cm;->g:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/cm;->h:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/cm;->i:I

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget v0, p0, Lcom/applovin/impl/adview/cm;->j:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/applovin/impl/adview/cm;->j:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/applovin/impl/adview/cm;->k:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v1, p0, Lcom/applovin/impl/adview/cm;->k:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/cm;->j:F

    return v0
.end method

.method public j()F
    .locals 1

    iget v0, p0, Lcom/applovin/impl/adview/cm;->k:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoButtonProperties{widthPercentOfScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/cm;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heightPercentOfScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/cm;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", margin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/cm;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/cm;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tapToFade="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/applovin/impl/adview/cm;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tapToFadeDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/cm;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fadeInDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/cm;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fadeOutDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/cm;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fadeInDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/cm;->j:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fadeOutDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/applovin/impl/adview/cm;->k:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
