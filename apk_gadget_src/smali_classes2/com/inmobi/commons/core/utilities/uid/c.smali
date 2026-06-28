.class public Lcom/inmobi/commons/core/utilities/uid/c;
.super Ljava/lang/Object;
.source "UidHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/inmobi/commons/core/utilities/uid/c;

.field private static d:Lcom/inmobi/commons/core/utilities/uid/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/inmobi/commons/core/utilities/uid/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static a()Lcom/inmobi/commons/core/utilities/uid/c;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->c:Lcom/inmobi/commons/core/utilities/uid/c;

    .line 29
    if-nez v0, :cond_1

    .line 30
    sget-object v1, Lcom/inmobi/commons/core/utilities/uid/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 31
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->c:Lcom/inmobi/commons/core/utilities/uid/c;

    .line 32
    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/inmobi/commons/core/utilities/uid/c;

    invoke-direct {v0}, Lcom/inmobi/commons/core/utilities/uid/c;-><init>()V

    .line 34
    sput-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->c:Lcom/inmobi/commons/core/utilities/uid/c;

    .line 36
    :cond_0
    monitor-exit v1

    .line 39
    :cond_1
    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 104
    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    const-string v0, "TEST_EMULATOR"

    .line 125
    :goto_0
    return-object v0

    .line 108
    :cond_1
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 110
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 113
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_2

    .line 115
    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 118
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered an unexpected error attempting to get digested UID; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()V
    .locals 5

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4157
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    .line 73
    if-eqz v0, :cond_0

    .line 5020
    iget-object v0, v0, Lcom/inmobi/commons/core/utilities/uid/a;->a:Ljava/lang/String;

    .line 75
    if-eqz v0, :cond_0

    .line 76
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Publisher device Id is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 81
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Publisher device Id is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5092
    const-string v4, "SHA-1"

    invoke-static {v0, v4}, Lcom/inmobi/commons/core/utilities/uid/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered an unexpected error attempting to print the publisher test ID; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    const-string v0, "1"

    return-object v0
.end method

.method static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 135
    const-string v0, ""

    .line 136
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    .line 137
    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 142
    if-nez v0, :cond_0

    .line 143
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    :cond_0
    :goto_0
    return-object v0

    .line 147
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method static f()Lcom/inmobi/commons/core/utilities/uid/a;
    .locals 1

    .prologue
    .line 157
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    return-object v0
.end method

.method static g()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 215
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 221
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 228
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 229
    const-string v3, "type"

    const-string v4, "RuntimeException"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    const-string v3, "root"

    const-string v4, "ExceptionCaught"

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 233
    :catch_1
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in submitting telemetry event : ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 234
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 236
    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method public static h()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 242
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    .line 5157
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    .line 243
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6012
    :cond_0
    iget-object v0, v0, Lcom/inmobi/commons/core/utilities/uid/a;->b:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method static synthetic i()Lcom/inmobi/commons/core/utilities/uid/a;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    return-object v0
.end method

.method static synthetic j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 5

    .prologue
    .line 65
    .line 1171
    :try_start_0
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/b;

    invoke-direct {v1}, Lcom/inmobi/commons/core/utilities/uid/b;-><init>()V

    .line 1172
    new-instance v0, Lcom/inmobi/commons/core/utilities/uid/a;

    invoke-direct {v0}, Lcom/inmobi/commons/core/utilities/uid/a;-><init>()V

    .line 1174
    sput-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    .line 2034
    iget-object v2, v1, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/c/c;

    const-string v3, "adv_id"

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3024
    iput-object v2, v0, Lcom/inmobi/commons/core/utilities/uid/a;->a:Ljava/lang/String;

    .line 1175
    sget-object v2, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    .line 3042
    iget-object v0, v1, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/c/c;

    const-string v3, "limit_ad_tracking"

    .line 3105
    iget-object v0, v0, Lcom/inmobi/commons/core/c/c;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    .line 3042
    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/inmobi/commons/core/utilities/uid/b;->a:Lcom/inmobi/commons/core/c/c;

    const-string v3, "limit_ad_tracking"

    const/4 v4, 0x1

    .line 3043
    invoke-virtual {v0, v3, v4}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 4016
    :goto_0
    iput-object v0, v2, Lcom/inmobi/commons/core/utilities/uid/a;->b:Ljava/lang/Boolean;

    .line 1177
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/inmobi/commons/core/utilities/uid/c$1;

    invoke-direct {v2, p0, v1}, Lcom/inmobi/commons/core/utilities/uid/c$1;-><init>(Lcom/inmobi/commons/core/utilities/uid/c;Lcom/inmobi/commons/core/utilities/uid/b;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1205
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1209
    :goto_1
    return-void

    .line 3043
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1206
    :catch_0
    move-exception v0

    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK encountered unexpected error in setting the advertising ID; "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1208
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
