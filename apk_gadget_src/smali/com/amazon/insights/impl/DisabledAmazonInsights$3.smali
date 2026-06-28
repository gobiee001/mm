.class Lcom/amazon/insights/impl/DisabledAmazonInsights$3;
.super Ljava/lang/Object;
.source "DisabledAmazonInsights.java"

# interfaces
.implements Lcom/amazon/insights/UserProfile;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/insights/impl/DisabledAmazonInsights;->getUserProfile()Lcom/amazon/insights/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/insights/impl/DisabledAmazonInsights;

.field userProfile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/insights/impl/DisabledAmazonInsights;)V
    .locals 1

    .prologue
    .line 182
    iput-object p1, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$3;->this$0:Lcom/amazon/insights/impl/DisabledAmazonInsights;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$3;->userProfile:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addDimensionAsNumber(Ljava/lang/String;Ljava/lang/Number;)Lcom/amazon/insights/UserProfile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$3;->userProfile:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    return-object p0
.end method

.method public addDimensionAsString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/insights/UserProfile;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 198
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$3;->userProfile:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    return-object p0
.end method

.method public getDimensions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/amazon/insights/impl/DisabledAmazonInsights$3;->userProfile:Ljava/util/Map;

    return-object v0
.end method
