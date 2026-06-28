.class Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1;
.super Ljava/lang/Object;
.source "DisabledAmazonInsights.java"

# interfaces
.implements Lcom/amazon/insights/InsightsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/impl/DisabledAmazonInsights$1;->getVariations([Ljava/lang/String;)Lcom/amazon/insights/InsightsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/insights/InsightsHandler",
        "<",
        "Lcom/amazon/insights/VariationSet;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/insights/impl/DisabledAmazonInsights$1;


# direct methods
.method constructor <init>(Lcom/amazon/insights/impl/DisabledAmazonInsights$1;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1;->this$1:Lcom/amazon/insights/impl/DisabledAmazonInsights$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCallback(Lcom/amazon/insights/InsightsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/insights/InsightsCallback",
            "<",
            "Lcom/amazon/insights/VariationSet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "callback":Lcom/amazon/insights/InsightsCallback;, "Lcom/amazon/insights/InsightsCallback<Lcom/amazon/insights/VariationSet;>;"
    new-instance v0, Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1$1;

    invoke-direct {v0, p0}, Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1$1;-><init>(Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1;)V

    invoke-virtual {p1, v0}, Lcom/amazon/insights/InsightsCallback;->onError(Lcom/amazon/insights/error/InsightsError;)V

    .line 35
    return-void
.end method
