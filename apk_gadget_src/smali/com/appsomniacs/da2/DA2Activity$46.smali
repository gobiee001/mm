.class final Lcom/appsomniacs/da2/DA2Activity$46;
.super Ljava/lang/Object;
.source "DA2Activity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsomniacs/da2/DA2Activity;->purchaseItem(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$payload:Ljava/lang/String;

.field final synthetic val$sku:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 5203
    iput-object p1, p0, Lcom/appsomniacs/da2/DA2Activity$46;->val$sku:Ljava/lang/String;

    iput-object p2, p0, Lcom/appsomniacs/da2/DA2Activity$46;->val$payload:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5206
    iget-object v0, p0, Lcom/appsomniacs/da2/DA2Activity$46;->val$sku:Ljava/lang/String;

    iget-object v1, p0, Lcom/appsomniacs/da2/DA2Activity$46;->val$payload:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/appsomniacs/da2/DA2Activity;->purchaseItem(Ljava/lang/String;Ljava/lang/String;)V

    .line 5207
    return-void
.end method
