.class Lcom/adcolony/sdk/bb$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/bb;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/bb;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/bb;)V
    .locals 0

    .prologue
    .line 383
    iput-object p1, p0, Lcom/adcolony/sdk/bb$7;->a:Lcom/adcolony/sdk/bb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 3

    .prologue
    .line 385
    iget-object v0, p0, Lcom/adcolony/sdk/bb$7;->a:Lcom/adcolony/sdk/bb;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/bb;->a(Lcom/adcolony/sdk/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/adcolony/sdk/bb$7;->a:Lcom/adcolony/sdk/bb;

    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "custom_js"

    invoke-static {v1, v2}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/bb;->a(Ljava/lang/String;)V

    .line 388
    :cond_0
    return-void
.end method
