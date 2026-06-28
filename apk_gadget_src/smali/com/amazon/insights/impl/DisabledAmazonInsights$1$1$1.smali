.class Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1$1;
.super Ljava/lang/Object;
.source "DisabledAmazonInsights.java"

# interfaces
.implements Lcom/amazon/insights/error/InsightsError;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1;->setCallback(Lcom/amazon/insights/InsightsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1;


# direct methods
.method constructor <init>(Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1$1;->this$2:Lcom/amazon/insights/impl/DisabledAmazonInsights$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "The Amazon Insights SDK was not initialized"

    return-object v0
.end method
