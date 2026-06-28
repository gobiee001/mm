.class Lcom/adcolony/sdk/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/h;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/h;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/h;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/adcolony/sdk/h$2;->a:Lcom/adcolony/sdk/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/adcolony/sdk/h$2;->a:Lcom/adcolony/sdk/h;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/h;->a(Lcom/adcolony/sdk/af;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/adcolony/sdk/h$2;->a:Lcom/adcolony/sdk/h;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/h;->d(Lcom/adcolony/sdk/af;)V

    .line 89
    :cond_0
    return-void
.end method
