.class public Lcom/amazon/insights/validate/ValidatorChain$Builder;
.super Ljava/lang/Object;
.source "ValidatorChain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/insights/validate/ValidatorChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/validate/ValidatorChain$Builder;->validators:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Lcom/amazon/insights/validate/ValidatorChain;
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/amazon/insights/validate/ValidatorChain;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/insights/validate/ValidatorChain;-><init>(Lcom/amazon/insights/validate/ValidatorChain$Builder;Lcom/amazon/insights/validate/ValidatorChain$1;)V

    return-object v0
.end method

.method public getValidators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amazon/insights/validate/Validator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 13
    iget-object v0, p0, Lcom/amazon/insights/validate/ValidatorChain$Builder;->validators:Ljava/util/List;

    return-object v0
.end method

.method public withValidator(Lcom/amazon/insights/validate/Validator;)Lcom/amazon/insights/validate/ValidatorChain$Builder;
    .locals 1
    .param p1, "validator"    # Lcom/amazon/insights/validate/Validator;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/amazon/insights/validate/ValidatorChain$Builder;->validators:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    return-object p0
.end method
