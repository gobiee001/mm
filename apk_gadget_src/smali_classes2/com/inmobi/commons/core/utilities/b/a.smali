.class public Lcom/inmobi/commons/core/utilities/b/a;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Lcom/inmobi/commons/core/utilities/b/a;

.field private static e:Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;
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

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/inmobi/commons/core/utilities/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/utilities/b/a;->c:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/utilities/b/a;->e:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/b/a;->b:Ljava/util/Map;

    .line 30
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 1036
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1037
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 1040
    if-eqz v2, :cond_0

    .line 1041
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/inmobi/commons/core/utilities/b/a;->f:Ljava/lang/String;

    .line 1042
    invoke-virtual {v2, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/commons/core/utilities/b/a;->g:Ljava/lang/String;

    .line 1043
    iget-object v2, p0, Lcom/inmobi/commons/core/utilities/b/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/commons/core/utilities/b/a;->a:Ljava/lang/String;

    .line 1047
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x80

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1048
    const/4 v0, 0x0

    .line 1049
    if-eqz v1, :cond_2

    .line 1050
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1051
    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1052
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1056
    iput-object v0, p0, Lcom/inmobi/commons/core/utilities/b/a;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1064
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/b/a;->b:Ljava/util/Map;

    const-string v1, "u-appbid"

    iget-object v2, p0, Lcom/inmobi/commons/core/utilities/b/a;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1065
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/b/a;->b:Ljava/util/Map;

    const-string v1, "u-appdnm"

    iget-object v2, p0, Lcom/inmobi/commons/core/utilities/b/a;->g:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    iget-object v0, p0, Lcom/inmobi/commons/core/utilities/b/a;->b:Ljava/util/Map;

    const-string v1, "u-appver"

    iget-object v2, p0, Lcom/inmobi/commons/core/utilities/b/a;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a()Lcom/inmobi/commons/core/utilities/b/a;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/a;->d:Lcom/inmobi/commons/core/utilities/b/a;

    .line 71
    if-nez v0, :cond_1

    .line 72
    sget-object v1, Lcom/inmobi/commons/core/utilities/b/a;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/b/a;->d:Lcom/inmobi/commons/core/utilities/b/a;

    .line 74
    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/inmobi/commons/core/utilities/b/a;

    invoke-direct {v0}, Lcom/inmobi/commons/core/utilities/b/a;-><init>()V

    .line 76
    sput-object v0, Lcom/inmobi/commons/core/utilities/b/a;->d:Lcom/inmobi/commons/core/utilities/b/a;

    .line 78
    :cond_0
    monitor-exit v1

    .line 80
    :cond_1
    return-object v0

    .line 78
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
