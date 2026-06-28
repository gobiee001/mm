.class Lcom/adcolony/sdk/v$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adcolony/sdk/ah;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adcolony/sdk/v;-><init>(Lcom/adcolony/sdk/u;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adcolony/sdk/v;


# direct methods
.method constructor <init>(Lcom/adcolony/sdk/v;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/adcolony/sdk/v$2;->a:Lcom/adcolony/sdk/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/adcolony/sdk/af;)V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adcolony/sdk/v$2;->a:Lcom/adcolony/sdk/v;

    invoke-virtual {v0, p1}, Lcom/adcolony/sdk/v;->b(Lcom/adcolony/sdk/af;)V

    .line 65
    return-void
.end method
