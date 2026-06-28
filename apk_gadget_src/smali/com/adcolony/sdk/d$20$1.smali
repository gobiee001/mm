.class Lcom/adcolony/sdk/d$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/d$20;->a(Lcom/adcolony/sdk/af;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/af;

.field final synthetic b:Lcom/adcolony/sdk/d$20;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/d$20;Lcom/adcolony/sdk/af;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/adcolony/sdk/d$20$1;->b:Lcom/adcolony/sdk/d$20;

    iput-object p2, p0, Lcom/adcolony/sdk/d$20$1;->a:Lcom/adcolony/sdk/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/adcolony/sdk/d$20$1;->a:Lcom/adcolony/sdk/af;

    iget-object v1, p0, Lcom/adcolony/sdk/d$20$1;->a:Lcom/adcolony/sdk/af;

    invoke-virtual {v1}, Lcom/adcolony/sdk/af;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/af;->a(Lorg/json/JSONObject;)Lcom/adcolony/sdk/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adcolony/sdk/af;->b()V

    .line 394
    return-void
.end method
