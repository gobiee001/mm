.class Lcom/adcolony/sdk/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/n;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/n;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/n;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/adcolony/sdk/n$1;->a:Lcom/adcolony/sdk/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/adcolony/sdk/n$1$1;

    invoke-direct {v0, p0, p1}, Lcom/adcolony/sdk/n$1$1;-><init>(Lcom/adcolony/sdk/n$1;Lcom/adcolony/sdk/af;)V

    invoke-static {v0}, Lcom/adcolony/sdk/az;->a(Ljava/lang/Runnable;)Z

    .line 114
    return-void
.end method
