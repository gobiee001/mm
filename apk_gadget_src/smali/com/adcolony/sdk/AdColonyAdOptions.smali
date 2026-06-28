.class public Lcom/adcolony/sdk/AdColonyAdOptions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Lcom/adcolony/sdk/y;->a()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public enableConfirmationDialog(Z)Lcom/adcolony/sdk/AdColonyAdOptions;
    .locals 3
    .param p1, "confirmation_enabled"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->a:Z

    .line 30
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    const-string v1, "confirmation_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 31
    return-object p0
.end method

.method public enableResultsDialog(Z)Lcom/adcolony/sdk/AdColonyAdOptions;
    .locals 3
    .param p1, "results_enabled"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->b:Z

    .line 44
    iget-object v0, p0, Lcom/adcolony/sdk/AdColonyAdOptions;->d:Lorg/json/JSONObject;

    const-string v1, "results_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/adcolony/sdk/y;->a(Lorg/json/JSONObject;Ljava/lang/String;Z)Z

    .line 45
    return-object p0
.end method
