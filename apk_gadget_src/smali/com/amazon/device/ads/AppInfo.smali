.class Lcom/amazon/device/ads/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private final applicationLabel:Ljava/lang/String;

.field private final packageInfoUrlJSON:Lorg/json/JSONObject;

.field private final packageManager:Landroid/content/pm/PackageManager;

.field private final packageName:Ljava/lang/String;

.field private final versionCode:Ljava/lang/String;

.field private final versionName:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->applicationLabel:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->versionCode:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->versionName:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    .line 64
    iput-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 34
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/amazon/device/ads/AppInfo;->applicationLabel:Ljava/lang/String;

    .line 36
    const/4 v1, 0x0

    .line 39
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 44
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_1
    iput-object v2, p0, Lcom/amazon/device/ads/AppInfo;->versionName:Ljava/lang/String;

    .line 45
    if-eqz v1, :cond_1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Lcom/amazon/device/ads/AppInfo;->versionCode:Ljava/lang/String;

    .line 48
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    .line 49
    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    const-string v3, "lbl"

    iget-object v4, p0, Lcom/amazon/device/ads/AppInfo;->applicationLabel:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    const-string v3, "pn"

    iget-object v4, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    const-string v3, "v"

    iget-object v4, p0, Lcom/amazon/device/ads/AppInfo;->versionCode:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v2, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    const-string v3, "vn"

    iget-object v4, p0, Lcom/amazon/device/ads/AppInfo;->versionName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/amazon/device/ads/JSONUtils;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void

    .line 44
    :cond_0
    const-string v2, ""

    goto :goto_1

    .line 45
    :cond_1
    const-string v2, ""

    goto :goto_2

    .line 41
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getPackageInfoJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getPackageInfoJSONString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageInfoUrlJSON:Lorg/json/JSONObject;

    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    return-object v0

    .line 76
    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/amazon/device/ads/AppInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method
