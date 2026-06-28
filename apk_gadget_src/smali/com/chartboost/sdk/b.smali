.class public final Lcom/chartboost/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Model/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-nez v0, :cond_0

    .line 192
    const-string v0, "native"

    .line 194
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "web"

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 29
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_0

    .line 30
    const-string v0, "CBConfig"

    const-string v1, "Set a valid CBFramework first"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const-string v0, "CBConfig"

    const-string v1, "Invalid Version String"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    sput-object p0, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 64
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    .line 67
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static a(Landroid/app/Activity;)Z
    .locals 2

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 95
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid activity context: Host Activity object is null, Please send a valid activity object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;",
            "Lorg/json/JSONObject;",
            "Landroid/content/SharedPreferences;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    new-instance v0, Lcom/chartboost/sdk/Model/e;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Model/e;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    const/4 v0, 0x1

    .line 60
    :goto_0
    return v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-class v1, Lcom/chartboost/sdk/b;

    const-string v2, "updateConfig"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 60
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b()Z
    .locals 2

    .prologue
    .line 109
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. SDK seems to be not initialized properly, check for any integration issues"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    const/4 v0, 0x0

    .line 121
    :goto_0
    return v0

    .line 111
    :cond_0
    :try_start_1
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. Activity context seems to be not initialized properly, host activity or application context is being sent as null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. AppId is missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/i;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. AppSignature is missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 126
    if-nez p0, :cond_1

    .line 127
    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid activity context passed during intitalization"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 161
    :cond_0
    return v0

    .line 133
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    .line 135
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 136
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 137
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 138
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    move v2, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v7

    .line 147
    :goto_0
    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    sput-boolean v2, Lcom/chartboost/sdk/i;->n:Z

    .line 148
    if-eqz v5, :cond_4

    move v2, v0

    :goto_2
    sput-boolean v2, Lcom/chartboost/sdk/i;->o:Z

    .line 149
    if-eqz v6, :cond_5

    move v2, v0

    :goto_3
    sput-boolean v2, Lcom/chartboost/sdk/i;->p:Z

    .line 150
    if-eqz v4, :cond_6

    move v2, v0

    :goto_4
    sput-boolean v2, Lcom/chartboost/sdk/i;->q:Z

    .line 151
    if-eqz v3, :cond_7

    move v2, v0

    :goto_5
    sput-boolean v2, Lcom/chartboost/sdk/i;->r:Z

    .line 153
    sget-boolean v2, Lcom/chartboost/sdk/i;->o:Z

    if-eqz v2, :cond_8

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Please add the permission : android.permission.INTERNET in your android manifest.xml"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_2
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    .line 141
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 142
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 143
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 144
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    move v2, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v7

    goto :goto_0

    :cond_3
    move v2, v1

    .line 147
    goto :goto_1

    :cond_4
    move v2, v1

    .line 148
    goto :goto_2

    :cond_5
    move v2, v1

    .line 149
    goto :goto_3

    :cond_6
    move v2, v1

    .line 150
    goto :goto_4

    :cond_7
    move v2, v1

    .line 151
    goto :goto_5

    .line 155
    :cond_8
    sget-boolean v2, Lcom/chartboost/sdk/i;->p:Z

    if-eqz v2, :cond_0

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Please add the permission : android.permission.ACCESS_NETWORK_STATE in your android manifest.xml"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 75
    if-nez v1, :cond_0

    .line 86
    :goto_0
    return v0

    .line 78
    :cond_0
    iget-object v1, v1, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    iget-object v1, v1, Lcom/chartboost/sdk/c;->b:Lcom/chartboost/sdk/Libraries/j;

    if-nez v1, :cond_1

    .line 80
    :try_start_0
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Chartboost Weak Activity reference is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 86
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static c(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    .line 171
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please add             <activity android:name=\"com.chartboost.sdk.CBImpressionActivity\"\n                  android:excludeFromRecents=\"true\"\n                  android:theme=\"@android:style/Theme.Translucent.NoTitleBar.Fullscreen\"\n                  android:configChanges=\"keyboardHidden|orientation|screenSize\"/> in your android manifest.xml"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 182
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
