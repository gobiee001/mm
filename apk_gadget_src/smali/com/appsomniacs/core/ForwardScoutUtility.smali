.class public Lcom/appsomniacs/core/ForwardScoutUtility;
.super Ljava/lang/Object;
.source "ForwardScoutUtility.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "FSU"

    sput-object v0, Lcom/appsomniacs/core/ForwardScoutUtility;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findBinary(Ljava/lang/String;)Z
    .locals 8
    .param p0, "binaryName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 65
    const/4 v1, 0x0

    .line 67
    .local v1, "found":Z
    if-nez v1, :cond_0

    .line 68
    const/16 v5, 0x8

    :try_start_0
    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "/sbin/"

    aput-object v6, v2, v5

    const/4 v5, 0x1

    const-string v6, "/system/bin/"

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string v6, "/system/xbin/"

    aput-object v6, v2, v5

    const/4 v5, 0x3

    const-string v6, "/data/local/xbin/"

    aput-object v6, v2, v5

    const/4 v5, 0x4

    const-string v6, "/data/local/bin/"

    aput-object v6, v2, v5

    const/4 v5, 0x5

    const-string v6, "/system/sd/xbin/"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "/system/bin/failsafe/"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    const-string v6, "/data/local/"

    aput-object v6, v2, v5

    .line 70
    .local v2, "places":[Ljava/lang/String;
    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v2, v4

    .line 71
    .local v3, "where":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    const/4 v1, 0x1

    .line 81
    .end local v2    # "places":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    :cond_0
    :goto_1
    return v1

    .line 70
    .restart local v2    # "places":[Ljava/lang/String;
    .restart local v3    # "where":Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    .end local v2    # "places":[Ljava/lang/String;
    .end local v3    # "where":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/appsomniacs/core/ForwardScoutUtility;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getAppLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 121
    .local v2, "lPackageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 122
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 123
    .local v4, "seq":Ljava/lang/CharSequence;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 124
    .local v3, "label":Ljava/lang/String;
    return-object v3

    .line 125
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "label":Ljava/lang/String;
    .end local v4    # "seq":Ljava/lang/CharSequence;
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/appsomniacs/core/ForwardScoutUtility;->TAG:Ljava/lang/String;

    const-string v6, "Unable to read Application Label"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 127
    throw v1
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "pContext"    # Landroid/content/Context;

    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public static getSignature(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 88
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 90
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 93
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/appsomniacs/core/ForwardScoutUtility;->TAG:Ljava/lang/String;

    const-string v4, "Package signature not found!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static hasApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 28
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v5, 0x80

    :try_start_1
    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 29
    .local v2, "info":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    .line 35
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return v4

    .line 30
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 31
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .line 33
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_1
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {p0, p1}, Lcom/appsomniacs/core/ForwardScoutUtility;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    goto :goto_0

    .line 36
    :catch_2
    move-exception v1

    .line 37
    .local v1, "e1":Ljava/lang/Exception;
    throw v0
.end method

.method public static isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 46
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 47
    .local v0, "intent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 51
    :cond_0
    :goto_0
    return v3

    .line 50
    :cond_1
    const/high16 v4, 0x10000

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 51
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isRooted()Z
    .locals 3

    .prologue
    .line 57
    :try_start_0
    const-string v1, "su"

    invoke-static {v1}, Lcom/appsomniacs/core/ForwardScoutUtility;->findBinary(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/appsomniacs/core/ForwardScoutUtility;->TAG:Ljava/lang/String;

    const-string v2, "Root Operation Not Allowed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    throw v0
.end method
