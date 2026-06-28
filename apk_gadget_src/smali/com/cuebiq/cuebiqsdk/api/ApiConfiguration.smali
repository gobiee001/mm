.class public Lcom/cuebiq/cuebiqsdk/api/ApiConfiguration;
.super Ljava/lang/Object;
.source "ApiConfiguration.java"


# static fields
.field public static final API_COVERAGE:Ljava/lang/String; = "/bea/30004/coverage"

.field public static final API_ECHO:Ljava/lang/String; = "/bea/echo"

.field public static final API_GEOLOCATION:Ljava/lang/String; = "/bea/c/geolocation"

.field public static final API_LOG:Ljava/lang/String; = "/log/bea/30004"

.field public static final API_POST:Ljava/lang/String; = "/bea/30004"

.field public static final SCHEME:Ljava/lang/String; = "https"

.field public static apiBaseUrl:Ljava/lang/String; = null

.field public static final productionUrl:Ljava/lang/String; = "in.cuebiq.com"

.field public static workingEnvironment:Lcom/cuebiq/cuebiqsdk/api/Environment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, "in.cuebiq.com"

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/ApiConfiguration;->apiBaseUrl:Ljava/lang/String;

    .line 11
    sget-object v0, Lcom/cuebiq/cuebiqsdk/api/Environment;->PRODUCTION:Lcom/cuebiq/cuebiqsdk/api/Environment;

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/ApiConfiguration;->workingEnvironment:Lcom/cuebiq/cuebiqsdk/api/Environment;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setEnvironment(Lcom/cuebiq/cuebiqsdk/api/Environment;)V
    .locals 1
    .param p0, "environment"    # Lcom/cuebiq/cuebiqsdk/api/Environment;

    .prologue
    .line 20
    sget-object v0, Lcom/cuebiq/cuebiqsdk/api/Environment;->PRODUCTION:Lcom/cuebiq/cuebiqsdk/api/Environment;

    if-ne p0, v0, :cond_0

    .line 21
    const-string v0, "in.cuebiq.com"

    sput-object v0, Lcom/cuebiq/cuebiqsdk/api/ApiConfiguration;->apiBaseUrl:Ljava/lang/String;

    .line 23
    :cond_0
    sput-object p0, Lcom/cuebiq/cuebiqsdk/api/ApiConfiguration;->workingEnvironment:Lcom/cuebiq/cuebiqsdk/api/Environment;

    .line 24
    return-void
.end method
