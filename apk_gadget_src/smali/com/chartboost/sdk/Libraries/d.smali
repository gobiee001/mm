.class public Lcom/chartboost/sdk/Libraries/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Lcom/chartboost/sdk/Libraries/d$a;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 39
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/d;->a:Landroid/content/SharedPreferences;

    .line 49
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/d;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    new-instance v0, Lcom/chartboost/sdk/Libraries/a;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Libraries/a;-><init>(Landroid/content/Context;)V

    .line 180
    iget v1, v0, Lcom/chartboost/sdk/Libraries/a;->a:I

    iput v1, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 181
    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    .line 183
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 194
    const-string v1, "limit_ad_tracking"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 195
    if-nez v1, :cond_0

    .line 197
    const/4 v1, 0x0

    iput v1, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 198
    const-string v1, "advertising_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    .line 210
    :goto_0
    return-void

    .line 200
    :cond_0
    if-ne v1, v2, :cond_1

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 203
    iput-object v3, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 208
    iput-object v3, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->a:Landroid/content/SharedPreferences;

    const-string v1, "cbUUID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 145
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 147
    const-string v1, "cbUUID"

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 148
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 3

    .prologue
    .line 161
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 163
    const-string v1, "Amazon"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/d;->b(Landroid/content/Context;)V

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Landroid/content/Context;)V

    .line 169
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 172
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/d;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 215
    :try_start_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 219
    :goto_0
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/d;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :try_start_0
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "Google play services library is missing. Unable to find class com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 63
    const-string v0, "CBIdentity"

    const-string v1, "WARNING: It looks like you\'ve forgotten to include the Google Play Services library in your project. Please review the SDK documentation for more details."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    return-void
.end method

.method public declared-synchronized b()Lcom/chartboost/sdk/Libraries/d$a;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 87
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 92
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->c:Ljava/lang/String;

    move-object v3, v0

    .line 102
    :goto_0
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/d;->e()V

    .line 103
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 104
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->d:Ljava/lang/String;

    move-object v6, v0

    move v0, v2

    move-object v2, v6

    .line 110
    :goto_1
    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget v4, v4, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    iget v5, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    if-eq v4, v5, :cond_0

    move v0, v1

    .line 114
    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    if-nez v0, :cond_4

    .line 116
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 117
    if-eqz v3, :cond_2

    .line 118
    const-string v1, "uuid"

    invoke-static {v0, v1, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    :cond_2
    if-eqz v2, :cond_3

    .line 121
    const-string v1, "gaid"

    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    :cond_3
    new-instance v1, Lcom/chartboost/sdk/Libraries/d$a;

    iget v4, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 125
    instance-of v5, v0, Lorg/json/JSONObject;

    if-nez v5, :cond_9

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v4, v0, v3, v2}, Lcom/chartboost/sdk/Libraries/d$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    .line 129
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 94
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_6

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 96
    :cond_6
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/d;->d()Ljava/lang/String;

    move-result-object v0

    :cond_7
    move-object v3, v0

    move v2, v1

    .line 97
    goto :goto_0

    .line 106
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    move-object v2, v0

    move v0, v1

    .line 107
    goto :goto_1

    .line 125
    :cond_9
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_2

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 135
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    return-object v0
.end method
