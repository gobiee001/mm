.class Lcom/adcolony/sdk/ba$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/ba;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/ba;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/ba;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/adcolony/sdk/ba$5;->a:Lcom/adcolony/sdk/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/adcolony/sdk/ba$5;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/ba;->a(Lcom/adcolony/sdk/ba;Lcom/adcolony/sdk/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/adcolony/sdk/ba$5;->a:Lcom/adcolony/sdk/ba;

    invoke-static {v0, p1}, Lcom/adcolony/sdk/ba;->d(Lcom/adcolony/sdk/ba;Lcom/adcolony/sdk/af;)Z

    .line 203
    :cond_0
    return-void
.end method
