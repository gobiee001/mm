.class Lcom/amazon/insights/validate/ValidatorChain$1;
.super Ljava/lang/Object;
.source "ValidatorChain.java"

# interfaces
.implements Lcom/amazon/insights/validate/Errors;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/validate/ValidatorChain;->runValidation()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/validate/ValidatorChain;

.field final synthetic val$validationErrors:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/insights/validate/ValidatorChain;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/amazon/insights/validate/ValidatorChain$1;->this$0:Lcom/amazon/insights/validate/ValidatorChain;

    iput-object p2, p0, Lcom/amazon/insights/validate/ValidatorChain$1;->val$validationErrors:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reject(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/insights/validate/ValidatorChain$1;->val$validationErrors:Ljava/util/List;

    new-instance v1, Lcom/amazon/insights/validate/ValidationError;

    invoke-direct {v1, p1}, Lcom/amazon/insights/validate/ValidationError;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    return-void
.end method

.method public reject(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/amazon/insights/validate/ValidatorChain$1;->val$validationErrors:Ljava/util/List;

    new-instance v1, Lcom/amazon/insights/validate/ValidationError;

    invoke-direct {v1, p1, p2}, Lcom/amazon/insights/validate/ValidationError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method
