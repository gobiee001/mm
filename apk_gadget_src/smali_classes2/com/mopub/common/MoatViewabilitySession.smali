.class Lcom/mopub/common/MoatViewabilitySession;
.super Ljava/lang/Object;
.source "MoatViewabilitySession.java"

# interfaces
.implements Lcom/mopub/common/ExternalViewabilitySession;


# static fields
.field private static final QUERY_PARAM_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsVendorDisabled:Z

.field private static sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

.field private static sWasInitialized:Z


# instance fields
.field private mAdIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMoatVideoTracker:Ljava/lang/Object;

.field private mMoatWebAdTracker:Ljava/lang/Object;

.field private mWasVideoPrepared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mopub/common/MoatViewabilitySession;->sWasInitialized:Z

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    .line 44
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientLevel1"

    const-string v2, "level1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientLevel2"

    const-string v2, "level2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientLevel3"

    const-string v2, "level3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientLevel4"

    const-string v2, "level4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientSlicer1"

    const-string v2, "slicer1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    const-string v1, "moatClientSlicer2"

    const-string v2, "slicer2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    return-void
.end method

.method static disable()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mopub/common/MoatViewabilitySession;->sIsVendorDisabled:Z

    .line 63
    return-void
.end method

.method private handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)Z
    .locals 10
    .param p1, "videoEvent"    # Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
    .param p2, "playheadMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 466
    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getMoatEnumName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 486
    :goto_0
    return v3

    .line 474
    :cond_0
    const-string v5, "com.moat.analytics.mobile.mpub.MoatAdEventType"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 475
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v5, Ljava/lang/Enum;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 476
    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getMoatEnumName()Ljava/lang/String;

    move-result-object v6

    .line 475
    invoke-static {v5, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    .line 478
    .local v0, "adEventTypeEnum":Ljava/lang/Enum;, "Ljava/lang/Enum<*>;"
    const-string v5, "com.moat.analytics.mobile.mpub.MoatAdEvent"

    const-class v6, Ljava/lang/Object;

    new-array v7, v9, [Ljava/lang/Class;

    aput-object v1, v7, v3

    const-class v8, Ljava/lang/Integer;

    aput-object v8, v7, v4

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v0, v8, v3

    .line 480
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v8, v4

    .line 478
    invoke-static {v5, v6, v7, v8}, Lcom/mopub/common/util/Reflection;->instantiateClassWithConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 482
    .local v2, "moatAdEvent":Ljava/lang/Object;
    new-instance v3, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v5, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    const-string v6, "dispatchEvent"

    invoke-direct {v3, v5, v6}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "com.moat.analytics.mobile.mpub.MoatAdEvent"

    .line 483
    invoke-virtual {v3, v5, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v3

    .line 484
    invoke-virtual {v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move v3, v4

    .line 486
    goto :goto_0
.end method

.method static isEnabled()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Lcom/mopub/common/MoatViewabilitySession;->sIsVendorDisabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isViewabilityEnabledViaReflection()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isViewabilityEnabledViaReflection()Z
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 67
    const-string v0, "com.moat.analytics.mobile.mpub.MoatFactory"

    invoke-static {v0}, Lcom/mopub/common/util/Reflection;->classFound(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mopub/common/MoatViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moat is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    .line 69
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "available via reflection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 73
    :cond_0
    sget-object v0, Lcom/mopub/common/MoatViewabilitySession;->sIsViewabilityEnabledViaReflection:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 69
    :cond_1
    const-string v0, "un"

    goto :goto_0
.end method

.method private updateAdIdsFromUrlStringAndBuyerResources(Ljava/lang/String;Ljava/util/Set;)V
    .locals 13
    .param p1, "urlString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "buyerResources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 426
    iget-object v7, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 427
    iget-object v7, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    const-string v9, "partnerCode"

    const-string v10, "mopubinapphtmvideo468906546585"

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    iget-object v7, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    const-string v9, "zMoatVASTIDs"

    const-string v10, ";"

    invoke-static {v10, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 462
    :cond_0
    return-void

    .line 434
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 436
    .local v6, "uri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    .line 439
    .local v5, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 440
    iget-object v7, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    const-string v9, "partnerCode"

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_2
    invoke-virtual {v6}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "fragment":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 445
    const-string v7, "&"

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_0

    aget-object v3, v9, v7

    .line 446
    .local v3, "fragmentPairs":Ljava/lang/String;
    const-string v11, "="

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 447
    .local v2, "fragmentPair":[Ljava/lang/String;
    array-length v11, v2

    const/4 v12, 0x2

    if-ge v11, v12, :cond_4

    .line 445
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 451
    :cond_4
    aget-object v1, v2, v8

    .line 452
    .local v1, "fragmentKey":Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v4, v2, v11

    .line 453
    .local v4, "fragmentValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 457
    sget-object v11, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    invoke-interface {v11, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 458
    iget-object v11, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    sget-object v12, Lcom/mopub/common/MoatViewabilitySession;->QUERY_PARAM_MAPPING:Ljava/util/Map;

    invoke-interface {v12, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method


# virtual methods
.method public createDisplaySession(Landroid/content/Context;Landroid/webkit/WebView;Z)Ljava/lang/Boolean;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "webView"    # Landroid/webkit/WebView;
    .param p3, "isDeferred"    # Z

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 156
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 184
    :goto_0
    return-object v2

    .line 167
    :cond_0
    :try_start_0
    new-instance v2, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v3, 0x0

    const-string v4, "create"

    invoke-direct {v2, v3, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "com.moat.analytics.mobile.mpub.MoatFactory"

    .line 168
    invoke-virtual {v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    .line 169
    invoke-virtual {v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v1

    .line 171
    .local v1, "moatFactory":Ljava/lang/Object;
    new-instance v2, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v3, "createWebAdTracker"

    invoke-direct {v2, v1, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v3, Landroid/webkit/WebView;

    .line 172
    invoke-virtual {v2, v3, p2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v2

    .line 173
    invoke-virtual {v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    .line 176
    if-nez p3, :cond_1

    .line 177
    new-instance v2, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v3, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    const-string v4, "startTracking"

    invoke-direct {v2, v3, v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 180
    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 181
    .end local v1    # "moatFactory":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to execute Moat start display session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v2}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 184
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public createVideoSession(Landroid/app/Activity;Landroid/view/View;Ljava/util/Set;Ljava/util/Map;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p3, "buyerResources":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local p4, "videoViewabilityTrackers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 244
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 245
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 246
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 247
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 249
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 282
    :goto_0
    return-object v4

    .line 253
    :cond_0
    const-string v4, "moat"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4, p3}, Lcom/mopub/common/MoatViewabilitySession;->updateAdIdsFromUrlStringAndBuyerResources(Ljava/lang/String;Ljava/util/Set;)V

    .line 256
    iget-object v4, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    const-string v5, "partnerCode"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 257
    .local v3, "partnerCode":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 258
    const-string v4, "partnerCode was empty when starting Moat video session"

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 259
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 267
    :cond_1
    :try_start_0
    const-string v4, "com.moat.analytics.mobile.mpub.ReactiveVideoTrackerPlugin"

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    invoke-static {v4, v5, v6, v7}, Lcom/mopub/common/util/Reflection;->instantiateClassWithConstructor(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 271
    .local v2, "moatPlugin":Ljava/lang/Object;
    new-instance v4, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v5, 0x0

    const-string v6, "create"

    invoke-direct {v4, v5, v6}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "com.moat.analytics.mobile.mpub.MoatFactory"

    .line 272
    invoke-virtual {v4, v5}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v4

    .line 273
    invoke-virtual {v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v1

    .line 275
    .local v1, "moatFactory":Ljava/lang/Object;
    new-instance v4, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v5, "createCustomTracker"

    invoke-direct {v4, v1, v5}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "com.moat.analytics.mobile.mpub.MoatPlugin"

    .line 276
    invoke-virtual {v4, v5, v2}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v4

    .line 277
    invoke-virtual {v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    .line 279
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 280
    .end local v1    # "moatFactory":Ljava/lang/Object;
    .end local v2    # "moatPlugin":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 281
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to execute Moat start video session: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 282
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public endDisplaySession()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 216
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    const/4 v1, 0x0

    .line 236
    :goto_0
    return-object v1

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 221
    const-string v1, "Moat WebAdTracker unexpectedly null."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 222
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 229
    :cond_1
    :try_start_0
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v2, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    const-string v3, "stopTracking"

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 231
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to execute Moat end session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 236
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public endVideoSession()Ljava/lang/Boolean;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 383
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    const/4 v1, 0x0

    .line 401
    :goto_0
    return-object v1

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 388
    const-string v1, "Moat VideoAdTracker unexpectedly null."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 389
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 396
    :cond_1
    :try_start_0
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v2, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    const-string v3, "stopTracking"

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 398
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to execute Moat end video session: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 401
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const-string v0, "Moat"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 85
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 87
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 132
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-object v4

    .line 91
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    sget-boolean v4, Lcom/mopub/common/MoatViewabilitySession;->sWasInitialized:Z

    if-eqz v4, :cond_1

    .line 92
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 96
    :cond_1
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 97
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 113
    .local v0, "application":Landroid/app/Application;
    :goto_1
    :try_start_0
    const-string v4, "com.moat.analytics.mobile.mpub.MoatOptions"

    const-class v5, Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/mopub/common/util/Reflection;->instantiateClassWithEmptyConstructor(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    .line 116
    .local v3, "moatOptions":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "disableAdIdCollection"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v5, 0x1

    .line 117
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    .line 119
    new-instance v4, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const/4 v5, 0x0

    const-string v6, "getInstance"

    invoke-direct {v4, v5, v6}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "com.moat.analytics.mobile.mpub.MoatAnalytics"

    .line 120
    invoke-virtual {v4, v5}, Lcom/mopub/common/util/Reflection$MethodBuilder;->setStatic(Ljava/lang/String;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v4

    .line 121
    invoke-virtual {v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    move-result-object v2

    .line 123
    .local v2, "moatAnalytics":Ljava/lang/Object;
    new-instance v4, Lcom/mopub/common/util/Reflection$MethodBuilder;

    const-string v5, "start"

    invoke-direct {v4, v2, v5}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "com.moat.analytics.mobile.mpub.MoatOptions"

    .line 124
    invoke-virtual {v4, v5, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v4

    const-class v5, Landroid/app/Application;

    .line 125
    invoke-virtual {v4, v5, v0}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v4

    .line 126
    invoke-virtual {v4}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 128
    const/4 v4, 0x1

    sput-boolean v4, Lcom/mopub/common/MoatViewabilitySession;->sWasInitialized:Z

    .line 129
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    goto :goto_0

    .line 100
    .end local v0    # "application":Landroid/app/Application;
    .end local v2    # "moatAnalytics":Ljava/lang/Object;
    .end local v3    # "moatOptions":Ljava/lang/Object;
    .restart local p1    # "context":Landroid/content/Context;
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v0    # "application":Landroid/app/Application;
    goto :goto_1

    .line 101
    .end local v0    # "application":Landroid/app/Application;
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v4, "Unable to initialize Moat, error obtaining application context."

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 103
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_0

    .line 130
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .end local p1    # "context":Landroid/content/Context;
    .restart local v0    # "application":Landroid/app/Application;
    :catch_1
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to initialize Moat: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 132
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_0
.end method

.method public invalidate()Ljava/lang/Boolean;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    :goto_0
    return-object v0

    .line 143
    :cond_0
    iput-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    .line 144
    iput-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 147
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public onVideoPrepared(Landroid/view/View;I)Ljava/lang/Boolean;
    .locals 5
    .param p1, "playerView"    # Landroid/view/View;
    .param p2, "duration"    # I

    .prologue
    const/4 v4, 0x0

    .line 302
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 304
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    const/4 v1, 0x0

    .line 330
    :goto_0
    return-object v1

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 309
    const-string v1, "Moat VideoAdTracker unexpectedly null."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 310
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 313
    :cond_1
    iget-boolean v1, p0, Lcom/mopub/common/MoatViewabilitySession;->mWasVideoPrepared:Z

    if-eqz v1, :cond_2

    .line 314
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 321
    :cond_2
    :try_start_0
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v2, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    const-string v3, "trackVideoAd"

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Ljava/util/Map;

    iget-object v3, p0, Lcom/mopub/common/MoatViewabilitySession;->mAdIds:Ljava/util/Map;

    .line 322
    invoke-virtual {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    .line 323
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    const-class v2, Landroid/view/View;

    .line 324
    invoke-virtual {v1, v2, p1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->addParam(Ljava/lang/Class;Ljava/lang/Object;)Lcom/mopub/common/util/Reflection$MethodBuilder;

    move-result-object v1

    .line 325
    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 326
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mopub/common/MoatViewabilitySession;->mWasVideoPrepared:Z

    .line 327
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 328
    :catch_0
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to execute Moat onVideoPrepared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 330
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public recordVideoEvent(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)Ljava/lang/Boolean;
    .locals 5
    .param p1, "event"    # Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;
    .param p2, "playheadMillis"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 337
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 339
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    :goto_0
    :pswitch_0
    return-object v1

    .line 343
    :cond_0
    iget-object v2, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatVideoTracker:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 344
    const-string v1, "Moat VideoAdTracker unexpectedly null."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 345
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 349
    :cond_1
    :try_start_0
    sget-object v2, Lcom/mopub/common/MoatViewabilitySession$1;->$SwitchMap$com$mopub$common$ExternalViewabilitySession$VideoEvent:[I

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected video event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getMoatEnumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 371
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 359
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/mopub/common/MoatViewabilitySession;->handleVideoEventReflection(Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;I)Z

    .line 360
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mopub/common/ExternalViewabilitySession$VideoEvent;->getMoatEnumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 375
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 374
    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 376
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public registerVideoObstructions(Ljava/util/List;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    const/4 v0, 0x0

    .line 296
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public startDeferredDisplaySession(Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 191
    invoke-static {}, Lcom/mopub/common/MoatViewabilitySession;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    const/4 v1, 0x0

    .line 209
    :goto_0
    return-object v1

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    if-nez v1, :cond_1

    .line 196
    const-string v1, "MoatWebAdTracker unexpectedly null."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 197
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 204
    :cond_1
    :try_start_0
    new-instance v1, Lcom/mopub/common/util/Reflection$MethodBuilder;

    iget-object v2, p0, Lcom/mopub/common/MoatViewabilitySession;->mMoatWebAdTracker:Ljava/lang/Object;

    const-string v3, "startTracking"

    invoke-direct {v1, v2, v3}, Lcom/mopub/common/util/Reflection$MethodBuilder;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mopub/common/util/Reflection$MethodBuilder;->execute()Ljava/lang/Object;

    .line 206
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to record deferred display session for Moat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 209
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method
