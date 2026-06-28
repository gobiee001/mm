.class public Lcom/inmobi/signals/a/c;
.super Ljava/lang/Object;
.source "CellularInfoUtil.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/inmobi/signals/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v9, -0x1

    .line 34
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 35
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v5

    .line 36
    if-nez v5, :cond_0

    move-object v0, v2

    .line 67
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    .line 1081
    iget-object v0, v0, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 1167
    iget-object v0, v0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 1248
    iget-boolean v6, v0, Lcom/inmobi/signals/p$b;->n:Z

    if-eqz v6, :cond_1

    iget-boolean v0, v0, Lcom/inmobi/signals/p$b;->a:Z

    if-eqz v0, :cond_1

    move v0, v3

    .line 38
    :goto_1
    if-nez v0, :cond_2

    move-object v0, v2

    .line 39
    goto :goto_0

    :cond_1
    move v0, v4

    .line 1248
    goto :goto_1

    .line 43
    :cond_2
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    .line 2081
    iget-object v0, v0, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 2167
    iget-object v0, v0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 2244
    iget v0, v0, Lcom/inmobi/signals/p$b;->m:I

    .line 44
    const/4 v6, 0x2

    invoke-static {v0, v6}, Lcom/inmobi/signals/a/c;->a(II)Z

    move-result v6

    .line 45
    invoke-static {v0, v3}, Lcom/inmobi/signals/a/c;->a(II)Z

    move-result v7

    .line 47
    new-instance v8, Lcom/inmobi/signals/a/a;

    invoke-direct {v8}, Lcom/inmobi/signals/a/a;-><init>()V

    .line 48
    const-string v0, "phone"

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 51
    if-nez v6, :cond_3

    .line 52
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/inmobi/signals/a/c;->a(Ljava/lang/String;)[I

    move-result-object v5

    .line 53
    aget v6, v5, v4

    .line 3023
    iput v6, v8, Lcom/inmobi/signals/a/a;->a:I

    .line 54
    aget v5, v5, v3

    .line 3027
    iput v5, v8, Lcom/inmobi/signals/a/a;->b:I

    .line 55
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    .line 3053
    if-eqz v5, :cond_3

    .line 3054
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/inmobi/signals/a/a;->e:Ljava/lang/String;

    .line 58
    :cond_3
    if-nez v7, :cond_4

    .line 59
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/signals/a/c;->a(Ljava/lang/String;)[I

    move-result-object v0

    .line 60
    aget v4, v0, v4

    .line 4031
    iput v4, v8, Lcom/inmobi/signals/a/a;->c:I

    .line 61
    aget v0, v0, v3

    .line 4035
    iput v0, v8, Lcom/inmobi/signals/a/a;->d:I

    .line 64
    :cond_4
    const-string v3, "s-ho"

    .line 4046
    iget v0, v8, Lcom/inmobi/signals/a/a;->c:I

    if-ne v0, v9, :cond_5

    iget v0, v8, Lcom/inmobi/signals/a/a;->d:I

    if-ne v0, v9, :cond_5

    move-object v0, v1

    .line 64
    :goto_2
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "s-co"

    .line 5039
    iget v3, v8, Lcom/inmobi/signals/a/a;->a:I

    if-ne v3, v9, :cond_6

    iget v3, v8, Lcom/inmobi/signals/a/a;->b:I

    if-ne v3, v9, :cond_6

    .line 65
    :goto_3
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "s-iso"

    .line 5059
    iget-object v1, v8, Lcom/inmobi/signals/a/a;->e:Ljava/lang/String;

    .line 66
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    .line 67
    goto/16 :goto_0

    .line 4049
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v8, Lcom/inmobi/signals/a/a;->c:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "_"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v8, Lcom/inmobi/signals/a/a;->d:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 5042
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v8, Lcom/inmobi/signals/a/a;->a:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v8, Lcom/inmobi/signals/a/a;->b:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static a(II)Z
    .locals 1

    .prologue
    .line 71
    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;)[I
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 77
    aput v2, v0, v1

    .line 78
    aput v2, v0, v3

    .line 80
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 87
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 88
    const/4 v3, 0x0

    aput v1, v0, v3

    .line 89
    const/4 v1, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static b()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 5099
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    .line 6081
    iget-object v0, v0, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 6167
    iget-object v0, v0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 6256
    iget-boolean v2, v0, Lcom/inmobi/signals/p$b;->p:Z

    if-eqz v2, :cond_3

    iget-boolean v0, v0, Lcom/inmobi/signals/p$b;->a:Z

    if-eqz v0, :cond_3

    move v0, v1

    .line 5099
    :goto_0
    if-eqz v0, :cond_1

    .line 7117
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    .line 7118
    if-eqz v2, :cond_4

    .line 7120
    const-string v0, "signals"

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v2, v0, v3}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    move v0, v4

    .line 7126
    :goto_1
    const-string v3, "signals"

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v2, v3, v6}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    move v2, v4

    .line 7131
    :goto_2
    if-nez v0, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    move v0, v1

    .line 5099
    :goto_3
    if-nez v0, :cond_5

    .line 108
    :cond_1
    :goto_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 110
    if-eqz v7, :cond_2

    .line 111
    const-string v2, "c-sc"

    invoke-virtual {v7}, Lcom/inmobi/signals/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    instance-of v3, v0, Lorg/json/JSONObject;

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_2
    return-object v1

    :cond_3
    move v0, v4

    .line 6256
    goto :goto_0

    :cond_4
    move v0, v4

    .line 7131
    goto :goto_3

    .line 7135
    :cond_5
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 7136
    if-eqz v0, :cond_1

    .line 7137
    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 7138
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/signals/a/c;->a(Ljava/lang/String;)[I

    move-result-object v8

    .line 7139
    aget v0, v8, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 7140
    aget v1, v8, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 7142
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v3, v6, :cond_7

    .line 7143
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v9

    .line 7144
    if-eqz v9, :cond_7

    move v6, v4

    move-object v3, v7

    .line 7146
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-ge v6, v10, :cond_6

    .line 7147
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 7148
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v10

    if-nez v10, :cond_6

    .line 7146
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 7151
    :cond_6
    if-eqz v3, :cond_7

    .line 7152
    new-instance v7, Lcom/inmobi/signals/a/b;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-direct {v7, v3, v0, v1, v2}, Lcom/inmobi/signals/a/b;-><init>(Landroid/telephony/CellInfo;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 7157
    :cond_7
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    .line 7158
    if-eqz v3, :cond_1

    aget v4, v8, v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 7162
    new-instance v7, Lcom/inmobi/signals/a/b;

    invoke-direct {v7}, Lcom/inmobi/signals/a/b;-><init>()V

    .line 7163
    instance-of v4, v3, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v4, :cond_8

    move-object v1, v3

    .line 7164
    check-cast v1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 8086
    iput v5, v7, Lcom/inmobi/signals/a/b;->b:I

    .line 7167
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 9078
    iput v2, v7, Lcom/inmobi/signals/a/b;->c:I

    .line 7168
    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    invoke-virtual {v1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v1

    invoke-static {v0, v2, v3, v1}, Lcom/inmobi/signals/a/b;->a(Ljava/lang/String;III)Ljava/lang/String;

    move-result-object v0

    .line 9082
    iput-object v0, v7, Lcom/inmobi/signals/a/b;->a:Ljava/lang/String;

    goto/16 :goto_4

    :cond_8
    move-object v4, v3

    .line 7170
    check-cast v4, Landroid/telephony/gsm/GsmCellLocation;

    .line 9086
    iput v5, v7, Lcom/inmobi/signals/a/b;->b:I

    .line 7173
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    .line 10078
    iput v2, v7, Lcom/inmobi/signals/a/b;->c:I

    .line 7174
    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v2

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    invoke-virtual {v4}, Landroid/telephony/gsm/GsmCellLocation;->getPsc()I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/inmobi/signals/a/b;->a(Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v0

    .line 10082
    iput-object v0, v7, Lcom/inmobi/signals/a/b;->a:Ljava/lang/String;

    goto/16 :goto_4

    .line 111
    :cond_9
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_5

    :cond_a
    move v2, v1

    goto/16 :goto_2

    :cond_b
    move v0, v1

    goto/16 :goto_1
.end method

.method public static c()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7fffffff

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 10193
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10258
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "signals"

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 10193
    :goto_0
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    .line 11081
    iget-object v0, v0, Lcom/inmobi/signals/o;->a:Lcom/inmobi/signals/p;

    .line 11167
    iget-object v0, v0, Lcom/inmobi/signals/p;->a:Lcom/inmobi/signals/p$b;

    .line 11252
    iget-boolean v1, v0, Lcom/inmobi/signals/p$b;->o:Z

    if-eqz v1, :cond_3

    iget-boolean v0, v0, Lcom/inmobi/signals/p$b;->a:Z

    if-eqz v0, :cond_3

    move v0, v4

    .line 10193
    :goto_1
    if-nez v0, :cond_4

    .line 10194
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    :goto_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 183
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 184
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 185
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/signals/a/b;

    invoke-virtual {v0}, Lcom/inmobi/signals/a/b;->a()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 186
    const-string v3, "v-sc"

    instance-of v0, v1, Lorg/json/JSONArray;

    if-nez v0, :cond_e

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_1
    return-object v2

    :cond_2
    move v0, v7

    .line 10258
    goto :goto_0

    :cond_3
    move v0, v7

    .line 11252
    goto :goto_1

    .line 10197
    :cond_4
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 10198
    if-nez v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2

    .line 10200
    :cond_5
    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 10201
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 10202
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/signals/a/c;->a(Ljava/lang/String;)[I

    move-result-object v1

    .line 10203
    aget v0, v1, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 10204
    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 10206
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x11

    if-lt v3, v8, :cond_8

    .line 10207
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v3

    .line 10208
    if-eqz v3, :cond_8

    .line 10209
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/CellInfo;

    .line 10210
    invoke-virtual {v3}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v5

    if-nez v5, :cond_6

    .line 10211
    new-instance v5, Lcom/inmobi/signals/a/b;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    invoke-direct {v5, v3, v0, v1, v7}, Lcom/inmobi/signals/a/b;-><init>(Landroid/telephony/CellInfo;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object v0, v6

    .line 10214
    goto/16 :goto_2

    .line 10218
    :cond_8
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v2

    .line 10219
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 10220
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_2

    .line 10222
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/telephony/NeighboringCellInfo;

    .line 10223
    new-instance v8, Lcom/inmobi/signals/a/b;

    invoke-direct {v8}, Lcom/inmobi/signals/a/b;-><init>()V

    .line 10225
    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getNetworkType()I

    move-result v2

    .line 12078
    iput v2, v8, Lcom/inmobi/signals/a/b;->c:I

    .line 10227
    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v9

    const/16 v10, 0x63

    if-ne v9, v10, :cond_b

    .line 12086
    iput v5, v8, Lcom/inmobi/signals/a/b;->b:I

    .line 10236
    :goto_5
    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v2

    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v3

    const/4 v4, -0x1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/signals/a/b;->a(Ljava/lang/String;Ljava/lang/String;IIII)Ljava/lang/String;

    move-result-object v0

    .line 15082
    iput-object v0, v8, Lcom/inmobi/signals/a/b;->a:Ljava/lang/String;

    .line 10237
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    .line 10239
    goto/16 :goto_2

    .line 12245
    :cond_b
    sparse-switch v2, :sswitch_data_0

    move v2, v7

    .line 10230
    :goto_6
    if-eqz v2, :cond_c

    .line 10231
    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    add-int/lit8 v2, v2, -0x74

    .line 13086
    iput v2, v8, Lcom/inmobi/signals/a/b;->b:I

    goto :goto_5

    :sswitch_0
    move v2, v4

    .line 12251
    goto :goto_6

    .line 10233
    :cond_c
    invoke-virtual {v3}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x71

    .line 14086
    iput v2, v8, Lcom/inmobi/signals/a/b;->b:I

    goto :goto_5

    .line 10241
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_2

    :cond_e
    move-object v0, v1

    .line 186
    check-cast v0, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    .line 12245
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xf -> :sswitch_0
    .end sparse-switch
.end method
