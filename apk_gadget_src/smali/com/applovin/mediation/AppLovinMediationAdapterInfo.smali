.class public Lcom/applovin/mediation/AppLovinMediationAdapterInfo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/applovin/mediation/AppLovinMediationAdapterStatus;

.field private final e:Lcom/applovin/mediation/AppLovinMediationAdapter;

.field private final f:Lcom/applovin/mediation/AppLovinMediationAdapterConfig;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/mediation/AppLovinMediationAdapterStatus;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/mediation/AppLovinMediationAdapterStatus;Lcom/applovin/mediation/AppLovinMediationAdapter;Lcom/applovin/mediation/AppLovinMediationAdapterConfig;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/applovin/mediation/AppLovinMediationAdapterStatus;Lcom/applovin/mediation/AppLovinMediationAdapter;Lcom/applovin/mediation/AppLovinMediationAdapterConfig;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No class name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No status specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->d:Lcom/applovin/mediation/AppLovinMediationAdapterStatus;

    iput-object p5, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->e:Lcom/applovin/mediation/AppLovinMediationAdapter;

    iput-object p6, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->f:Lcom/applovin/mediation/AppLovinMediationAdapterConfig;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/applovin/mediation/AppLovinMediationAdapterStatus;
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->d:Lcom/applovin/mediation/AppLovinMediationAdapterStatus;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Adapter Info - <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/mediation/AppLovinMediationAdapterInfo;->f:Lcom/applovin/mediation/AppLovinMediationAdapterConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
