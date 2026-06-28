.class Lcom/adcolony/sdk/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/b;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/b;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/b;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/adcolony/sdk/b$2;->a:Lcom/adcolony/sdk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 3

    .prologue
    .line 106
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    .line 107
    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->b(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/adcolony/sdk/b$2;->a:Lcom/adcolony/sdk/b;

    iget-object v2, v2, Lcom/adcolony/sdk/b;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/adcolony/sdk/b$2;->a:Lcom/adcolony/sdk/b;

    const-string v2, "orientation"

    invoke-static {v0, v2}, Lcom/adcolony/sdk/y;->c(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/b;->a(I)V

    .line 110
    :cond_0
    return-void
.end method
