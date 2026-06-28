.class public Lcom/amazon/insights/validate/ValidatorChain;
.super Ljava/lang/Object;
.source "ValidatorChain.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/insights/validate/ValidatorChain$Builder;
    }
.end annotation


# instance fields
.field private final validators:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/validate/Validator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/amazon/insights/validate/ValidatorChain$Builder;)V
    .locals 2
    .param p1, "builder"    # Lcom/amazon/insights/validate/ValidatorChain$Builder;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/amazon/insights/validate/ValidatorChain$Builder;->getValidators()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/insights/validate/ValidatorChain;->validators:Ljava/util/List;

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/insights/validate/ValidatorChain$Builder;Lcom/amazon/insights/validate/ValidatorChain$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/amazon/insights/validate/ValidatorChain$Builder;
    .param p2, "x1"    # Lcom/amazon/insights/validate/ValidatorChain$1;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/amazon/insights/validate/ValidatorChain;-><init>(Lcom/amazon/insights/validate/ValidatorChain$Builder;)V

    return-void
.end method


# virtual methods
.method public runValidation()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/validate/ValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v3, "validationErrors":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/insights/validate/ValidationError;>;"
    new-instance v0, Lcom/amazon/insights/validate/ValidatorChain$1;

    invoke-direct {v0, p0, v3}, Lcom/amazon/insights/validate/ValidatorChain$1;-><init>(Lcom/amazon/insights/validate/ValidatorChain;Ljava/util/List;)V

    .line 45
    .local v0, "errors":Lcom/amazon/insights/validate/Errors;
    iget-object v4, p0, Lcom/amazon/insights/validate/ValidatorChain;->validators:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/insights/validate/Validator;

    .line 46
    .local v2, "v":Lcom/amazon/insights/validate/Validator;
    invoke-interface {v2, v0}, Lcom/amazon/insights/validate/Validator;->validate(Lcom/amazon/insights/validate/Errors;)V

    goto :goto_0

    .line 48
    .end local v2    # "v":Lcom/amazon/insights/validate/Validator;
    :cond_0
    return-object v3
.end method
