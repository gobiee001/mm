.class Lcom/amazon/insights/impl/DisabledAmazonInsights$1;
.super Ljava/lang/Object;
.source "DisabledAmazonInsights.java"

# interfaces
.implements Lcom/amazon/insights/ABTestClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/impl/DisabledAmazonInsights;->getABTestClient()Lcom/amazon/insights/ABTestClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/impl/DisabledAmazonInsights;


# direct methods
.method constructor <init>(Lcom/amazon/insights/impl/DisabledAmazonInsights;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$1;->this$0:Lcom/amazon/insights/impl/DisabledAmazonInsights;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs getVariations([Ljava/lang/String;)Lcom/amazon/insights/InsightsHandler;
    .locals 1
    .param p1, "projectNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/insights/InsightsHandler",
            "<",
            "Lcom/amazon/insights/VariationSet;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    new-instance v0, Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1;

    invoke-direct {v0, p0}, Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1;-><init>(Lcom/amazon/insights/impl/DisabledAmazonInsights$1;)V

    return-object v0
.end method
