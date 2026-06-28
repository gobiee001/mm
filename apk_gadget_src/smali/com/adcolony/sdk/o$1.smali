.class Lcom/adcolony/sdk/o$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/o;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/o;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/o;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/adcolony/sdk/o$1;->a:Lcom/adcolony/sdk/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lcom/adcolony/sdk/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    sget-object v0, Lcom/adcolony/sdk/aa;->g:Lcom/adcolony/sdk/aa;

    const-string v1, "Null Activity reference, can\'t build AlertDialog."

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/aa;->b(Ljava/lang/Object;)Lcom/adcolony/sdk/aa;

    .line 29
    :goto_0
    return-void

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "on_resume"

    invoke-static {v0, v1}, Lcom/adcolony/sdk/y;->d(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/adcolony/sdk/o$1;->a:Lcom/adcolony/sdk/o;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/o;->a(Lcom/adcolony/sdk/o;Lcom/adcolony/sdk/af;)Lcom/adcolony/sdk/af;

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/adcolony/sdk/o$1;->a:Lcom/adcolony/sdk/o;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/o;->a(Lcom/adcolony/sdk/af;)V

    goto :goto_0
.end method
