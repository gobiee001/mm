.class public Lcom/cuebiq/cuebiqsdk/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final IPV4_LOCAL_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV4_LOCAL_REGEX:Ljava/lang/String; = "((((127)|(10))\\.[0-9]+\\.[0-9]+\\.[0-9]+)|(((172\\.(1[6-9]|2[0-9]|3[0-1]))|(192\\.168))\\.[0-9]+\\.[0-9]+)|(^172\\.3[0-1]\\.)|(^fe80:(:[0-9a-fA-F]{0,4}){0,4}))$"

.field private static final IPV4_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV4_REGEX:Ljava/lang/String; = "(([0-9](?!\\d)|[1-9][0-9](?!\\d)|1[0-9]{2}(?!\\d)|2[0-4][0-9](?!\\d)|25[0-5](?!\\d))[.]?){4}"

.field private static final IPV6_LOCAL_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_LOCAL_REGEX:Ljava/lang/String; = "(^(fe80)|(FE80):(:[0-9a-fA-F]{0,4}){0,4})$"

.field private static final IPV6_PATTERN:Ljava/util/regex/Pattern;

.field private static final IPV6_REGEX:Ljava/lang/String; = "(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-string v0, "(([0-9](?!\\d)|[1-9][0-9](?!\\d)|1[0-9]{2}(?!\\d)|2[0-4][0-9](?!\\d)|25[0-5](?!\\d))[.]?){4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/cuebiq/cuebiqsdk/utils/Utils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    .line 43
    const-string v0, "(([0-9a-fA-F]{1,4}:){7,7}[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,7}:|([0-9a-fA-F]{1,4}:){1,6}:[0-9a-fA-F]{1,4}|([0-9a-fA-F]{1,4}:){1,5}(:[0-9a-fA-F]{1,4}){1,2}|([0-9a-fA-F]{1,4}:){1,4}(:[0-9a-fA-F]{1,4}){1,3}|([0-9a-fA-F]{1,4}:){1,3}(:[0-9a-fA-F]{1,4}){1,4}|([0-9a-fA-F]{1,4}:){1,2}(:[0-9a-fA-F]{1,4}){1,5}|[0-9a-fA-F]{1,4}:((:[0-9a-fA-F]{1,4}){1,6})|:((:[0-9a-fA-F]{1,4}){1,7}|:)|fe80:(:[0-9a-fA-F]{0,4}){0,4}%[0-9a-zA-Z]{1,}|::(ffff(:0{1,4}){0,1}:){0,1}((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])|([0-9a-fA-F]{1,4}:){1,4}:((25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9])\\.){3,3}(25[0-5]|(2[0-4]|1{0,1}[0-9]){0,1}[0-9]))"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/cuebiq/cuebiqsdk/utils/Utils;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    .line 44
    const-string v0, "((((127)|(10))\\.[0-9]+\\.[0-9]+\\.[0-9]+)|(((172\\.(1[6-9]|2[0-9]|3[0-1]))|(192\\.168))\\.[0-9]+\\.[0-9]+)|(^172\\.3[0-1]\\.)|(^fe80:(:[0-9a-fA-F]{0,4}){0,4}))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/cuebiq/cuebiqsdk/utils/Utils;->IPV4_LOCAL_PATTERN:Ljava/util/regex/Pattern;

    .line 45
    const-string v0, "(^(fe80)|(FE80):(:[0-9a-fA-F]{0,4}){0,4})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/cuebiq/cuebiqsdk/utils/Utils;->IPV6_LOCAL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryLevel(Landroid/content/Context;)F
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x42480000    # 50.0f

    const/4 v8, -0x1

    .line 75
    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    .local v0, "batteryIntent":Landroid/content/Intent;
    if-nez v0, :cond_1

    .line 89
    .end local v0    # "batteryIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return v4

    .line 79
    .restart local v0    # "batteryIntent":Landroid/content/Intent;
    :cond_1
    const-string v5, "level"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, "level":I
    const-string v5, "scale"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 83
    .local v3, "scale":I
    if-eq v2, v8, :cond_0

    if-eq v3, v8, :cond_0

    .line 87
    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    goto :goto_0

    .line 88
    .end local v0    # "batteryIntent":Landroid/content/Intent;
    .end local v2    # "level":I
    .end local v3    # "scale":I
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method public static getIPAddressV4()Ljava/lang/String;
    .locals 9

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v2

    .line 112
    .local v2, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 113
    .local v3, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 114
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 115
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_1

    .line 116
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .line 118
    .local v5, "sAddr":Ljava/lang/String;
    invoke-static {v5}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isIPv4(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 119
    sget-object v8, Lcom/cuebiq/cuebiqsdk/utils/Utils;->IPV4_LOCAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 120
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-nez v8, :cond_1

    .line 121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Utils -> IP Pubblico: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v3    # "intf":Ljava/net/NetworkInterface;
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "sAddr":Ljava/lang/String;
    :goto_0
    return-object v5

    .line 128
    :catch_0
    move-exception v6

    .line 130
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static getIPAddressV6()Ljava/lang/String;
    .locals 10

    .prologue
    .line 135
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    .line 136
    .local v3, "interfaces":Ljava/util/List;, "Ljava/util/List<Ljava/net/NetworkInterface;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/NetworkInterface;

    .line 137
    .local v4, "intf":Ljava/net/NetworkInterface;
    invoke-virtual {v4}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v1

    .line 138
    .local v1, "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 139
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v9

    if-nez v9, :cond_1

    .line 140
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    .line 141
    .local v6, "sAddr":Ljava/lang/String;
    const/16 v9, 0x25

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 142
    .local v2, "delim":I
    if-gez v2, :cond_2

    .line 144
    :goto_0
    invoke-static {v6}, Lcom/cuebiq/cuebiqsdk/utils/Utils;->isIPv6(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 145
    sget-object v9, Lcom/cuebiq/cuebiqsdk/utils/Utils;->IPV6_LOCAL_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 146
    .local v5, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-nez v9, :cond_1

    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Utils -> IP Pubblico: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 156
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delim":I
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v5    # "matcher":Ljava/util/regex/Matcher;
    .end local v6    # "sAddr":Ljava/lang/String;
    :goto_1
    return-object v6

    .line 142
    .restart local v0    # "addr":Ljava/net/InetAddress;
    .restart local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .restart local v2    # "delim":I
    .restart local v4    # "intf":Ljava/net/NetworkInterface;
    .restart local v6    # "sAddr":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .line 154
    .end local v0    # "addr":Ljava/net/InetAddress;
    .end local v1    # "addrs":Ljava/util/List;, "Ljava/util/List<Ljava/net/InetAddress;>;"
    .end local v2    # "delim":I
    .end local v4    # "intf":Ljava/net/NetworkInterface;
    .end local v6    # "sAddr":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 156
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static getInstalledApps(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 161
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 163
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v2, "installedApps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 166
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget v5, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    .line 167
    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-object v2
.end method

.method public static getMCCandMNC(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 254
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 255
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "networkOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    const/4 v3, 0x2

    :try_start_0
    new-array v2, v3, [Ljava/lang/String;

    .line 260
    .local v2, "values":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 261
    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .end local v2    # "values":[Ljava/lang/String;
    :goto_0
    return-object v2

    .line 263
    :catch_0
    move-exception v3

    .line 266
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPairedDevices()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v5, "pairedDevices":Ljava/util/List;, "Ljava/util/List<Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;>;"
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .line 178
    .local v3, "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v3, :cond_3

    .line 179
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 180
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;

    invoke-direct {v1}, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;-><init>()V

    .line 182
    .local v1, "cuebiqDevice":Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 186
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 187
    .local v0, "clazz":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_2

    .line 188
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->setName(Ljava/lang/String;)V

    .line 189
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x12

    if-lt v7, v8, :cond_1

    .line 190
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->setType(Ljava/lang/Integer;)V

    .line 192
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->setAddress(Ljava/lang/String;)V

    .line 193
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;->setDeviceClass(Ljava/lang/Integer;)V

    .line 196
    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    .end local v0    # "clazz":Landroid/bluetooth/BluetoothClass;
    .end local v1    # "cuebiqDevice":Lcom/cuebiq/cuebiqsdk/model/wrapper/BluetoothDevice;
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "devices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v4

    .line 201
    .local v4, "ignored":Ljava/lang/Exception;
    const-string v6, "Bluetooth permission is not enabled, skip paired devices."

    invoke-static {v6}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 203
    .end local v4    # "ignored":Ljava/lang/Exception;
    :cond_3
    return-object v5
.end method

.method public static isAndroidVersionNotSupported(I)Z
    .locals 2
    .param p0, "currentOSVersion"    # I

    .prologue
    .line 270
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, p0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CuebiqSDK works only on Android API Level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFlushCounterActive(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->getNextFlushCounter(Landroid/content/Context;)I

    move-result v0

    .line 50
    .local v0, "nextFlushCounter":I
    if-nez v0, :cond_1

    .line 66
    :cond_0
    :goto_0
    return v1

    .line 54
    :cond_1
    if-gez v0, :cond_2

    .line 55
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v2

    invoke-interface {v2, p0, v1}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setNextFlushingContent(Landroid/content/Context;I)V

    goto :goto_0

    .line 59
    :cond_2
    if-lez v0, :cond_0

    .line 60
    add-int/lit8 v0, v0, -0x1

    .line 62
    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->setNextFlushingContent(Landroid/content/Context;I)V

    .line 63
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isIPv4(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sAddr"    # Ljava/lang/String;

    .prologue
    .line 94
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    return v1

    .line 97
    :cond_1
    sget-object v1, Lcom/cuebiq/cuebiqsdk/utils/Utils;->IPV4_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 98
    .local v0, "ipv4Matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    goto :goto_0
.end method

.method public static isIPv6(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sAddr"    # Ljava/lang/String;

    .prologue
    .line 102
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    const/4 v1, 0x0

    .line 106
    :goto_0
    return v1

    .line 105
    :cond_1
    sget-object v1, Lcom/cuebiq/cuebiqsdk/utils/Utils;->IPV6_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 106
    .local v0, "ipv6Matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    goto :goto_0
.end method

.method public static isLocationEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 207
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_0

    .line 208
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    const-string v2, "CuebiqSDK -> Permission about LOCATION is not granted."

    invoke-static {v2}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 220
    :goto_0
    return v1

    .line 213
    :cond_0
    const-string v2, "location"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 216
    .local v0, "locationManager":Landroid/location/LocationManager;
    :try_start_0
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getAcc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 217
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static isOptedOut(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 70
    invoke-static {p0}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->getBeAudienceConfiguration(Landroid/content/Context;)Lcom/cuebiq/cuebiqsdk/model/config/Settings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/cuebiq/cuebiqsdk/model/config/Settings;->getTase()I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-static {}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManagerFactory;->get()Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/cuebiq/cuebiqsdk/model/persistence/PersistenceManager;->isGAIDDisabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isWifiAlwaysScanning(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 239
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_1

    .line 240
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    const-string v2, "CuebiqSDK -> Permission about WIFI is not granted."

    invoke-static {v2}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 250
    :cond_0
    :goto_0
    return v1

    .line 245
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 246
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 247
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isWifiEnabled(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 224
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-le v2, v3, :cond_1

    .line 225
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    const-string v2, "CuebiqSDK -> Permission about WIFI is not granted."

    invoke-static {v2}, Lcom/cuebiq/cuebiqsdk/CuebiqSDKImpl;->log(Ljava/lang/String;)V

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 231
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 232
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 233
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    goto :goto_0
.end method
