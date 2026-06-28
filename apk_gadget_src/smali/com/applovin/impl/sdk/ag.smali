.class Lcom/applovin/impl/sdk/ag;
.super Ljava/lang/Object;


# static fields
.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:I


# instance fields
.field private final a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

.field private final b:Lcom/applovin/sdk/AppLovinLogger;

.field private final c:Landroid/content/Context;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/AppLovinSdkImpl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No sdk specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/sdk/AppLovinLogger;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/applovin/impl/sdk/ag;->d:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/ag;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/applovin/impl/sdk/al;)Lcom/applovin/impl/sdk/al;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/applovin/impl/sdk/al;

    invoke-direct {p1}, Lcom/applovin/impl/sdk/al;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->cl:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->i()Lcom/applovin/impl/sdk/ak;

    move-result-object v0

    iput-object v0, p1, Lcom/applovin/impl/sdk/al;->r:Lcom/applovin/impl/sdk/ak;

    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->ck:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->k()Z

    move-result v0

    iput-boolean v0, p1, Lcom/applovin/impl/sdk/al;->q:Z

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v2, Lcom/applovin/impl/sdk/dx;->cr:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Lcom/applovin/impl/sdk/al;->s:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->cu:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/applovin/impl/sdk/ag;->e:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    sput-object v0, Lcom/applovin/impl/sdk/ag;->e:Ljava/lang/String;

    :cond_3
    :goto_2
    sget-object v0, Lcom/applovin/impl/sdk/ag;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/fy;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/applovin/impl/sdk/ag;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/applovin/impl/sdk/al;->t:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getSettingsManager()Lcom/applovin/impl/sdk/ea;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/dx;->ci:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/ea;->a(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/ag;->f:Ljava/lang/String;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/applovin/impl/sdk/ag;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    :cond_5
    :try_start_1
    sput-object v0, Lcom/applovin/impl/sdk/ag;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v1, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v1, p1, Lcom/applovin/impl/sdk/al;->p:I

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    sput v0, Lcom/applovin/impl/sdk/ag;->g:I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    return-object p1

    :cond_6
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/applovin/impl/sdk/al;->r:Lcom/applovin/impl/sdk/ak;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "DataCollector"

    const-string v3, "Unable to collect volume"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_7
    const-string v0, ""

    sput-object v0, Lcom/applovin/impl/sdk/ag;->e:Ljava/lang/String;

    goto :goto_2

    :catch_1
    move-exception v0

    sput v4, Lcom/applovin/impl/sdk/ag;->g:I

    goto :goto_3

    :cond_8
    sget v0, Lcom/applovin/impl/sdk/ag;->g:I

    iput v0, p1, Lcom/applovin/impl/sdk/al;->p:I

    goto :goto_3
.end method

.method static a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No permission name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No context specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcom/applovin/impl/sdk/dz;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/applovin/impl/sdk/dz",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0, p2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/aa;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/ag;)Lcom/applovin/sdk/AppLovinLogger;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/sdk/AppLovinLogger;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0xa

    new-array v3, v0, [I

    fill-array-data v3, :array_0

    array-length v4, v3

    new-array v5, v2, [C

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aput-char v0, v5, v1

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_0

    aget-char v6, v5, v1

    aget v7, v3, v0

    xor-int/2addr v6, v7

    int-to-char v6, v6

    aput-char v6, v5, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    if-eqz v0, :cond_2

    :goto_2
    return-object v0

    :cond_2
    const-string v0, ""

    goto :goto_2

    :array_0
    .array-data 4
        0xb
        0xc
        0xa
        0x3
        0x2
        0x1
        0xf
        0xa
        0xf
        0xe
    .end array-data
.end method

.method private f()Ljava/lang/String;
    .locals 5

    const-string v0, "none"

    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/applovin/impl/sdk/fy;->a(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "portrait"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v0, "landscape"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->getLogger()Lcom/applovin/sdk/AppLovinLogger;

    move-result-object v2

    const-string v3, "DataCollector"

    const-string v4, "Encountered error while attempting to collect application orientation"

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private g()Lcom/applovin/impl/sdk/ai;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v0, "advertising_id"

    invoke-static {v2, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/applovin/impl/sdk/ai;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/ai;-><init>()V

    if-eqz v1, :cond_0

    :goto_0
    iput-object v1, v0, Lcom/applovin/impl/sdk/ai;->b:Ljava/lang/String;

    const-string v1, "limit_ad_tracking"

    invoke-static {v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/applovin/impl/sdk/ai;->a:Z

    :goto_2
    return-object v0

    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "DataCollector"

    const-string v3, "Unable to determine if FireOS limited ad tracking is turned on"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v2, "DataCollector"

    const-string v3, "Unable to collect FireOS IDFA"

    invoke-interface {v1, v2, v3, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private h()Lcom/applovin/impl/sdk/ai;
    .locals 6

    :try_start_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "getAdvertisingIdInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v2, "isLimitAdTrackingEnabled"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v4, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v5, "getId"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    move-object v4, v1

    :goto_0
    new-instance v3, Lcom/applovin/impl/sdk/ai;

    invoke-direct {v3}, Lcom/applovin/impl/sdk/ai;-><init>()V

    move-object v0, v2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v3, Lcom/applovin/impl/sdk/ai;->a:Z

    iput-object v4, v3, Lcom/applovin/impl/sdk/ai;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v3

    :goto_1
    return-object v1

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "DataCollector"

    const-string v4, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/AppLovinLogger;->userError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_2
    new-instance v1, Lcom/applovin/impl/sdk/ai;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/ai;-><init>()V

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "DataCollector"

    const-string v4, "Could not collect Google Advertising ID - this will negatively impact your eCPMs! Please integrate the Google Play Services SDK into your application. More info can be found online at http://developer.android.com/google/play-services/setup.html. If you\'re sure you\'ve integrated the SDK and are still seeing this message, you may need to add a ProGuard exception: -keep public class com.google.android.gms.** { public protected *; }"

    invoke-interface {v2, v3, v4, v1}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    move-object v4, v1

    goto :goto_0
.end method

.method private i()Lcom/applovin/impl/sdk/ak;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    new-instance v0, Lcom/applovin/impl/sdk/ak;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/ak;-><init>()V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_1

    const-string v3, "level"

    const/4 v4, -0x1

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move v4, v3

    :goto_0
    if-eqz v5, :cond_2

    const-string v3, "scale"

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :goto_1
    if-lez v4, :cond_3

    if-lez v3, :cond_3

    int-to-float v4, v4

    int-to-float v3, v3

    div-float v3, v4, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Lcom/applovin/impl/sdk/ak;->b:I

    :goto_2
    if-eqz v5, :cond_0

    const-string v2, "status"

    const/4 v3, -0x1

    invoke-virtual {v5, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :cond_0
    iput v2, v0, Lcom/applovin/impl/sdk/ak;->a:I

    :goto_3
    return-object v0

    :cond_1
    move v4, v2

    goto :goto_0

    :cond_2
    move v3, v2

    goto :goto_1

    :cond_3
    const/4 v3, -0x1

    iput v3, v0, Lcom/applovin/impl/sdk/ak;->b:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "DataCollector"

    const-string v4, "Unable to collect battery info"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_3
.end method

.method private j()D
    .locals 6

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-double v0, v0

    mul-double/2addr v0, v4

    const-wide v2, 0x414b774000000000L    # 3600000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v4

    return-wide v0
.end method

.method private k()Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->l()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->m()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private l()Z
    .locals 2

    const-string v0, "lz}$blpz"

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "lz}$blpz"

    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/ag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x9

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "&zpz}ld&hyy&Z|yl{|zl{\'hyb"

    aput-object v0, v3, v1

    const-string v0, "&zk`g&z|"

    aput-object v0, v3, v2

    const/4 v0, 0x2

    const-string v4, "&zpz}ld&k`g&z|"

    aput-object v4, v3, v0

    const/4 v0, 0x3

    const-string v4, "&zpz}ld&qk`g&z|"

    aput-object v4, v3, v0

    const/4 v0, 0x4

    const-string v4, "&mh}h&efjhe&qk`g&z|"

    aput-object v4, v3, v0

    const/4 v0, 0x5

    const-string v4, "&mh}h&efjhe&k`g&z|"

    aput-object v4, v3, v0

    const/4 v0, 0x6

    const-string v4, "&zpz}ld&zm&qk`g&z|"

    aput-object v4, v3, v0

    const/4 v0, 0x7

    const-string v4, "&zpz}ld&k`g&oh`ezhol&z|"

    aput-object v4, v3, v0

    const/16 v0, 0x8

    const-string v4, "&mh}h&efjhe&z|"

    aput-object v4, v3, v0

    move v0, v1

    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-direct {p0, v4}, Lcom/applovin/impl/sdk/ag;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private n()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->cn:Lcom/applovin/impl/sdk/dz;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/ag;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/dz;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->cm:Lcom/applovin/impl/sdk/dz;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/ag;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/dz;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->co:Lcom/applovin/impl/sdk/dz;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/ag;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/dz;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->cp:Lcom/applovin/impl/sdk/dz;

    invoke-direct {p0, v0, v1}, Lcom/applovin/impl/sdk/ag;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/dz;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Ljava/lang/String;
    .locals 6

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v0, Landroid/os/Handler;

    iget-object v3, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/applovin/impl/sdk/ah;

    invoke-direct {v3, p0, v1, v2}, Lcom/applovin/impl/sdk/ah;-><init>(Lcom/applovin/impl/sdk/ag;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v3, Lcom/applovin/impl/sdk/dx;->cv:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method a()Lcom/applovin/impl/sdk/al;
    .locals 5

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->d:Ljava/util/Map;

    const-class v1, Lcom/applovin/impl/sdk/al;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/applovin/impl/sdk/al;

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ag;->a(Lcom/applovin/impl/sdk/al;)Lcom/applovin/impl/sdk/al;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/applovin/impl/sdk/al;

    invoke-direct {v1}, Lcom/applovin/impl/sdk/al;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/impl/sdk/al;->k:Ljava/util/Locale;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, v1, Lcom/applovin/impl/sdk/al;->a:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, v1, Lcom/applovin/impl/sdk/al;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/ag;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/impl/sdk/al;->c:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    iput-object v0, v1, Lcom/applovin/impl/sdk/al;->d:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    iput-object v0, v1, Lcom/applovin/impl/sdk/al;->e:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    iput-object v0, v1, Lcom/applovin/impl/sdk/al;->f:Ljava/lang/String;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, v1, Lcom/applovin/impl/sdk/al;->h:I

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    iput-object v0, v1, Lcom/applovin/impl/sdk/al;->g:Ljava/lang/String;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/applovin/impl/sdk/al;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->j()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/applovin/impl/sdk/al;->o:D

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->n()Z

    move-result v0

    iput-boolean v0, v1, Lcom/applovin/impl/sdk/al;->u:Z

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v1, Lcom/applovin/impl/sdk/al;->v:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/ag;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/applovin/impl/sdk/al;->i:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    :try_start_1
    const-string v2, "UTF-8"

    invoke-static {v0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/applovin/impl/sdk/al;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_3
    :try_start_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    iput v2, v1, Lcom/applovin/impl/sdk/al;->m:F

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, v1, Lcom/applovin/impl/sdk/al;->n:I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->d:Ljava/util/Map;

    const-class v2, Lcom/applovin/impl/sdk/al;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/ag;->b:Lcom/applovin/sdk/AppLovinLogger;

    const-string v3, "DataCollector"

    const-string v4, "Unable to retrieve gyroscope availability"

    invoke-interface {v2, v3, v4, v0}, Lcom/applovin/sdk/AppLovinLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v2

    iput-object v0, v1, Lcom/applovin/impl/sdk/al;->j:Ljava/lang/String;

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_4
.end method

.method a(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/ag;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isFireOS()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "fireos"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "android"

    goto :goto_0
.end method

.method c()Lcom/applovin/impl/sdk/al;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/ag;->a(Lcom/applovin/impl/sdk/al;)Lcom/applovin/impl/sdk/al;

    move-result-object v0

    return-object v0
.end method

.method d()Lcom/applovin/impl/sdk/aj;
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->d:Ljava/util/Map;

    const-class v2, Lcom/applovin/impl/sdk/aj;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lcom/applovin/impl/sdk/aj;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    iget-object v2, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    :try_start_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v6, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    move-object v1, v2

    :goto_1
    new-instance v2, Lcom/applovin/impl/sdk/aj;

    invoke-direct {v2}, Lcom/applovin/impl/sdk/aj;-><init>()V

    iget-object v7, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, v2, Lcom/applovin/impl/sdk/aj;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    :goto_2
    iput-object v0, v2, Lcom/applovin/impl/sdk/aj;->d:Ljava/lang/String;

    iput-wide v4, v2, Lcom/applovin/impl/sdk/aj;->e:J

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/applovin/impl/sdk/aj;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    :goto_3
    iput-object v0, v2, Lcom/applovin/impl/sdk/aj;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->d:Ljava/util/Map;

    const-class v1, Lcom/applovin/impl/sdk/aj;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_4
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_2

    :cond_2
    const-string v0, ""

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_4
.end method

.method e()Lcom/applovin/impl/sdk/ai;
    .locals 2

    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->isFireOS()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->g()Lcom/applovin/impl/sdk/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/ag;->a:Lcom/applovin/impl/sdk/AppLovinSdkImpl;

    sget-object v1, Lcom/applovin/impl/sdk/dx;->cd:Lcom/applovin/impl/sdk/dz;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/AppLovinSdkImpl;->get(Lcom/applovin/impl/sdk/dz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->h()Lcom/applovin/impl/sdk/ai;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/applovin/impl/sdk/ai;

    invoke-direct {v0}, Lcom/applovin/impl/sdk/ai;-><init>()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/applovin/impl/sdk/ag;->h()Lcom/applovin/impl/sdk/ai;

    move-result-object v0

    goto :goto_0
.end method
