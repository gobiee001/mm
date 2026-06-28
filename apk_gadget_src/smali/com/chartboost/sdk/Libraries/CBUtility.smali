.class public final Lcom/chartboost/sdk/Libraries/CBUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(FLandroid/content/Context;)F
    .locals 1

    .prologue
    .line 53
    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/content/Context;)F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static a(Landroid/content/Context;)F
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method public static a()I
    .locals 9

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 58
    sget-object v5, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 59
    const-string v0, "window"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 64
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v8

    if-ne v7, v8, :cond_2

    .line 67
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 68
    if-eq v0, v3, :cond_1

    move v0, v1

    .line 75
    :goto_0
    if-eqz v6, :cond_0

    if-ne v6, v3, :cond_4

    .line 81
    :cond_0
    :goto_1
    if-eqz v0, :cond_6

    .line 82
    packed-switch v6, :pswitch_data_0

    move v1, v2

    .line 103
    :goto_2
    :pswitch_0
    return v1

    :cond_1
    move v0, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-ge v5, v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    .line 78
    :cond_4
    if-nez v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_1

    :pswitch_1
    move v1, v3

    .line 86
    goto :goto_2

    :pswitch_2
    move v1, v4

    .line 88
    goto :goto_2

    .line 94
    :cond_6
    packed-switch v6, :pswitch_data_1

    goto :goto_2

    :pswitch_3
    move v1, v3

    .line 96
    goto :goto_2

    :pswitch_4
    move v1, v4

    .line 98
    goto :goto_2

    :pswitch_5
    move v1, v2

    .line 100
    goto :goto_2

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 94
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(ILandroid/content/Context;)I
    .locals 2

    .prologue
    .line 48
    int-to-float v0, p0

    invoke-static {p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Landroid/content/Context;)F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static a(Ljava/io/File;Z)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    if-nez p0, :cond_1

    .line 230
    const/4 v0, 0x0

    .line 249
    :cond_0
    return-object v0

    .line 233
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 235
    if-eqz v2, :cond_0

    .line 236
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 240
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".nomedia"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 241
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_2

    .line 244
    invoke-static {v4, p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(Ljava/io/File;Z)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 188
    if-eqz p0, :cond_0

    sget-boolean v0, Lcom/chartboost/sdk/i;->g:Z

    if-nez v0, :cond_2

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_1

    .line 190
    const-string v0, "CBUtility"

    const-string v1, "Attempting to show Status and Navigation bars on a fullscreen activity. Please change your Chartboost activity theme to: \"@android:style/Theme.Translucent\"` in your Manifest file"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 195
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Lcom/chartboost/sdk/impl/m;

    move-result-object v1

    .line 196
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const/4 v0, 0x0

    .line 198
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    const/4 v0, 0x2

    .line 200
    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 201
    const/16 v0, 0x706

    .line 205
    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/m;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    const/16 v0, 0x1706

    .line 211
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;ILcom/chartboost/sdk/Model/e;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 161
    if-nez p0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    if-ne p1, v2, :cond_2

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/e;->C:Z

    if-nez v0, :cond_3

    :cond_2
    if-nez p1, :cond_0

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/e;->h:Z

    if-eqz v0, :cond_0

    .line 166
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v0

    .line 167
    if-nez v0, :cond_4

    .line 168
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 169
    :cond_4
    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 170
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 171
    :cond_5
    if-ne v0, v2, :cond_6

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 173
    :cond_6
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static a(I)Z
    .locals 1

    .prologue
    .line 220
    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Lcom/chartboost/sdk/Chartboost$CBFramework;)Z
    .locals 1

    .prologue
    .line 216
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 122
    const-string v1, "%s %s %s"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v3, "Chartboost-Android-SDK"

    aput-object v3, v2, v0

    const/4 v3, 0x1

    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x2

    const-string v3, "7.0.1"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;ILcom/chartboost/sdk/Model/e;)V
    .locals 1

    .prologue
    .line 178
    if-nez p0, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/e;->y:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/e;->C:Z

    if-nez v0, :cond_3

    :cond_2
    if-nez p1, :cond_0

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/e;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/chartboost/sdk/Model/e;->h:Z

    if-eqz v0, :cond_0

    .line 182
    :cond_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 224
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 1

    .prologue
    .line 127
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->g()Z

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

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 134
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "ZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 138
    :goto_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 139
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "\'GMT\'ZZZZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto :goto_0
.end method

.method private static e()Z
    .locals 2

    .prologue
    .line 143
    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    .line 144
    if-eqz v0, :cond_0

    const-string v1, "test-keys"

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

.method private static f()Z
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method private static g()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 152
    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/String;

    const-string v2, "/sbin/su"

    aput-object v2, v3, v1

    const-string v2, "/system/bin/su"

    aput-object v2, v3, v0

    const/4 v2, 0x2

    const-string v4, "/system/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x3

    const-string v4, "/data/local/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x4

    const-string v4, "/data/local/bin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x5

    const-string v4, "/system/sd/xbin/su"

    aput-object v4, v3, v2

    const/4 v2, 0x6

    const-string v4, "/system/bin/failsafe/su"

    aput-object v4, v3, v2

    const/4 v2, 0x7

    const-string v4, "/data/local/su"

    aput-object v4, v3, v2

    .line 154
    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v3, v2

    .line 155
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    :goto_1
    return v0

    .line 154
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 157
    goto :goto_1
.end method
