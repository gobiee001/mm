.class public Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;
.super Ljava/lang/Object;
.source "ObscuredSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/lang/String; = "utf-8"


# instance fields
.field private final delegate:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "delegate"    # Landroid/content/SharedPreferences;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private decrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 158
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :goto_0
    return-object v1

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    const-string v1, ""

    goto :goto_0
.end method

.method private encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v2

    const-string v3, "utf-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-object v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 153
    const-string v1, ""

    goto :goto_0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->edit()Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;
    .locals 1

    .prologue
    .line 88
    new-instance v0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;

    invoke-direct {v0, p0}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences$Editor;-><init>(Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 99
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    .end local p2    # "defValue":Z
    :cond_0
    return p2
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 105
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p2

    .end local p2    # "defValue":F
    :cond_0
    return p2
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 111
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .end local p2    # "defValue":I
    :cond_0
    return p2
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 117
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    .end local p2    # "defValue":J
    :cond_0
    return-wide p2
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defValue":Ljava/lang/String;
    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    return-object p2
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "onSharedPreferenceChangeListener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 140
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .param p1, "onSharedPreferenceChangeListener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .prologue
    .line 144
    iget-object v0, p0, Lcom/cuebiq/cuebiqsdk/utils/ObscuredSharedPreferences;->delegate:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 145
    return-void
.end method
